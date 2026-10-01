---
title: "Transmission Control Protocol (TCP)"
source: "https://www.geeksforgeeks.org/computer-networks/what-is-transmission-control-protocol-tcp/"
author:
  - "[[GeeksforGeeks]]"
published: 2021-11-25
created: 2026-09-30
description: "Your All-in-One Learning Portal: GeeksforGeeks is a comprehensive educational platform that empowers learners across domains-spanning computer science and programming, school education, upskilling, commerce, software tools, competitive exams, and more."
tags:
  - "clippings"
---
TCP (Transmission Control Protocol) is a protocol that allows devices to communicate reliably over a network. It ensures that data reaches the destination correctly and in the right order, even if parts of the network are slow or unreliable.

- It works at the Transport Layer (Layer 4) of the OSI model and is an essential part of the TCP/IP protocol suite used for Internet communication.
- TCP establishes a logical connection between the sender and receiver before data transmission begins.
- It ensures that data is delivered accurately and in the same order in which it was sent using acknowledgements and sequence numbers.
- TCP detects errors using checksums and retransmits lost or corrupted packets to maintain data integrity.
- It controls the data transmission rate to avoid overwhelming the receiver and adapts to network congestion for efficient communication.

## Connection Establishment and Termination

Connection establishment and termination describe how two devices start and end a reliable communication session (mainly in TCP).

### 1\. Connection Establishment (Three-Way Handshake)

TCP is connection-orientated, meaning a connection must be established before any data is sent. This is done using a three-way handshake:

