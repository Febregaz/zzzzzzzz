package json;

import java.util.List;

import de.Comment;
import net.sf.json.JSONArray;

public class GetJson {

	public JSONArray getJSON(List<Comment> list){
		JSONArray json = JSONArray.fromObject(list);
		return json;
	}
}
