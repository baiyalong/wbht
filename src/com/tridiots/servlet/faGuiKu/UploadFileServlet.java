package com.tridiots.servlet.faGuiKu;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFileServlet extends HttpServlet {
	

	private static final long serialVersionUID = 7942326848801679254L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String path = this.getServletContext().getRealPath("/fileupload/");
		//String path = request.getContextPath()+"/fileupload/";
		
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
		sfu.setHeaderEncoding("UTF-8");
		try {
			List fileList = sfu.parseRequest(request);
			String name = "";
			String n;
			String extName = "";//后缀名
			//////////////////////////////////////////////////////////////////////
			String fgwh = "";
			for(int j=1;j<fileList.size()-5;j++){
				fgwh = fgwh+new String(((FileItem)fileList.get(j)).getString().getBytes("iso-8859-1"),"utf-8");
			}
			////////////////////////////////////////////////////////////////////////////////
			for (int i = 0; i < fileList.size(); i++) {
				FileItem fi = (FileItem) fileList.get(i);
				if (!fi.isFormField()) {
					name = fi.getName();
					if (name == null || "".equals(name.trim())) {
						continue;
					}
					if (name.lastIndexOf(".") >= 0) {
						extName = name.substring(name.lastIndexOf("."));
					}

					String fileName = fgwh + extName;
					
					System.out.println(fileName);
					File saveFile = new File(path +"/"+ fileName);
					System.out.println("上传文件的wenhao名servlet："+saveFile);
					fi.write(saveFile);
				}
			}
			response.getWriter().println("1");
		} catch (Exception e) {
			response.getWriter().println("0");
			e.printStackTrace();
		}
	}
}
