X-GM-THRID: 6337506771959021568
X-Received: by 10.157.8.202 with SMTP id 68mr487136otf.11.1475565780357;
        Tue, 04 Oct 2016 00:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.65 with SMTP id a62ls4393741ioj.12.gmail; Tue, 04 Oct
 2016 00:22:56 -0700 (PDT)
X-Received: by 10.67.6.42 with SMTP id cr10mr436208pad.52.1475565776704;
        Tue, 04 Oct 2016 00:22:56 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si639786par.0.2016.10.04.00.22.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 00:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 190so4080835pfv.1
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 00:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HUMH+yqhiw9m+rKX8hZF51aX2C4H9R3MTT9sNR6d8TY=;
        b=CEEkAv9JbAQf1W7rOaJnjiUqq+ZVeP9qzp6Xs1uJmdafc6+nYCoujB1iJTnxijkXSP
         M9mLhtekpDG5iekU9ZqCgNof1LYoNsu4YqGZ2JI7i75GcrvqFDQvTOC5uNl451aeCAio
         IWvvgrB2J6YOPLgBmt2x1CDhiMOsMQioTFyDJZEYAQ7NBhEcTSedJXyr4TAxS4PHHwHf
         sgLNKCBqFP+Qhoto9qRYNLuMpDV9F2W4JUPYukTzIBpZKUVHzpqPlqVyJeWvyetK6fCT
         /kUD1aW8thNND8TRYt7S9RbxdnBdbvX+qhOkCzROubUEcGbNHDqrmjOhX58w38LfciYK
         QV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HUMH+yqhiw9m+rKX8hZF51aX2C4H9R3MTT9sNR6d8TY=;
        b=dgSIbxQdjPQ1RCz8V2WFiziH2XksLE3UqPM5D6x7TRkyGqJMew00g/HZv1W2JFFAro
         6h2db+HmyUWXNH9giXxyQfk1OwpOMF/yajNHrxaokElvKMxM+VLs7ZjeqkoR6OT13wJf
         h92+QQ2WPZJQEt97V1sVL9peIpqjHjq/uJJGci+4Dtk8GpG/SHL/gRh20GBrxd21x7bd
         0k0CC9h8Fq8VAl4rCcePEB74E3NhHZIEB4k4FMD7gqZ2e9ZmEC5Dp4RqT5Jgdi8t+2mm
         wa907X332f2kWASCID4Su1rUTlfzvan1eAxUJT7ghHi3T1YaW83AOd/mE+16wr72oWP0
         qYiQ==
X-Gm-Message-State: AA6/9RkMa5kYjKKU990fbzfpjRU1oOUYLdcOp0MhmUsonkGAEijbORgpxjwpMPEzp4beqA==
X-Received: by 10.98.64.10 with SMTP id n10mr3662635pfa.96.1475565776544;
        Tue, 04 Oct 2016 00:22:56 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id s80sm29504572pfd.10.2016.10.04.00.22.53
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 00:22:55 -0700 (PDT)
Date: Tue, 4 Oct 2016 12:52:45 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: jic23@kernel.org, lars@metafoo.de, outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/2] staging: iio: cdc: ad7152: Add blank line after
 function to increase readability
Message-ID: <20161004072236.GA4047@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add a blank line after the function to increase the readability of the code.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v4-
		-modify patch title
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


