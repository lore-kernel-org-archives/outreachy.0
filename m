X-GM-THRID: 6251396265840476160
X-Received: by 10.182.79.134 with SMTP id j6mr14669790obx.4.1455516616720;
        Sun, 14 Feb 2016 22:10:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.15 with SMTP id 15ls1441058ioo.92.gmail; Sun, 14 Feb
 2016 22:10:16 -0800 (PST)
X-Received: by 10.107.185.4 with SMTP id j4mr15913123iof.21.1455516616366;
        Sun, 14 Feb 2016 22:10:16 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id i133si1999573ywe.7.2016.02.14.22.10.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 22:10:16 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id b35so103996422qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 22:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=hCswKSS0qme0Cie7U3coMbY/FmXT0IQ8ouF73VQjWl4=;
        b=xf13Vcn0qojcM0odezOfTNrHdrBLbxpz/BH8SJAcxX8/NDgYrDRSpcDH6BqRj6Fvqg
         HCi9UrBEu/sXwBjtRBg7FcRcnvZWMo8BXFAXAwCSJz4jFul+QuQD0I+6N3zFIvkW52Yr
         5w08Q8kfuCg8mPUPt4heqLI/i8Dz4AwOIUDhHvlXgECpfRFZSn2A5oUFgvn6xCmx+Wcs
         5aj9XOaUUbnVVS5qZ3Gzd9rtbJZpEUQO58Y9Ncbcw42MU8ifCb64Fxza1rQ59AlDHPgP
         /KZIBVDeozeJCyhG3Bhn25d/72LYpGsmbpmyJ/8VrtMhthGNp0nmeBOty63BFbXIXRzF
         +NYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=hCswKSS0qme0Cie7U3coMbY/FmXT0IQ8ouF73VQjWl4=;
        b=NTI3+QbXUC/ZCujHAEDGVizSSkYWu0n6TO1JBwExhjkjpj4cYLyHwRwOCpguL4lryX
         zxHnBBKF+WtqlKiWvEZ3oycO7LvS75c9GO17Zmu7DzpE8ioXTCMzvWaF9NQve8x/BvbE
         ph9/22sgUiWc5vEtE6VDnCu1zF6pttdVbWyL0mSflIxgOMQJ5soDO8FCBrK79rzAyOqR
         /qN5BGayWP656YyIHU0UZHcK8Y2lpHs4jIsAe2l6rIXvL5BrbZark3eJ2snD/cTqgDlG
         gie5bOPL0B1KaWicxjumzdSQxXxiQ2rvTdsjiWWg1buFvEJR76B9RexuifOl4lys+fnT
         JluQ==
X-Gm-Message-State: AG10YOSeYD7xpddcZxfRFCGqmoOFBdwmdtvoPnm9tH6rruhdBs3H7+zqYi7+x03xcV5uvQ==
X-Received: by 10.140.40.37 with SMTP id w34mr18300799qgw.85.1455516616207;
        Sun, 14 Feb 2016 22:10:16 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id o60sm10529064qge.34.2016.02.14.22.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 22:10:15 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging:media:davinci_vpfe: Fix lines over 80 characters
Date: Mon, 15 Feb 2016 04:10:11 -0200
Message-Id: <1455516611-6583-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Fix "line over 80 characters" checkpatch warnings

WARNING: line over 80 characters


Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |  5 +++--
 drivers/staging/media/davinci_vpfe/dm365_isif.c    |  8 +++++---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 10 ++++++----
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 633d645..6e4c87f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -641,8 +641,9 @@ ipipeif_try_format(struct vpfe_ipipeif_device *ipipeif,
 }
 
 static int
-ipipeif_enum_frame_size(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		     struct v4l2_subdev_frame_size_enum *fse)
+ipipeif_enum_frame_size(struct v4l2_subdev *sd,
+			struct v4l2_subdev_pad_config *cfg,
+			struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct vpfe_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index cfad426..9b28513 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -282,7 +282,8 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
  * @fmt: pointer to v4l2 subdev format structure
  */
 static void
-isif_try_format(struct vpfe_isif_device *isif, struct v4l2_subdev_pad_config *cfg,
+isif_try_format(struct vpfe_isif_device *isif,
+		struct v4l2_subdev_pad_config *cfg,
 		struct v4l2_subdev_format *fmt)
 {
 	unsigned int width = fmt->format.width;
@@ -1399,8 +1400,9 @@ static int isif_set_stream(struct v4l2_subdev *sd, int enable)
  * @which: wanted subdev format.
  */
 static struct v4l2_mbus_framefmt *
-__isif_get_format(struct vpfe_isif_device *isif, struct v4l2_subdev_pad_config *cfg,
-		  unsigned int pad, enum v4l2_subdev_format_whence which)
+__isif_get_format(struct vpfe_isif_device *isif,
+		  struct v4l2_subdev_pad_config *cfg, unsigned int pad,
+		  enum v4l2_subdev_format_whence which)
 {
 	if (which == V4L2_SUBDEV_FORMAT_TRY) {
 		struct v4l2_subdev_format fmt;
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 59f71bb..3cd56cc 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1387,8 +1387,9 @@ resizer_try_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
  * @fmt: pointer to v4l2 subdev format structure
  * return -EINVAL or zero on success
  */
-static int resizer_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-			   struct v4l2_subdev_format *fmt)
+static int resizer_set_format(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_pad_config *cfg,
+			      struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_resizer_device *resizer = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
@@ -1447,8 +1448,9 @@ static int resizer_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_con
  * @fmt: pointer to v4l2 subdev format structure
  * return -EINVAL or zero on success
  */
-static int resizer_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-			   struct v4l2_subdev_format *fmt)
+static int resizer_get_format(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_pad_config *cfg,
+			      struct v4l2_subdev_format *fmt)
 {
 	struct v4l2_mbus_framefmt *format;
 
-- 
2.1.4


