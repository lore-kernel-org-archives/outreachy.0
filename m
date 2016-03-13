X-GM-THRID: 6261375089460117504
X-Received: by 10.129.125.215 with SMTP id y206mr13003728ywc.54.1457839992069;
        Sat, 12 Mar 2016 19:33:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls3803574qga.56.gmail; Sat, 12 Mar
 2016 19:33:11 -0800 (PST)
X-Received: by 10.140.253.198 with SMTP id y189mr13384704qhc.9.1457839991415;
        Sat, 12 Mar 2016 19:33:11 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id i133si892663ywe.7.2016.03.12.19.33.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id y89so129208054qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 19:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fJ22y4eoiiBfFjSPtLxSEtTp3FS8w9WfbqIw0ZodwDs=;
        b=rTayR9PWBdiqUBzzXUXKJYOhbh14ebhdE7t8Km1Oo3sWlbZ2hKotqaUWUQEmZFewUb
         B3PTi5IvkWz4OS9UlBuiqqSsW00h8HyZapS6F87W4JCtDup1wqycrAKG1LX0voyTocn+
         uwQDo/Gei3c87tqfvp7+F2tHPMTB7RyatDoofyFCktLlXtV9bO0jD96PzfIrAmxmEj2b
         ecNcZsi10Cvc3tJ77xjfuSepndph+8WmTwAPbs9aD5vT425vWWvX2nKwycQLP040E5G8
         ZWKt5JbjPoSj64vLmiWbCsqJJ49T1TU1NxYV63HHwPixCPkAxzY4NY7sHD+EsX+i8XxG
         6IIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fJ22y4eoiiBfFjSPtLxSEtTp3FS8w9WfbqIw0ZodwDs=;
        b=FbnJ4Q2wiU314Bd5myt/2ldowH8Uj+0fa597OTQOxr1hTMDlEJDUHZwMPzguRSstb8
         9a/Oo/Hhe2IPcCtQWkCRUFFqzmKr1i8ln9cwEUdDbbecjWQYlBdIE4kr+Ye94r6SUXQQ
         tUZCiwyB6n8HHe4RvZ+fy5zDmaOMNfHJeuzZ2F+txViR3L2V1d+L3wupb4RkgtBUaE7d
         bdgXxG5OEXosgnS2RsA0DBJGEhWc0MMrZ/VO/+G9J8qb+Ov7r3758qk1253jCBTWJHeF
         ingFkD7YLu2d2xBif/9NX1Z+AAiiZUrXk1mR9rAaGDnhceybOs8atg3Kw1c2/kfS1xSq
         MY+w==
X-Gm-Message-State: AD7BkJITnj4fyfgrG/YWERMiYa+vB/0K8wRW0y8c9MvOFQtCdhZPq5s8RFz9BxVq+MOjaQ==
X-Received: by 10.140.251.70 with SMTP id w67mr22032860qhc.99.1457839991113;
        Sat, 12 Mar 2016 19:33:11 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id e11sm7392008qkb.39.2016.03.12.19.33.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 19:33:10 -0800 (PST)
Date: Sun, 13 Mar 2016 00:33:07 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH] staging: dgnc: fixed multiple blank lines on dgnc_driver.h
Message-ID: <20160313033307.GA596@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes multiple blank lines that caused checkpatch issues.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 6d91abd..d76f91e 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -88,7 +88,6 @@
 #define   _POSIX_VDISABLE '\0'
 #endif
 
-
 /*
  * All the possible states the driver can be while being loaded.
  */
@@ -106,7 +105,6 @@ enum {
 	BOARD_READY
 };
 
-
 /*************************************************************************
  *
  * Structures and closely related defines.
@@ -145,7 +143,6 @@ struct board_ops {
  ************************************************************************/
 #define BD_IS_PCI_EXPRESS     0x0001	  /* Is a PCI Express board */
 
-
 /*
  *	Per-board information
  */
@@ -241,7 +238,6 @@ struct dgnc_board {
 
 };
 
-
 /************************************************************************
  * Unit flag definitions for un_flags.
  ************************************************************************/
@@ -277,7 +273,6 @@ struct un_t {
 	struct device *un_sysfs;
 };
 
-
 /************************************************************************
  * Device flag definitions for ch_flags.
  ************************************************************************/
@@ -300,7 +295,6 @@ struct un_t {
 #define CH_FORCED_STOP  0x20000		/* Output is forcibly stopped	*/
 #define CH_FORCED_STOPI 0x40000		/* Input is forcibly stopped	*/
 
-
 /* Our Read/Error/Write queue sizes */
 #define RQUEUEMASK	0x1FFF		/* 8 K - 1 */
 #define EQUEUEMASK	0x1FFF		/* 8 K - 1 */
@@ -309,7 +303,6 @@ struct un_t {
 #define EQUEUESIZE	RQUEUESIZE
 #define WQUEUESIZE	(WQUEUEMASK + 1)
 
-
 /************************************************************************
  * Channel information structure.
  ************************************************************************/
@@ -397,7 +390,6 @@ struct channel_t {
 	ulong		ch_intr_tx;	/* Count of interrupts */
 	ulong		ch_intr_rx;	/* Count of interrupts */
 
-
 	/* /proc/<board>/<channel> entries */
 	struct proc_dir_entry *proc_entry_pointer;
 	struct dgnc_proc_entry *dgnc_channel_table;
@@ -415,5 +407,4 @@ extern uint		dgnc_NumBoards;		/* Total number of boards */
 extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board
 							 * structs
 							 */
-
 #endif
-- 
2.7.2


