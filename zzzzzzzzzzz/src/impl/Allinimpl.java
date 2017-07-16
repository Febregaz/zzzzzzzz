package impl;

import java.util.List;

import de.Course;
import de.Tribune;

public interface Allinimpl {
	public void addt(String b,String c,String d);
	public   List<Tribune> tri();
	public List<Course> cour(String name);
	public boolean zhuce(String a,String b);
	public boolean yanzheng(String a,Integer b);
	public boolean buy(String a,Integer b);
}
