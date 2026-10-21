class mem_driver extends uvm_driver;
  // register to factory 
  `uvm_component_utils(mem_driver) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  
  
endclass