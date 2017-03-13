X-GM-THRID: 6396604644937695232
X-Received: by 10.129.81.214 with SMTP id f205mr15635915ywb.110.1489422537149;
        Mon, 13 Mar 2017 09:28:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls14906952otd.49.gmail; Mon, 13 Mar
 2017 09:28:56 -0700 (PDT)
X-Received: by 10.129.40.134 with SMTP id o128mr16341021ywo.82.1489422536826;
        Mon, 13 Mar 2017 09:28:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si3178259pfb.5.2017.03.13.09.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so14073793pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GGRrgINqzQhTwOqdDN/By3/l5gcxPpEpI8tErIZjtFw=;
        b=tPFb8kHGff5FL7Vas4LN4CMI8UzJ9OPi9H6RVYdPsQdtwSOg2KIDwQiOB0JZ/g19vu
         kh9nsKDBsFG2X/STjeSF7bIGit5rJLkNKUl0NzqLO5eIx462HWyGW0w0RyEPJOMVTbh9
         u82T8dZk8LTE+ksGxH2J2Q1hdniEwv6mNrKkfRQSHSjAO6Wc0Xzw/UUckmCqXyJFuVGm
         AIHOZl43Zq5sBEnbT3AkhkOPchqrowHYxkUUIN0SmaRwnfuJZxTmObD7Ta3V9+MHfIxl
         +8PCGfqRIaix1g5jy6v5a530XoLiCCXYO8A1+DhhilHYVhbopgdssD7nQWr1irOlMn38
         amMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GGRrgINqzQhTwOqdDN/By3/l5gcxPpEpI8tErIZjtFw=;
        b=P9Wk5sD96BmifH+X1M7yzJDfyZdlWSb/AEBuXjoU4HJKv77Hnzg0bY8cg2R3S4TkfN
         vdjPFvaPs1zcnsVO1lRgtKZ5Cq03D8gE1+eJ1/8OE36jwseDnXmL89aC4w6GpiG6yaj3
         llOdHCIR1ARJWFveW/z3N6jvbQHBLmpSt+amuF6LE0WkSRtDhsclzsrd4vWt6cBVG8fy
         e1+JboK9TEswPzRsxMDnHyngOF+WzIs+H30hOajrgfMcAzTqLaCBVYSwSCHJtXjAfdfV
         qiGlBl9ETIpGM3dNWn9f7Ias3DfAZ76mzEQSJOgKSlSaJxrvcmnYX2r2TzkQZhYyf/MC
         hi4Q==
X-Gm-Message-State: AMke39n6Hidy9KM3IhPgkcThrUQKGqLa5si+xJlm2kSNZE9HJpPLogZnv+XuMqxnZBQetw==
X-Received: by 10.98.220.65 with SMTP id t62mr39674891pfg.0.1489422536553;
        Mon, 13 Mar 2017 09:28:56 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d2sm33942953pgf.35.2017.03.13.09.28.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:28:55 -0700 (PDT)
Date: Mon, 13 Mar 2017 22:01:07 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Pete Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: iio: ade7753: replace mlock with driver private
 lock
Message-ID: <20170313163107.GA31496@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Fix some coding style issues related to white space also.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Removed new lock to reuse the existing lock

 drivers/staging/iio/meter/ade7753.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index dfd8b71..d88eaa3 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -83,10 +83,10 @@
  * @buf_lock:       mutex to protect tx and rx
  **/
 struct ade7753_state {
-	    struct spi_device   *us;
-		    struct mutex        buf_lock;
-			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
-				    u8          rx[ADE7753_MAX_RX];
+	struct spi_device   *us;
+	struct mutex        buf_lock;
+	u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
+	u8          rx[ADE7753_MAX_RX];
 };
 
 static int ade7753_spi_write_reg_8(struct device *dev,
@@ -484,7 +484,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -505,7 +505,7 @@ static ssize_t ade7753_write_frequency(struct device *dev,
 	ret = ade7753_spi_write_reg_16(dev, ADE7753_MODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


