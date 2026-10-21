class mem_test extends uvm_test;
  // register to factory 
  `uvm_component_utils(mem_test) //factoryregistration
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  mem_env env;
  // phases    
  ///////////////////// Build phase /////////////////////
  function build_phase(uvm_pahase phase);
    super.build_phase(phase);
  
   /////// creating the object using factory method 
    env = mem_env::type_id::create("env",this);  
    
  endfunction
  
  
  
  
  
endclass