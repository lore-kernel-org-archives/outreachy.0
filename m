X-GM-THRID: 6255332002696790016
X-Received: by 10.13.227.133 with SMTP id m127mr41104423ywe.1.1456432976150;
        Thu, 25 Feb 2016 12:42:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.178.180 with SMTP id cz20ls292003igc.25.gmail; Thu, 25 Feb
 2016 12:42:55 -0800 (PST)
X-Received: by 10.66.55.4 with SMTP id n4mr42566107pap.22.1456432975809;
        Thu, 25 Feb 2016 12:42:55 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id yd9si1451673pab.1.2016.02.25.12.42.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 12:42:55 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id q63so38670956pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 12:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=HUrhxNv1Id9R9H3K7YoWHGpbxUQQ4nraTfuzIh4U9Fw=;
        b=t/nruZ4RLdxm7xApBddhppLdofgrWvtdZpkx1H0BnzyvgOXDI9HRFD3wFFVs7iY7ZV
         TW+/XfMCig1PKeHoISQjGlXsEMg7pHdGF5B3i0LvzoqHEc+Z60Go8W3gxoZN04ZyMBcz
         PAayrxSgYFIqloYCtB/nr62K7RbGFAUs4ttU0JrQADFbMH6tbGNMo1YhEkddfmnahN9k
         0cnDUZuxjjo1DlDMbOTw5GbYjokU1TY/Ly6JeXt2+6yjPM2ZQ+0PzLh+/YS7xfMLXJ4w
         zgW6C+tJbFCIqS9DnC8RHin4US3CxEr/lCctstoSEPh86FauI9k3c3XbbaMuYZgA5EX0
         fIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=HUrhxNv1Id9R9H3K7YoWHGpbxUQQ4nraTfuzIh4U9Fw=;
        b=l8SiCFZPhplfmclAFJP3QRNJQnRpN85YeOfuaXv2lirYZUqkliVII/ZVLmVQKXyb6E
         i1Lq5F6qG2AOOvqvwcCtw5gwj48g/g9V9sQJ0fVvi37V4jS6DPHGITQt3R2DjSnk7Tsz
         2n8r9H7YtdlfLcqrf6i5gx95rNKYcB9HfmxklLu1qR1FFfYociFous7MsmKdN/MNgTTN
         5a2Yt5FaQmDxbFq2jqFb0cOapn2IjjslYTyeLk5ehklq9uokgDEtLEuv4UUY+TCokCxc
         oJ4VKZ2KwbCq7yM+8v7+2wFYDafEZRWUp1Re8VyAa+pYXbdGQePwLQi8vM8bqUrKdsFT
         vOhg==
X-Gm-Message-State: AG10YOSH7oeYxLQmQztRnV6JTbnK6xg3bdEJ7aR2Tin9zC0RSbUeEgw5wq5dMoifJD5yYw==
X-Received: by 10.98.93.155 with SMTP id n27mr65712361pfj.88.1456432975629;
        Thu, 25 Feb 2016 12:42:55 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id by3sm14195750pab.39.2016.02.25.12.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Thu, 25 Feb 2016 12:42:55 -0800 (PST)
Date: Fri, 26 Feb 2016 02:12:58 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Add spaces around '|' and '>>'
Message-ID: <20160225204258.GA29754@Toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

One space on either side of binary and ternary operators is preferred.
This patch fixes the related checkpath.pl warnings.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 12 ++++++------
 drivers/staging/dgnc/digi.h     | 32 ++++++++++++++++----------------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index aacc1b3..f36ca8c 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2518,12 +2518,12 @@ static void dgnc_tty_flush_buffer(struct tty_struct *tty)
 	/* Flush UARTs transmit FIFO */
 	ch->ch_bd->bd_ops->flush_uart_write(ch);
 
-	if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_tun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_tun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_tun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 	}
-	if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
-		ch->ch_pun.un_flags &= ~(UN_LOW|UN_EMPTY);
+	if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
+		ch->ch_pun.un_flags &= ~(UN_LOW | UN_EMPTY);
 		wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 	}
 
@@ -2717,13 +2717,13 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
 				if (ch->ch_tun.un_flags & (UN_LOW|UN_EMPTY)) {
 					ch->ch_tun.un_flags &=
-						~(UN_LOW|UN_EMPTY);
+						~(UN_LOW | UN_EMPTY);
 					wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 				}
 
 				if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
 					ch->ch_pun.un_flags &=
