X-GM-THRID: 6335769509399363584
X-Received: by 10.66.17.137 with SMTP id o9mr425515pad.124.1475161292065;
        Thu, 29 Sep 2016 08:01:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.75 with SMTP id 69ls382744otg.14.gmail; Thu, 29 Sep
 2016 08:01:31 -0700 (PDT)
X-Received: by 10.129.137.6 with SMTP id z6mr513433ywf.122.1475161291541;
        Thu, 29 Sep 2016 08:01:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f12si3394732pfk.0.2016.09.29.08.01.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 08:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so3676164pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 08:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q58OkEEiyXAIi1nmwRbrKTg5nY/GMW1pj1x/zaEDfmw=;
        b=EBXw6bXI42qSROvbZ0rrqDsBKbRigpvnFw7g75ryjkWHAxwPwfrWuMOeyusIcap9DN
         x3brtdtAv6YgofyI76A1COED/oYwzfUPOfdwcRXqZcko+rdlAYCW3AZsttmF/+em9pVm
         /56MrZ788l9o2VgMbFUMhT91/6HSU4gJDqm1BXJ2d/TFS8D40OKuTtp1MFeqcDFFv5k3
         Jqn90qNBAHkuHrj/xQpBtui029+TcQ1P6iu9s19POkmwKlH+Sn1N3YLE9ertjuyBX/Ru
         C4R9+RYVQIusMhrcv9EVT+uDvMYEGXj5ug2Q7R+Vh/O4u94rRQLPzf2gUjYEpfeuF3IO
         SY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q58OkEEiyXAIi1nmwRbrKTg5nY/GMW1pj1x/zaEDfmw=;
        b=ULAT+FbHUJCCDFWpzjBZZmLcXAM6z1QjV6CqMZ6V7ZQmoglixEvYf6tKxtyMUjJJX0
         LIGbLbWdaKyHyKiOI66a0vUYvhWkt5Djoola+Nl2beAbnUnqcoBysfIcOhUK3ygOFVIp
         QLDIo7kFZAVEKwfoMQui9YyB4ayDRuEzZYdy6U4dOU4ZC9CNCklU6gYd4Xg9ubn3tgYp
         Pmt83/kZgAYmvrQHLI7ZQBBQbJrpXZ0J1bRZsKld3eLzo2BAbFhErTvv7SE55RatXTc3
         9lkFI77TazXer6eZQPYEqhvCDS/lFLeGgHiPpRkbkIvI2gsJl2KUnTNFRGuoGCDheQOx
         EXRw==
X-Gm-Message-State: AA6/9RkTICGlSlNpzFMKTQhkB+oH1vrn7U9sDroTGAbg97RkOhIExnqa1HmI10ncpWybfg==
X-Received: by 10.98.89.199 with SMTP id k68mr3197240pfj.72.1475161291122;
        Thu, 29 Sep 2016 08:01:31 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id wa9sm21059694pac.35.2016.09.29.08.01.28
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 08:01:30 -0700 (PDT)
Date: Thu, 29 Sep 2016 20:31:19 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: knaack.h@gmx.de, outreachy-kernel@googlegroups.com,
	michael.hennerich@analog.com
Subject: [PATCH v2 1/2] staging: iio: cdc: ad7152: Add blank line after
 declarations to increase readability
Message-ID: <20160929150109.GA4059@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add a blank line after a function declaration because local variable 
declarations should be seprated from the function's statments by a blank line
to increase the readability of a code.  

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 1962052..f9767e9 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -134,6 +134,7 @@ static inline ssize_t ad7152_start_calib(struct device *dev,
 	mutex_unlock(&indio_dev->mlock);
 	return len;
 }
+
 static ssize_t ad7152_start_offset_calib(struct device *dev,
 					 struct device_attribute *attr,
 					 const char *buf,
@@ -142,6 +143,7 @@ static ssize_t ad7152_start_offset_calib(struct device *dev,
 	return ad7152_start_calib(dev, attr, buf, len,
 				  AD7152_CONF_MODE_OFFS_CAL);
 }
+
 static ssize_t ad7152_start_gain_calib(struct device *dev,
 				       struct device_attribute *attr,
 				       const char *buf,
@@ -317,6 +319,7 @@ out:
 	mutex_unlock(&indio_dev->mlock);
 	return ret;
 }
+
 static int ad7152_read_raw(struct iio_dev *indio_dev,
 			   struct iio_chan_spec const *chan,
 			   int *val, int *val2,
@@ -470,6 +473,7 @@ static const struct iio_chan_spec ad7152_channels[] = {
 		BIT(IIO_CHAN_INFO_SCALE),
 	}
 };
+
 /*
  * device probe and remove
  */
-- 
1.9.1


