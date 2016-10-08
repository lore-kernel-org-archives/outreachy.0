X-GM-THRID: 6338982763407867904
X-Received: by 10.129.70.130 with SMTP id t124mr5534498ywa.136.1475942768797;
        Sat, 08 Oct 2016 09:06:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.83 with SMTP id p80ls2133400itc.17.canary; Sat, 08 Oct
 2016 09:06:04 -0700 (PDT)
X-Received: by 10.66.164.134 with SMTP id yq6mr6033377pab.68.1475942764371;
        Sat, 08 Oct 2016 09:06:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id z73si2965974pfa.1.2016.10.08.09.06.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 09:06:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so4583970pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 09:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=XH6GpYipZfXatkv3qIbRIxXojKgMkREitZ6m+9yAP3Y=;
        b=pyRBBwUkRBm9lgai37WIjWcPCpY2UrbtfmUL4zWc1IWFZ5djhZ45XSKuTOp4r6zmrc
         7mtRDrqUlDYVL4vQRM/7f5Y8CXick9QieePG8NFQjU2Bh8pJ95uCbSHPE+DBfWDRjyy1
         iea1CDJz4ohCzzLFtj80UA4dmt5iOAmy5NzX4/M4sFc9omzwTs9HgTa7TnO9bLG09F9a
         CGc2HFeL7K2pzpvfTirmvlo9w1a/46rv6TvP9uNrRFDWRZ7qZEb39qscgfgHdHCURK8D
         jG8q6iZRFVMqwIb+CSwWYPlew1Hr6HHxqgAglC/nMJn7mZ2pmFRvrHF5usLSuPanaDmi
         7zNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=XH6GpYipZfXatkv3qIbRIxXojKgMkREitZ6m+9yAP3Y=;
        b=nFlZx2qodknHgHY2HB0ArIuVy1Jwj/3/m0yd+HduMfBWc3poYmH7N4p8ZT/hXKyoNL
         JBVVzRf1tNPEJnV5e8vhQ4O7cyypLG3dbfvxLxQhJqZfC2DQILdatZu3F7Eu8UtlZQhb
         ceBfox0/PWosMLwRRuSAPqmOnyOzAZIalsJxFh7QZB/XwQA9yeT/y7IgDTXvtcOsCTCP
         odAivMFVT/10+CdQqY7qH/ToeVBc/0DsbNghRfN6BBemO6nRsvGtwbnQHjS7imUskyB5
         bg+WVJOTezvhl+MAWmoRuVphkzytZ2H/r8PqPuWhBrUUMvDSWOALROShwtt0JVA0wK9g
         UkDA==
X-Gm-Message-State: AA6/9RnC/PbyJT3xGayKtvFAQ3rG8mmLDGMOE2FeG3n3RcRlIIMy4FKvXKvY6fLUjmh0rQ==
X-Received: by 10.98.4.199 with SMTP id 190mr38126549pfe.24.1475942764175;
        Sat, 08 Oct 2016 09:06:04 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id l82sm22258235pfk.85.2016.10.08.09.06.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 09:06:03 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: linux-iio@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v4 1/2] staging: iio: ad7606: fix improper setting of oversampling pins
Date: Sun,  9 Oct 2016 00:05:39 +0800
Message-Id: <b1ac6778d27e1406a8fd83b329266fce6144248e.1475942324.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1475942324.git.eraretuya@gmail.com>
References: <cover.1475942324.git.eraretuya@gmail.com>
In-Reply-To: <cover.1475942324.git.eraretuya@gmail.com>
References: <cover.1475942324.git.eraretuya@gmail.com>

The oversampling ratio is controlled using the oversampling pins,
OS [2:0] with OS2 being the MSB control bit, and OS0 the LSB control
bit.

The gpio connected to the OS2 pin is not being set correctly, only OS0
and OS1 pins are being set. Fix the typo to allow proper control of the
oversampling pins.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
Fixes: b9618c0 ("staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4")
Acked-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/staging/iio/adc/ad7606_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index f79ee61..cbd6bc5 100644
--- a/drivers/staging/iio/adc/ad7606_core.c
+++ b/drivers/staging/iio/adc/ad7606_core.c
@@ -189,7 +189,7 @@ static ssize_t ad7606_store_oversampling_ratio(struct device *dev,
 	mutex_lock(&indio_dev->mlock);
 	gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
 	gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
-	gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
+	gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
 	st->oversampling = lval;
 	mutex_unlock(&indio_dev->mlock);
 
-- 
2.7.4


