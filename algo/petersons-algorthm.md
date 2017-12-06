---
layout: algo
index: true
comments: true
title: Peterson's algorthm
tags:
  - Sort
modifier: 'false'
modtime: '2017-12-06T00:42:09.423Z'

---
{% capture section_desc %}It is an algorithm for process synchronization. Often processes share memory space, and it is required that two processes must not work together on the same memory space at the same time, since writing simultaneously on a location by two or more processes may result in an erroneous value being assigned to the variable. We call it the critical section problem) Its short, its sweet, its clever, its essential. But a lot of algorithms have that. Why is it special to me?
Because if people were like the processes that use this algorithm to synchronize, the world would be a better place.

The algorithm uses two variables, flag and turn. A flag[n] value of true indicates that the process n wants to enter the critical section. Entrance to the critical section is granted for process P0 if P1 does not want to enter its critical section or if P1 has given priority to P0 by setting turn to 0

bool flag[0] = {false};
bool flag[1] = {false};
int turn;{% endcapture %}
{% capture section_complexity %}Look closely at the algorithm. Do you realize something? If process ‘i’ is ready , denoted by flag[i]=true, it actually sets the turn variable( That decides whose turn it is to enter the critical section) to ‘j’. So if process ‘j’ is ready and had its flag variable set to true, it meets all the criteria to enter the critical section. And what does ‘i’ do? It waits till the process ‘j’ ends and sets its (‘j’ ‘s) flag to false. Then it enters.{% endcapture %}
{% capture section_pseudocode %}do {
flag[i] = TRUE;
turn = j ;
while (flag[j] && turn == j ) ;
critical section
flag[i] = FALSE;
remainder section
} while (TRUE);

The variables i and j denote two processes , and we need to see to it that the processes fulfill the mutual exclusion criteria ( So that both process do not end up being in the critical section at the same time), the bounded waiting criteria and the progress criteria.

Process 0
P0:      flag[0] = true;
P0_gate: turn = 1;
         while (flag[1] == true && turn == 1)
         {
             // busy wait
         }
         // critical section
         ...
         // end of critical section
         flag[0] = false;
				 
Process 1
P1:      flag[1] = true;
P1_gate: turn = 0;
         while (flag[0] == true && turn == 0)
         {
             // busy wait
         }
         // critical section
         ...
         // end of critical section
         flag[1] = false;
P0 and P1 can never be in the critical section at the same time: If P0 is in its critical section, then flag[0] is true. In addition, either flag[1] is false (meaning P1 has left its critical section), or turn is 0 (meaning P1 is just now trying to enter the critical section, but graciously waiting), or P1 is at label P1_gate (trying to enter its critical section, after setting flag[1] to true but before setting turn to 0 and busy waiting). So if both processes are in their critical sections then we conclude that the state must satisfy flag[0] and flag[1] and turn = 0 and turn = 1. No state can satisfy both turn = 0 and turn = 1, so there can be no state where both processes are in their critical sections. (This recounts an argument that is made rigorous in{% endcapture %}
{% capture section_edu %}Here is a video that teaches and explains Peterson's algorithm solution in relation to operating system concepts.

https://www.youtube.com/watch?v=IeaFU__hzxM

{% endcapture %}
{% capture section_app %}When working at the hardware level, Peterson's algorithm is typically not needed to achieve atomic access. Some processors have special instructions, like test-and-set or compare-and-swap, that, by locking the memory bus, can be used to provide mutual exclusion in SMP systems.

Most modern CPUs reorder memory accesses to improve execution efficiency. Such processors invariably give some way to force ordering in a stream of memory accesses, typically through a memory barrier instruction. Implementation of Peterson's and related algorithms on processors which reorder memory accesses generally requires use of such operations to work correctly to keep sequential operations from happening in an incorrect order. Note that reordering of memory accesses can happen even on processors that don't reorder instructions (such as the PowerPC processor in the Xbox 360).

Most such CPUs also have some sort of guaranteed atomic operation, such as XCHG on x86 processors and load-link/store-conditional on Alpha, MIPS, PowerPC, and other architectures. These instructions are intended to provide a way to build synchronization primitives more efficiently than can be done with pure shared memory approaches

Do you realize how responsible and understanding these processes are? They are actually competing with each other to give the other the first chance, should both be ready.

Imagine the people in the world were like the processes. Each competing with one another , but only to do good for the next person. Everyone ready to give others the first chance. Trump saying how wonderful Hillary is and why all should vote for her, and Hillary blushing and explaining why Trump is the best{% endcapture %}
{% include algo.html %}