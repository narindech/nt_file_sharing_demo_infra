SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS FileSharingDB;
USE FileSharingDB;
CREATE TABLE IF NOT EXISTS UserCredentials (user_id INT unsigned NOT NULL AUTO_INCREMENT, public_id VARCHAR(255), user_name VARCHAR(255), user_password VARCHAR(255) DEFAULT NULL, first_name VARCHAR(255), last_name VARCHAR(255), primary key(user_id), UNIQUE KEY (user_id));
SELECT * FROM UserCredentials;
CREATE TABLE IF NOT EXISTS FileSharing (item_id INT unsigned NOT NULL AUTO_INCREMENT, filename VARCHAR(255), filetype VARCHAR(255), filesize VARCHAR(255), filepath VARCHAR(255), upload_time datetime, edit_time datetime, uploader VARCHAR(255), editor VARCHAR(255), primary key(item_id), UNIQUE KEY (item_id));
SELECT * FROM FileSharing;

-- INSERT INTO FileSharing (filename, filetype, filesize, filepath, upload_time, edit_time, uploader, editor) VALUES ('test_filename', 'xlsx', '3MB', '/test/path/', '2022-08-04', null, 'nongnarindech@gmail.com', null);
SELECT * FROM FileSharing;

ALTER TABLE UserCredentials ADD public_id INT; 
ALTER TABLE UserCredentials MODIFY COLUMN public_id VARCHAR(255);