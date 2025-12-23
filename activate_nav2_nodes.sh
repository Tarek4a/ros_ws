#!/bin/bash

nodes=(
  "/controller_server"
  "/slam_toolbox"
  "/planner_server"
  "/bt_navigator"
  "/global_costmap/global_costmap"
  "/local_costmap/local_costmap"
  "/collision_monitor"
  
)

for node in "${nodes[@]}"; do
  echo "🔄 Configuring $node..."
  ros2 lifecycle set "$node" configure
  sleep 1
  echo "✅ Activating $node..."
  ros2 lifecycle set "$node" activate
  sleep 1
done

echo "🎯 كل النودات اتفعلت."
