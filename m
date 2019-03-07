X-GM-THRID: 6665612621009387520
X-Received: by 2002:a19:dc05:: with SMTP id t5mr778741lfg.0.1551958957962;
        Thu, 07 Mar 2019 03:42:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:508f:: with SMTP id f15ls514966lfm.7.gmail; Thu, 07 Mar
 2019 03:42:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqzPQTdzC7zq2JozgIuDPMSrzs3+DDMFnz0DQlDRfUC7aM3S57wRDNTxsrNuEGuTrSZtdPVm
X-Received: by 2002:a19:c502:: with SMTP id w2mr776880lfe.15.1551958956955;
        Thu, 07 Mar 2019 03:42:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551958956; cv=none;
        d=google.com; s=arc-20160816;
        b=O2gzNtq/E4VCbxCC5me+NGZQC68l7RMP4WWytaolPhCIuM3lv1hGiKubMEjuyY1vvh
         a4icJ9LGw/2XJUIBW+EIkotDMFw8NqEPU5+CICRBfZQWeoDjn4rKnd9Otn14LfY28Fm0
         ZoJkavf86rbBQED3st2Z3a7tMYJBsQrL8qtK3AyyvEDQRmTbI6wo9pPmK7AVVfugfQ6K
         VJvMOiuuzjOdGfx9NEmKE1xihuEP6a3ZtpaFp+gOXL3ANdHmOJ405HS08zBjfUfbAxSb
         xr8hl1CxPHV7hOSI9TroLDaG3WMiIWdCAFpfQCcAbAZokIV2xQlnGtrJKx38y+3eDJNy
         +DPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZJST5SnwriZ1EBxbEx5U4FWuPYxyZDTwV7ajXFIQ9dM=;
        b=1HKtSVfAVnzLT6VRtXavH3ilxxuBlhb59txiMb3g98NW/CfXuhK+xAW69SkSRd7XT1
         cd7eknRbg7ctyOjCsiE1ly5fWeGldjGXYIR07wvXwWpEgcGQiYOMGwI9AXG5zUQ0nz4n
         tI9UHnOMqC2T9apMgJuS7rUuJi8Vhzxrv7nDg7LHsyHvzpvzYqO511h32vSawGSpvrvx
         7MwHNSENx5JrICiZ+NNLJv4cP/k2wMbLOLuejJ4RRtObQ67CtBCI62vHr1Ajz3V6VtuG
         r4oUS3OdhTiE5aib1oBMVzl4JkFmW/cr3lkScgS6613FKvzwE6RAZBmHooQnsho9nhTc
         OcPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXuLxdV7;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id f20si154452lfc.5.2019.03.07.03.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 03:42:36 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JXuLxdV7;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id n2so17041300wrw.8
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 03:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZJST5SnwriZ1EBxbEx5U4FWuPYxyZDTwV7ajXFIQ9dM=;
        b=JXuLxdV7d8WYtB6Cs57XilERrT7SFnqORKO1jIOvJ8UEDxVyDkPap9GYuggal+on5G
         gHsTm/9UARy4CMuceATM5v6ft8Jp9ddI3h4kmOswF6uxIdj35nUhfs10lJX4vIDZNLzd
         5toWkhhtPbjVLptKPPmG92HotbYOfgd3Mk1awrYezrJtEHyHKVqEYpmeQJMqqNkP7TRp
         PZgFsh9TDfgjD9YoXrs9U2xc+pgqaW+gapukwC/BfSkBQf6Q+b1cL9WrMz8Xrhbnsm3Q
         EE0g5F0rS4IZa/AY5YigCapacvPgWJPmaUiQHW+1Onx0zWw9eeb5JjYFqCg5xVu5bqUo
         /MGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZJST5SnwriZ1EBxbEx5U4FWuPYxyZDTwV7ajXFIQ9dM=;
        b=PpWlYQk6dirHqwnLJpcnHcDuoeZ+uqPLujxzNyKy9m61DrDLFYxBPWX6UQxeiRCoH4
         gVA1RqGw8rlYXCPjI+jrHON0SO2A7qGbQ9CRhq67LPeEwjd1es37wH6hxJlDoN1lQRSE
         4XOyOv3VCarFz18VMmn2M5ElNhmRA9+R5dB53zA+xi0RKwfkjgigfi9rrHrqqInehixa
         OWWDR5SZ/m0oYxn+sbhpQ0h0kZz025AsL/hduUb4I0RQIYTX7XbSM7XQ+1dCUkWgHOHB
         KZalD/KKQ3tGOtTBj7Sa7qDX2la2uxbTjwTNem3bw1ez4zDE2P3RA9VwMPYKF7n/xob+
         Q95Q==
