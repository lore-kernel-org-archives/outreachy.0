X-GM-THRID: 6340113860345724928
X-Received: by 10.107.164.36 with SMTP id n36mr798212ioe.11.1476172789999;
        Tue, 11 Oct 2016 00:59:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.185.86 with SMTP id k22ls436637iti.20.gmail; Tue, 11 Oct
 2016 00:59:48 -0700 (PDT)
X-Received: by 10.66.193.194 with SMTP id hq2mr542260pac.40.1476172788485;
        Tue, 11 Oct 2016 00:59:48 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id p131si368282vkf.1.2016.10.11.00.59.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 00:59:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id l131so2242879lfl.0
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 00:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xEGJvOmgym8W44PuunTfejg9sd4AmewPqBnKsoWt6Yk=;
        b=s0IS4wBQFcjUHHn7bhO5ocZAfP6nNEMqwYpMR0KHNoQUSBUur8mQ4jcA+c/8Me1XqR
         pIPEpNycpiGB9+fRXOYBDnggViLomalFwSdwDLMJZHAWmSelauuUdE6eOyY5xpbNyOmP
         WQcf9T0EmxLAc/M7zTvVSMYStawOOdP6GaboL7ON3BaL6mw8vLRs/FZEOTIDhqe37UBl
         FqtMYFDnohS5RBEQFEXpiddVCrHOLnISPJ9WnrViM901p5dGiMaXFE8cavZNgQ9+/B2f
         sZyWm/WRgmmvKdR3hgg6QsRm69X7exrNct54FjhJd/eNZxpqXVY//bRnMEyt22vkx0Qu
         coAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xEGJvOmgym8W44PuunTfejg9sd4AmewPqBnKsoWt6Yk=;
        b=UQn5s5Zu3ULcueyA166lJoN3/JrOA67hb/vGvDbxkDqqy3bpJgC/xyG01B46wC92VA
         VYEBHpmuLTbExwE4p4WA7QVwdG3V0woIowXIkp2NSLTKwg9DMGcoTcH+m41t4I1deTin
         LIbjCqbym4AkFJaV2299co4WdD6cEF7/2u6xeX2RDNo8CTwFas+Vym4+G5fBCY2jM5iY
         8aQ5AGCnyBrAAyIiBPPyRwGA2rP6k96pXzEBfDE1zNTOrDh7CDfrRJPDN+LgOVQ5t7fm
         Indl5MSNAaVHWAZ3uTusLyY88HI49xO0MC97ODttLJ2Q5PPIkT0wvwAit4NTAb6bHcNL
         Aktg==
X-Gm-Message-State: AA6/9Rm8JZBdJgbvGH2YLNWsn5tIiX+DFpKgxF+nUq9ZUOHZaJDywTq1wBJQNYBJ6WrF8g==
X-Received: by 10.194.24.34 with SMTP id r2mr2998930wjf.111.1476172787728;
        Tue, 11 Oct 2016 00:59:47 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id q8sm4240855wjj.7.2016.10.11.00.59.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 11 Oct 2016 00:59:47 -0700 (PDT)
Date: Tue, 11 Oct 2016 10:59:46 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: tw686x-kh: Fix comment block coding style
Message-ID: <20161011075946.GA9559@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This is a patch to the tw686x-kh-video.c file that fixes up a comment
block warning, found by checkpatch.pl tool, by adding a * for each line
of the comment block.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/media/tw686x-kh/tw686x-kh-video.c | 48 +++++++++++++----------
 1 file changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/tw686x-kh/tw686x-kh-video.c b/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
index 9bf32ae..19cf31a 100644
--- a/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
+++ b/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
@@ -221,20 +221,20 @@ loop:
 	vc->curr_bufs[n] = NULL;
 }
 
-/* On TW6864 and TW6868, all channels share the pair of video DMA SG tables,
-   with 10-bit start_idx and end_idx determining start and end of frame buffer
-   for particular channel.
-   TW6868 with all its 8 channels would be problematic (only 127 SG entries per
-   channel) but we support only 4 channels on this chip anyway (the first
-   4 channels are driven with internal video decoder, the other 4 would require
-   an external TW286x part).
-
-   On TW6865 and TW6869, each channel has its own DMA SG table, with indexes
-   starting with 0. Both chips have complete sets of internal video decoders
-   (respectively 4 or 8-channel).
-
-   All chips have separate SG tables for two video frames. */
-
+/*
+ * On TW6864 and TW6868, all channels share the pair of video DMA SG tables
+ * with 10-bit start_idx and end_idx determining start and end of frame buffer
+ * for particular channel.
+ * TW6868 with all its 8 channels would be problematic (only 127 SG entries per
+ * channel) but we support only 4 channels on this chip anyway (the first
+ * 4 channels are driven with internal video decoder, the other 4 would require
+ * an external TW286x part).
+ *
+ * On TW6865 and TW6869, each channel has its own DMA SG table, with indexes
+ * starting with 0. Both chips have complete sets of internal video decoders
+ * (respectively 4 or 8-channel).
+ * All chips have separate SG tables for two video frames.
+ */
 static void setup_dma_cfg(struct tw686x_video_channel *vc)
 {
 	unsigned int field_width = 704;
@@ -477,8 +477,10 @@ static int tw686x_g_parm(struct file *file, void *priv,
 static int tw686x_enum_input(struct file *file, void *priv,
 			     struct v4l2_input *inp)
 {
-	/* the chip has internal multiplexer, support can be added
-	   if the actual hw uses it */
+	/*
+	 * the chip has internal multiplexer, support can be added
+	 * if the actual hw uses it
+	 */
 	if (inp->index)
 		return -EINVAL;
 
@@ -675,16 +677,20 @@ int tw686x_kh_video_init(struct tw686x_dev *dev)
 	/* setup required SG table sizes */
 	for (n = 0; n < 2; n++)
 		if (is_second_gen(dev)) {
-			/* TW 6865, TW6869 - each channel needs a pair of
-			   descriptor tables */
+			/*
+			 * TW 6865, TW6869 - each channel needs a pair of
+			 * descriptor tables
+			 */
 			for (ch = 0; ch < max_channels(dev); ch++)
 				dev->video_channels[ch].sg_tables[n].size =
 					SG_TABLE_SIZE;
 
 		} else
-			/* TW 6864, TW6868 - we need to allocate a pair of
-			   descriptor tables, common for all channels.
-			   Each table will be bigger than 4 KB. */
+			/*
+			 * TW 6864, TW6868 - we need to allocate a pair of
+			 * descriptor tables, common for all channels.
+			 * Each table will be bigger than 4 KB.
+			 */
 			dev->video_channels[0].sg_tables[n].size =
 				max_channels(dev) * SG_TABLE_SIZE;
 
-- 
2.7.4


