package com.my.humor.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.MediaTypeFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.beans.factory.annotation.Value;


@RestController
@RequestMapping("/image")
public class ImageUploadController {

    @Value("${file.upload.path}")
    private String uploadPath;  // application.properties에서 가져옴

    @PostMapping("/upload")
    public void uploadImage(@RequestParam("upload") MultipartFile upload,
                            HttpServletResponse response) throws IOException {
        String originalName = upload.getOriginalFilename();
        String savedName = UUID.randomUUID() + "_" + originalName;
        File file = new File(uploadPath, savedName);

        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs(); // 폴더 없으면 생성
        }

        upload.transferTo(file);

        String imageUrl = "/image/files/" + savedName;

        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<script>window.parent.CKEDITOR.tools.callFunction(1, '" + imageUrl + "', '업로드 성공')</script>");
        out.flush();
    }

    @GetMapping("/files/{filename:.+}")
    public ResponseEntity<UrlResource> serveImage(@PathVariable String filename) throws MalformedURLException {
        File file = new File(uploadPath + filename);
        if (!file.exists()) {
            return ResponseEntity.notFound().build();
        }

        UrlResource resource = new UrlResource(file.toURI());

        return ResponseEntity.ok()
                .contentType(MediaTypeFactory.getMediaType(file.getName()).orElse(MediaType.APPLICATION_OCTET_STREAM))
                .body(resource);
    }
}
