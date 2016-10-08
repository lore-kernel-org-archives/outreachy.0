X-GM-THRID: 6338982763407867904
X-Received: by 10.66.25.69 with SMTP id a5mr4648147pag.133.1475909450948;
        Fri, 07 Oct 2016 23:50:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls1930624ith.10.canary; Fri, 07 Oct
 2016 23:50:48 -0700 (PDT)
X-Received: by 10.66.1.136 with SMTP id 8mr5202972pam.14.1475909448442;
        Fri, 07 Oct 2016 23:50:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si6485312par.0.2016.10.07.23.50.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 23:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so3760974paz.1
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 23:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=hmnac1z7livSfn3m3I7VjtV6R0dvS6aHX0fBoHK7nXM=;
        b=X1F9E7maitsa66VdyZNAhHdg76oN2m/+LPRTNLyLcileEMrcIV5+xghanK3g+mLDgY
         r5+84OkAXM3HI1gHZw2jq0RVRVxjMzCr1dGslND/JQF3rNcFMclMPFoRxuUywxqqzDlA
         DseLYeIgXTe3e2s4PUQVFFIm3oz7FfqXlCWA6ek0xB30IxJ3qG9940qN+hml+IdDoyo1
         tGxmV/Jp5rms3SEwwh9+NU4ECP9j3vUlNe2dHdyFN9fdxfjlcjL9V6sghIN4tibbPo1g
         pNRThaq1jq1ndSnqmM6Caq3FZA0TgMtX6h9SxsEp6mAmS/UUPPFFBixcXAC0N437gZYk
         8IGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=hmnac1z7livSfn3m3I7VjtV6R0dvS6aHX0fBoHK7nXM=;
        b=UmSxiwRZOzK9CHpbnkJCgAyH8xr/9LKo4Mvp7MnuaCMTLOW056wBmLoNZ46LDKLwv7
         EJEwM0JgzXMtObctRw0lDYUOyZF9XY0pqrCfR0BgRZDWBPh9UhKx4wRH1mcRoZMb+opC
         eaJl4Yl3mf5g835SRbo9fF/OtpN6a1/VEHtVjZsScwaKuvvgEs6BEgNQH/dsJHMFvOdn
         FaFta4NdoHBOX9JPNK2gXJnkOURK5dkFayrNrgwAhydsgBw1blcRgV7rpx0Rqnm1VM7J
         RPDJXPKj72qszzDsJim+dyyYcJYYje2XLe9zd51E/SK6BdA8YRYaY8m0zkmIUgk8IKD2
         LCdQ==
X-Gm-Message-State: AA6/9RkUdlU8HX8hD/WlO4fUW9Jz/LjKfgaTlER6zYmi6b7MlSXsPlw8pNW3IG+a19mUnw==
X-Received: by 10.66.21.162 with SMTP id w2mr32805537pae.160.1475909448287;
        Fri, 07 Oct 2016 23:50:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([203.215.121.105])
        by smtp.gmail.com with ESMTPSA id p77sm18614621pfi.27.2016.10.07.23.50.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 07 Oct 2016 23:50:47 -0700 (PDT)
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
Subject: [PATCH v3 2/2] staging: iio: ad7606: fix improper setting of oversampling pins
Date: Sat,  8 Oct 2016 14:50:05 +0800
Message-Id: <9018314d134e3e33f892ad78969e11bf5ffa0950.1475907512.git.eraretuya@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1475907512.git.eraretuya@gmail.com>
References: <cover.1475907512.git.eraretuya@gmail.com>
In-Reply-To: <cover.1475907512.git.eraretuya@gmail.com>
References: <cover.1475907512.git.eraretuya@gmail.com>

The oversampling ratio is controlled using the oversampling pins,
OS [2:0] with OS2 being the MSB control bit, and OS0 the LSB control
bit.

The gpio connected to the OS2 pin is not being set correctly, only OS0
and OS1 pins are being set. Fix the typo to allow proper control of the
oversampling pins.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
Fixes: b9618c0 ("staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4")
---
 drivers/staging/iio/adc/ad7606_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7606_core.c b/drivers/staging/iio/adc/ad7606_core.c
index 437c7d0..2042225 100644
--- a/drivers/staging/iio/adc/ad7606_core.c
+++ b/drivers/staging/iio/adc/ad7606_core.c
@@ -183,7 +183,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 		mutex_lock(&indio_dev->mlock);
 		gpio_set_value(st->pdata->gpio_os0, (ret >> 0) & 1);
 		gpio_set_value(st->pdata->gpio_os1, (ret >> 1) & 1);
-		gpio_set_value(st->pdata->gpio_os1, (ret >> 2) & 1);
+		gpio_set_value(st->pdata->gpio_os2, (ret >> 2) & 1);
 		st->oversampling = val;
 		mutex_unlock(&indio_dev->mlock);
 		return 0;
-- 
2.7.4


