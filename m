X-GM-THRID: 6335688613427150848
X-Received: by 10.176.0.15 with SMTP id 15mr134003uai.19.1475142457865;
        Thu, 29 Sep 2016 02:47:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.76 with SMTP id z73ls3533696ita.5.canary; Thu, 29 Sep
 2016 02:47:37 -0700 (PDT)
X-Received: by 10.107.131.204 with SMTP id n73mr454185ioi.45.1475142457138;
        Thu, 29 Sep 2016 02:47:37 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si3111697pfk.2.2016.09.29.02.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 02:47:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so3374254pfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 02:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4Fmr17H0WlA2tA+qb0ruBioafjhJ64tjbXFOQ5leCqM=;
        b=Vg0zn7gu0qXwqOF1KSjYFNKl2M9u8Xjj5aCQJahMrM+6BDcC9CIBsmmB1DvJuc6IXf
         MZma3u64FWMxpTx4ljrbhaKj7sW/utdy0mp+ojQa4Hy5dXwLcTzSiYpC3OViqQjt1eEs
         yRw/zaa5gulAEs7X+AexsAJjB39XRbWD/d3ZrYvQmPPTsFqRGqPQUf5zP5C+7JGOwJzm
         F4HsEVwuFlthFExwkwRWe5RhTyNTdDMkO9NhcDBpFmbVx08t0v3uREJSDgcy5mcHWtjs
         xtU056XZ+r63c6LDopmt4tlfiRP+ZPHOcc9CR99LbUW9W/lbHvEwZOWtbdFOBrXARVum
         ISlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4Fmr17H0WlA2tA+qb0ruBioafjhJ64tjbXFOQ5leCqM=;
        b=m9wChKT3sBPcoMgRYLAg96rJLlHXLfuAuA/Ikc/6RjVRFfNH5LwywSWHaUyzLBK+RI
         mwiIMqLkO3f3ZhtvvI3YGmgXFQ+pU8tuyFIGlYUhgvJQLxMxpDYqzdD6tMIXwSmMO7v0
         ulipX+8haoT8lLyCUqlw+yEyNMBfsP5N51g2NoL+AsAu/PQxeU/jC6fzJemnYt20iafS
         B8/CemLAqvKkR2O2JWzHVXuVolMBDq4J46rDIbAsdn6RteodqFXv9cK+ym6ia1KQK3Mk
         5G/eosXd7x5PUnc4UyVUVC1rewkN1/JMu6Q5lQzrtZvhb1KhSHI+y5AnZQP9ZFqcYNnH
         GgKA==
X-Gm-Message-State: AA6/9RktljMb/Gd0+oHvpJt6uD70YB7chFlq8sAGrULoszQ++NTxpTwA2bQAiAF6hygV1A==
X-Received: by 10.98.25.133 with SMTP id 127mr898480pfz.94.1475142456961;
        Thu, 29 Sep 2016 02:47:36 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id i62sm18664626pfe.70.2016.09.29.02.47.34
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 02:47:36 -0700 (PDT)
Date: Thu, 29 Sep 2016 15:17:29 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: [PATCH 2/3] staging: iio: cdc: ad7152: Fix CamelCase checkpatch
 warning
Message-ID: <6034b360c798be8bdbf156582dc2b4e0c174121b.1475141738.git.anchalj109@gmail.com>
References: <cover.1475141738.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475141738.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fix the check detect by the checkpatch.pl
CHECK: Avoid CamelCase
Convert the names into normal naming pattern

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 1962052..2473af3 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -48,10 +48,10 @@
 
 /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
 #define AD7152_SETUP_CAPDIFF		bit(5)
-#define AD7152_SETUP_RANGE_2pF		(0 << 6)
-#define AD7152_SETUP_RANGE_0_5pF	bit(6)
-#define AD7152_SETUP_RANGE_1pF		(2 << 6)
-#define AD7152_SETUP_RANGE_4pF		(3 << 6)
+#define AD7152_SETUP_RANGE_2pf		(0 << 6)
+#define AD7152_SETUP_RANGE_0_5pf	bit(6)
+#define AD7152_SETUP_RANGE_1pf		(2 << 6)
+#define AD7152_SETUP_RANGE_4pf		(3 << 6)
 #define AD7152_SETUP_RANGE(x)		((x) << 6)
 
 /* Config Register Bit Designations (AD7152_REG_CFG) */
@@ -298,7 +298,7 @@ static int ad7152_write_raw(struct iio_dev *indio_dev,
 			if (val2 == ad7152_scale_table[i])
 				break;
 
-		chip->setup[chan->channel] &= ~AD7152_SETUP_RANGE_4pF;
+		chip->setup[chan->channel] &= ~AD7152_SETUP_RANGE_4pf;
 		chip->setup[chan->channel] |= AD7152_SETUP_RANGE(i);
 
 		ret = i2c_smbus_write_byte_data(chip->client,
-- 
1.9.1


