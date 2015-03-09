X-GM-THRID: 7207946027008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fcd780a8690cb6db
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.103.212 with SMTP id n20mr19673976ico.10.1425897855612;
        Mon, 09 Mar 2015 03:44:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.34.195 with SMTP id b3ls492605obj.89.gmail; Mon, 09 Mar
 2015 03:44:15 -0700 (PDT)
X-Received: by 10.182.80.7 with SMTP id n7mr25843509obx.10.1425897855368;
        Mon, 09 Mar 2015 03:44:15 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id ri9si2558458pdb.1.2015.03.09.03.44.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 03:44:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id o5so19970484pdn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 03:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zrUhXFMcF/tK2KdxL9TNI6N5ommU9qUO0sxv/hgUoMw=;
        b=Ap1/5m8+Om1toVZBR4QXppvxZ4DP4ey9UHLUAJ57A17nXcOVtCVZ4qWp4DzmMPa27d
         S5W5rKSab95G6KXSUf9QEWY4ur9dhBUgg8ctfyolaX3zTESrS5dF3vFRaNKedEHrgLmb
         tAyk+vs91hSryZ5uRZ0yGwcjcdlLek9+A8c5C9PP6v/l72ZbDgmON//m8/NO9ef0Ci60
         Qll9s8m4lRi+PBnepVm1G5oZwUVzOmsmkZy0Q4clH0EMqUCNX4ECly576vgV8PppUk0V
         LbvGOcz5RBS3UjCWrqWCqEw6WtGcDgr3wbLajkPrfbqIXpjL71Z5FGfTrNGsr5vPpY++
         8MvA==
X-Received: by 10.70.21.195 with SMTP id x3mr51892849pde.73.1425897855236;
        Mon, 09 Mar 2015 03:44:15 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.18.210])
        by mx.google.com with ESMTPSA id se2sm18668141pac.38.2015.03.09.03.44.12
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 03:44:14 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 5/5] drivers: staging: iio: meter: Removed unnecessary variable
Date: Mon,  9 Mar 2015 16:11:20 +0530
Message-Id: <1425897680-6179-6-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425897680-6179-1-git-send-email-tinajohnson.1234@gmail.com>

Variable ret is used only to store the return value. Hence ret is
removed and the return statement modified. Coccinelle was used to
detect such removable variables:

@rule1@
identifier ret;
expression e;
@@

-ret =
+return
           e;
-return ret;

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/iio/meter/ade7854-spi.c |    6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7854-spi.c b/drivers/staging/iio/meter/ade7854-spi.c
index 94f73bb..9b255a5 100644
--- a/drivers/staging/iio/meter/ade7854-spi.c
+++ b/drivers/staging/iio/meter/ade7854-spi.c
@@ -274,7 +274,6 @@ error_ret:
 
 static int ade7854_spi_probe(struct spi_device *spi)
 {
-	int ret;
 	struct ade7854_state *st;
 	struct iio_dev *indio_dev;
 
@@ -294,10 +293,7 @@ static int ade7854_spi_probe(struct spi_device *spi)
 	st->irq = spi->irq;
 	st->spi = spi;
 
-
-	ret = ade7854_probe(indio_dev, &spi->dev);
-
-	return ret;
+	return ade7854_probe(indio_dev, &spi->dev);
 }
 
 static int ade7854_spi_remove(struct spi_device *spi)
-- 
1.7.10.4


