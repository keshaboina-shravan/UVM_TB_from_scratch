class mem_driver extends uvm_driver;
  // register to factory 
  `uvm_component_utils(mem_driver) //factoryregistration
  
  mem_seq_item seq_item;
  virtual mem_intf intf;
//// driver has in built TLM port////////////////////// noo need to create a port we use inbuilt port 
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
  ///////////////////// Build phase /////////////////////
  function void build_phase(uvm_phase phase);
    super.build_phase(phase); 
     // settiong uvm conifg db 
    uvm_config_db#(virtual mem_intf)::get(
      this ,    // for where it is getting
       "",      // form whom we are getting "*" means for all 
       "vif",     // feild name or  pass key 
        intf      // value or the thing which we are getting
     );
//////////////////////////////////connect phase//////////////////////
  virtual function void connect_phase (uvm_phase phase);
    //super.connect_phase(phase);
     
    drv.seq_item_port.connect(seqr.seq_item_export);
  
  endfunction


  endfunction
  

  
  
  
  
endclass