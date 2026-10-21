// create a interface 
// clock and rest are global signals 

interface mem_intf#(int ADDR_WIDTH =10 , int DATA_WIDTH = 8)(input clk , reset);
  
  
//  declare dut signals (input and output ports)
   
     //control signals
    logic [ADDR_WIDTH-1:0]  addr,
    logic                   wr_en,
    logic                   rd_en,
    
    //data signals
    logic  [DATA_WIDTH-1:0] wdata,
    logic  [DATA_WIDTH-1:0] rdata
  
  
  
  
  //clocking block 
  // modport 
  
  
  
  
  
endinterface 