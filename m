X-GM-THRID: 6210467183328231424
X-Received: by 10.129.101.196 with SMTP id z187mr36096119ywb.41.1445987324667;
        Tue, 27 Oct 2015 16:08:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.102 with SMTP id jf6ls1094696igb.5.gmail; Tue, 27 Oct
 2015 16:08:44 -0700 (PDT)
X-Received: by 10.66.221.7 with SMTP id qa7mr36615170pac.33.1445987324355;
        Tue, 27 Oct 2015 16:08:44 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si4589878pbb.2.2015.10.27.16.08.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 16:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so235891417pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 16:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EeuMuXF0u2fsP+jr/3jShTVgxa2JxlRjZ1m6QKJDQ9o=;
        b=iiusqe97QQmf8qR9anFkyHnqyke9Iiq6sBASgMYkxbLEOR0JOX8Zs9vsNY2Eqc7ygl
         HG/yrRW0B/SdS4nuhTXIY48ywS6JIguXVEQOUYCXwEucb5AB+/xaWDRdMMoxS09NAjM/
         1VUroddvFX0cT6EVfqZqECyDE87IEjawtHmlehuGwO0RqB6A6koheEFBEpCWgIPlkamA
         qgi4vFqhiBH836inl3tvIH+gdVJcZ4WM1DPn0TsuHWGbPZqSEaHsZGiHnmK2YBphhG9P
         nCGlBsaDF7kNjFWd9dD3G+3UNs19yFZ3FxLavIyzOoz2/ltLGtctmhwoHVWpV/yu237c
         d0yA==
X-Received: by 10.66.179.236 with SMTP id dj12mr30401410pac.41.1445987324239;
        Tue, 27 Oct 2015 16:08:44 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id oi3sm24398789pbb.53.2015.10.27.16.08.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 16:08:43 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/2] Staging: iio: adc: Fix sparse warning
Date: Tue, 27 Oct 2015 16:08:37 -0700
Message-Id: <304f7088d71d949f7d79276803257e018dbd872a.1445986777.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445986777.git.ksenija.stanojevic@gmail.com>
References: <cover.1445986777.git.ksenija.stanojevic@gmail.com>

Fix following sparse endianness problems:

  CHECK   drivers/staging/iio/adc/ad7816.c
drivers/staging/iio/adc/ad7816.c:91:17: warning: cast to restricted
__be16
drivers/staging/iio/adc/ad7816.c:91:17: warning: cast to restricted
__be16
drivers/staging/iio/adc/ad7816.c:91:17: warning: cast to restricted
__be16
drivers/staging/iio/adc/ad7816.c:91:17: warning: cast to restricted
__be16

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index b3dec706..ccec57c 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -59,6 +59,7 @@ static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
 {
 	struct spi_device *spi_dev = chip->spi_dev;
 	int ret = 0;
+	__be16 buf;
 
 	gpio_set_value(chip->rdwr_pin, 1);
 	gpio_set_value(chip->rdwr_pin, 0);
@@ -82,13 +83,13 @@ static int ad7816_spi_read(struct ad7816_chip_info *chip, u16 *data)
 
 	gpio_set_value(chip->rdwr_pin, 0);
 	gpio_set_value(chip->rdwr_pin, 1);
-	ret = spi_read(spi_dev, (u8 *)data, sizeof(*data));
+	ret = spi_read(spi_dev, &buf, sizeof(*data));
 	if (ret < 0) {
 		dev_err(&spi_dev->dev, "SPI data read error\n");
 		return ret;
 	}
 
-	*data = be16_to_cpu(*data);
+	*data = be16_to_cpu(buf);
 
 	return ret;
 }
-- 
1.9.1


