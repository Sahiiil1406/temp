module tb();
  reg W,X,Y,Z;
  wire R;
  p t(W,X,Y,Z,R);
  
  initial begin
    $dumpfile("CS252-s2-2.vcd");
    $dumpvars(0, tb);
    $display("TRUTH TABLE");
    $display("A  |  B |C  D | R");
    $monitor("%b  %b  %b  %b  %b",W,X,Y,Z,R);
    
    for(integer i=0;i<16;i=i+1)
      begin
        #10
        {W,X,Y,Z}=i;
      end  
      $finish;
    
  end
  
  
endmodule