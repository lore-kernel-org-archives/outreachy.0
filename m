X-GM-THRID: 6260475959722377216
X-Received: by 10.31.52.207 with SMTP id b198mr3430594vka.5.1457630647291;
        Thu, 10 Mar 2016 09:24:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.100.214 with SMTP id s80ls2052009qge.94.gmail; Thu, 10 Mar
 2016 09:24:06 -0800 (PST)
X-Received: by 10.140.31.102 with SMTP id e93mr3417530qge.27.1457630646792;
        Thu, 10 Mar 2016 09:24:06 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 12si698829pfb.1.2016.03.10.09.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id n5so35418800pfn.2
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=F9GMZDem6All5fu4yhIUdZ7O8eP6KEibaDf1KlAySVg=;
        b=C/dDzhUs3nHM7x4yrSSQGf4UEPu95g5x6iCOHmulanWzPl6e21zmSYdFoo8T2TMm/H
         UoBknszLKEPOPttJCo0yP3qGuS+JWtjkxKYKXkALtUntSFB5x5UPeJiUtKE3caoL9+aa
         t21iDd5/3nrUswEB1XTiPtZWFUcW6Sz+QaX3c5FdPBdJY4mCN7gzSJABROQ+nWLEiuQJ
         4oKmEQvQWz8yLB0lMZ30POdflu2lBfwiyPt8j5J5l047VHRSHQevP8Tdt9u7TaISkYyO
         cCGjpD4KXLq8hvTimW3GPVhtebCwiYQ2yzDXgB4yiyL2cJYeV9PSrOFfvjS3/QFES/sO
         68TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F9GMZDem6All5fu4yhIUdZ7O8eP6KEibaDf1KlAySVg=;
        b=JU8znUNAs+8BeUYzXjJR2oKxkljTAqPA99oFa8ddGJr9B0qhBOtAY4HZMMVOdE3tXq
         OhAxV4pcUQi7WaQaMkjgqr1C6qzF6DhdxzdHExMe9jVRDzOruMNeq09p2xvi+XOmGzTS
         SdJJJtYXhpHOGpI19n8Bs8O5g9LEw8yeuVTfHM0wKK9bRZb2sfVJG+Q+nzKvTDeY/1em
         9zKFIqTIM7u8wc0QRe6wFyz/3Monn48uIvMs0Rlf2QCmZD+iApoiPCIbJngB8jAy3l9A
         RyKXXkfKWs7hiVj1axWwbIm7AASIuYs10Aedmi/YsraEHNgbX03lIephsx81DguTwfMo
         nMMg==
X-Gm-Message-State: AD7BkJLw71SEDTMCspSxbFq5qdk4e+wFX9SHDkc+0lyO3kB2rQl/v3a2ujAxpg3AU7Hfcg==
X-Received: by 10.98.89.22 with SMTP id n22mr6630365pfb.55.1457630646593;
        Thu, 10 Mar 2016 09:24:06 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 17sm6928881pfs.40.2016.03.10.09.24.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:24:06 -0800 (PST)
Date: Thu, 10 Mar 2016 22:41:53 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: addac: Remove unnecessary else after return
Message-ID: <20160310171153.GA19386@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1
Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 3adc451..a10e7d8 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -465,9 +465,8 @@ static ssize_t adt7316_show_all_ad_channels(struct device *dev,
 		return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
 				"2 - External Temperature or AIN1\n"
 				"3 - AIN2\n4 - AIN3\n5 - AIN4\n");
-	else
-		return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
-				"2 - External Temperature\n");
+	return sprintf(buf, "0 - VDD\n1 - Internal Temperature\n"
+			"2 - External Temperature\n");
 }

 static IIO_DEVICE_ATTR(all_ad_channels, S_IRUGO,
@@ -637,7 +636,7 @@ static ssize_t adt7316_show_da_high_resolution(struct device *dev,
 	if (chip->config3 & ADT7316_DA_HIGH_RESOLUTION) {
 		if (chip->id == ID_ADT7316 || chip->id == ID_ADT7516)
 			return sprintf(buf, "1 (12 bits)\n");
-		else if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
+		if (chip->id == ID_ADT7317 || chip->id == ID_ADT7517)
 			return sprintf(buf, "1 (10 bits)\n");
 	}

@@ -919,8 +918,7 @@ static ssize_t adt7316_show_all_DAC_update_modes(struct device *dev,
 				"1 - auto at MSB DAC AB and CD writing\n"
 				"2 - auto at MSB DAC ABCD writing\n"
 				"3 - manual\n");
-	else
-		return sprintf(buf, "manual\n");
+	return sprintf(buf, "manual\n");
 }

 static IIO_DEVICE_ATTR(all_DAC_update_modes, S_IRUGO,
@@ -1068,9 +1066,8 @@ static ssize_t adt7316_show_DAC_internal_Vref(struct device *dev,
 		return sprintf(buf, "0x%x\n",
 			(chip->dac_config & ADT7516_DAC_IN_VREF_MASK) >>
 			ADT7516_DAC_IN_VREF_OFFSET);
-	else
-		return sprintf(buf, "%d\n",
-			!!(chip->dac_config & ADT7316_DAC_IN_VREF));
+	return sprintf(buf, "%d\n",
+		       !!(chip->dac_config & ADT7316_DAC_IN_VREF));
 }

 static ssize_t adt7316_store_DAC_internal_Vref(struct device *dev,
--
2.1.4


