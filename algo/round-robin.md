---
layout: algo
index: true
comments: true
title: Round Robin
tags:
  - Scheduling
modifier: 'false'
modtime: '2017-12-06T23:58:22.474Z'

---
{% capture section_desc %}As the term is generally used, time slices (also known as time quanta)[3] are assigned to each process in equal portions and in circular order, handling all processes without priority (also known as cyclic executive). Round-robin scheduling is simple, easy to implement, and starvation-free. Round-robin scheduling can also be applied to other scheduling problems, such as data packet scheduling in computer networks. It is an operating system concept.{% endcapture %}
{% capture section_complexity %}The time required when you need to allocate new memory for your queue, you operate in O(1).{% endcapture %}
{% capture section_pseudocode %}Let (time) quantum be 2 (sec.) ---time slice
if countQueue(CPUQUEUE) equals 1 THEN --- is a process (tran) running ?
if headqueue[CPUQUEUE] PCB_run equals 0 THEN --- process has completed
take process off CPU
if countQueue(READYQUEUE) greater than 0 THEN
issue_process onto CPU
decrement time quantum counter
else --- process has not completed
if headqueue[CPUQUEUE] time quantum equals 0 THEN --- time's up!
if countQueue(READYQUEUE) greater than 0 THEN
remove process from CPUQ and insert into READYQUEUE
reset time quantum counter
issue next available process onto CPUQ
decrement time quantum counter
else ----no processes (trans) in ready queue
reset time quantum counter
run for a tick
decrement time quantum counter
else ---quantum has not expired
run for a tick
decrement time quantum counter
else ---CPU is idle
if (countQueue(READYQUEUE) greater than 0 THEN
issue process onto CPU
decrement time quantum counter
end_if
end_if
end_if
end_if
end_if
end{% endcapture %}
{% capture section_edu %}In computer operation, one method of having different program process take turns using the resources of the computer is to limit each process to a certain short time period, then suspending that process to give another process a turn (or "time-slice"). This is often described as round-robin process scheduling.{% endcapture %}
{% capture section_app %}In sports tournaments and other games, round-robin scheduling arranges to have all teams or players take turns playing each other, with the winner emerging from the succession of events.{% endcapture %}
{% include algo.html %}