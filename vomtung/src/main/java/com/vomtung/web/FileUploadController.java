package com.vomtung.web;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/fileupload")
public class FileUploadController {

	/**
     * Upload single file using Spring Controller
     */
    @RequestMapping(value = "/image", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFileHandler(@RequestParam("file") MultipartFile file,HttpServletRequest request) {
 
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
 
                // Creating the directory to store file
                File dir = new File(request.getSession().getServletContext().getRealPath("/upload"));
                //File dir = new File("/temp");
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()+"/"+System.currentTimeMillis()+".jpg");
                String requestUrl = request.getRequestURL().toString();
                requestUrl = requestUrl.substring(0, requestUrl.lastIndexOf("/") + 1) + "upload/" + "image1.jpg";
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                return "You successfully uploaded file="+serverFile.getAbsolutePath()+"url:"+requestUrl;
            } catch (Exception e) {
                return "You failed to upload => " + e.getMessage();
            }
        } else {
            return "You failed to upload "+ " because the file was empty.";
        }
    }
    
    /**
     * Upload single file using Spring Controller
     */
    /*@RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImage(@RequestParam(value="fileName", required=true) String  fileName,HttpServletResponse response) {
    	response.setContentType("image/jpeg");

		String pathToWeb = getServletContext().getRealPath(File.separator);
		File f = new File(pathToWeb + "avajavalogo.jpg");
		BufferedImage bi = ImageIO.read(f);
		OutputStream out = response.getOutputStream();
		ImageIO.write(bi, "jpg", out);
		out.close();
    }*/
}
