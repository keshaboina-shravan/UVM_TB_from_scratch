class mem_seq_item extends uvm_sequence_item;
  // register to factory 
  `uvm_component_utils(mem_seq_item) //factoryregistration
  
    
  //input and outpout port signals
  //rand 
  rand bit [9:0]addr;
    rand bit      wr_en;
    rand bit      rd_en;
    rand bit [7:0] wdata;
         bit [7:0] rdata;
  
  function new(string name = "mem_seq_item");
    super.new(name);
  endfunction

  constraint write_read {wr_en != rd_en;};
  
endclass