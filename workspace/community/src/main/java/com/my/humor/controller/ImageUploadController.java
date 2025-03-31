package com.my.humor.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class ImageUploadController {

	@PostMapping("/image/upload")
	public void uploadImage(@RequestParam("upload") MultipartFile upload,
	                        @RequestParam("CKEditorFuncNum") String callback,
	                        HttpServletRequest request,
	                        HttpServletResponse response) throws IOException {

	    String originalFilename = upload.getOriginalFilename();
	    String savedName = UUID.randomUUID() + "_" + originalFilename;

	    // ✅ ServletContext 가져오기
	    ServletContext context = request.getSession().getServletContext();
	    String realPath = context.getRealPath("/resources/upload/");
	    System.out.println("실제 업로드 경로: " + realPath);

	    // ✅ 폴더 생성
	    File uploadDir = new File(realPath);
	    if (!uploadDir.exists()) uploadDir.mkdirs();

	    // ✅ 파일 저장
	    File file = new File(realPath, savedName);
	    upload.transferTo(file);

	    // ✅ 브라우저에서 접근할 URL
	    String fileUrl = request.getContextPath() + "/resources/upload/" + savedName;

	    response.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out = response.getWriter();
	    out.println("<script>");
	    out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + ", '" + fileUrl + "', '업로드 완료');");
	    out.println("</script>");
	    out.flush();
	}



}
