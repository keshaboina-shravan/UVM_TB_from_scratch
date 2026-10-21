class mem_env extends uvm_env;
  // register to factory 
  `uvm_component_utils(mem_env) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
 

  
  
  
  
  
  
endclass