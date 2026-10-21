`include "mem_dirver.sv"
`include "mem_monitor.sv"
`include "mem_sequencer.sv"

class mem_agent extends uvm_agent;
  // register to factory 
  `uvm_component_utils(mem_agent) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
   
 
  mem_driver    drv;
  mem_monitor   mon;
  mem_sequencer seqr;
  // create dirver, monitor and sequener  
  // phases    
  ///////////////////// Build phase /////////////////////
  function build_phase(uvm_pahase phase);
    super.build_phase(phase);
  
   /////// creating the object using factory method 
    mem_driver= mem_driver::type_id::create("drv",this);  
    mem_monitor = mem_monitor::type_id::create("mon",this);  
mem_sequencer = mem_sequencer::type_id::create("seqr",this);  

  endfunction
  
  
  
  
  
  
  
  
endclass