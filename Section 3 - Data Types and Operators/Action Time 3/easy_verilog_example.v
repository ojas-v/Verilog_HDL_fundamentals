`timescale 1ns/1ps

module easy_verilog_example ();
  
  // 1-bit registers
  reg x = 1'b0;      // initialize x to 0
  reg y = 1'b1;      // initialize y to 1
  reg z;             // result register

  // Display whenever x, y, or z changes
  always @(x or y or z) begin
    $display("At time %0t: x = %b, y = %b, z = %b", $time, x, y, z);
  end

  // Stimulus
  initial begin
    #2; 
      z = x ^ y;         // XOR
    #10; 
      y = 1'b0;          // change y to 0
      z = x | y;         // OR
    #10; 
      z = ~z;            // NOT
    #10; 
    $finish;             // end simulation
  end

endmodule
