package impl;

import java.util.List;

import de.Video;

public interface VideoDao {
	public List<Video> QueryAllVideo();
	public boolean DeleteVideo(int vid);
}
