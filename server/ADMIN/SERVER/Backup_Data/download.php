
<?php
 
	if(!file_exists("counter.txt")) {    // if counter.txt does not exists then it will 
									//execute the next lines of codes which
        die("Unable to open the counter.txt file! Please create it and set correct permissions.<br>");
    } else {
                $file1 = fopen("counter.txt", "r");     //this code open the counter.text to 
														//read its content
                $num = fgets($file1,4096);              // you get its content
                $num += 1;								// add by 1 in the value of $num
                fclose($file1);							//closes the file opened
  
                $file2 = fopen("counter.txt", "w");		// opens the file to write
                fputs($file2, $num);					// overwrites the value of $num
                fclose($file2);							// closes the file
    }
	 echo "Thank you for downloading a file there are  " . $num ." ". "no. downloads ";  
	 													// outputs the number of downloads
	$file = $_POST['file'];  				//for the “file” to be included in the function

		if( $file == "" ) 					//if there is no file or file not found or
											//NULL then it executes the next lines of codes. 
			{
			echo "<html><title>No file has been found</title></body></html>"; 
											//outputs this line of code						
			exit;    						//terminates execution of the code in the program
			} elseif ( ! file_exists( $file ) )      // if the filename chosen exists then 
											//		this code will execute the next lines of codes
			{
			echo "<html><title>please choose a file to Download</title><body>";
			exit;  	 						//terminates execution of the code in the program
			};

			header("Content-Type: application/force-download"); // this code identifies the type
											// of media the user chooses, if he choose the 
											//audio format then it identifies according to 
											//the .mp3 format.
			header("Content-Disposition: attachment; filename=\"".basename($file)."\";" );  
									//this line of code suggests the filename that we want to saved.
			readfile("$file");	// this line of code does the reading and interpreting 
								//of file so that it will be viewed in the web browser
			exit();				//terminates execution of the code in the program
			

?>




