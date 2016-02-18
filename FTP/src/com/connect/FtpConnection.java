package com.connect;

import java.io.IOException;
import java.net.SocketException;
import org.apache.commons.net.ftp.FTPClient;

public class FtpConnection {
	public static void main(String args[]) {

		// get an ftpClient object
		FTPClient ftpClient = new FTPClient();

		try {
			// pass directory path on server to connect
			ftpClient.connect("servername");

			// pass username and password, returned true if authentication is
			// successful
			boolean login = ftpClient.login("username", "password");

			if (login) {
				System.out.println("Connection established...");
				System.out.println("Status: " + ftpClient.getStatus());
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
