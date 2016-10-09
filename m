X-GM-THRID: 6339312082632048640
X-Received: by 10.36.116.76 with SMTP id o73mr1669642itc.10.1475986112383;
        Sat, 08 Oct 2016 21:08:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls2455608itd.22.gmail; Sat, 08 Oct
 2016 21:08:28 -0700 (PDT)
X-Received: by 10.66.163.3 with SMTP id ye3mr5819906pab.0.1475986108759;
        Sat, 08 Oct 2016 21:08:28 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si2297494vkf.1.2016.10.08.21.08.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 21:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so3156651vkb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 21:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=d3MpLmK01Vgx49F78i4lEYV6JOFr5Nj3EGMN7Xj/F/4=;
        b=HUk73rMePVaDkfdijC/MQPRTf9rw8Q67zVE0dIv87ryZQPI/OXH0pw6L5fDhfkZw42
         sOGkDtF4bIRE34oRBld4uXCkKLNGGTUg1WC9wKrCXBxbdUufowDh1+3HXc+rkxQQIFrc
         BLyLwuYPvHg/a1kd3QDyb8V34riwabjTE8zZ1OYaFfg1NwwtHrjtKky3/4VyXlZIQ7ae
         gI76DsObNJR1ofd997PPAuVbx9mTEUmWIbzp2yiV7pgSylfAbc0uItU0rKYwyRt0nGgB
         TDNpRC/Kynm434D0usytDdrlP+u/XfbPO6YFL6+l2QRezuk/3CrmA6K0l+J++82A5URx
         u3mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=d3MpLmK01Vgx49F78i4lEYV6JOFr5Nj3EGMN7Xj/F/4=;
        b=YkjtZqd+vQOZ+RrZvRHyD7Hz2l7QlIAS3q2l5bnI+Ndky9YKI5pM7gpqfwd4BOafZw
         ANbYdA5TA4HKol/casAdCbiRxJPgKVkS1CTw3NHiBJ4ziyfghkcbS7s89WOIfdwEwUPG
         qIxf/I8325B9nsGw/UkZJ5Q593uQ76dhALx6RnR7dWC5VWfrbtjfaHZKgEVg06VFnYb4
         52xYLkg3QsbFXh7gtNFvHp88UaEJJLtkD23iDdHA2DMpULIriOy0O9VAO0rTlPpwcJa0
         yVYNjeQPg3dloitXsy4z47s7GObD6Jz9jEV5fij1TGIPrNSR68s2QrfDWBBVTLUzc7jj
         9s3g==
X-Gm-Message-State: AA6/9RmXLXiBBVuqJgN/nj/HjcgwTki2UY69uSIfiL6e9RPeTAcEkrlfAqOhLsfyuPgCfA==
X-Received: by 10.31.188.6 with SMTP id m6mr17070866vkf.28.1475986108514;
        Sat, 08 Oct 2016 21:08:28 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm7692926vki.28.2016.10.08.21.08.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 21:08:27 -0700 (PDT)
Date: Sun, 9 Oct 2016 01:08:21 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: tw686x-kh: Format block comments.
Message-ID: <20161009040821.GA355@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warnings:

WARNING: Block comments use a trailing */ on a separate line
WARNING: Block comments use * on subsequent lines

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
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
2.7.4


