X-GM-THRID: 6543663108012900352
X-Received: by 10.176.112.166 with SMTP id q6mr1073137ual.89.1523565296357;
        Thu, 12 Apr 2018 13:34:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.28.26 with SMTP id a26ls645453uaj.2.gmail; Thu, 12 Apr
 2018 13:34:55 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/U/VtZKMrTiuKEGZIgDwV7kGuz0VpndQYZFqoZmMuDri4dfuyS81t7tOvH/U4oWy8HjWUO
X-Received: by 10.176.19.145 with SMTP id m17mr1106577uae.29.1523565295819;
        Thu, 12 Apr 2018 13:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523565295; cv=none;
        d=google.com; s=arc-20160816;
        b=FAWREz8ITs4CWBkjQ90xjVG6v4XQj6lUwWs5j+qgd7LG6T/3QXVMBMk2OHtTIKqRkA
         NYLCYlhpOCXgee7gLSmUMuTI6k0cgv99iIJa/zsRSSxZBlr8im5Qf9FZDWJaOp/n4emX
         XnlAmYYlnQLPMHtcgQ/7DeVXWlMPWoL4qWkltZDLysLdgYd8MqV2mJUYnQi/3pvE+NQu
         P5HGYU/6b4JaJL8Lpb/LCw14kbS06p35CBGPyn+ObH/x34sHOCdFatyDC/SC7wqJdk6k
         6CbRzCA5HKhdlSAXj2chKB/ZRnR5uDIPQlQQ3up0W2KYyieF2rccl2S3nYNXkUYuEjZa
         OXyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=qTHaSzqkuo7ja/k6rxaaFfe2zPP86zFY6CE1vWOENOQ=;
        b=x2iYjuzH6GIHUW4hiioWNUf27ysaKaRQrRLSOk1OSh900lFPz5mI+qjkbACz+2xsLv
         8Zpb/qgZtDBAChQEbiyDoSfi0w+kvaMnHKWGKII417zWxhs3CPkdULeUEwuK38QDEXo6
         7qyUkavoiL6Arc0Jn7g9C+8h34ROHSQH1eUDCo/tjmhfXNwrtkc6D5D0cQGY6vgYVrWN
         NVaTUq/Awj9mhgdsEAQ3qZT4RNyx1tAr8tmgc9C+U6YhNipm9RTYWdKDFvIaMHrq9TcX
         l1NXPvpT3CBq5mXdBl0lVQHxoRcYf7pcorwLne14vR6xSnbW3yo1LYyOwyu5952hudE7
         ecHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=S+b999LZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q76si369510vkh.1.2018.04.12.13.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 13:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=S+b999LZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x244.google.com with SMTP id c78so4723952pfj.6
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 13:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qTHaSzqkuo7ja/k6rxaaFfe2zPP86zFY6CE1vWOENOQ=;
        b=S+b999LZJiNiZ29vSlCLHILIYJvwjPdeRV8AwhtlQ0i1SkCyh83OtOhqtM9sRSB6aH
         uwx+HWbGCMRlyITfM0ELNaD883IIk54BqSAj1Xu9DMelvXPShGoanWgLKTlRwIdl1Xrp
         z0KVxJZRYMQqso5Du0+Q+ZL7S1O6tlbBKtGQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qTHaSzqkuo7ja/k6rxaaFfe2zPP86zFY6CE1vWOENOQ=;
        b=kyGRJb1Oj4vwlPIa+v/QjggRJlZiOYx9ZGT7LH4L6VUlizOmSLF+Ldgf6HnJgo3GFn
         u0Xhbk01H3aDkyy6a/BdBCUf8zmzw98vobQJr2fvXJCXsfxquA3lNF2AlbpPeZ+YD83m
         GJMYsqkLL07I8N5j/QrRMHqQAFf6Tk8WWmKO1IyjqJGKAxPe4esPfm8iAlijhSJcNy6G
         73femrmZ5i3v+QgNjOqx6N097SF/7YUVdAcIjNwOc99Ydax/nTdYxVFnG5KN6uB4Da1w
         4R+fhbEoHHRnoUpH5OlE7OvWbFb79L8CFuty6RUc/HKHwl5UAD+IhFIJmClo/aoBx+bs
         Y6Mw==
X-Gm-Message-State: ALQs6tCatPceKtR3jGEY9w1FpYNPTEDSGvWnaiiIYUUaf7lt45Jt87W2
	Ln4K96rgsk3ph5vi8VTmJUMgqgP4
X-Received: by 10.99.56.8 with SMTP id f8mr1837568pga.374.1523565294735;
        Thu, 12 Apr 2018 13:34:54 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id m21sm8402413pgn.0.2018.04.12.13.34.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 13:34:54 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 3/3] Align function arguments and boolean expressions with open parentheses
Date: Thu, 12 Apr 2018 20:34:35 +0000
Message-Id: <1523565275-21820-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523565275-21820-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1523565275-21820-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Align function arguments and boolean expressions with open parentheses.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 1f1a77b..495d2ef 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1491,11 +1491,11 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
 		return 0;
 
 	if (fmt->pad == IPIPE_PAD_SINK &&
-	   (ipipe->input == IPIPE_INPUT_CCDC ||
-	    ipipe->input == IPIPE_INPUT_MEMORY))
+	    (ipipe->input == IPIPE_INPUT_CCDC ||
+	     ipipe->input == IPIPE_INPUT_MEMORY))
 		ipipe->formats[fmt->pad] = fmt->format;
 	else if (fmt->pad == IPIPE_PAD_SOURCE &&
-		ipipe->output == IPIPE_OUTPUT_RESIZER)
+		 ipipe->output == IPIPE_OUTPUT_RESIZER)
 		ipipe->formats[fmt->pad] = fmt->format;
 	else
 		return -EINVAL;
@@ -1511,7 +1511,7 @@ ipipe_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
  */
 static int
 ipipe_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
-		     struct v4l2_subdev_format *fmt)
+		 struct v4l2_subdev_format *fmt)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 
@@ -1531,8 +1531,8 @@ ipipe_get_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
  */
 static int
 ipipe_enum_frame_size(struct v4l2_subdev *sd,
-		       struct v4l2_subdev_pad_config *cfg,
-		       struct v4l2_subdev_frame_size_enum *fse)
+		      struct v4l2_subdev_pad_config *cfg,
+		      struct v4l2_subdev_frame_size_enum *fse)
 {
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
 	struct v4l2_mbus_framefmt format;
@@ -1699,7 +1699,7 @@ static const struct v4l2_subdev_ops ipipe_v4l2_ops = {
  */
 static int
 ipipe_link_setup(struct media_entity *entity, const struct media_pad *local,
-		     const struct media_pad *remote, u32 flags)
+		 const struct media_pad *remote, u32 flags)
 {
 	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
 	struct vpfe_ipipe_device *ipipe = v4l2_get_subdevdata(sd);
@@ -1761,7 +1761,7 @@ void vpfe_ipipe_unregister_entities(struct vpfe_ipipe_device *vpfe_ipipe)
  */
 int
 vpfe_ipipe_register_entities(struct vpfe_ipipe_device *ipipe,
-				 struct v4l2_device *vdev)
+			     struct v4l2_device *vdev)
 {
 	int ret;
 
-- 
2.7.4


