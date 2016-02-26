X-GM-THRID: 6255628757507244032
X-Received: by 10.140.20.204 with SMTP id 70mr18837510qgj.18.1456502201757;
        Fri, 26 Feb 2016 07:56:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.169 with SMTP id x9ls553152igl.25.canary; Fri, 26 Feb
 2016 07:56:41 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr7175432ioi.19.1456502201456;
        Fri, 26 Feb 2016 07:56:41 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 12si1973447pfb.1.2016.02.26.07.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 07:56:41 -0800 (PST)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id a7so3336748pax.3
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 07:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=49LvRGPJzaV/frcIY1P1w+iA5WsHIPKghSnOu4xS/Vk=;
        b=luPGB4yVxbnLQNElOAnujGXOxgMw7j6w7J6xpE9KeUn2zfHv6jJgBy8OxGul+OGlDp
         pl46UUM+SBK8jIB2CjBIztft7M1z+ZyptW7p92Jr/QJ40zU6E/HLx6uSw3FKuPNcYjTI
         KU180NCiD0stBXZoSiXAFZzcDXjCv+CpVS9eMOpxRvTn632VLQO9ztpW2iXLq6El5BrJ
         9noF9U+si/kUuNoRYcARff3LRbO57N0/N0FQDNc2xLmydWpLK5jPHxk+Wz+HCMlQxapt
         oJTu46pDO3lhaR9VHkaglugVXhv2WSJYE+N0BLnUJex84feATf8YVwAzLuiULJeRRqrz
         oN6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=49LvRGPJzaV/frcIY1P1w+iA5WsHIPKghSnOu4xS/Vk=;
        b=OzRINk2f00LBWmCaeLiUL0c32IIEVnMSo5la8UO7WrD7Pj2TUSNEOpkvR4FGFH9YqQ
         uRjTvhsANnwYx4eM13u+27sn0iy3dW6GU/atNkK7kgF0ErhXkE3f/s2BllR0gtCz4AsM
         Xx6pttbEP3GOIORO3Xa418EFCl0q1AWQrgdZk9H+cu/riNmntoU3QUvFghsPaPrhQPx+
         y9qF5a+v0cqP95ABB2hbndmvL7U93S4QKQp82x4qfJSWoKOuhqADCE+0IFgnzprId3qT
         sfTObgYE04uxB0QyP5AQfRCOqDue0NgIbNBsnxtlXeLGq0971OXyv49Vth1zeweuwHcT
         vJyg==
X-Gm-Message-State: AD7BkJLRYr7cC9ctWhoM4Dyl1T2IjZ27uB7zM2ZHnqGLphB0I9ia3qWsY7OpF9IJhffgRQ==
X-Received: by 10.66.138.74 with SMTP id qo10mr3013372pab.140.1456502201268;
        Fri, 26 Feb 2016 07:56:41 -0800 (PST)
Return-Path: <aquannie@gmail.com>
Received: from Toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u5sm20341689pfi.15.2016.02.26.07.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1/SSLv3 cipher=OTHER);
        Fri, 26 Feb 2016 07:56:40 -0800 (PST)
Date: Fri, 26 Feb 2016 21:26:43 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: dgnc: Add spaces around '|' and '<<'
Message-ID: <3d1e7c8381513e89616ab562a777776bbb697f3f.1456501665.git.aquannie@gmail.com>
References: <cover.1456501665.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456501665.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

One space on either side of binary and ternary operators is preferred.
This patch fixes the related checkpatch.pl warnings.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 12 ++++++------
 drivers/staging/dgnc/digi.h     | 32 ++++++++++++++++----------------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..df1d00b 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2520,12 +2520,12 @@ static void dgnc_tty_flush_buffer(struct tty_struct *tty)
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
 
@@ -2719,13 +2719,13 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 
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


