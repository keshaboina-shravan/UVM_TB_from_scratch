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
     // settiong uvm conifg db 
    uvm_config_db#(virtual mem_intf)::get(
      this ,    // for where it is getting
       "",      // form whom we are getting "*" means for all 
       "vif",     // feild name or  pass key 
        intf      // value or the thing which we are getting
     );


  endfunction
  

  
  
  
  
endclass