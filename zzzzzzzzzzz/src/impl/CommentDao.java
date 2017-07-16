package impl;

import java.util.List;

import de.Comment;

public interface CommentDao {
	public List<Comment> QueryAllComment();
	public boolean AddComment(Comment c);
	public boolean DeleteComment(int mid);
}
