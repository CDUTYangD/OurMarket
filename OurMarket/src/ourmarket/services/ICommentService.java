package ourmarket.services;

import java.util.List;

import ourmarket.models.Comments;

/*
 * 评论服务接口
 */
public interface ICommentService {
	//增
	void addComment(Comments comments);
	//删
	void deleteComment(int commentID);
	//改
	void updateComment(Comments comments);
	//查
	List<Comments> findCommmentsByGid(int gid);
	List<Comments> findAllComents();
	List<Comments> findCommentsByUid(int uid);
}