X-Gm-Message-State: APjAAAXM0Cr2lnkC3vAcMC6M1cgvMB4qTSZgV2auy44Cd2i3xenjDEhG
	mk1UH58YxNF8IUjWGdJSjGo=
X-Received: by 2002:adf:ffcd:: with SMTP id x13mr6376659wrs.20.1551958956318;
        Thu, 07 Mar 2019 03:42:36 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id z15sm7974344wrh.18.2019.03.07.03.42.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 03:42:35 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH 3/3] staging: media: davinci_vpfe: Fix alignment issues
Date: Thu,  7 Mar 2019 13:42:33 +0200
Message-Id: <1551958953-9920-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>
References: <1551958871-9732-1-git-send-email-daniela.mormocea@gmail.com>

Fix all the alignment issues in the file to
get rid of checkpatch warnings

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 5a44c0c..4380e0a 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -104,7 +104,7 @@ ipipeif_get_cfg_src1(struct vpfe_ipipeif_device *ipipeif)
 
 	informat = &ipipeif->formats[IPIPEIF_PAD_SINK];
 	if (ipipeif->input == IPIPEIF_INPUT_MEMORY &&
-	   (informat->code == MEDIA_BUS_FMT_Y8_1X8 ||
+	    (informat->code == MEDIA_BUS_FMT_Y8_1X8 ||
 	    informat->code == MEDIA_BUS_FMT_UV8_1X8))
 		return IPIPEIF_CCDC;
 
@@ -360,7 +360,7 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		default:
 			/* Bayer */
 			ipipeif_write(params.if_5_1.clip, ipipeif_base_addr,
-				IPIPEIF_OCLIP);
+				      IPIPEIF_OCLIP);
 		}
 		ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 		break;
@@ -389,7 +389,7 @@ ipipeif_set_config(struct v4l2_subdev *sd, struct ipipeif_params *config)
 	ipipeif->config.rsz = config->rsz;
 	ipipeif->config.decimation = config->decimation;
 	if (ipipeif->config.decimation &&
-	   (ipipeif->config.rsz < IPIPEIF_RSZ_MIN ||
+	    (ipipeif->config.rsz < IPIPEIF_RSZ_MIN ||
 	    ipipeif->config.rsz > IPIPEIF_RSZ_MAX)) {
 		dev_err(dev, "rsz range is %d to %d\n",
 			IPIPEIF_RSZ_MIN, IPIPEIF_RSZ_MAX);
@@ -580,7 +580,7 @@ static int ipipeif_enum_mbus_code(struct v4l2_subdev *sd,
  */
 static int
 ipipeif_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		struct v4l2_subdev_format *fmt)
+		   struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 
@@ -679,8 +679,8 @@ ipipeif_enum_frame_size(struct v4l2_subdev *sd,
  */
 static struct v4l2_mbus_framefmt *
 __ipipeif_get_format(struct vpfe_ipipeif_device *ipipeif,
-		       struct v4l2_subdev_pad_config *cfg, unsigned int pad,
-		       enum v4l2_subdev_format_whence which)
+		     struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		     enum v4l2_subdev_format_whence which)
 {
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_format(&ipipeif->subdev, cfg, pad);
@@ -697,7 +697,7 @@ __ipipeif_get_format(struct vpfe_ipipeif_device *ipipeif,
  */
 static int
 ipipeif_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		struct v4l2_subdev_format *fmt)
+		   struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
@@ -879,7 +879,7 @@ static const struct vpfe_video_operations video_in_ops = {
 
 static int
 ipipeif_link_setup(struct media_entity *entity, const struct media_pad *local,
-		const struct media_pad *remote, u32 flags)
+		   const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct vpfe_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
@@ -975,7 +975,7 @@ vpfe_ipipeif_register_entities(struct vpfe_ipipeif_device *ipipeif,
 
 	flags = 0;
 	ret = media_create_pad_link(&ipipeif->video_in.video_dev.entity, 0,
-					&ipipeif->subdev.entity, 0, flags);
+				    &ipipeif->subdev.entity, 0, flags);
 	if (ret < 0)
 		goto fail;
 
-- 
2.7.4


