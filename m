X-GM-THRID: 6207482452562149376
X-Received: by 10.180.87.74 with SMTP id v10mr249793wiz.5.1445371023348;
        Tue, 20 Oct 2015 12:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.79 with SMTP id s76ls123041lfs.29.gmail; Tue, 20 Oct
 2015 12:57:02 -0700 (PDT)
X-Received: by 10.112.16.229 with SMTP id j5mr1065514lbd.6.1445371022911;
        Tue, 20 Oct 2015 12:57:02 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id w4si819430wiz.0.2015.10.20.12.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id p11so63317985wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=J6CqMagu9iJwAN0axaZVmn58isxgazy3RbNfCE/qIc0=;
        b=lq3QgctCkqICZcjCF0LwtUhPpHydC3/t5EHFL4fwrjk913E8Jimg4rLG8L1Stzes73
         Bnp8yuki/G+cnO6aZa3jBbhE6Tci3+gd++C454eutHh1GKV+F4Isw1RQcyHt7HIeW4V2
         YG7fclaq2ifHRIqNd6MCNhzXz8XYTCwUWXjmtyK/HUODaVZIqSLc3g6coAU46nQhA2/4
         JXpc0kSUgUzujY5fYFrLIrLgwqvaHX47X2Vk2L2nYaKdYG5lcmkI1NUBEYzQRaq1XcST
         nTkMObMkVLr48bwjwsIvakcm4gujY+Q5FNhirXQ0QC6nmUgvKLOtnRQqteDbOF1ovroL
         jViQ==
X-Received: by 10.180.188.235 with SMTP id gd11mr6763562wic.84.1445371022824;
        Tue, 20 Oct 2015 12:57:02 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:02 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 5/9] staging: iio: cdc: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:43 +0300
Message-Id: <446f641e78c43fa8d08c4ebf011ec3b2f6944a03.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

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


