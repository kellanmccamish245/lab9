# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Kellan McCamish, Sara Street, Justine Jacobson
## Summary
In this lab we learned how to implement a D-Latch and scaled it up to a 4-byte memory system. We utilized sequential logic in Verilog so that the circuits can store and hold state over time, unlike combinational logic. In the D-Latch when btnC is pressed it gets the value of the switch and holds it. In the 4-Byte memory system we utilized demux to route the data and stores the signal into the correct byte. Then we send bytes output to the MUX, which then displays the desired output to our board(display).
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can't just use structural verilog to implement latches because the code would be inefficient and create unnecessary complexity in our program. By using structural Verilog we were able to save space and create sn effective program.
### What is the meaning of always @(*) in a sensitivity block?
The function means that the system needs to build a sensitivity list automatically, and register when our inputs change. 
### What importance is memory to digital circuits?
Memory allows a board to act on previously given data, and allows for percise outputs, and so that we can reuse old logic and simplify our progams. 
