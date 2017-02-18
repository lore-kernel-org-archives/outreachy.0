X-GM-THRID: 6388545566354178048
X-Received: by 10.31.169.197 with SMTP id s188mr3633731vke.38.1487449253244;
        Sat, 18 Feb 2017 12:20:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.123 with SMTP id j56ls7315862otd.12.gmail; Sat, 18 Feb
 2017 12:20:52 -0800 (PST)
X-Received: by 10.157.22.149 with SMTP id c21mr4363961ote.26.1487449252904;
        Sat, 18 Feb 2017 12:20:52 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si1415991pfe.1.2017.02.18.12.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v184so7949412pgv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 12:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Bao8x95UVbEYCWfTeMVB16lnnWRbFlqtSLZuPurVZ/s=;
        b=hEGS0Eot8BsMs5+aI9wdB5g2YUnO1USFmRcKqJlDkZbcGZD1oyMReR186DKQgcf9Bj
         Ql7N/GGWvatrYuUG0YED8HNRi+a/FgXE07cFo2rZH/gOHPVH8KMjumQTCxExUNDFLQOd
         bZNxivCNCw38MmyAZCAMQ1j3W3Pu/ivvN7rEIzWG7X9bBTEjh7vnxyHTufvUyJWFxJRY
         Of/XhLGQ0Yy5QZRNbxweSKN+TbLsMFEOBEIeB2dZNu2LRXbWlucA8OfDw4WChZzpGWvQ
         V3R1fzyHe5gKLekn1WgmZ1Ua0t82apz2Ff6ccASpItI3oUKOj4KD5QQxTRfB8CIoWKbr
         PPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Bao8x95UVbEYCWfTeMVB16lnnWRbFlqtSLZuPurVZ/s=;
        b=rUNJUDt1oT74c2NBlHyM9e6zZG+DsrHT5SYDRr1sBrv+0UPpJE+C2JdxxAEo/kTQkU
         fxccO3v4Flfnv0v+vPB3Rd5e0gbJ9OmxQcITn4ueMeFmoOkZ6ZhgHtr2qIHTtJAWP0FT
         NbQulJ0afYvQ3GuEBj3f/7R6mRv8TutRfslxI+8ldT3Fqg1Tkta3IcRu7H79kgoH29OC
         uaokgTyryUPQq4H5yg+qXDURL6PnXU5PyivZZS3hByegX49d94hsLmI0WCZUE/91D7ey
         rD13aObnbz2r92pFeMkugST0fwJAb7KG/tZlwaAwmXi5snma9UcnLfJb279HZR+uut84
         qplA==
X-Gm-Message-State: AMke39krYzH36NitznvbqLZTK76DVn1U7ufBxl0exMyqHmzePhkgx76xszC2YuRVUE98mQ==
X-Received: by 10.98.152.79 with SMTP id q76mr16645383pfd.147.1487449252684;
        Sat, 18 Feb 2017 12:20:52 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.167.219])
        by smtp.gmail.com with ESMTPSA id s21sm26783895pgg.65.2017.02.18.12.20.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:20:52 -0800 (PST)
Date: Sun, 19 Feb 2017 01:50:32 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH 1/3] staging: iio: ad7152: Use BIT() macro for left shifting 1
Message-ID: <2f967b89d81cadb4a96a3ce38e4bd5571fb2bd8c.1487448326.git.karniksayli1995@gmail.com>
References: <cover.1487448326.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487448326.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace left shifting on 1 with the BIT(x) macro as suggested by
checkpatch.pl.

Done with coccinelle:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index b91b50f..0c97d5a 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -41,30 +41,30 @@
 #define AD7152_REG_CFG2			26
 
 /* Status Register Bit Designations (AD7152_REG_STATUS) */
-#define AD7152_STATUS_RDY1		(1 << 0)
-#define AD7152_STATUS_RDY2		(1 << 1)
-#define AD7152_STATUS_C1C2		(1 << 2)
-#define AD7152_STATUS_PWDN		(1 << 7)
+#define AD7152_STATUS_RDY1		BIT(0)
+#define AD7152_STATUS_RDY2		BIT(1)
+#define AD7152_STATUS_C1C2		BIT(2)
+#define AD7152_STATUS_PWDN		BIT(7)
 
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
-#define AD7152_SETUP_CAPDIFF		(1 << 5)
+#define AD7152_SETUP_CAPDIFF		BIT(5)
 #define AD7152_SETUP_RANGE_2pF		(0 << 6)
-#define AD7152_SETUP_RANGE_0_5pF	(1 << 6)
+#define AD7152_SETUP_RANGE_0_5pF	BIT(6)
 #define AD7152_SETUP_RANGE_1pF		(2 << 6)
 #define AD7152_SETUP_RANGE_4pF		(3 << 6)
 #define AD7152_SETUP_RANGE(x)		((x) << 6)
 
 /* Config Register Bit Designations (AD7152_REG_CFG) */
-#define AD7152_CONF_CH2EN		(1 << 3)
-#define AD7152_CONF_CH1EN		(1 << 4)
+#define AD7152_CONF_CH2EN		BIT(3)
+#define AD7152_CONF_CH1EN		BIT(4)
 #define AD7152_CONF_MODE_IDLE		(0 << 0)
-#define AD7152_CONF_MODE_CONT_CONV	(1 << 0)
+#define AD7152_CONF_MODE_CONT_CONV	BIT(0)
 #define AD7152_CONF_MODE_SINGLE_CONV	(2 << 0)
 #define AD7152_CONF_MODE_OFFS_CAL	(5 << 0)
 #define AD7152_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
-#define AD7152_CAPDAC_DACEN		(1 << 7)
+#define AD7152_CAPDAC_DACEN		BIT(7)
 #define AD7152_CAPDAC_DACP(x)		((x) & 0x1F)
 
 /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
-- 
2.7.4


