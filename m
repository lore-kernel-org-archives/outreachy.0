X-GM-THRID: 6253643249541447680
X-Received: by 10.182.102.38 with SMTP id fl6mr20390286obb.46.1456039782290;
        Sat, 20 Feb 2016 23:29:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.146 with SMTP id c140ls529913ioe.76.gmail; Sat, 20 Feb
 2016 23:29:41 -0800 (PST)
X-Received: by 10.67.8.2 with SMTP id dg2mr21966327pad.16.1456039781957;
        Sat, 20 Feb 2016 23:29:41 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ui7si2538803pab.0.2016.02.20.23.29.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 23:29:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id c10so77432539pfc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 23:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wgwSs7cMRYYDDkh8hD3yQa1rgrzxcBidsuLbIeua1Xc=;
        b=hynkRGL1GFPFs62iZl50sHzuZQ2eisEPMPlsxbYRchnf6AWo8UBzkktnX+4B6sHMF6
         CvtexRUIFrUPOW3Gp4+351JLpgeK2loSAgTxNn1H8J2iE2LqN6T4y+2Ek8DvwbphKBUU
         8K4C38ppR/QE/+OtCk9dpIo61+IoUh+LZ5vRjrAstBU+0wuf+cozrIzBymlxmVzV9GbT
         hezvT+Vx8Ml/YK+iaFQq2SN/AofqdTAXI9TRwMTF730er8JKN7g11JXeCaS4Cdpo+PYg
         IZ1VQs+MOE2prRS+HLTJN5OtoNatgLhqaqzZbzsZD4yv0hyCCH1H4Kbm+9LVqdh//y7d
         cDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=wgwSs7cMRYYDDkh8hD3yQa1rgrzxcBidsuLbIeua1Xc=;
        b=kAhYHwYa7dyG6EyKfEEoHBFRbO49f/ASvz48/cNn+1TziCvYeOCZhh2+t12luV/quf
         PssWp8RqwXVBPijP/13kzHBY18v0/UM4bafq4ovhU2Cn1atLlS/xA9C/w8F3SBTvNBk0
         5okQZ9JXhYvNxtn5Z5ytxBqA7X1mLWhr9gxF+r+ipm2O4qA/faunkEok3eNt/qTqbA7m
         Py1Afg2/hORqRMfxtnuME14naH/WS0HvUHOMcELwqcpcRjCCH6IH8upUWJCGa/+Ucge7
         oQ1yHsIcE1yupo1/g+t4TYWqIr5JLO89j+1qD7S4/KaY4g8aSY1s1/7xCl6NFh1eFBTT
         X8pA==
X-Gm-Message-State: AG10YORJNn0zxdcP7SerNwfWK2H6RZXZTl1OY7KEnEvPxwTzJNZ12RY19tot9sR8BANNlw==
X-Received: by 10.98.87.80 with SMTP id l77mr29751843pfb.101.1456039781814;
        Sat, 20 Feb 2016 23:29:41 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id t87sm28453913pfa.14.2016.02.20.23.29.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 23:29:41 -0800 (PST)
Date: Sun, 21 Feb 2016 04:59:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Add block comments /* and */ on a separate
 line in dgnc_tty.c.
Message-ID: <20160220232944.GA4107@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Add block comments /* and */ on a separate line. The warning is reported by checkpatch.pl.

The preferred style for long (multi-line) comments is:
/*
 *
 *
 */

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index b79eab0..21a50a4 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -443,7 +443,8 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
 	brd->PrintDriver.termios = NULL;
 }
 
-/*=======================================================================
+/*
+ *=======================================================================
  *
  *	dgnc_wmove - Write data to transmit queue.
  *
@@ -451,7 +452,8 @@ void dgnc_tty_uninit(struct dgnc_board *brd)
  *		buf	- Pointer to characters to be moved.
  *		n	- Number of characters to move.
  *
- *=======================================================================*/
+ *=======================================================================
+ */
 static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
 {
 	int	remain;
@@ -489,13 +491,15 @@ static void dgnc_wmove(struct channel_t *ch, char *buf, uint n)
 	ch->ch_w_head = head;
 }
 
-/*=======================================================================
+/*
+ *=======================================================================
  *
  *      dgnc_input - Process received data.
  *
  *	      ch      - Pointer to channel structure.
  *
- *=======================================================================*/
+ *=======================================================================
+ */
 void dgnc_input(struct channel_t *ch)
 {
 	struct dgnc_board *bd;
-- 
1.8.3.4


