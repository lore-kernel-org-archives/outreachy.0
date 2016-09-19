X-GM-THRID: 6332156650242179072
X-Received: by 10.98.23.88 with SMTP id 85mr13302347pfx.5.1474320134397;
        Mon, 19 Sep 2016 14:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.19 with SMTP id x19ls3473906ioi.43.gmail; Mon, 19 Sep
 2016 14:22:13 -0700 (PDT)
X-Received: by 10.107.133.85 with SMTP id h82mr4596079iod.55.1474320133124;
        Mon, 19 Sep 2016 14:22:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id z4si5306488pam.0.2016.09.19.14.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:22:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so4796433pfl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rbcSRFYpXxs3gq+vUZ658Sj2iCnjMBqkn+VUw6h3Kk4=;
        b=Czuu3G3wauDz5wz71QWfIhoK6QswOMdhtewfheO4WjkUkMQtiXXzuCkCEwUqiGWyTh
         Do20FMxmABUc9MYA2ek6EZ0yIqjig882bDaG2v2Cas/bqRRNUDo7n757DrT9GAOIDSlZ
         xlmyxKTjUVIN1tzU4n/uAjRHwBfAEL+Uo8lianNeTr3za9U6hru/k41Vw0ZVpdChGziE
         MXu2IDgWaUqCPpKOre4bj4c7bl7nTlSiwh9Ok8QDDOJiL74lGUb4QVa/jehQprX/HyKf
         wv93lE6Lf+ImHUvHcBALRXQyjgoSeuJvMNZHzquumWHVME2xDWqvTWL2yk59+KoUpH+B
         9N7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rbcSRFYpXxs3gq+vUZ658Sj2iCnjMBqkn+VUw6h3Kk4=;
        b=GAyAnHMlI6pnqyY3ZpFvCBCe5oyGg7TIZ7/fE4EuqwNUHCAQr6INLTn8w6IEYvJG+p
         nMFPiBo6HYCYiaft1TGdHUhZ2qVc4k0SLc7PSzNLuWS6ylnbxFJX99i/AeMjbRmQkXTw
         afvZWZlhSRZsBdSi3q16Lv9y1oVSbBElLC8FxPl0hrfh3NXc0Y+UcvwR+dZE7PD77BER
         BfcRWKEMjZ9vyQP109Q82S2Xl/NJ9GfRc1g3eK4KkJmTRtkuSgG3N3Fj58uk92Vmxt/R
         TwwMysYL1Y+Bs/+g/UlA3sZFMxoP0Iq3btDeS73oIVrhk0jftY4017CCE03j/XCIecVF
         mnHQ==
X-Gm-Message-State: AE9vXwOLH7xLtzZZazAA5sppPN5OOC2n3hGgyAEcqa8zTP3p/TRS80RsvXIUfY5pxGAA4g==
X-Received: by 10.98.201.16 with SMTP id k16mr46726550pfg.102.1474320132792;
        Mon, 19 Sep 2016 14:22:12 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k69sm64822087pfb.85.2016.09.19.14.22.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:22:12 -0700 (PDT)
Date: Tue, 20 Sep 2016 02:52:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: media: bcm2048: Remove unnecessary return
 capture
Message-ID: <8af6e69c23006efb36e46b27f88a623079770516.1474319701.git.aquannie@gmail.com>
References: <cover.1474319701.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474319701.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)


Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8dade19..ea15cc6 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -483,10 +483,8 @@ static int bcm2048_set_rds_no_lock(struct bcm2048_device *bdev, u8 rds_on)
 		memset(&bdev->rds_info, 0, sizeof(bdev->rds_info));
 	}
 
-	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
-				   bdev->cache_fm_rds_system);
-
-	return err;
+	return bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
+				    bdev->cache_fm_rds_system);
 }
 
 static int bcm2048_get_rds_no_lock(struct bcm2048_device *bdev)
@@ -1834,9 +1832,7 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 	if (err < 0)
 		return err;
 
-	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-
-	return err;
+	return bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
 }
 
 /*
@@ -1995,9 +1991,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 									\
 	value = bcm2048_get_##prop(bdev);				\
 									\
-	value = sprintf(buf, mask "\n", value);				\
-									\
-	return value;							\
+	return sprintf(buf, mask "\n", value);				\
 }
 
 #define DEFINE_SYSFS_PROPERTY(prop, signal, size, mask, check)		\
-- 
2.7.4


