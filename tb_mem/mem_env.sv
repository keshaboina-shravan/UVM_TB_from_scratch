

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
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  
   /////// creating the object using factory method 
    agt = mem_agent::type_id::create("agt",this);  
    scb = mem_scoreboard::type_id::create("scb",this);  
  
  endfunction
  
   //////////////////////////////////connect phase//////////////////////
  virtual function void connect_phase (uvm_phase phase);
    //super.connect_phase(phase);
     
    agt.mon.analysis_port.connect(scb.analyasis_imp);
  
  endfunction

  
  
  
  
endclass