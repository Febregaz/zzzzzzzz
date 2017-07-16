package de;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.*;

import javax.swing.*;


public class Clock extends JPanel implements ActionListener{
	JButton[] b=new JButton[42];
	JTextField t1=new JTextField(5);
	JTextField t2=new JTextField(5);
	JButton b1=new JButton("上年");
	JButton b2=new JButton("下年");
	JButton b3=new JButton("上月");
	JButton b4=new JButton("下月");
	CalendarBean c=new CalendarBean();  		  
	public Clock(){
		this.setLayout(new BorderLayout());		
		JPanel jp1=new JPanel();
		JPanel jp2=new JPanel();
		JPanel jp3=new JPanel();
		jp1.setLayout(new GridLayout(1,8));
		jp1.add(b1);
		jp1.add(t1);
		jp1.add(new JLabel("年"));
		jp1.add(b2);
		jp1.add(b3);
		jp1.add(t2);
		jp1.add(new JLabel("月"));
		jp1.add(b4);
		JLabel jl1=new JLabel("日");
		JLabel jl2=new JLabel("一");
		JLabel jl3=new JLabel(" 二");
		JLabel jl4=new JLabel("三");
		JLabel jl5=new JLabel("四");
		JLabel jl6=new JLabel("五");
		JLabel jl7=new JLabel("六");
		jp2.setLayout(new GridLayout(7,7));
		jp2.add(jl1);
		jp2.add(jl2);
		jp2.add(jl3);
		jp2.add(jl4);
		jp2.add(jl5);
		jp2.add(jl6);		
		jp2.add(jl7);						
		for (int i=0;i<42;i++){
			b[i]=new JButton();
			jp2.add(b[i]);
		}		
		String day[] = c.getCalendar();
	   for (int i = 0; i < 42; i++) {
	    b[i].setText(day[i]);
	   }
		this.add(jp1,BorderLayout.NORTH);	
		this.add(jp2,BorderLayout.SOUTH);
		t1.setText(String.valueOf(c.year));
		t2.setText(String.valueOf(c.month));
		b1.addActionListener(this);
		b2.addActionListener(this);
		b3.addActionListener(this);
		b4.addActionListener(this);
	}
 public void actionPerformed(ActionEvent e) {
		  if (e.getSource() == b1) { 
		   c.year =  c.year-1;
		   t1.setText(String.valueOf(c.year));
		   c.setYear(c.year);
		   String day[] = c.getCalendar();
		   for (int i = 0; i < 42; i++) {
		    b[i].setText(day[i]);
		   }
		   }
		   if (e.getSource() == b2) { 
			   c.year =  c.year+1;
			   t1.setText(String.valueOf(c.year));
			   c.setYear(c.year);
			   String day[] = c.getCalendar();
			   for (int i = 0; i < 42; i++) {
			    b[i].setText(day[i]);
			   }
		   }
		   if (e.getSource() == b3) { 
			   c.month =  c.month-1;
			   if(c.month<1)
				   c.month=1;
			   t2.setText(String.valueOf(c.month));
			   c.setMonth(c.month);
			   String day[] = c.getCalendar();
			   for (int i = 0; i < 42; i++) {
			    b[i].setText(day[i]);
			   }
		   }
		   if (e.getSource() == b4) { 
			   c.month =  c.month+1;
			   if(c.month>12)
				   c.month=1;
			   t2.setText(String.valueOf(c.month));
			   c.setMonth(c.month);
			   String day[] = c.getCalendar();
			   for (int i = 0; i < 42; i++) {
			    b[i].setText(day[i]);
			   }
		   }
 }	



}
