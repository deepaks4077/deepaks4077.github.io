---
layout: post
category : Unix
tagline: "Unix"
comments: true
---

Linux is FUN. Open Source is FUN. I am looking into on an open-source project called Loris ([link](https://github.com/aces/Loris)) and I had to inspect the installation script because of a failed install. The installation file introduced me to umasks and pipes. 

#### Bitmasks

What is a bitmask? What are they used for? The literal meaning would suggest they are used to hide bits or the true significance/position of bits in a larger collection. While they are used in encryption (in hashing for example), their typical purpose is to help decrypt access control lists and in computer graphics. 

#### User Mask or The default user created directory/file permission bitmask

The umask is used to specify the default user created file/directory permissions and therefore the level of security for software resources. 

The maximum default file permissions are 666 and the maximum default directory permissions are 777. Why not 777 for files? 
According to [**this post**](http://www.cyberciti.biz/tips/understanding-linux-unix-umask-value-usage.html) it is because ***only binaries and scripts are executable, regular files are not***.

So how do you calculate the default file/directory permissions? Through the octal subtraction of the umask from file/directory maximum permissions. 

	Directories 777 & ~umask
	Files 666 & ~umask 

where ~umask is the binary complement of the umask.

If the umask is 077 then the default directory permissions are 700 and for files its 600, which is the srictest set of permissions you can give. 

As you increase the value of the umask the default security policy becomes more loose and with 000 **everyone can read, write and execute files and directories** (where applicable ofcourse).

**Pipes**

Consider this script:

    LOGPIPE=/tmp/pipe.$$
	mkfifo -m 700 $LOGPIPE
	trap "rm -f $LOGPIPE" EXIT
	tee -a <$LOGPIPE $LOGFILE &
	exec 1>$LOGPIPE 2>&1

What is the pipe.$$ file? What do the commands mkfifo, trap, tee and exec do ?

1.	mkfifo opens a FIFO file with file extension $$ which is a special variable that is replaced by the process id. A FIFO file 	created by mkfifo needs to be open for writing and reading at the same time to work. So a process needs to write to the 		file and another process needs to read from the file. This is where the tee and exec commands come in.

2.  The trap command looks for a system signal (EXIT in this case) and executes the bash commands in the double quotes. 
	The signal received is any signal that indicates exit like HUP and INT (hangup and interrupt respectively). 

	side note: (There is no EXIT signal in Unix. The list of signals available can be viewed by executing kill -l )

3.	The tee command duplicates the input received from stdout to another file. So the output is received on stdout and also 		inside the file. The '-a' option indicates file append. The & at the end of the command makes the command run in the 			background so that we can continue to the next command. 

	In the command above we are using <$LOGPIPE to redirect the pipes stdout to the stdin of the tee command. The tee command ouputs in stdout and to the file $LOGFILE.

4. 	The exec command is simple. It is redirecting stdout and stderr to the named pipe. How? 1>$LOGPIPE redirects stdout to the 		pipe and 2>&1 is redirecting stderr to stdout which is already connected to the pipe. 

Therefore the whole script is using a named pipe to store stderr and stdout in the logfile.



