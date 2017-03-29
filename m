X-GM-THRID: 6402939984420012032
X-Received: by 10.157.59.166 with SMTP id k35mr338262otc.3.1490800637589;
        Wed, 29 Mar 2017 08:17:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls3175763itj.20.canary-gmail; Wed, 29
 Mar 2017 08:17:16 -0700 (PDT)
X-Received: by 10.36.69.75 with SMTP id y72mr430727ita.19.1490800636745;
        Wed, 29 Mar 2017 08:17:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si1133871pfb.5.2017.03.29.08.17.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 08:17:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so3080754pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 08:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4NHHamOd5J/OH4tFB34HErTJA+oFXgP2e6XYORS1pJ0=;
        b=Th/LkN30ZwbeM1ndJzXeY+jIlzyZPAaB66cnVpqW/6KmFhAIkc1BN2YHkIZd1gfLmy
         lcdZEaHa41YRmbYaLnXKha7vRqWyLgJK5ezjI+HlXyzY/F8qwUDFlQrN/YB+0sUq/Ytd
         XKJi5QXQhH/i96j4/gdH5N59khh8FUlURqurSza2KJXVpTL4idPBhK1dTprNoJWfO1pZ
         31gcLJx/frDCgQRY8eDrROmjp4lWH/K8bD7P+fw5KrUbkmZ7f7VdjDE9gTisafwN8u4O
         7OL2BC/Vekfiu6/N9DQxlJnpBgKWeYZG/4eHLEk6xV90U3aJmDzc4Vz7crWj/ayrIA63
         WALw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4NHHamOd5J/OH4tFB34HErTJA+oFXgP2e6XYORS1pJ0=;
        b=XOeW2TuGFRy+IJHF3WVIkx8Yoqixq28Qyi30W2XXbROhACvh0Gmxm1JUDftvfbA9zF
         vQHoLIVanALMABI8F25cotI0CDdGJ2oGzXYFPHLpVtxYQxMQnKP2c+WvpaVh/X7rSiqP
         U4YoMaiNHFpepqi6XSFpKZLMB7dK07DTI6HCgh27W4K6CZUKFiBssX5WhwEMnMdoxnVU
         qwyxFllZ3gR18G1d0iuDWV7x5szmMaEFUEhAzs/jm0ZMZzbNciR/d5qRW7LB9NxDGVwc
         8JT5GF2u1fecGRiiAtvybtiDYOGgqFCAyKUfpwNJ9khgW2gOWqsYYNy70IgbuD6sjVqq
         txGw==
X-Gm-Message-State: AFeK/H2k0TMKxusnxdx3wMCRpBMt5SvB5riVIzocP4hoZki0zRHw3Rd5uJ/NjNeTgonGgw==
X-Received: by 10.99.212.69 with SMTP id i5mr1059487pgj.36.1490800636512;
        Wed, 29 Mar 2017 08:17:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p189sm14220685pfb.128.2017.03.29.08.17.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 08:17:15 -0700 (PDT)
Date: Wed, 29 Mar 2017 20:47:12 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH] staging: iio: Remove extra Parenthesis
Message-ID: <20170329151712.GA5651@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the extra parenthesis remove the checkpatch issue.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/cdc/ad7746.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
index 033a41fd9bee..b4afc12f827f 100644
--- a/drivers/staging/iio/cdc/ad7746.c
+++ b/drivers/staging/iio/cdc/ad7746.c
@@ -50,10 +50,10 @@
 #define AD7746_STATUS_RDYCAP		BIT(0)
 
 /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
-#define AD7746_CAPSETUP_CAPEN		(BIT(7))
-#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
-#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
-#define AD7746_CAPSETUP_CACHOP		(BIT(0))
+#define AD7746_CAPSETUP_CAPEN		BIT(7)
+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
+#define AD7746_CAPSETUP_CACHOP		BIT(0)
 
 /* Voltage/Temperature Setup Register Bit Designations (AD7746_REG_VT_SETUP) */
 #define AD7746_VTSETUP_VTEN		(1 << 7)
@@ -61,9 +61,9 @@
 #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
 #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
 #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
-#define AD7746_VTSETUP_EXTREF		(BIT(4))
-#define AD7746_VTSETUP_VTSHORT		(BIT(1))
-#define AD7746_VTSETUP_VTCHOP		(BIT(0))
+#define AD7746_VTSETUP_EXTREF		BIT(4)
+#define AD7746_VTSETUP_VTSHORT		BIT(1)
+#define AD7746_VTSETUP_VTCHOP		BIT(0)
 
 /* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
 #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
@@ -87,7 +87,7 @@
 #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
 
 /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
-#define AD7746_CAPDAC_DACEN		(BIT(7))
+#define AD7746_CAPDAC_DACEN		BIT(7)
 #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
 
 /*
-- 
2.11.0


