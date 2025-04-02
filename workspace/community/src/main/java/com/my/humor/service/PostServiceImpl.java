package com.my.humor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.humor.mapper.PostMapper;
import com.my.humor.vo.PostVO;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	private PostMapper postMapper;

	@Override
	public void insertPost(PostVO post) {
	    String content = post.getContent(); // 글 내용
	    if (content != null && !content.isEmpty()) {
	        Document doc = Jsoup.parse(content);
	        Element img = doc.selectFirst("img"); // 첫 번째 이미지
	        if (img != null) {
	            String imageUrl = img.attr("src"); // ✅ 실제 src 값 꺼내기
	            post.setImageUrl(imageUrl);        // DB에 저장
	        }
	    }

	    postMapper.insertPost(post);
	}

}
