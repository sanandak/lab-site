+++
tags = []
author = ""
description = "This project aims at developing an autonomous robotic system, capable of navigating crowded environments in a socially competent fashion."
title = "Social Navigation"
date = "2017-01-25T20:09:33-05:00"

+++


Despite the great progress in the field of robotic navigation over the past few
decades, navigating a human environment remains a hard task for a robot, due to
the lack of formal rules guiding traffic, the lack of explicit communication
among agents and the unpredictability of human behavior. Existing approaches
often result in robot motion that is hard to read, which causes unpredictable
human reactions to which the robot in turn reacts to, contributing to an
oscillatory joint behavior that hinders humans’ paths. We argue that the root of
the problem lies in the failure from the robot’s part to convey consistently its
intentions to human observers.

This project aims at developing an autonomous robotic system, capable of
navigating crowded environments in a socially competent fashion. To this end, we
develop novel models, algorithms, software and systems, which we plan on
validating experimentally in real-world scenarios.

The main novelty of our approach lies in the development of a novel planning
framework for closed-loop navigation in dynamic multi-agent workspaces. The core
of the framework is a novel topological representation, based on braid groups,
that models the collective behavior of multiple agents. Based on this
representation and employing data-driven techniques, our algorithms generate
motion plans that are consistent with the perceived context, thus resulting in
socially competent robot behaviors that allow for smooth integration of mobile
robots in crowded human environments. Our framework is inspired by insights from
studies on pedestrian behavior and action interpretation and leverages the power
of implicit communication to overcome the complications of the uncertainties
induced by the imperfections of existing models of human decision making.

Our robot platform is a Suitable Technologies Beam Pro, equipped with on-board
computation and an Occam Omni Stereo 360 RGBD camera, interfaced through ROS.
