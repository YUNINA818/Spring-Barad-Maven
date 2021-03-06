package com.lifeform.boardproject.article.persistence;

import java.util.List;

import com.lifeform.boardproject.article.domain.ArticleVO;
import com.lifeform.boardproject.commons.paging.Criteria;

public interface ArticleDAO {

	void create(ArticleVO articleVO) throws Exception;

    ArticleVO read(Integer articleNo) throws Exception;

    void update(ArticleVO articleVO) throws Exception;

    void delete(Integer articleNo) throws Exception;

    List<ArticleVO> listAll() throws Exception;
    
    List<ArticleVO> listPaging(int page) throws Exception;
    
    List<ArticleVO> listCriteria(Criteria criteria) throws Exception;
}
