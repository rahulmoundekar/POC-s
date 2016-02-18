package com.rename.file;

import java.io.File;

public class RenameFile {
	public void renameFile() {
		File oldFileName = new File("files/newFile.xml");
		File newFileName = new File("files/newFileName.xml");

		try {
			if (oldFileName.renameTo(newFileName)) {
				System.out.println("File renamed successfull !");
			} else {
				System.out.println("File rename operation failed !");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
