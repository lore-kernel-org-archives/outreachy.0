X-GM-THRID: 6330205070926282752
X-Received: by 10.129.121.70 with SMTP id u67mr2309856ywc.2.1473865721215;
        Wed, 14 Sep 2016 08:08:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.70 with SMTP id d67ls427521iod.10.gmail; Wed, 14 Sep
 2016 08:08:40 -0700 (PDT)
X-Received: by 10.66.83.100 with SMTP id p4mr2352940pay.26.1473865720557;
        Wed, 14 Sep 2016 08:08:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 142si1297678pfx.2.2016.09.14.08.08.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:08:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so871039pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g43B2dYsgHzU2W0KLVNHiFXOfoq3vKbSLRB+kwp4tcc=;
        b=DCW6GK3GBieadDzpIwG7PXE/W2NX8ySaNYTl65iI4IuLxKxcUhpawtCYMeDYcV8UJ2
         UJxamtiqlFv6JVwJ2rRWCz4f7c+BxR1BQgERLPCTPDypyr7J17JxGASdH6CmqklVSLuk
         4u8skWYlWXIomm02/fx38msqx0+wBjA/kcXo1j7l/xFaAzo3hOInNIuh94mknEuex9Ts
         49WJItVQWP20a0XWukhMk7h8pV/PLBnkNbA7FPr3hYGCG1ftDnE3qvP5FHJgfTv9cHHT
         JQQmDiPlLC+z/ioiTaRFYsuF73XF91gHl9aZGtP/YdGX9R8jkPZEPom00joNr3q5mNMZ
         5Jvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g43B2dYsgHzU2W0KLVNHiFXOfoq3vKbSLRB+kwp4tcc=;
        b=cjFMuwmUNUt/OFxhqimxxn4LjN0GjqQekzmOKuzCtXEIOnIGWJDo9FVOukXYvSyw6H
         4KuhAipS1CVkJWzhVM4cGAQWqPMxo8alDocq9AGGwo7kLltxsauIuePpLs0mseFAoXwy
         vDHvAfgy1pFu5/tw4EDUsK6ZLg/xwSlM8gVVoEX+iLHt0lv1mVT9mB06HTClVQ+eHu7h
         d72KbxiyKVstRpmrp7zdTgsUjT4lVJa3NN5tvvaTqKOew29mM7GOI9vIY5xH1M1MuKjk
         HNOqml3m7VXdSGSahik+bl5KURLzBD2yuVEtgNFLkOJDdC6ew8uqJLnegnygD+2wN8wR
         QUng==
X-Gm-Message-State: AE9vXwOBcIr1l4o+FoPXJIG4Ph3OJ9OcOootUYQ7JAoiZormLLy19zDZqykVxdszR5b4Kg==
X-Received: by 10.66.82.42 with SMTP id f10mr5359790pay.17.1473865720341;
        Wed, 14 Sep 2016 08:08:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id bl10sm6283592pab.46.2016.09.14.08.08.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:08:39 -0700 (PDT)
Date: Wed, 14 Sep 2016 20:38:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: dgnc: Fix lines over 80 characters
Message-ID: <20160914150818.GA21248@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
Line over 80 characters.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 5ef5b3e..8cd408c 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -401,7 +401,9 @@ static inline void neo_parse_isr(struct dgnc_board *brd, uint port)
 			/* Read data from uart -> queue */
 			neo_copy_data_from_uart_to_queue(ch);
 
-			/* Call our tty layer to enforce queue flow control if needed. */
+			/* Call our tty layer to enforce queue
+			 * flow control if needed.
+			 */
 			spin_lock_irqsave(&ch->ch_lock, flags);
 			dgnc_check_queue_flow_control(ch);
 			spin_unlock_irqrestore(&ch->ch_lock, flags);
@@ -424,7 +426,9 @@ static inline void neo_parse_isr(struct dgnc_board *brd, uint port)
 			 * one it was, so we can suspend or resume data flow.
 			 */
 			if (cause == UART_17158_XON_DETECT) {
-				/* Is output stopped right now, if so, resume it */
+				/* Is output stopped right now, if so,
+				 * resume it
+				 */
 				if (brd->channels[port]->ch_flags & CH_STOP) {
 					spin_lock_irqsave(&ch->ch_lock,
 							  flags);
@@ -445,8 +449,9 @@ static inline void neo_parse_isr(struct dgnc_board *brd, uint port)
 
 		if (isr & UART_17158_IIR_HWFLOW_STATE_CHANGE) {
 			/*
-			 * If we get here, this means the hardware is doing auto flow control.
-			 * Check to see whether RTS/DTR or CTS/DSR caused this interrupt.
+			 * If we get here, this means the hardware is
+			 * doing auto flow control. Check to see whether
+			 * RTS/DTR or CTS/DSR caused this interrupt.
 			 */
 			cause = readb(&ch->ch_neo_uart->mcr);
 			/* Which pin is doing auto flow? RTS or DTR? */
@@ -653,7 +658,9 @@ static void neo_param(struct tty_struct *tty)
 				4800,   9600,   19200,  38400 }
 		};
 
-		/* Only use the TXPrint baud rate if the terminal unit is NOT open */
+		/* Only use the TXPrint baud rate if the terminal unit
+		 * is NOT open
+		 */
 		if (!(ch->ch_tun.un_flags & UN_ISOPEN) &&
 		    (un->un_type == DGNC_PRINT))
 			baud = C_BAUD(ch->ch_pun.un_tty) & 0xff;
@@ -776,7 +783,9 @@ static void neo_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & CTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		neo_set_cts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXON) {
-		/* If start/stop is set to disable, then we should disable flow control */
+		/* If start/stop is set to disable, then we should
+		 * disable flow control
+		 */
 		if ((ch->ch_startc == _POSIX_VDISABLE) ||
 		    (ch->ch_stopc == _POSIX_VDISABLE))
 			neo_set_no_output_flow_control(ch);
@@ -789,7 +798,9 @@ static void neo_param(struct tty_struct *tty)
 	if (ch->ch_digi.digi_flags & RTSPACE || ch->ch_c_cflag & CRTSCTS) {
 		neo_set_rts_flow_control(ch);
 	} else if (ch->ch_c_iflag & IXOFF) {
-		/* If start/stop is set to disable, then we should disable flow control */
+		/* If start/stop is set to disable, then we should
+		 * disable flow control
+		 */
 		if ((ch->ch_startc == _POSIX_VDISABLE) ||
 		    (ch->ch_stopc == _POSIX_VDISABLE))
 			neo_set_no_input_flow_control(ch);
-- 
2.7.4


