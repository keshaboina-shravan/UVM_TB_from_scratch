// this is tb _top
// started writing uvm test bench 
////////////////////////////////////
// need to include uvm machro 
`include uvm_macros.svh
`include "interface.sv"
module tb ;
  
  // declere clk and rest 
  bit clk;
  bit reset;
  
  // insaantiate interface ,dut ,test 

  // interface 
  
  mem_intf intf(clk,reset);
  
  // dut 
  memory DUT(
    .clk(intf.ck),
    .reset(intf.reset),
    .addr(intf.addr),
    .wdata(intf.wdata),
    .rdata(intf.rdata),
    .wr_en(intf.wr_en),
    .rd_en(intf.rd_en)
  );
  
  
  
  // geterente the clock 
  initial  clk =1'b1;
  always #5 clk = ~clk
  //reset
    initial begin
    reset =1;
        #10 
    reset =0;
    end  
    
     ///
     initial begin 
 // settiong uvm conifg db 
    uvm_config_db#(virtual mem_intf)::set(
      uvm_root::get(),    // for where it is setting
       "*",      // form whom we are setting "*" means for all 
       "vif",     // feild name or  pass key 
        intf      // value or the thing which we are setting
     );

// trigger the test

run_test = ("");
      end 
     // dump file 

endmodule 