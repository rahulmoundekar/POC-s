package com.create.file;

import java.io.File;
import java.io.IOException;

public class CreateFile {
	public void createFile() {
		String fileName = "newFile.xml";
		File file = new File("files/newFile.xml");

		try {
			if (file.createNewFile()) {
				System.out.println("File named " + fileName
						+ " created successfully !");
			} else {
				System.out.println("File with name " + fileName
						+ " already exixts !");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}