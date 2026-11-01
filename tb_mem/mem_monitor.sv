class mem_monitor extends uvm_monitor;
  // register to factory 
  `uvm_component_utils(mem_monitor) //factoryregistration
    uvm_analysis_port #(mem_seq_item) mon_ap; 

  mem_seq_item seq_item;

  virtual mem_intf intf; //interface is a static component which we canot add inside dynamic class

    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  ///////////////////// Build phase /////////////////////
  function void build_phase(uvm_phase phase);
    super.build_phase(phase); 
        mon_ap = new("mon_ap", this);
 uvm_config_db#(virtual mem_intf)::get(
      this ,    // for where it is getting
       "",      // form whom we are getting "*" means for all 
       "vif",     // feild name or  pass key 
        intf      // value or the thing which we are getting
     );

  endfunction
  

  
  
  
  
endclass