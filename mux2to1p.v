module mux2to1p (input sel, input x , input y, output z);
  // 2 to 1 mux at structural level logic
  
  wire selnot, xnandsel, ynandsel, xynand;
 
  // NOT gate inverts select line input
  not selnot (selnot, sel);
    // NAND gates for selection 
  nand x_nandsel (xnandsel, x, selnot);
    //NAND between input x and inverted select line
  nand y_nandsel (ynandsel, y, sel);
    
  nand xy_nand (xynand, xnandsel, ynandsel);
    // Assigning the output of the NOR gate to the output port
  assign z = xynand;
endmodule
// test  file is mux2to1ptest.v