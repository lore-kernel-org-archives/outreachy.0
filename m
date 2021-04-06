X-GM-THRID: 6948024355480666112
X-Received: by 2002:a1c:f404:: with SMTP id z4mr4065434wma.39.1617712982505;
        Tue, 06 Apr 2021 05:43:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls6223711wrv.2.gmail; Tue, 06 Apr
 2021 05:43:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9CjE6kgbI1yBsO5FoAnjLzz5nU0Hn9qs1Iy7NuE/frLNw3nOYOraP6YZjWb5Se4+07I7L
X-Received: by 2002:adf:cc8d:: with SMTP id p13mr10290903wrj.50.1617712981238;
        Tue, 06 Apr 2021 05:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617712981; cv=none;
        d=google.com; s=arc-20160816;
        b=FKrTaFsPy2O04cfyyDadDgMOkA7bfacZZ+/iTYVNaX31GZ14VLovoN3046FkrhhSBe
         sdM4KzVKLjMGt7csv1MzTJUUXFUrAA23cFqlCbywIOALcjL/ezVK+EJ6c0T4q83fFjZt
         FpUB+ryeSIm3cnysMyyb5C1KPFObJ0ejdi4f/nVhV+oO+++tTOR/TlYRlxpOh19MfvGv
         /mj4Ie4xli667jOJCy8T1rtB+6xj5meog4+sRJfbT3nNgeV6dmjfSvgweWfB2iNF2x9c
         /xOIaheUTlIn8+VmIiCFbFV+YM+dYmf91GQ/+JDzHGzmrHSV5SHMq3WmCeOXeTYXOzNJ
         mzOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jTrDPPAFiLJk6tDPgw2eOrS8B79LVV1U/u/3lEC2RNM=;
        b=dqb5ryQ744PNWBufiTNbzONybP0pOMNWUgYarK3yLr4/F/EXir2HfQWjxD+jPlsmFg
         rN5yHZPfgAtM5QbiPuD4Z0BmH17UHilIKC8npiRkPGmfttIxcYNT6jK8ZAbyhy3vbYts
         /SfQSfFsS5tYCOLR/CLjJR/wesYCtrGSv+xU0T65wqpPIwnMTwmFZnAleP11eqGjU/Si
         emH0raLPrv3jBPEBIRF1Wjp0uLxF31LOGZlf1AUjbiPkcfDeEZFPLkAXinVtU7UwMczr
         DgqGxDLkhZtqklX6PnjHmIfKqiFYpAgwdAZ6gmVY53s8rmNmzP03iU1ZwPPTmdSpslK2
         71+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hvkP6l1B;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id r11si2639626wrm.1.2021.04.06.05.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hvkP6l1B;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12a.google.com with SMTP id r8so4972185lfp.10
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 05:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=jTrDPPAFiLJk6tDPgw2eOrS8B79LVV1U/u/3lEC2RNM=;
        b=hvkP6l1BivsGO6AiN5Rr5cn89tLh14H6VrlAHoR3NGLzigf6VTaz4dTAs9cf59qeMs
         3vx5669y4PItdM15UGr8bC2PH522xFQpg2kQ1bbxe6SWNCR7CuZ6PUav6rjroeQ8aNQ4
         Nwb4uMEJHXtOnr4wdejX+/6ZXm5ZGT553cvvNiWJy5/vOwopEvbLI+z1aaVaSxhBTjw/
         jl4uYRSMPHNWak2Aajrja+mRSeSMqe8yL1rKxGZMOPQIYRKdGjPd6je/Pzh1vFk/pojS
         UeAaOUwARfH0grpAeDXGF9w4h7tYcxbj0DzRKjvBGCOf5Ngid/U4nIFIMBBkgMiuscjs
         T9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=jTrDPPAFiLJk6tDPgw2eOrS8B79LVV1U/u/3lEC2RNM=;
        b=DRDmbdFNHeTJHj6bs5a6YU3eeSe0j4q9DyRfWk/EL2iRdBPMHN0eruMC+pkF3tdY4K
         PmXYCjoJHAJy7YYwPEsfVBJ4q8K764VdJvMFaYgJJ4fmkKixVzOu+FlWkK3pDVBmVx9N
         g3k8QqGVKj1r/v9+X7ojlGaSEeKQZp71ZNQJPD6YDTF3KniuLVRRdlBmlU+nit4agBH2
         sYm7EY0VHRRHRiZUwliQTziogDGIrf2Lr5FC41A9aZh9nvBB7smokohv7IIsq7O6sa0+
         v/7CBiwxm5GAMLjauzcNFznnzlCttNu+pwoIyHz0YqQyzeCWXkFRSa9Zl+Lq1MZOjCNv
         btog==
X-Gm-Message-State: AOAM532s07uMgyFdop7Y0WDvi8i/tpQ+8eoz89N5GUqtfIZKUWotXnAC
	5/TyLDBg8zIYHclumBIzcXCqtUCiPxG16g==
X-Received: by 2002:ac2:53a1:: with SMTP id j1mr21109137lfh.298.1617712980572;
        Tue, 06 Apr 2021 05:43:00 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id u18sm2138265lfu.103.2021.04.06.05.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 05:43:00 -0700 (PDT)
Date: Tue, 6 Apr 2021 18:42:59 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: Match parentheses alignment
Message-ID: <20210406124259.GA96537@zhans>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Match next line with open parentheses by adding tabs/spaces
to conform with Linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/greybus/camera.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index cdbb42cd413b..5dca585694c0 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -220,7 +220,7 @@ static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 }
 
 static int gb_camera_get_max_pkt_size(struct gb_camera *gcam,
-		struct gb_camera_configure_streams_response *resp)
+				      struct gb_camera_configure_streams_response *resp)
 {
 	unsigned int max_pkt_size = 0;
 	unsigned int i;
@@ -378,8 +378,8 @@ struct ap_csi_config_request {
 #define GB_CAMERA_CSI_CLK_FREQ_MARGIN		150000000U
 
 static int gb_camera_setup_data_connection(struct gb_camera *gcam,
-		struct gb_camera_configure_streams_response *resp,
-		struct gb_camera_csi_params *csi_params)
+					   struct gb_camera_configure_streams_response *resp,
+					   struct gb_camera_csi_params *csi_params)
 {
 	struct ap_csi_config_request csi_cfg;
 	struct gb_connection *conn;
@@ -783,8 +783,8 @@ static ssize_t gb_camera_op_capabilities(void *priv, char *data, size_t len)
 }
 
 static int gb_camera_op_configure_streams(void *priv, unsigned int *nstreams,
-		unsigned int *flags, struct gb_camera_stream *streams,
-		struct gb_camera_csi_params *csi_params)
+					  unsigned int *flags, struct gb_camera_stream *streams,
+					  struct gb_camera_csi_params *csi_params)
 {
 	struct gb_camera *gcam = priv;
 	struct gb_camera_stream_config *gb_streams;
-- 
2.25.1


