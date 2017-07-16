package de;

public class TimeThread extends Thread{
	 
    Timek timek=new Timek();
    TimeThread(Timek timek){
    	this.timek=timek;
    }
	public void run() {
		// TODO Auto-generated method stub
		
	   	
	try {
		sleep(1000);
		while(true){
			timek.setCurrentTime();
	        timek.repaint();
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("error");
	}

	}
	
}