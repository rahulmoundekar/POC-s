package com.delete.file;

import java.io.File;

public class DeleteFile {

	public void deleteFile() {
		try {
			File fileToDelete = new File("files/newFileName.xml");

			if (fileToDelete.delete()) {
				System.out.println("File deleted successfully !");
			} else {
				System.out.println("File delete operation failed !");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
