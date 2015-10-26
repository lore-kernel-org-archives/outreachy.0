X-GM-THRID: 6209942832976756736
X-Received: by 10.182.196.34 with SMTP id ij2mr26556052obc.24.1445864996067;
        Mon, 26 Oct 2015 06:09:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.38 with SMTP id b35ls952272qgf.96.gmail; Mon, 26 Oct
 2015 06:09:55 -0700 (PDT)
X-Received: by 10.13.225.137 with SMTP id k131mr3900609ywe.37.1445864995573;
        Mon, 26 Oct 2015 06:09:55 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id zg1si3549782pbb.2.2015.10.26.06.09.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv9so196876112pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=Zh9rq6Az6Le0xJvIn1Y4jLV4sWafeUNNAq8DV/OeyzU=;
        b=Uwt9E8Zcirb1MK9NZsR4x2yG7YPK26zm1iq/yoIdOVILLoK6PI39o6026dXYCbHm7R
         1+hE7KkX+M2hICMlTDFvO1jATQ+80f61wK9OVfgMfJLIeIvkrLy4i/Yk1JB+YJtkTL57
         ijiIvtxRkGHvx6bFlBnzP6hPnDTu7VAEwY2AMgG/7vO0u7iFAUPdszG5usAn44jC8DP/
         TFFmdpI6SdVPxU3BRVUaO4nBZ3AwdoPeKBjF/ZvZP/EZnVU0OkixQRCqUOXh5YnebrJk
         LSRb1JEPUj+BLIO7qJCWbfW3DFOjbfywBraSYakIy2qdj22YfSe9S7RKXtMdAld8ACIU
         a8mQ==
X-Received: by 10.66.164.10 with SMTP id ym10mr21654618pab.26.1445864995404;
        Mon, 26 Oct 2015 06:09:55 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:55 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: media: omap4iss: Matches alignment with open parenthesis
Date: Mon, 26 Oct 2015 06:09:31 -0700
Message-Id: <cc88dea009693b935afbf121892e5634526cecae.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>

