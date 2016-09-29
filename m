X-GM-THRID: 6335689041155981312
X-Received: by 10.107.156.80 with SMTP id f77mr478409ioe.94.1475142557535;
        Thu, 29 Sep 2016 02:49:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.207 with SMTP id v198ls1140776itc.12.gmail; Thu, 29 Sep
 2016 02:49:17 -0700 (PDT)
X-Received: by 10.98.24.130 with SMTP id 124mr132781pfy.3.1475142557147;
        Thu, 29 Sep 2016 02:49:17 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id x73si360325pfd.1.2016.09.29.02.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 02:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so3378505pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 02:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nVSu9nMsayBefmrRRAaNAFZgMcHIKL7Dt483bSxmkUs=;
        b=JhwtoaNmybmZS0eqCgKf7pJqHj3CuzP0IxzL1aAyfG4m/f2LwlaaXmaIYTbrYuqAy3
         4EQInK4VR/akBpkQJiLHd5/oHniUwqJD6j567OpN0GMzkSCDpBlSXQGINs2n2OXksBXE
         FrYTRR9YwpO8GoiF9a3IgMXNaPCMIk0LiQGLueLoah6J2DaPWWyvPBxIgBaqmVvdiGrE
         1B4ZUxmZtOBR15HiUaiEtL0VgxaLSAgLv3hruVxZpqNW3e6R5aEKJC6HgmF7E2IYLeYW
         Kw2n1Mc8QQfCWvXCuKRDERLdckl0VX9pox09jFIVbelvYuVDF99wjSJJXX0WsPMcad7J
         VhFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nVSu9nMsayBefmrRRAaNAFZgMcHIKL7Dt483bSxmkUs=;
        b=RayUlf9Tg8zzPb0xENaNyB8aVlyg7/B4hgKxNCyvBCkzEQQWXSMO/rTDNzNmtgbCCu
         X8NpIJ8If0hW+e12Qy8IYuawprCnJlNExsBcA2tskkqy40kYwFDStMuTZ8fV3zJtYHAC
         A7RD7CmLPmg4U5OqcSZHkdTYaTZhcPiYR8ON2cOXvPDUAgKlAbTypsGJuG+NmTPkBAFc
         mBxiPeQ+UZN9X9EJlDda3X3oTqVh/fftCtE41dOsYZqTeOsSjqtjBtz4SCTmjUjeISM2
         9ss/gRkdjucrZp7SC8mPmyEYVs+aQsPm/IRtMAu3bIGi2UWuwSdgJLlBR8ljpn3SwzbU
         jIfw==
X-Gm-Message-State: AA6/9RnhNEXs2HJvoAnFv7u0rNjYBme28ofLjZy0zarfUqNEtiX5KCw1ymrZzo+zhUt7gg==
X-Received: by 10.98.69.208 with SMTP id n77mr810169pfi.119.1475142556981;
        Thu, 29 Sep 2016 02:49:16 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id k69sm18669996pfb.85.2016.09.29.02.49.14
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 02:49:16 -0700 (PDT)
Date: Thu, 29 Sep 2016 15:19:10 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, Michael.Hennerich@analog.com,
	knaack.h@gmx.de
Subject: [PATCH 3/3] staging: iio: cdc: ad7152: CHECK:Please use a blank line
Message-ID: <b7e14439773be72f471528ac4606413d19db383d.1475141738.git.anchalj109@gmail.com>
References: <cover.1475141738.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475141738.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl issue:

CHECK: Please use a blank line after function/struct/union/enum declarations

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/cdc/ad7152.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index 2473af3..e383f00 100644
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


