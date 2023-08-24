`timescale 1ns / 1ns
`include "mux2to1p.v"
module mux2to1str_tb;
  reg sel;
  reg x;
  reg y;
  wire z;
  //Inputs & Outputs
    mux2to1p uut (.sel(sel), .x(x), .y(y), .z(z));
  
  initial begin
    $dumpfile("mux2to1p.vcd");
    $dumpvars(0, mux2to1str_tb);
        // Test case - sel=0, x=0, y=0
    sel = 0;
    x = 0;
    y = 0;
    #5;
    $display("Test case - sel=0, x=0, y=0: z=%y", z);
    
    // Test case - sel=0, x=0, y=1
    sel = 0;
    x = 0;
    y = 1;
    #5;
    $display("Test case - sel=0, x=0, y=1: z=%y", z);
    
    // Test case - sel=0, x=1, y=0
    sel = 0;
    x = 1;
    y = 0;
    #5;
    $display("Test case - sel=0, x=1, y=0: z=%b", z);
    

    sel = 0;
    x = 1;
    y = 1;
    #5;
    $display("Test case - sel=0, x=1, y=1: z=%y", z);
    
   
    sel = 1;
    x = 0;
    y = 0;
    #5;
    $display("Test case - sel=1, x=0, y=0: z=%y", z);
    
    
    sel = 1;
    x = 0;
    y = 1;
    #5;
    $display("Test case - sel=1, x=0, y=1: z=%b", z);
    
    
    sel = 1;
    x = 1;
    y= 0;
    #5;
    $display("Test case - sel=1, a=x, y=0: z=%y", z);
    
   
    sel = 1;
    x = 1;
    y = 1;
    #5;
    $display("Test case - sel=1, x=1, y=1: z=%y", z);
    
    $finish;
  end
endmodule