![tcp_handshake_process](https://media.geeksforgeeks.org/wp-content/uploads/20260116154331773186/tcp_handshake_process.webp)

1. ****SYN (Synchronize):**** The sender sends a SYN segment to the receiver to request a connection.
2. ****SYN-ACK (Synchronize-Acknowledge):**** The receiver responds with a SYN-ACK segment, acknowledging the request and agreeing to the connection.
3. ****ACK (Acknowledge):**** The sender replies with an ACK, confirming the connection is established.

> This process ensures both sender and receiver are ready and synchronized, preventing lost or misordered data at the start.

### 2\. Connection Termination (Four-Way Handshake)

Closing a TCP connection requires a four-step handshake to ensure both sides finish transmitting data safely:

1. ****FIN (Finish):**** The sender who wants to close the connection sends a FIN segment to the receiver.
2. ****ACK (Acknowledge):**** The receiver acknowledges the FIN with an ACK.
3. ****FIN (Finish) from Receiver:**** The receiver then sends its own FIN when it is ready to close the connection.
4. ****ACK (Acknowledge):**** The sender responds with an ACK, completing the termination.

> This ensures that all remaining data is transmitted before the connection is fully closed.

## Working

### 1\. Segmenting

- When an application sends data (like an email or file), TCP breaks the data into smaller chunks called segments.
- Each segment has a header containing information like sequence numbers, ports, and flags.
- This makes it easier to send large amounts of data over the network reliably.

### 2\. Routing via IP

- Once TCP creates segments, they are handed to IP (Internet Protocol).
- IP is responsible for delivering the segments from the sender to the receiver, possibly through multiple routers.
- TCP doesn’t care about the path—IP handles routing and addressing.

### 3\. Reassembly at Receiver

- Segments may arrive out of order because they can take different paths through the network.
- TCP at the receiver uses sequence numbers to reassemble the segments into the correct order to reconstruct the original message.

### 4\. Acknowledgments (ACKs)

- The receiver sends an ACK for every segment (or group of segments) it receives correctly.
- This tells the sender that the data has arrived safely.
- If an ACK is not received, TCP assumes the segment was lost and triggers retransmission.

### 5\. Retransmission

- If the sender does not receive an acknowledgment within a certain time, it resends the missing segment.
- This ensures no data is lost, making TCP reliable.

### 6\. Flow & Error Control

- ****Flow Control:**** TCP prevents the sender from sending too much data too quickly for the receiver to handle, using a sliding window mechanism.
- ****Error Control:**** TCP checks for corrupted segments using checksums and requests retransmission if needed.
- Together, these mechanisms ensure data is delivered reliably and efficiently, without overloading the network or the receiver.

## Applications

### 1\. Web Browsing (HTTP/HTTPS)

- Websites send and receive data in small chunks called packets.
- TCP ensures these packets arrive in order and completely, so pages load correctly without missing images or broken content.
- HTTPS adds encryption, but TCP still handles reliability under the hood.

### 2\. Email (SMTP, IMAP, POP3)

- Sending and receiving emails requires all message data to arrive intact.
- TCP ensures no part of the email is lost or corrupted, so attachments and text are received correctly.

### 3\. File Transfer (FTP, SFTP)

- Transferring files over a network involves large amounts of data.
- TCP divides files into segments, reorders them at the destination, and retransmits lost segments, ensuring the file is received exactly as sent.

### 4\. Remote Terminal Access (SSH, Telnet)

- When you connect to a remote computer, you send commands and receive responses in real time.
- TCP ensures that every keystroke or command is reliably transmitted and arrives in order, maintaining a stable connection for remote management.

## Advantages

- ****Error-Free Data Transfer:**** TCP detects errors during transmission and retransmits lost or corrupted data, ensuring accurate delivery.
- ****Ordered Delivery:**** Data packets are received in the same sequence in which they were sent, maintaining data consistency.
- ****Flow Control:**** Prevents the sender from overwhelming the receiver by controlling the rate of data transmission.
- ****Congestion Control:**** Adjusts the sending speed based on network traffic conditions to reduce packet loss and congestion.
- ****Reliable Communication:**** Ensures complete and dependable data transfer, making it suitable for critical applications.
- ****Widely Supported and Standardized:**** TCP is a globally accepted protocol, supported by all major operating systems and network devices.

Which of the following statements about TCP is/are FALSE?

I. If the sequence number of a segment is **m**, then the sequence number of the next segment is always **m + 1**.

II. If the estimated RTT at any given point is **t** seconds, the retransmission timeout is always set to greater than or equal to **t** seconds.

****( GATE 2012 | MCQ )****

- A
	I only
- B
	II only
- C
	Both I and II
- D
	Neither I nor II

Which of the following statements are TRUE about TCP?

I. TCP is connection-oriented.  
II. TCP provides reliable delivery using sequence numbers and acknowledgements.  
III. TCP operates at the Network Layer.  
IV. TCP uses port numbers for process identification.

- A
	I, II, III and IV
- B
	II and III only
- C
	I, II and IV only
- D
	I and III only

In the very first packet of TCP 3-way handshake, which flags are set?

- A
	SYN=1, ACK=1
- B
	SYN=1, ACK=0
- C
	FIN=1, ACK=1
- D
	RST=1

A TCP sender transmits:

- S1: Seq = 1, Length = 500 bytes
- S2: Seq = 501, Length = 500 bytes
- S3: Seq = 1001, Length = 500 bytes

S2 is lost, while S1 and S3 arrive successfully. The receiver uses cumulative acknowledgements.

What ACK number is sent after receiving S3?

In TCP, a receiver advertises a window size of 0. What does the sender do?

- A
	Closes the connection immediately
- B
	Doubles the congestion window.
- C
	Retransmits all outstanding segments.
- D
	Stops sending data and periodically sends window probes.

![success](https://media.geeksforgeeks.org/auth-dashboard-uploads/sucess-img.png)

Quiz Completed Successfully

Score:0/5

Accuracy:0%

<iframe src="https://accounts.google.com/gsi/iframe/select?client_id=388036620207-3uolk1hv6ta7p3r9l6s3bobifh086qe1.apps.googleusercontent.com&amp;ux_mode=popup&amp;ui_mode=card&amp;as=TRpCYq23N6xkYgfMhHpGwyq0v-uDMyK0lRFk-bmZjeU&amp;bs=T%2FmHAcfTVxg8JlkMmM8mRPu3u2COo7sSxacl1VeyPOs&amp;is_itp=true&amp;channel_id=0dd22e19b461d6715ab3aef45ad65e8f797a75c817d91c86801fcff5b27f5f33&amp;origin=https%3A%2F%2Fwww.geeksforgeeks.org&amp;oauth2_auth_url=https%3A%2F%2Faccounts.google.com%2Fo%2Foauth2%2Fv2%2Fauth" title="Sign in with Google Dialogue"></iframe>