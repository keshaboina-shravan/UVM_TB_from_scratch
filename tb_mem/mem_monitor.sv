class mem_monitor extends uvm_monitor;
  // register to factory 
  `uvm_component_utils(mem_monitor) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  ///////////////////// Build phase /////////////////////
  function build_phase(uvm_pahase phase);
    super.build_phase(phase); 

  endfunction
  

  
  
  
  
endclass