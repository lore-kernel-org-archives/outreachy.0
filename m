X-GM-THRID: 6258974741183332352
X-Received: by 10.50.87.7 with SMTP id t7mr6883232igz.11.1457281117852;
        Sun, 06 Mar 2016 08:18:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.148 with SMTP id e20ls716889ioi.25.gmail; Sun, 06 Mar
 2016 08:18:37 -0800 (PST)
X-Received: by 10.107.166.7 with SMTP id p7mr14233330ioe.0.1457281117561;
        Sun, 06 Mar 2016 08:18:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si2537856pfa.2.2016.03.06.08.18.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 08:18:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id 1so568443pal.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 08:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q362O+0GJfjIEAb3w9Do3coLJ9S0iS160kjhFxL/Y+8=;
        b=Wz8nl5SLgri097eXK180gpoGE2cz1TI1OgWhjkl79OBdWFLDcnWPqK+xJKACiuAD4I
         PmTaDhc1FsMJaSTSUyIvQUve1fiJJ9vSAuGKenRQfNu4JFNIR2FduB8VtCBb10um5s6x
         4gmNoCQfXvcM9aLirNAUwhqdAhPB83pptN2rFdC8HhtvShto0iathpwBPIh1rYlEgJEB
         crE4u5TZP3WhPkInQ7JaAq7XYSYLQ56mSL8ODEROnd4ALRBQWqKeTfiY4dt3h0a1TsjW
         n/t2hj0r02eypimd3ZRX5X+DbGcc6e62E4mqiPOXYOdvkAVBRAo8gVJJfxQ8a5YKRLPQ
         sb3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q362O+0GJfjIEAb3w9Do3coLJ9S0iS160kjhFxL/Y+8=;
        b=Wdg+pp34vnMP3/2jN2Q+RKOs0DcmEwTdHNrH3rbMJOY5jPdEVvZjAoVKGY0iR2b0FI
         vk5KEGCIMJy63ZU28g5bHGcX/TrXhdv5Rhj6xqRRQNEkQzk+1pFTCh8JM2DLh9jFG9S4
         vXmKDYU+mIHAwz3w0eXusC2Mu6KSWAo/tbqtIAhQ2sT2m8os3JJOkx5zLTxBV1P6NvsF
         deW7gbgYTAWj9e6rpPzE7/4y8nkHt0snYDKrX8c3c+XEX78eMQoctBLGT9IhBLNAhbNz
         jom6jxeFFK5IsdK+niUxtKQSkdTcM/n3RxjryYeonfUEvH9boZgTuA4uaF3sEDG64ysS
         sKag==
X-Gm-Message-State: AD7BkJJSy/hcys5z8nmxoTRIIwrYdIEc0BHTS6Xpt72KtbQZVLlgy/xuTWrYnHlC4+vEpA==
X-Received: by 10.66.152.231 with SMTP id vb7mr27512125pab.132.1457281117419;
        Sun, 06 Mar 2016 08:18:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id kw10sm18643355pab.0.2016.03.06.08.18.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 08:18:36 -0800 (PST)
Date: Sun, 6 Mar 2016 13:48:50 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: dgnc: Add block comments /* and */ on a separate
 line in dgnc_tty.c.
Message-ID: <20160306081850.GA1185@sandhya>
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
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/dgnc/dgnc_tty.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 0c0a26f..c90a458 100644
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


