package com.my.humor.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	 @GetMapping("/{categoryName}")
    public String listByCategory(@PathVariable("categoryName") String categoryName, Model model) {
//
//        // categoryName → 예: "humor", "stock"
//        int categoryId = postService.getCategoryIdByName(categoryName);  // 또는 DB에서 변환
//
//        List<PostVO> posts = postService.getPostsByCategory(categoryId);
//        model.addAttribute("postList", posts);
//        model.addAttribute("categoryName", categoryName);
//        model.addAttribute("categoryId", categoryId);

        return "board/list";
    }
}
