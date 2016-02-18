package com.main;

import com.create.file.CreateFile;
import com.delete.file.DeleteFile;
import com.rename.file.RenameFile;

public class FileHandlingMain {

	public static void main(String[] args) {

		/* use one operation at a time to check the functionality */

		// creating a file
		CreateFile createFile = new CreateFile();
		createFile.createFile();

		// rename a file
		RenameFile renameFile = new RenameFile();
		// renameFile.renameFile();

		// delete a file
		DeleteFile deleteFile = new DeleteFile();
		// deleteFile.deleteFile();
	}

}