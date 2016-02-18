package com.ceatefolder;

import java.io.IOException;
import java.net.SocketException;
import org.apache.commons.net.ftp.FTPClient;

public class CreateFolder {
	public static void main(String args[]) {

		// get an ftpClient object
		FTPClient ftpClient = new FTPClient();

		try {
			// pass directory path on server to connect
			ftpClient.connect("servername ");

			// pass username and password, returned true if authentication is
			// successful
			boolean login = ftpClient.login("username", "password");

			if (login) {
				System.out.println("Connection established...");

				boolean folderCreated = ftpClient.makeDirectory("feeds");

				if (folderCreated) {
					System.out.println("Directory created successfully !");
				} else {
					System.out.println("Error in creating directory !");
				}

				boolean folderdeleted = ftpClient.removeDirectory("feeds");

				if (folderdeleted) {
					System.out.println("Directory removed successfully !");
				} else {
					System.out.println("Error in removing directory !");
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
