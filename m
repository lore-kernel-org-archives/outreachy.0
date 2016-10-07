X-GM-THRID: 6338872939492933632
X-Received: by 10.107.13.71 with SMTP id 68mr5015190ion.99.1475883866027;
        Fri, 07 Oct 2016 16:44:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls6594997ote.9.gmail; Fri, 07 Oct 2016
 16:44:25 -0700 (PDT)
X-Received: by 10.176.1.230 with SMTP id 93mr5727562ual.40.1475883865614;
        Fri, 07 Oct 2016 16:44:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si6275540par.0.2016.10.07.16.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 16:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so3531538pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 16:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7HRiEjUEN+gFRB7t1LOqB1/xQVHmX60+0/dlcWgwqrA=;
        b=tSv8VVns3AeVekGbSqXwAt3nHYhhYJ69uWacglETnu7ihxBCe24DGf7Blg0/uc/OTE
         0K7GAjS9c/j2hS5p5aI+awIry1ElVmwolIqjGBWniaJ40Ry3UkRPf6xaJtXqfUb93tMo
         07m9PhZZp1pu4Y012tRlOoMfmDiNf3uoOgA9AUO0Xzk5n5IaiKSHeBNQO+gzmQjEMt2N
         6+6tySEQ40EF6KdR5J1lGfW5owui4DDGDcNMib67bwjLVG+QialAcVXJpjR2MPy0Xl5h
         eZhJxXsqqIVcANs4TyLZu8EH//HfEpn7Fh9BO6NquNX82oUb/BmANSbDmwrcHyQMFIXw
         0kpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7HRiEjUEN+gFRB7t1LOqB1/xQVHmX60+0/dlcWgwqrA=;
        b=ahyQF7u2lSNbgpqlxwCpn9lxjCS34MjLBooTcyf52G+n97lncv4Lh6kGYii0VirYp+
         pxBhPdceminN++Mfa6e8n4qIJvOLNblCzPaOfwMYKIeLT/zh7DhEzugh26ELTTZZIWfq
         +1ZjxTqDBmzx8dgGfAdI3xEPrfjoEtj50v8LEaVHyBJWF6yJBhzppCukSM2Orw9Dp7DE
         rtY+Lx///MYq/LNl+nW0U63X3pQfVTDAHRkbZMdEqBTvOePlNFZPJv3NB7Xj4/85LtdW
         SiJYS7UFJ4cVf6PxgtPIrgYdL7i7gZYshkJWfRy8cvU+yKayZHLakHb6Nigcq7068tzD
         XVxQ==
X-Gm-Message-State: AA6/9RkFKZ170x2k8ilwFaKC9XIkRn7evpkK1SzmXZGnUKa4REDECDa2LKZ0rSKGXjyV/Q==
X-Received: by 10.98.15.90 with SMTP id x87mr16819895pfi.162.1475883865377;
        Fri, 07 Oct 2016 16:44:25 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id tj8sm30496555pab.16.2016.10.07.16.44.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 16:44:25 -0700 (PDT)
Date: Fri, 7 Oct 2016 16:44:22 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com, daniel.baluta@intel.com,
	sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: media: Fix block comment style
Message-ID: <20161007234420.GA9855@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch errors "Block comments use * on subsequent lines" and
"Block comments use a trailing */ on a separate line" to conform with
kernel coding style.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/media/tw686x-kh/tw686x-kh-core.c  |  3 +-
 drivers/staging/media/tw686x-kh/tw686x-kh-video.c | 36 +++++++++++++----------
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/tw686x-kh/tw686x-kh-core.c b/drivers/staging/media/tw686x-kh/tw686x-kh-core.c
index 03b3b62..1153ee0 100644
--- a/drivers/staging/media/tw686x-kh/tw686x-kh-core.c
+++ b/drivers/staging/media/tw686x-kh/tw686x-kh-core.c
@@ -120,7 +120,8 @@ static const struct pci_device_id tw686x_pci_tbl[] = {
 	/* not tested */
 	{PCI_DEVICE(0x1797, 0x6865), .driver_data = 4 | TYPE_SECOND_GEN},
 	/* TW6868 supports 8 A/V channels with an external TW2865 chip -
-	   not supported by the driver */
+	 * not supported by the driver
+	 */
 	{PCI_DEVICE(0x1797, 0x6868), .driver_data = 4}, /* not tested */
 	{PCI_DEVICE(0x1797, 0x6869), .driver_data = 8 | TYPE_SECOND_GEN},
 	{}
diff --git a/drivers/staging/media/tw686x-kh/tw686x-kh-video.c b/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
index 9bf32ae..9def426 100644
--- a/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
+++ b/drivers/staging/media/tw686x-kh/tw686x-kh-video.c
@@ -222,18 +222,19 @@ loop:
 }
 
 /* On TW6864 and TW6868, all channels share the pair of video DMA SG tables,
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
+ *
+ * All chips have separate SG tables for two video frames.
+ */
 
 static void setup_dma_cfg(struct tw686x_video_channel *vc)
 {
@@ -478,7 +479,8 @@ static int tw686x_enum_input(struct file *file, void *priv,
 			     struct v4l2_input *inp)
 {
 	/* the chip has internal multiplexer, support can be added
-	   if the actual hw uses it */
+	 * if the actual hw uses it
+	 */
 	if (inp->index)
 		return -EINVAL;
 
@@ -676,15 +678,17 @@ int tw686x_kh_video_init(struct tw686x_dev *dev)
 	for (n = 0; n < 2; n++)
 		if (is_second_gen(dev)) {
 			/* TW 6865, TW6869 - each channel needs a pair of
-			   descriptor tables */
+			 * descriptor tables
+			 */
 			for (ch = 0; ch < max_channels(dev); ch++)
 				dev->video_channels[ch].sg_tables[n].size =
 					SG_TABLE_SIZE;
 
 		} else
 			/* TW 6864, TW6868 - we need to allocate a pair of
-			   descriptor tables, common for all channels.
-			   Each table will be bigger than 4 KB. */
+			 * descriptor tables, common for all channels.
+			 * Each table will be bigger than 4 KB.
+			 */
 			dev->video_channels[0].sg_tables[n].size =
 				max_channels(dev) * SG_TABLE_SIZE;
 
-- 
2.1.4


