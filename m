X-GM-THRID: 6252664504577949696
X-Received: by 10.66.182.225 with SMTP id eh1mr7707507pac.24.1455811901972;
        Thu, 18 Feb 2016 08:11:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.196 with SMTP id l4ls223514igx.43.canary; Thu, 18 Feb
 2016 08:11:41 -0800 (PST)
X-Received: by 10.107.138.211 with SMTP id c80mr9018618ioj.20.1455811901447;
        Thu, 18 Feb 2016 08:11:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id mu6si222441igb.1.2016.02.18.08.11.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:11:41 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id z135so78923844iof.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=V3EIX5B/qVZg4G3xOcPdPMtMZhH2ssMWgSKkTNKT6jQ=;
        b=J7xqEoxGCjVF7rPz2D9tlprmLkbS3WAqLFUNLzTuKSGsrHfzpPEy8/6l5qz8dRU/Oj
         VfHSpd7amoz1sFbpqjYZSOwo2SSDZyHHWdetQQ+7nvYK/irvW5fnw6FItFczTuiQsVDp
         dPSSPamQeSMRRCUFJv90tNlC5/VB3TjkM2BtKW9dqHrwhznvFQs6/WKueKbHo0p871HD
         oIDskHotKGmpSSp0tEhEXG4nVRSozhIPXbSw03KcfElSVoWc7GI4kMVnnSoRtW+THFjL
         HtxZqI4/I0gONGoC85NGifctpzUAAuqXZiEGbGdk7QKcPlba0UIfQ3ByRKgFbRh3xcAy
         z/kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=V3EIX5B/qVZg4G3xOcPdPMtMZhH2ssMWgSKkTNKT6jQ=;
        b=Eabog0rZrKkruaeexDJsQtYFLa3fBC3zrAlVMUmS36N3bnZzIYVFNgaQojfPpme+k1
         HLQDKahejDe829PvaIQKJRcrWW9caOye9JSfDODJrlePP8vgePsTRVqmRHDYD54EH0oH
         px3+agOG4E9EujsqoOdAjksIxy+3ZhVn9+okH3ZBFC7YUqmHYmr/3mtsfwHo+xsKCKvt
         G3jjK+1AGcDEKy6s5dnNJ+D69Fz2afnqhCILOp+6onB3asamWSMZWcbvkQf3B40IGBpd
         I82xbeLhcoL3fTegVuMYS/MnflKOO5F02M3CFTl948sM4fKmcbBRVmfelEhlIPco977g
         a+Tw==
X-Gm-Message-State: AG10YORRYQXziH6KglWwLWO0zbc+beCWL/1piz+GjBs+SvOLsGCqqi22lHAO6rn9HtjTGg==
X-Received: by 10.107.153.200 with SMTP id b191mr9800544ioe.54.1455811901301;
        Thu, 18 Feb 2016 08:11:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id hv3sm1583204igb.13.2016.02.18.08.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:11:40 -0800 (PST)
Date: Thu, 18 Feb 2016 16:10:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: adc: Remove else after return in if statements
Message-ID: <20160218211055.GA6343@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.
Coccinelle patch used:

@rule1@
expression e1;
@@
	if(e1) { ... return ...; }
-	else{
		...
-	}

@rule2@
expression e2;
statement S1;
@@

	if(e2) { ... return ...; }
-	else
		S1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c    | 12 ++++++++----
 drivers/staging/iio/adc/spear_adc.c |  5 ++---
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index 2226051..5a4fd84 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -182,11 +182,13 @@ static ssize_t ad7816_store_channel(struct device *dev,
 		dev_err(&chip->spi_dev->dev, "Invalid channel id %lu for %s.\n",
 			data, indio_dev->name);
 		return -EINVAL;
-	} else if (strcmp(indio_dev->name, "ad7818") == 0 && data > 1) {
+	}
+	if (strcmp(indio_dev->name, "ad7818") == 0 && data > 1) {
 		dev_err(&chip->spi_dev->dev,
 			"Invalid channel id %lu for ad7818.\n", data);
 		return -EINVAL;
-	} else if (strcmp(indio_dev->name, "ad7816") == 0 && data > 0) {
+	}
+	if (strcmp(indio_dev->name, "ad7816") == 0 && data > 0) {
 		dev_err(&chip->spi_dev->dev,
 			"Invalid channel id %lu for ad7816.\n", data);
 		return -EINVAL;
@@ -268,7 +270,8 @@ static ssize_t ad7816_show_oti(struct device *dev,
 	if (chip->channel_id > AD7816_CS_MAX) {
 		dev_err(dev, "Invalid oti channel id %d.\n", chip->channel_id);
 		return -EINVAL;
-	} else if (chip->channel_id == 0) {
+	}
+	if (chip->channel_id == 0) {
 		value = AD7816_BOUND_VALUE_MIN +
 			(chip->oti_data[chip->channel_id] -
 			AD7816_BOUND_VALUE_BASE);
@@ -295,7 +298,8 @@ static inline ssize_t ad7816_set_oti(struct device *dev,
 	if (chip->channel_id > AD7816_CS_MAX) {
 		dev_err(dev, "Invalid oti channel id %d.\n", chip->channel_id);
 		return -EINVAL;
-	} else if (chip->channel_id == 0) {
+	}
+	if (chip->channel_id == 0) {
 		if (ret || value < AD7816_BOUND_VALUE_MIN ||
 		    value > AD7816_BOUND_VALUE_MAX)
 			return -EINVAL;
diff --git a/drivers/staging/iio/adc/spear_adc.c b/drivers/staging/iio/adc/spear_adc.c
index f2c0065..b60e572 100644
--- a/drivers/staging/iio/adc/spear_adc.c
+++ b/drivers/staging/iio/adc/spear_adc.c
@@ -118,10 +118,9 @@ static u32 spear_adc_get_average(struct spear_adc_state *st)
 	if (of_device_is_compatible(st->np, "st,spear600-adc")) {
 		return __raw_readl(&st->adc_base_spear6xx->average.msb) &
 			SPEAR_ADC_DATA_MASK;
-	} else {
-		return __raw_readl(&st->adc_base_spear3xx->average) &
-			SPEAR_ADC_DATA_MASK;
 	}
+	return __raw_readl(&st->adc_base_spear3xx->average) &
+			SPEAR_ADC_DATA_MASK;
 }
 
 static void spear_adc_set_scanrate(struct spear_adc_state *st, u32 rate)
-- 
2.5.0


