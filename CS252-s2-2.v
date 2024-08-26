module p(W,X,Y,Z,R);
  input W,X,Y,Z;
  output R;
  
  assign R=(W&X) | (W &(~X) & Y) | ((~W)&X&Y&Z);
  
  
endmodule  