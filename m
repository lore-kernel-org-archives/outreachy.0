X-GM-THRID: 6207482452562149376
X-Received: by 10.112.173.170 with SMTP id bl10mr4134858lbc.7.1445292141820;
        Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.40 with SMTP id f40ls643670lfi.59.gmail; Mon, 19 Oct
 2015 15:02:21 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr7162309lbb.10.1445292141261;
        Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id m4si6321wib.0.2015.10.19.15.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id fx6so19133924wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=MUkmPFFe4pmoq74A5khnzN8nTEwRwW0o/WB3dbl+KZY=;
        b=NVPqWcCvf0Our8c4cv8FdO45kl1dNz2cdTt6tRMMNMlwUr59hiEVJwI7mMoq86XB8r
         x3GguSlmwmfrGrcOU7HLFfXt4RBKh8PKa+cgZrRLjLfvQ2FCenvrmoS0V/mpeIF9on0F
         Z7XHvkhrF2KAqxyaRSxbAo+eGe16egybYWBJIO5LhL/gtuc6RNKIA5LQzzoTNiHcEmvd
         9yEyoVZf2c7AyewyO9Be+yBS9YV+09+Hw6DwRpbVzhXUvUsY2bx1hSmIdwOcFzImtFbd
         DEaEA2aHDLXXbr7FQOf8uDN13fWhLslXv0rLgQn1ws1NmbDbl+/RudRi2bFbdxfeS7NS
         ONMA==
X-Received: by 10.195.13.164 with SMTP id ez4mr34805352wjd.112.1445292141161;
        Mon, 19 Oct 2015 15:02:21 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:20 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 06/10] staging: iio: cdc: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:41 +0300
Message-Id: <6c7259431842ab94df8dad56f6d1d29f6cd63935.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 drivers/staging/iio/cdc/ad7152.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index ff83394..9ba8f46 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -222,7 +222,7 @@ static int ad7150_write_event_config(struct iio_dev *indio_dev,
 	u64 event_code;
 
 	/* Something must always be turned on */
-	if (state == 0)
+	if (!state)
 		return -EINVAL;
 
 	event_code = IIO_UNMOD_EVENT_CODE(chan->type, chan->channel, type, dir);
diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index c3d5531..485d0a5 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -290,7 +290,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 		ret = 0;
 		break;
 	case IIO_CHAN_INFO_SCALE:
-		if (val != 0) {
+		if (val) {
 			ret = -EINVAL;
 			goto out;
 		}
-- 
1.9.1


