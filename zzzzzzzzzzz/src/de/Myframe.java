package de;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

public class Myframe extends JFrame{
	
Myframe(){	
	this.setTitle("时钟日历");
	this.setSize(750, 300);
	this.setLocationRelativeTo(null);
	Container c=this.getContentPane();
	c.setLayout(new BorderLayout());
	Clock clock=new Clock();
	Timek timek=new Timek();	
	c.add(new JLabel("2016年6月23日"),BorderLayout.WEST);
	c.add(clock,BorderLayout.WEST);
	c.add(timek,BorderLayout.EAST);
	TimeThread time =new TimeThread(timek);
	time.start();
	this.setVisible(true);
	this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
}
public static void main(String[] args) {
	Myframe myfarme=new Myframe();
}
}