-						~(UN_LOW|UN_EMPTY);
+						~(UN_LOW | UN_EMPTY);
 					wake_up_interruptible(&ch->ch_pun.un_flags_wait);
 				}
 			}
diff --git a/drivers/staging/dgnc/digi.h b/drivers/staging/dgnc/digi.h
index cf9dcae..523a2d3 100644
--- a/drivers/staging/dgnc/digi.h
+++ b/drivers/staging/dgnc/digi.h
@@ -31,21 +31,21 @@
 #endif
 
 #if !defined(TIOCMSET)
-#define	TIOCMSET	(('d'<<8) | 252)	/* set modem ctrl state	*/
-#define	TIOCMGET	(('d'<<8) | 253)	/* set modem ctrl state	*/
+#define	TIOCMSET	(('d' << 8) | 252)	/* set modem ctrl state	*/
+#define	TIOCMGET	(('d' << 8) | 253)	/* set modem ctrl state	*/
 #endif
 
 #if !defined(TIOCMBIC)
-#define	TIOCMBIC	(('d'<<8) | 254)	/* set modem ctrl state */
-#define	TIOCMBIS	(('d'<<8) | 255)	/* set modem ctrl state */
+#define	TIOCMBIC	(('d' << 8) | 254)	/* set modem ctrl state */
+#define	TIOCMBIS	(('d' << 8) | 255)	/* set modem ctrl state */
 #endif
 
-#define DIGI_GETA	(('e'<<8) | 94)		/* Read params		*/
-#define DIGI_SETA	(('e'<<8) | 95)		/* Set params		*/
-#define DIGI_SETAW	(('e'<<8) | 96)		/* Drain & set params	*/
-#define DIGI_SETAF	(('e'<<8) | 97)		/* Drain, flush & set params */
-#define DIGI_GET_NI_INFO (('d'<<8) | 250) /* Non-intelligent state info */
-#define DIGI_LOOPBACK (('d'<<8) | 252) /*
+#define DIGI_GETA	(('e' << 8) | 94)	/* Read params		*/
+#define DIGI_SETA	(('e' << 8) | 95)	/* Set params		*/
+#define DIGI_SETAW	(('e' << 8) | 96)	/* Drain & set params	*/
+#define DIGI_SETAF	(('e' << 8) | 97)	/* Drain, flush & set params */
+#define DIGI_GET_NI_INFO (('d' << 8) | 250) /* Non-intelligent state info */
+#define DIGI_LOOPBACK (('d' << 8) | 252) /*
 					* Enable/disable UART
 					* internal loopback
 					*/
@@ -85,7 +85,7 @@ struct digi_dinfo {
 	char		dinfo_version[16];	/* driver version       */
 };
 
-#define	DIGI_GETDD	(('d'<<8) | 248)	/* get driver info      */
+#define	DIGI_GETDD	(('d' << 8) | 248)	/* get driver info      */
 
 /************************************************************************
  * Structure used with ioctl commands for per-board information
@@ -105,7 +105,7 @@ struct digi_info {
 	char		info_reserved[7];	/* for future expansion    */
 };
 
-#define	DIGI_GETBD	(('d'<<8) | 249)	/* get board info          */
+#define	DIGI_GETBD	(('d' << 8) | 249)	/* get board info          */
 
 struct digi_getbuffer /* Struct for holding buffer use counts */
 {
@@ -133,10 +133,10 @@ struct digi_getcounter {
 #define DIGI_SETCUSTOMBAUD _IOW('e', 106, int)	/* Set integer baud rate */
 #define DIGI_GETCUSTOMBAUD _IOR('e', 107, int)	/* Get integer baud rate */
 
-#define DIGI_REALPORT_GETBUFFERS (('e'<<8) | 108)
-#define DIGI_REALPORT_SENDIMMEDIATE (('e'<<8) | 109)
-#define DIGI_REALPORT_GETCOUNTERS (('e'<<8) | 110)
-#define DIGI_REALPORT_GETEVENTS (('e'<<8) | 111)
+#define DIGI_REALPORT_GETBUFFERS (('e' << 8) | 108)
+#define DIGI_REALPORT_SENDIMMEDIATE (('e' << 8) | 109)
+#define DIGI_REALPORT_GETCOUNTERS (('e' << 8) | 110)
+#define DIGI_REALPORT_GETEVENTS (('e' << 8) | 111)
 
 #define EV_OPU 0x0001 /* !<Output paused by client */
 #define EV_OPS 0x0002 /* !<Output paused by reqular sw flowctrl */
-- 
2.1.4


