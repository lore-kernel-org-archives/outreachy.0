X-GM-THRID: 6207482452562149376
X-Received: by 10.180.89.41 with SMTP id bl9mr1169723wib.1.1445371027425;
        Tue, 20 Oct 2015 12:57:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.6.6 with SMTP id cq6ls945998wid.41.canary; Tue, 20 Oct
 2015 12:57:07 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1079036wjb.5.1445371027017;
        Tue, 20 Oct 2015 12:57:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id cm6si858998wib.1.2015.10.20.12.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 12:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id q8so62109906wik.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 12:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Yms9XKWodGYaOiyOWFvne20P1FcEFD2AIFdW9GFo2uA=;
        b=RjtISCNoHt2sgtAfczyYkpfLCX77+O0CwcTtXvot+BEuLvWkt4j5B6kKRZ8ngbHcss
         HM2nYi7J85eKdIbAU9ibMjBUkytuO3ZEZytXnXt2VOamhjBWMA3gkI3RTWG9JEVYxTUT
         daGP7Js3NBWoQhYpncQsVmPrvGF2sjU0xCXCDPNbnCldM9t8pnXj/ErCiGRVQesoSQRV
         HFG9+BTMlAzqEQzmdOjynW8FEGGba44lSFIj/ufnvkLIlAHAcU92iUyUfkwCWWJw5/ky
         EXT8V1FwCx71QPABEiX2jG58qzkPywk0BenaqiJiMKQw2BQ7jZhCP/dh2Z1hkinoIAGq
         zA/g==
X-Received: by 10.194.234.40 with SMTP id ub8mr6024049wjc.95.1445371026943;
        Tue, 20 Oct 2015 12:57:06 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.103.222])
        by smtp.gmail.com with ESMTPSA id wb11sm4224132wic.16.2015.10.20.12.57.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 12:57:06 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH v2 8/9] staging: iio: gyro: Remove explicit comparisons
Date: Tue, 20 Oct 2015 22:55:46 +0300
Message-Id: <bb2b638684e3e45361d2ae3a83bece6ea39bf87f.1445370742.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445291799.git.cristina.moraru09@gmail.com>
 <cover.1445370742.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445370742.git.cristina.moraru09@gmail.com>
References: <cover.1445370742.git.cristina.moraru09@gmail.com>

Remove comparisons to 0 or NULL

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


