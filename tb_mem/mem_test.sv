class mem_test extends uvm_test;
  // register to factory 
  `uvm_component_utils(mem_test) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  
  
  
  
  
endclass