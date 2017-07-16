package de;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Calendar;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class Timek extends JPanel{
     private int hour;
	 private int minute;
	 private int second;
	 public Timek (){
			setCurrentTime();		
	 }
	void setCurrentTime() {
	 Calendar calendar = Calendar.getInstance();
	 this.hour = calendar.get(Calendar.HOUR_OF_DAY);	
	 this.minute = calendar.get(Calendar.MINUTE);
	 this.second  = calendar.get(Calendar.SECOND);
	 System.out.print(hour);
	 System.out.print(minute);
	 System.out.println(second);
	 }
	 public void paintComponent(Graphics g){
			super.paintComponent(g);	
			int clockradius = (int)(Math.min(getWidth(),getHeight())*0.4);
			int x = getWidth()/2;
			int y = getHeight()/2;
			g.drawOval(x-clockradius, y-clockradius, 2*clockradius, 2*clockradius);
			g.drawString("12",x-5,y-clockradius+12);
			g.drawString("9", x-clockradius+3, y+5);
			g.drawString("3",x-10+clockradius,y+3);
			g.drawString("6",x-3,y+clockradius-3);
			g.drawString("1",(int)(x+clockradius*Math.sin(Math.PI/6)-5),(int)(y-clockradius*Math.cos(Math.PI/6)+10));
			g.drawString("2",(int)(x+clockradius*Math.sin(Math.PI/3)-8),(int)(y-clockradius*Math.cos(Math.PI/3)+10));
			g.drawString("4",(int)(x+clockradius*Math.cos(Math.PI/6)-8),(int)(y+clockradius*Math.sin(Math.PI/6)));
			g.drawString("5",(int)(x+clockradius*Math.cos(Math.PI/3)-4),(int)(y+clockradius*Math.sin(Math.PI/3)-2));
			g.drawString("7",(int)(x-clockradius*Math.sin(Math.PI/6)),(int)(y+clockradius*Math.cos(Math.PI/6)));
			g.drawString("8",(int)(x-clockradius*Math.sin(Math.PI/3)+2),(int)(y+clockradius*Math.cos(Math.PI/3)+2));
			g.drawString("10",(int)(x-clockradius*Math.cos(Math.PI/6)),(int)(y-clockradius*Math.sin(Math.PI/6))+10);
			g.drawString("11",(int)(x-clockradius*Math.cos(Math.PI/3)-2),(int)(y-clockradius*Math.sin(Math.PI/3)+10));
			
			
			int sl=(int) (clockradius *0.9);
			int sx=(int)(x+sl*Math.sin(second*(2*Math.PI/60)));
			int sy=(int)(y-sl*Math.cos(second*(2*Math.PI/60)));
			g.setColor(Color.red);
			g.drawLine(x,y,sx,sy);
			
			int ml=(int) (clockradius *0.75);
			int mx=(int)(x+ml*Math.sin((minute+second/60)*(2*Math.PI/60)));
			int my=(int)(y-ml*Math.cos((minute+second/60)*(2*Math.PI/60)));
			g.setColor(Color.blue);
			g.drawLine(x,y,mx,my);		
			
			
			int hl=(int) (clockradius *0.5);
			int hx=(int)(x+hl*Math.sin((hour%12+minute/60.0+second/(60.0*60.0))*(2*Math.PI/12)));
			int hy=(int)(y-hl*Math.cos((hour%12+minute/60.0+second/(60.0*60.0))*(2*Math.PI/12)));
			g.setColor(Color.GRAY);
			g.drawLine(x,y,hx,hy);

			
	 }
	 public Dimension getPreferredSize (){
			return new Dimension(230,230);
		}
}

