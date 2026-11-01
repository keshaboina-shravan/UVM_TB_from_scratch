class mem_scoreboard extends uvm_scoreboard;
  // register to factory 
  `uvm_component_utils(mem_scoreboard) //factoryregistration
    uvm_analysis_imp #(mem_seq_item,mem_scoreboard) scb_aip; 
  
  
    
// standard  construcetor 
  function new(string name ,uvm_component parent);
    super.new(name, parent);
  endfunction
  
  
 
  ///////////////////// Build phase /////////////////////
  function void  build_phase(uvm_pahase phase);
    super.build_phase(phase); 
        scb_aip = new("scb_aip", this);

  endfunction

  

  
  


  
  
endclass