This patch fixes some of the checkpatch issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c         |    8 ++++----
 drivers/staging/media/omap4iss/iss_ipipe.c   |   22 +++++++++++-----------
 drivers/staging/media/omap4iss/iss_ipipe.h   |    2 +-
 drivers/staging/media/omap4iss/iss_ipipeif.c |   16 ++++++++--------
 drivers/staging/media/omap4iss/iss_ipipeif.h |    4 ++--
 drivers/staging/media/omap4iss/iss_resizer.c |   16 ++++++++--------
 drivers/staging/media/omap4iss/iss_resizer.h |    4 ++--
 7 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index 104fc58..c143001 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -541,7 +541,7 @@ static int iss_pipeline_link_notify(struct media_link *link, u32 flags,
 	}
 
 	if (notification == MEDIA_DEV_NOTIFY_POST_LINK_CH &&
-		(flags & MEDIA_LNK_FL_ENABLED)) {
+	    (flags & MEDIA_LNK_FL_ENABLED)) {
 		ret = iss_pipeline_pm_power(source, sink_use);
 		if (ret < 0)
 			return ret;
@@ -919,7 +919,7 @@ static int __iss_subclk_update(struct iss_device *iss)
 }
 
 int omap4iss_subclk_enable(struct iss_device *iss,
-			    enum iss_subclk_resource res)
+			   enum iss_subclk_resource res)
 {
 	iss->subclk_resources |= res;
 
@@ -927,7 +927,7 @@ int omap4iss_subclk_enable(struct iss_device *iss,
 }
 
 int omap4iss_subclk_disable(struct iss_device *iss,
-			     enum iss_subclk_resource res)
+			    enum iss_subclk_resource res)
 {
 	iss->subclk_resources &= ~res;
 
@@ -1137,7 +1137,7 @@ static void iss_unregister_entities(struct iss_device *iss)
  */
 static struct v4l2_subdev *
 iss_register_subdev_group(struct iss_device *iss,
-		     struct iss_subdev_i2c_board_info *board_info)
+			  struct iss_subdev_i2c_board_info *board_info)
 {
 	struct v4l2_subdev *sensor = NULL;
 	unsigned int first;
diff --git a/drivers/staging/media/omap4iss/iss_ipipe.c b/drivers/staging/media/omap4iss/iss_ipipe.c
index fcde8a6..dd0abef 100644
--- a/drivers/staging/media/omap4iss/iss_ipipe.c
+++ b/drivers/staging/media/omap4iss/iss_ipipe.c
@@ -247,8 +247,8 @@ ipipe_try_format(struct iss_ipipe_device *ipipe,
  * return -EINVAL or zero on success
  */
 static int ipipe_enum_mbus_code(struct v4l2_subdev *sd,
-			       struct v4l2_subdev_pad_config *cfg,
-			       struct v4l2_subdev_mbus_code_enum *code)
+				struct v4l2_subdev_pad_config *cfg,
+				struct v4l2_subdev_mbus_code_enum *code)
 {
 	switch (code->pad) {
 	case IPIPE_PAD_SINK:
@@ -274,8 +274,8 @@ static int ipipe_enum_mbus_code(struct v4l2_subdev *sd,
 }
 
 static int ipipe_enum_frame_size(struct v4l2_subdev *sd,
-				struct v4l2_subdev_pad_config *cfg,
-				struct v4l2_subdev_frame_size_enum *fse)
+				 struct v4l2_subdev_pad_config *cfg,
+				 struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct iss_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
@@ -353,18 +353,18 @@ static int ipipe_set_format(struct v4l2_subdev *sd,
 	/* Propagate the format from sink to source */
 	if (fmt->pad == IPIPE_PAD_SINK) {
 		format = __ipipe_get_format(ipipe, cfg, IPIPE_PAD_SOURCE_VP,
-					   fmt->which);
+					    fmt->which);
 		*format = fmt->format;
 		ipipe_try_format(ipipe, cfg, IPIPE_PAD_SOURCE_VP, format,
-				fmt->which);
+				 fmt->which);
 	}
 
 	return 0;
 }
 
 static int ipipe_link_validate(struct v4l2_subdev *sd, struct media_link *link,
-				 struct v4l2_subdev_format *source_fmt,
-				 struct v4l2_subdev_format *sink_fmt)
+			       struct v4l2_subdev_format *source_fmt,
+			       struct v4l2_subdev_format *sink_fmt)
 {
 	/* Check if the two ends match */
 	if (source_fmt->format.width != sink_fmt->format.width ||
@@ -440,8 +440,8 @@ static const struct v4l2_subdev_internal_ops ipipe_v4l2_internal_ops = {
  * return -EINVAL or zero on success
  */
 static int ipipe_link_setup(struct media_entity *entity,
-			   const struct media_pad *local,
-			   const struct media_pad *remote, u32 flags)
+			    const struct media_pad *local,
+			    const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct iss_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
@@ -528,7 +528,7 @@ void omap4iss_ipipe_unregister_entities(struct iss_ipipe_device *ipipe)
 }
 
 int omap4iss_ipipe_register_entities(struct iss_ipipe_device *ipipe,
-	struct v4l2_device *vdev)
+				     struct v4l2_device *vdev)
 {
 	int ret;
 
diff --git a/drivers/staging/media/omap4iss/iss_ipipe.h b/drivers/staging/media/omap4iss/iss_ipipe.h
index b8c1b8e0..d5b441d 100644
--- a/drivers/staging/media/omap4iss/iss_ipipe.h
+++ b/drivers/staging/media/omap4iss/iss_ipipe.h
@@ -58,7 +58,7 @@ struct iss_ipipe_device {
 struct iss_device;
 
 int omap4iss_ipipe_register_entities(struct iss_ipipe_device *ipipe,
-	struct v4l2_device *vdev);
+				     struct v4l2_device *vdev);
 void omap4iss_ipipe_unregister_entities(struct iss_ipipe_device *ipipe);
 
 int omap4iss_ipipe_init(struct iss_device *iss);
diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.c b/drivers/staging/media/omap4iss/iss_ipipeif.c
index 7c78ea1..5f9e449 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.c
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.c
@@ -446,8 +446,8 @@ ipipeif_try_format(struct iss_ipipeif_device *ipipeif,
  * return -EINVAL or zero on success
  */
 static int ipipeif_enum_mbus_code(struct v4l2_subdev *sd,
-			       struct v4l2_subdev_pad_config *cfg,
-			       struct v4l2_subdev_mbus_code_enum *code)
+				  struct v4l2_subdev_pad_config *cfg,
+				  struct v4l2_subdev_mbus_code_enum *code)
 {
 	struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
@@ -480,8 +480,8 @@ static int ipipeif_enum_mbus_code(struct v4l2_subdev *sd,
 }
 
 static int ipipeif_enum_frame_size(struct v4l2_subdev *sd,
-				struct v4l2_subdev_pad_config *cfg,
-				struct v4l2_subdev_frame_size_enum *fse)
+				   struct v4l2_subdev_pad_config *cfg,
+				   struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
@@ -570,7 +570,7 @@ static int ipipeif_set_format(struct v4l2_subdev *sd,
 					      fmt->which);
 		*format = fmt->format;
 		ipipeif_try_format(ipipeif, cfg, IPIPEIF_PAD_SOURCE_VP, format,
-				fmt->which);
+				   fmt->which);
 	}
 
 	return 0;
@@ -656,8 +656,8 @@ static const struct v4l2_subdev_internal_ops ipipeif_v4l2_internal_ops = {
  * return -EINVAL or zero on success
  */
 static int ipipeif_link_setup(struct media_entity *entity,
-			   const struct media_pad *local,
-			   const struct media_pad *remote, u32 flags)
+			      const struct media_pad *local,
+			      const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct iss_ipipeif_device *ipipeif = v4l2_get_subdevdata(sd);
@@ -778,7 +778,7 @@ void omap4iss_ipipeif_unregister_entities(struct iss_ipipeif_device *ipipeif)
 }
 
 int omap4iss_ipipeif_register_entities(struct iss_ipipeif_device *ipipeif,
-	struct v4l2_device *vdev)
+				       struct v4l2_device *vdev)
 {
 	int ret;
 
diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.h b/drivers/staging/media/omap4iss/iss_ipipeif.h
index cf8a47a..c6bd96d 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.h
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.h
@@ -80,13 +80,13 @@ struct iss_device;
 int omap4iss_ipipeif_init(struct iss_device *iss);
 void omap4iss_ipipeif_cleanup(struct iss_device *iss);
 int omap4iss_ipipeif_register_entities(struct iss_ipipeif_device *ipipeif,
-	struct v4l2_device *vdev);
+				       struct v4l2_device *vdev);
 void omap4iss_ipipeif_unregister_entities(struct iss_ipipeif_device *ipipeif);
 
 int omap4iss_ipipeif_busy(struct iss_ipipeif_device *ipipeif);
 void omap4iss_ipipeif_isr(struct iss_ipipeif_device *ipipeif, u32 events);
 void omap4iss_ipipeif_restore_context(struct iss_device *iss);
 void omap4iss_ipipeif_max_rate(struct iss_ipipeif_device *ipipeif,
-	unsigned int *max_rate);
+			       unsigned int *max_rate);
 
 #endif	/* OMAP4_ISS_IPIPEIF_H */
diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index bdcab8c..9c8180b 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -496,8 +496,8 @@ resizer_try_format(struct iss_resizer_device *resizer,
  * return -EINVAL or zero on success
  */
 static int resizer_enum_mbus_code(struct v4l2_subdev *sd,
-			       struct v4l2_subdev_pad_config *cfg,
-			       struct v4l2_subdev_mbus_code_enum *code)
+				  struct v4l2_subdev_pad_config *cfg,
+				  struct v4l2_subdev_mbus_code_enum *code)
 {
 	struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt *format;
@@ -541,8 +541,8 @@ static int resizer_enum_mbus_code(struct v4l2_subdev *sd,
 }
 
 static int resizer_enum_frame_size(struct v4l2_subdev *sd,
-				struct v4l2_subdev_pad_config *cfg,
-				struct v4l2_subdev_frame_size_enum *fse)
+				   struct v4l2_subdev_pad_config *cfg,
+				   struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
@@ -624,7 +624,7 @@ static int resizer_set_format(struct v4l2_subdev *sd,
 					      fmt->which);
 		*format = fmt->format;
 		resizer_try_format(resizer, cfg, RESIZER_PAD_SOURCE_MEM, format,
-				fmt->which);
+				   fmt->which);
 	}
 
 	return 0;
@@ -710,8 +710,8 @@ static const struct v4l2_subdev_internal_ops resizer_v4l2_internal_ops = {
  * return -EINVAL or zero on success
  */
 static int resizer_link_setup(struct media_entity *entity,
-			   const struct media_pad *local,
-			   const struct media_pad *remote, u32 flags)
+			      const struct media_pad *local,
+			      const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct iss_resizer_device *resizer = v4l2_get_subdevdata(sd);
@@ -820,7 +820,7 @@ void omap4iss_resizer_unregister_entities(struct iss_resizer_device *resizer)
 }
 
 int omap4iss_resizer_register_entities(struct iss_resizer_device *resizer,
-	struct v4l2_device *vdev)
+				       struct v4l2_device *vdev)
 {
 	int ret;
 
diff --git a/drivers/staging/media/omap4iss/iss_resizer.h b/drivers/staging/media/omap4iss/iss_resizer.h
index d2a4968..1e145ab 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.h
+++ b/drivers/staging/media/omap4iss/iss_resizer.h
@@ -63,13 +63,13 @@ struct iss_device;
 int omap4iss_resizer_init(struct iss_device *iss);
 void omap4iss_resizer_cleanup(struct iss_device *iss);
 int omap4iss_resizer_register_entities(struct iss_resizer_device *resizer,
-	struct v4l2_device *vdev);
+				       struct v4l2_device *vdev);
 void omap4iss_resizer_unregister_entities(struct iss_resizer_device *resizer);
 
 int omap4iss_resizer_busy(struct iss_resizer_device *resizer);
 void omap4iss_resizer_isr(struct iss_resizer_device *resizer, u32 events);
 void omap4iss_resizer_restore_context(struct iss_device *iss);
 void omap4iss_resizer_max_rate(struct iss_resizer_device *resizer,
-	unsigned int *max_rate);
+			       unsigned int *max_rate);
 
 #endif	/* OMAP4_ISS_RESIZER_H */
-- 
1.7.9.5


