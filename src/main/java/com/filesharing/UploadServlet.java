package com.filesharing;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Folder where files will be saved
        String uploadPath = "C:\\Tomcat10\\uploads";

        // Create uploads folder if it doesn't exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        // Get uploaded file
        Part filePart = request.getPart("file");

        // Get file name
        String fileName = filePart.getSubmittedFileName();

        // Save file
        filePart.write(uploadPath + File.separator + fileName);

        // Show success message
        response.setContentType("text/html");
        response.getWriter().println("<h2>File Uploaded Successfully!</h2>");
        response.getWriter().println("<a href='home.jsp'>Back to Home</a>");
    }
}