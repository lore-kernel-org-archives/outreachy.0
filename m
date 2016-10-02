X-GM-THRID: 6335769509399363584
X-Received: by 10.200.50.52 with SMTP id x49mr3326825qta.45.1475423425274;
        Sun, 02 Oct 2016 08:50:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls2691210ote.32.gmail; Sun, 02 Oct
 2016 08:50:24 -0700 (PDT)
X-Received: by 10.200.40.83 with SMTP id 19mr4491197qtr.89.1475423424913;
        Sun, 02 Oct 2016 08:50:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 128si981413pfz.2.2016.10.02.08.50.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:50:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id cd13so5448214pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 08:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q58OkEEiyXAIi1nmwRbrKTg5nY/GMW1pj1x/zaEDfmw=;
        b=rCur52P2Rl/0nSMDllmAraySw5UQMNurMY0yUUDzP1J8KdkLsc3sTcfCGyy920ClQa
         TczetDh2dMrml1Us3ReljmewqmdM5Znly7fPgDz/sb2ol6cbkOJBQMCpkmRvkuaYdlHy
         SC4p0gzKFlALh8jNeN52QFvejnNr2UWU2Uj0nl098hnwZq6B8Ylofqz2ce/0JXjHlvhG
         m1NyuvQrLpm4w7exxIL+6BTSsVMPcmOlsQLunYaeKkdWmX7BWzBcg3/oRJviBuVzxVcG
         4bwBAQz/x/lp4g2RJmMsnmjgAMT0i5cL2vsyEchTnBV0DOI2ljx2xn5+8Nh9c6m6FQA3
         mwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q58OkEEiyXAIi1nmwRbrKTg5nY/GMW1pj1x/zaEDfmw=;
        b=HytuWEPnVEooqEauoLYsGg5usilvNjxJkZ8BzA/O2YQCYT3WCWVGrgVj/aDAgJGjDG
         F+gMy+3szFCg60hw5e7IaioL3Ok6yMU77RcYKcX1ZCdAKFpxK8QtN1e662BMmRlsbk04
         /nC6nFZSyywBWnKao+UXd93Xj77i6x7n2GiAVwF4RVc6uoNRGxb9NgAT0fOKUHngSZ4z
         mc9/xt83xt+E91oZnYyB4pbB5LlvtXZ6lddhIaaADGbXfoCxzAF1kmnwNFkeYAweOWlo
         kX4KTM3kBkzx/ubqNS0p3nktEkUo0xTYnks/3fBMQ4rlDPj1lh/TfWir/lYD1BEEJgS3
         /HSQ==
X-Gm-Message-State: AA6/9RnQ5VjBStRwIQsFW9I7vqTkE5csBzAzdgfEq+UsARtJJD/Q9U02Pru2zvT14wrwNg==
X-Received: by 10.66.160.72 with SMTP id xi8mr30000381pab.78.1475423424709;
        Sun, 02 Oct 2016 08:50:24 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id x1sm6512562pay.41.2016.10.02.08.50.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 08:50:24 -0700 (PDT)
Date: Sun, 2 Oct 2016 21:20:14 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org
Subject: [PATCH v4 1/2] staging: iio: cdc: ad7152: Add blank line after
 declarations to increase readability
Message-ID: <20161002155007.GA4395@life-desktop>
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


