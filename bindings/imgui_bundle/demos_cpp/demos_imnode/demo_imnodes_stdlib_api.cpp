// Part of ImGui Bundle - MIT License - Copyright (c) 2022-2023 Pascal Thomet - https://github.com/pthom/imgui_bundle
// Acknowledgments
// Node graph implementation for Dear ImGui, using https://github.com/rokups/ImNodes

// Using StdLib API (adapted API for python bindings)

//
// Copyright (c) 2017-2019 Rokas Kupstys.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#ifndef IMGUI_DEFINE_MATH_OPERATORS
#   define IMGUI_DEFINE_MATH_OPERATORS
#endif
#include <vector>
#include <map>
#include <string>
#include <functional>
#include <memory>
#include <imgui.h>
#include <imgui_internal.h>
#include "ImNodes/cpp/ImNodesEzStdLib.h"


enum NodeSlotTypes
{
    NodeSlotPosition = 1,   // ID can not be 0
    NodeSlotRotation,
    NodeSlotMatrix,
};


/// A structure holding node state.
struct MyNode
{
    /// Title which will be displayed at the center-top of the node.
    std::string Title = "";
    /// Flag indicating that node is selected by the user.
    ImNodes::BoolWrapper Selected = {false};
    /// Node position on the canvas.
    ImVec2 Pos{};
    /// List of node connections.
    std::vector<ImNodes::ConnectionInfo> Connections{};
    /// A list of input slots current node has.
    std::vector<ImNodes::Ez::SlotInfo> InputSlots{};
    /// A list of output slots current node has.
    std::vector<ImNodes::Ez::SlotInfo> OutputSlots{};

    /// Deletes connection from this node.
    void DeleteConnection(const ImNodes::ConnectionInfo& connection)
    {
        for (auto it = Connections.begin(); it != Connections.end(); ++it)
        {
            if (connection == *it)
            {
                Connections.erase(it);
                break;
            }
        }
    }
};


using MyNodePtr = std::shared_ptr<MyNode>;
using NodeFactoryFunction = std::function<MyNodePtr()>;

MyNodePtr factorComposeNode()
{
    auto r = std::make_shared<MyNode>();
    r->Title = "Compose";
    r->InputSlots = {{"Position", NodeSlotPosition}, {"Rotation", NodeSlotRotation}};
    r->OutputSlots = {{"Matrix", NodeSlotMatrix}};
    return r;
};

MyNodePtr factorDecomposeNode()
{
    auto r = std::make_shared<MyNode>();
    r->Title = "Decompose";
    r->InputSlots = {{"Matrix", NodeSlotMatrix}};
    r->OutputSlots = {{"Position", NodeSlotPosition}, {"Rotation", NodeSlotRotation}};
    return r;
};



std::map<std::string, NodeFactoryFunction> available_nodes{
    {"Compose", factorComposeNode},
    {"Decompose", factorDecomposeNode}
};


std::vector<MyNodePtr> nodes;

#define BLAH

void demo_imnodes_stdlib_api()
{
#ifdef BLAH
    // Canvas must be created after ImGui initializes, because constructor accesses ImGui style to configure default colors.
    static auto contextAddress = ImNodes::Ez::CreateContextWrapper();
    IM_UNUSED(contextAddress);

    // We probably need to keep some state, like positions of nodes/slots for rendering connections.
    ImNodes::Ez::BeginCanvas();
    for (auto it = nodes.begin(); it != nodes.end();)
    {
        MyNode* node = (*it).get();

        // Start rendering node
        ImNodes::ConnectionSlot connectionSlot;
        connectionSlot.Node.Value = (ImNodes::Any)&node;
        connectionSlot.SlotTitle = node->Title;

        if (ImNodes::Ez::BeginNode(connectionSlot, &node->Pos, &node->Selected))
        {
            // Render input nodes first (order is important)
            ImNodes::Ez::InputSlots(node->InputSlots.data(), node->InputSlots.size());

            // Custom node content may go here
            ImGui::Text("Content of %s", node->Title.c_str());

            // Render output nodes first (order is important)
            ImNodes::Ez::OutputSlots(node->OutputSlots.data(), node->OutputSlots.size());

            // Store new connections when they are created
            auto newConnection = ImNodes::GetNewConnection();
            if (newConnection.has_value())
            {
                auto inputNode = ((MyNode*)newConnection->InputNode.Node.Value);
                auto outputNode = ((MyNode*)newConnection->OutputNode.Node.Value);
                inputNode->Connections.push_back(*newConnection);
                outputNode->Connections.push_back(*newConnection);
            }

            // Render output connections of this node
            for (const ImNodes::ConnectionInfo& connection : node->Connections)
            {
                // Node contains all it's connections (both from output and to input slots). This means that multiple
                // nodes will have same connection. We render only output connections and ensure that each connection
                // will be rendered once.
                if (connection.OutputNode.Node.Value == (ImNodes::Any)node)
                    continue;

                if (!ImNodes::Connection(connection))
                {
                    // Remove deleted connections
                    auto inputNode = ((MyNode*)connection.InputNode.Node.Value);
                    auto outputNode = ((MyNode*)connection.OutputNode.Node.Value);
                    inputNode->DeleteConnection(connection);
                    outputNode->DeleteConnection(connection);
                }
            }
        }
        // Node rendering is done. This call will render node background based on size of content inside node.
        ImNodes::Ez::EndNode();

        if (node->Selected.Value && ImGui::IsKeyPressedMap(ImGuiKey_Delete) && ImGui::IsWindowFocused())
        {
            // Deletion order is critical: first we delete connections to us
            for (auto& connection : node->Connections)
            {
                if (connection.OutputNode.Node.Value == (ImNodes::Any)node)
                {
                    auto inputNode = ((MyNode*)connection.InputNode.Node.Value);
                    inputNode->DeleteConnection(connection);
                }
                else
                {
                    auto outputNode = ((MyNode*)connection.OutputNode.Node.Value);
                    outputNode->DeleteConnection(connection);
                }
            }
            // Then we delete our own connections, so we don't corrupt the list
            node->Connections.clear();

            // delete node;
            it = nodes.erase(it);
        }
        else
            ++it;
    }

    if (ImGui::IsMouseReleased(1) && ImGui::IsWindowHovered() && !ImGui::IsMouseDragging(1))
    {
        ImGui::FocusWindow(ImGui::GetCurrentWindow());
        ImGui::OpenPopup("NodesContextMenu");
    }

    if (ImGui::BeginPopup("NodesContextMenu"))
    {
        for (const auto& desc : available_nodes)
        {
            if (ImGui::MenuItem(desc.first.c_str()))
            {
                auto newNode = desc.second();
                nodes.push_back(newNode);
                ImNodes::AutoPositionNode(nodes.back().get());
            }
        }

        ImGui::Separator();
        if (ImGui::MenuItem("Reset Zoom"))
            ImNodes::GetCurrentCanvas()->Zoom = 1;

        if (ImGui::IsAnyMouseDown() && !ImGui::IsWindowHovered())
            ImGui::CloseCurrentPopup();
        ImGui::EndPopup();
    }

    ImNodes::Ez::EndCanvas();
#endif
}


