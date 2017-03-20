X-GM-THRID: 6399613678740570112
X-Received: by 10.99.164.9 with SMTP id c9mr16993557pgf.4.1490026171087;
        Mon, 20 Mar 2017 09:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls500145otw.5.gmail; Mon, 20 Mar 2017
 09:09:30 -0700 (PDT)
X-Received: by 10.129.108.146 with SMTP id h140mr7108103ywc.4.1490026170640;
        Mon, 20 Mar 2017 09:09:30 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id g82si2769879pfb.5.2017.03.20.09.09.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 09:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so17965863pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 09:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yB3R1WdvbBebNdUsEUxg6cLwqmOUH1Dkh0Rn+AQ9TK4=;
        b=IZdYwjtk7M9zTJAgwZEPM6xAjfv9WrfO4jIYvpRUtU2tuF5/z3cishd30vhCZf0B/N
         TQuyv3Ixm8YyUIsSa1P2D5c4YUZH+IwVbOqd24ZflX7GnHVYsVxYBh7mzICuURYPvV+p
         laneX2MZ/qpdr5cRRvlGQYmGHc0ctkofT4J5M4YglsZ5C2pcmstwMIzR7cK3CN0s1lyy
         q+Bs7unjPzLKyxv8PaIdXBH+afr+ci61OToiDn+GZANHYQ3J6/dxW0uLuYiTwVmv5Lvy
         6D3cNizseNfcTiFxM3AYPahhxQk0JFSH/iWqO4xPtup/cnrY1A89Trd2LxhycUdkvsPA
         mx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yB3R1WdvbBebNdUsEUxg6cLwqmOUH1Dkh0Rn+AQ9TK4=;
        b=Hz/JBfL+9XlMf87rs7fZncZUNaw4eQnNysVfWpCtU9pSSJoMU2DyBptgWfaMkLhPQc
         1+BgH32uzltqTiLT7swbffqiAHxWOpWvs/CD2vT0ZVJiYcLIsZ6vsWqEq9X80Nlmgcim
         hVt98i9tBwOvN2DVRvdNN7dDO78970U7s+YnMM03v5bJmMap0EUdl3sgiLO0hFIlxUGG
         jGKj9mQ0FFz0SIz+QShApBqerk/3ba3gtdktUD5ghO8myHjoscePRcev0HDTEwOM4Pfm
         IbhjNPVINMqXJILVxna8zssgyE0I1fI+y/SR1frxTJE3XwWykzw3B00qRANIcVwraVBN
         sH5w==
X-Gm-Message-State: AFeK/H1Bucks68kLrR4u8pjfh6GCem7NtvvVOTAXMAfRog7AqxvHFmKSeTMJ9xvMLJTG+w==
X-Received: by 10.99.97.6 with SMTP id v6mr18614648pgb.186.1490026169916;
        Mon, 20 Mar 2017 09:09:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x15sm4773742pfk.68.2017.03.20.09.09.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 09:09:28 -0700 (PDT)
Date: Mon, 20 Mar 2017 21:39:26 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ad7759: Replace mlock with driver private lock
Message-ID: <20170320160926.GA7088@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/meter/ade7759.c | 4 ++--
 drivers/staging/iio/meter/ade7759.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 944ee3401029..1d1e0b33021f 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -381,7 +381,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -402,7 +402,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	ret = ade7759_spi_write_reg_16(dev, ADE7759_MODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
diff --git a/drivers/staging/iio/meter/ade7759.h b/drivers/staging/iio/meter/ade7759.h
index f0716d2fdf8e..4f69bb93cc45 100644
--- a/drivers/staging/iio/meter/ade7759.h
+++ b/drivers/staging/iio/meter/ade7759.h
@@ -42,6 +42,7 @@
  * @buf_lock:		mutex to protect tx and rx
  * @tx:			transmit buffer
  * @rx:			receive buffer
+ * @lock		protect sensor state
  **/
 struct ade7759_state {
 	struct spi_device	*us;
-- 
2.11.0


