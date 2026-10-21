`include "mem_agent.sv"
class mem_env extends uvm_env;
  // register to factory 
  `uvm_component_utils(mem_env) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
   
  // instantiate agent and scoreboared 
  mem_agent      agt;
  mem_scoreboard scb;
  // create agent and scoreboard 
  // phases    
  ///////////////////// Build phase /////////////////////
  function build_phase(uvm_pahase phase);
    super.build_phase(phase);
  
   /////// creating the object using factory method 
    mem_agent = mem_agent::type_id::create("agt",this);  
    mem_scoreboard = mem_scoreboard::type_id::create("scb",this);  
  
  endfunction
  
  
  
  
  
  
endclass