package com.download;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketException;
import org.apache.commons.net.ftp.FTPClient;

public class DownloadFile {
	public static void main(String args[]) {

		// get an ftpClient object
		FTPClient ftpClient = new FTPClient();
		FileOutputStream fos = null;

		try {
			// pass directory path on server to connect
			ftpClient.connect("servername");

			// pass username and password, returned true if authentication is
			// successful
			boolean login = ftpClient.login("username", "password");

			if (login) {
				System.out.println("Connection established...");

				fos = new FileOutputStream("files/downloadedFile.txt");
				boolean download = ftpClient.retrieveFile("uploadedFile.txt",
						fos);
				if (download) {
					System.out.println("File downloaded successfully !");
				} else {
					System.out.println("Error in downloading file !");
				}

				// logout the user, returned true if logout successfully
				boolean logout = ftpClient.logout();
				if (logout) {
					System.out.println("Connection close...");
				}
			} else {
				System.out.println("Connection fail...");
			}

		} catch (SocketException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				ftpClient.disconnect();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
