class mem_driver extends uvm_driver;
  // register to factory 
  `uvm_component_utils(mem_driver) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  ///////////////////// Build phase /////////////////////
  function void build_phase(uvm_pahase phase);
    super.build_phase(phase); 

  endfunction
  

  
  
  
  
endclass