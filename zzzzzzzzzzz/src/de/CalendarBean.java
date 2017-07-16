package de;

import java.util.Calendar;

public class CalendarBean {  
	 String day[]; 
	 int year = 2016, month = 6; 
	 public void setYear(int year) { 
	  this.year = year;
	 }
	 public int getYear() {
	  return year;
	 }
	 public void setMonth(int month) {
	  this.month = month;
	 }
	 public int getMonth() {
	  return month;
	 }
	 public String[] getCalendar() {
	  String a[] = new String[42]; 
	  Calendar k = Calendar.getInstance(); 
	  k.set(year, month - 1, 1);
	  int daydate = k.get(Calendar.DAY_OF_WEEK) - 1;
	  int[] day1={31,28,31,30,31,30,31,31,30,31,30,31};
	  int[] day2={31,29,31,30,31,30,31,31,30,31,30,31};
	  
	  if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
		  for(int i=daydate-1,n=day2[month-2];i>=0;i--){
			  a[i]=String.valueOf(n);
			  n--;
		  }
		   for (int i = daydate, n = 1; i < daydate + day2[month-1]; i++) {
	      a[i] = String.valueOf(n);
	        n++;
	      }
		   for(int i=daydate + day2[month-1],n=1;i<42;i++){
				  a[i]=String.valueOf(n);
				  n++;
			  }
		   } else {
			   for(int i=daydate-1,n=day1[month-2];i>=0;i--){
					  a[i]=String.valueOf(n);
					  n--;
				  }
				   for (int i = daydate, n = 1; i < daydate + day1[month-1]; i++) {
			      a[i] = String.valueOf(n);
			        n++;
			      }
				   for(int i=daydate + day1[month-1],n=1;i<42;i++){
						  a[i]=String.valueOf(n);
						  n++;
					  }
	    }	  
	  return a;
	}
}