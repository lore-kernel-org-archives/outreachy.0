X-GM-THRID: 6207482452562149376
X-Received: by 10.112.136.99 with SMTP id pz3mr7169900lbb.11.1445292145307;
        Mon, 19 Oct 2015 15:02:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.225 with SMTP id l1ls12118wij.2.gmail; Mon, 19 Oct 2015
 15:02:24 -0700 (PDT)
X-Received: by 10.180.198.139 with SMTP id jc11mr2595756wic.4.1445292144979;
        Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id bn7si180087wib.0.2015.10.19.15.02.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ll6so19012426wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CAJfd1p47rsSLgy6VeVCIf/6e9PeIdt30/nvyn222lM=;
        b=mIElQqbdWw+WxUSc8cZiGcQcfd/bfl9dM9xxNWH24s5EULmHi2VY4Js0pg2E4N/jU1
         6mQtj7Jofx/0jLwGKtv5Ev5Gnzg2sIPXyajHjMmDbmhVOM3yTe87CrLZopJH35VQpwnf
         7Z+KDflTVR1IUcdKHPHz/34Zy9OBt10Ut6Jd+E1Ikex3hyVk+1gitXId02SHMvCYq/rl
         Yxl3v/QeHNln8K8wSkz94+B1lFGfzEmlUELveflAwntbEyTN38g6Y3nAoFTzHdmlURlx
         cATLB36FWb6xDtHuSkgm+2Nswt0HkVmQcuMuCCkQ8roPcIsalJcjh9QPKvd2TcytWhme
         TSYg==
X-Received: by 10.180.11.1 with SMTP id m1mr24522278wib.69.1445292144893;
        Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.61])
        by smtp.gmail.com with ESMTPSA id bf8sm42577788wjc.22.2015.10.19.15.02.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Oct 2015 15:02:24 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 09/10] staging: iio: gyro: Remove explicit comparisons
Date: Tue, 20 Oct 2015 01:01:44 +0300
Message-Id: <15c4c4c68b43f515c769396fc11a11cbcb7c8582.1445291799.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445291799.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL in order to provide efficiency

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/iio/gyro/adis16060_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/gyro/adis16060_core.c b/drivers/staging/iio/gyro/adis16060_core.c
index 4c5869d..80783e7 100644
--- a/drivers/staging/iio/gyro/adis16060_core.c
+++ b/drivers/staging/iio/gyro/adis16060_core.c
@@ -67,7 +67,7 @@ static int adis16060_spi_read(struct iio_dev *indio_dev, u16 *val)
 	 * starts to place data MSB first on the DOUT line at
 	 * the 6th falling edge of SCLK
 	 */
-	if (ret == 0)
+	if (!ret)
 		*val = ((st->buf[0] & 0x3) << 12) |
 			(st->buf[1] << 4) |
 			((st->buf[2] >> 4) & 0xF);
-- 
1.9.1


