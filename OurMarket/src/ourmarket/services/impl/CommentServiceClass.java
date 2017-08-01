package ourmarket.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ourmarket.daos.CommentsDAO;
import ourmarket.models.Comments;
import ourmarket.services.ICommentService;

/*
 * 评论服务类
 */
@Service 
public class CommentServiceClass implements ICommentService{
	@Autowired 
	CommentsDAO  commentDAO;

	@Override
	public void addComment(Comments comments) {
		// TODO Auto-generated method stub
		commentDAO.save(comments);
	}

	@Override
	public void deleteComment(int commentID) {
		// TODO Auto-generated method stub
		Comments comments=commentDAO.findById(commentID);
		commentDAO.delete(comments);
	}

	@Override
	public void updateComment(Comments comments) {
		// TODO Auto-generated method stub
		commentDAO.update(comments);
	}

	@Override
	public List<Comments> findAllComents() {
		// TODO Auto-generated method stub
		return commentDAO.findAll();
	}

	@Override
	public List<Comments> findCommentsByUid(int uid) {
		// TODO Auto-generated method stub
		return commentDAO.findByUid(uid);
	}
	
}
