X-GM-THRID: 6340040411169423360
X-Received: by 10.129.162.205 with SMTP id z196mr395675ywg.113.1476155781585;
        Mon, 10 Oct 2016 20:16:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.162 with SMTP id 34ls246932iol.13.gmail; Mon, 10 Oct
 2016 20:16:21 -0700 (PDT)
X-Received: by 10.66.154.17 with SMTP id vk17mr356692pab.173.1476155781186;
        Mon, 10 Oct 2016 20:16:21 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t8si169719vkb.2.2016.10.10.20.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id z126so389967vkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rhwrdJlWwG7JtPbGQVC+LKXN3JX1CxgLjNEmVccIe/U=;
        b=SyZ7d8naMi/DKKVLahi8jFfL+Od0VzJFZFk4zpJ0jAOpupx/U3ruEtrNbCf23R+WAQ
         euHxl/eyRtm78tsprRXGMpo3SePGBsrEO8b96Ow0r98X66d+V8/vKfb1/RFKSwD4kFn4
         WdkPySoU7NS+9qbOi1/WgpUIKHyUH9KG+6gcvxkN3+73sGM/qfYSppWYmYHdeG4rOeFO
         MnCQ8L6vLTRhEmR0F6kriRv69brRK2sjcsvizbuyifOioOh2ePeAOFKkjvubCP6JsBgb
         z5E8B9Zsyw9vctJ5f/VGR1HfN1QDdyjBpdedsSkWM5CMsXrJDvXSrXL5CG37iAl9H5MR
         DkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rhwrdJlWwG7JtPbGQVC+LKXN3JX1CxgLjNEmVccIe/U=;
        b=jpK6E+HcMSp2OZ8OEi3O5R/D9CZMhizzOTRIs08kBeDC4BA33AqP/B6AcDeIofQhF1
         AuHhGfEALXkeb2ZtG0chLZcFWdfkPQKd4HLW3tRKVUC8iB8+KROdvEKCu8pHB1Ngvhuh
         12JERqeVYIt+xU8e49K/XmKyQsfumMJqDETUi9G1kjleadMgvop/2OP69kS4kn+fp7Xr
         EvA01I6fQzXCy8zRKbFxO2nlJ7ZYmitDMx9kYr5WxoyacSpc1BuDZvrLd1EI+7c5ELgQ
         2Y4b9Jpz8Dxokih8MtVQ0cRIvpaVPusc+COVT/5rQmF8bswrbz3LVSz6mEn0Ntb109aE
         Dd8w==
X-Gm-Message-State: AA6/9RkHFVrqBCD/kGjLmk0I1CR3yA1Sdrh5roBa6XJycGJpCgDCj3djJv1NDeXOVi7Lig==
X-Received: by 10.31.92.216 with SMTP id q207mr1376944vkb.147.1476155780986;
        Mon, 10 Oct 2016 20:16:20 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p6sm582912vkf.22.2016.10.10.20.16.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:16:20 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:16:14 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: greybus: Use kcalloc for array's memory
 allocation.
Message-ID: <20161011031614.GA22058@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer kcalloc over kzalloc with multiply

kcalloc is designed to allocate memory for arrays, its use is
preferable than kzalloc in these cases.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 0c73445..1c5b41a 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -797,7 +797,7 @@ static int gb_camera_op_configure_streams(void *priv, unsigned int *nstreams,
 	if (gb_nstreams > GB_CAMERA_MAX_STREAMS)
 		return -EINVAL;
 
-	gb_streams = kzalloc(gb_nstreams * sizeof(*gb_streams), GFP_KERNEL);
+	gb_streams = kcalloc(gb_nstreams, sizeof(*gb_streams), GFP_KERNEL);
 	if (!gb_streams)
 		return -ENOMEM;
 
@@ -938,7 +938,7 @@ static ssize_t gb_camera_debugfs_configure_streams(struct gb_camera *gcam,
 		return ret;
 
 	/* For each stream to configure parse width, height and format */
-	streams = kzalloc(nstreams * sizeof(*streams), GFP_KERNEL);
+	streams = kcalloc(nstreams, sizeof(*streams), GFP_KERNEL);
 	if (!streams)
 		return -ENOMEM;
 
-- 
2.7.4


