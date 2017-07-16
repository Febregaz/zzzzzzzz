package impl;

import java.util.List;

import de.Course;
import de.Listl;
import de.Option;
import de.Video;



public interface Enimpl {
	public   List<Listl> li(Integer s);
	public   List<Course> cc(Integer s);//根据类型选择题目
	public   List<Video> vv();//根据类型选择题目
	public   List<Option> oo();//根据类型选择题目
}
