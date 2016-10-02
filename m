X-GM-THRID: 6336889298052186112
X-Received: by 10.13.218.130 with SMTP id c124mr4739251ywe.144.1475422014464;
        Sun, 02 Oct 2016 08:26:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.117 with SMTP id r108ls1389783ota.19.gmail; Sun, 02 Oct
 2016 08:26:54 -0700 (PDT)
X-Received: by 10.13.206.135 with SMTP id q129mr4764414ywd.163.1475422014156;
        Sun, 02 Oct 2016 08:26:54 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ua1si1896449pac.1.2016.10.02.08.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id t6so3686636pae.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qLn2WGVP5ipy1QpDYpYtdkBcm5V1j6OV7lKzHQadh78=;
        b=uDDeqE0Pi8ztZO0PjtfaYHMTT4f4/y7ZbkROxKH57AEIj2p8579XgCbTqymnX1dzvJ
         crciU+9bFwYFOWqtt7KW3byTAAryVkM6b6RmRF5u9mQ083JJ2ImDTgivteqcdVoNGESa
         lYsfXb3L/VF2QMrSpWTeoinpG+VylJD7Zv8IjZtWz1wiKNpUejo/vhDUPIwGk7aXGF0l
         Upmf50JF1lO+5SnnenL2jN1rNajfqOmtVbkbWZFsaj9PtdG3TyHhX2ZBL3cLbw33w03N
         FMN83TQSOVn5jrkB1aD58SKe5KhShpG2O/lRUSZeZ01HsHhgXPXwq0U79PfEtcvRZM4v
         ku5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qLn2WGVP5ipy1QpDYpYtdkBcm5V1j6OV7lKzHQadh78=;
        b=dUOtRjE6eBeMTtcVyR1QRslNdBf1cn1KFzR6UkqA+WlaM1sn3jKmPFXoFC7zcTyI7I
         QXRWOv8EHS962r6zLQ7V9qYvmg8REl6TotWRuvjSFYxLJxgxuWtuz1vFgSlJF+TU91KL
         uZnwHTKcF3liu17+4L0F3qddC6NJz6odH0KBVhDBdueTEwX6ZgxjH3rRXuqTV8I0E68h
         jjhoLmj+qUeW8jicbDgz51hxSpQ+aE9Z28CHKHvj6ncsCkuhLUvZ/FHyLWJApUW1PqJ7
         sYujdbcdBnGl6bkgZI2o6GxVHMHsA5UEG6rpDutFKfbQ/wGpC3MvBEjpxg/DErhdgVOY
         ukjA==
X-Gm-Message-State: AA6/9Rlaj6DYrom1k18rxOiwTGluazbpx79swajmDLF47gspu0MqLKulDWHON7AlqN2HAQ==
X-Received: by 10.66.173.110 with SMTP id bj14mr12143279pac.51.1475422013965;
        Sun, 02 Oct 2016 08:26:53 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id fi6sm23419123pac.20.2016.10.02.08.26.52
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 08:26:53 -0700 (PDT)
Date: Sun, 2 Oct 2016 20:56:43 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: [PATCH v3 1/2] staging: iio: cdc: ad7152: Add blank line after
Message-ID: <20161002152635.GA4163@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

declarations to increase readability
Reply-To: 

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


