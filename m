X-GM-THRID: 6335769509399363584
X-Received: by 10.13.224.129 with SMTP id j123mr5725368ywe.108.1475500123765;
        Mon, 03 Oct 2016 06:08:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.69 with SMTP id k66ls3820413ioe.22.gmail; Mon, 03 Oct
 2016 06:08:39 -0700 (PDT)
X-Received: by 10.66.159.65 with SMTP id xa1mr6210180pab.80.1475500119197;
        Mon, 03 Oct 2016 06:08:39 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si7260634par.0.2016.10.03.06.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 06:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id cd13so6674470pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 06:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/EeRmTWGcEXMpnGqchb182iLqzVd2hRoz6NtJYjBnt0=;
        b=ICKUdX+dy0/skGReV9YofLq4FlEKih52I8HP7hKP6e9aDyXkVkRD/eH4KbZKt2nqov
         Mq0083z2SDknLbbL+qshoubhfYlN7trnMgtPD6qPBk9lkaXc59YxuypunxEHBl5M82wa
         +al5O1X3KUAzsmYT4q5v5xKyZLg4OqwyVxQgRj3x1IYbRQIs5jAPAdrJpPVtJyGBVC9R
         V+axt3/Dc+KepTMEydajk0LBLlL7IbT3dHw5JXe4/pV4Fma+ZPySVFl22bNUb7qXS+EM
         6+vhh+fdAH18kv00JRsJSCplzqID8BSxsw/ePdr+aYVn6XSFZnmus9fTpibSw2LN3TEP
         kIPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/EeRmTWGcEXMpnGqchb182iLqzVd2hRoz6NtJYjBnt0=;
        b=d8EtG69JDMKAp7youv4dvUgmaUGVW65/0OC5GNvkvknJEw8YgUMxEJIK3dllxUdeMh
         oUfQILnxIAv8/rKDwgXqFfXN3RTIQujgCKLLl6wuJM5RbSoVTSkqvBLVT9e/z2yaokCP
         liTIg9XH6h4Ud6PzEroYpchFJ9SVm7Y5YBHPW/MvVvY+iSAsG5uJVUlLV7NCNgHR8CCy
         zTmDF1dqDQOtPk0IsnjGhwlExIqmlD4LhiDzhLOZ8hRD/kUCQGoNXPCqZ1FJKvfHWwWb
         BpkQkNcym5ECL9A99MTyiwMrG20azKC3C7/+7rPMZxhXjDtMgruSXOrbN732o0HtH77o
         nkUg==
X-Gm-Message-State: AA6/9RknKzewB+GfdBKVicmTP4UjuNMennIfOmPK+KmpAsJZ5UC7YzCzrWYTDorYBuHloQ==
X-Received: by 10.67.8.105 with SMTP id dj9mr37969394pad.111.1475500119006;
        Mon, 03 Oct 2016 06:08:39 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id q128sm40067012pfb.74.2016.10.03.06.08.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 06:08:38 -0700 (PDT)
Date: Mon, 3 Oct 2016 18:38:28 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: jic23@kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: iio: cdc: ad7152: Add blank line after
 declarations to increase readability
Message-ID: <20161003130820.GA5241@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add a blank line after the function to increase the readability of the code.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2-
		-modify the changelog commit
		-add CC to the IIO maintainer
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


