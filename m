X-GM-THRID: 6402605017214222336
X-Received: by 10.98.29.78 with SMTP id d75mr823691pfd.14.1490722647601;
        Tue, 28 Mar 2017 10:37:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls3109905otc.32.gmail; Tue, 28 Mar
 2017 10:37:27 -0700 (PDT)
X-Received: by 10.129.104.85 with SMTP id d82mr10746756ywc.9.1490722647179;
        Tue, 28 Mar 2017 10:37:27 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si797988pfx.8.2017.03.28.10.37.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 10:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so22867087pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lYttxF5dTQcerv+mlRtF5A0Ri7NNT6My7AkI3fkH6Zk=;
        b=Z+36M+0n2uszi//pa5Na4lf58tWn2TP7FphCsuAna6OPJtEqYIV3moM0pOCAYY9HVQ
         2X4zg2WMcWmkcy/m+noPSsjp33sme6ZIsXypLp05nGpMk1fD0XtxAmGgdZxc5flDOf+/
         jT5svXvSXJNXGLJ+R3nADLgeQ10HIfxV/F1gPGdSYS5jjfRmGru0ViPUhVfTYgmXKRGd
         xO94gVxTX+y+sw1BQe0jQr5t4fpPH2bE4CCD7SUdi/W2CZVc1gfApICGRT4do84s3sBa
         J3KyaV760ortyNhlw6bC0Wz44F5p0KSv4/3KGvSiObDWIwC/PpHvGTg9r7XOu7q0wc6/
         r9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lYttxF5dTQcerv+mlRtF5A0Ri7NNT6My7AkI3fkH6Zk=;
        b=WwlT+wmW2qmX5pSDQvBXMsMGQDwc4po7Xr1Tqlz/aYOB7Ds8MDmsxw7bnLep8EdqM1
         GWiCIM/oWV8rEcBmxAJzCwuDHjZq7UOo69Q79EEGG4p3VJ/sIN2JQS0Ik4SgJXfo3Ghh
         8/QTk5JnL5N0QQtpjkdSIBpA2ofztVLQlWuTZOFD+HnS4OXkBiB/wNkc9Tz3IkzrKGg/
         wjldUVT7v1Jky/TUMqpFUQyy3WRnBaaGmVb6NJboTNE01sI6mco041rCnKBWrwUt9ntS
         h7dyp+H+bmke8noeG+RcNcJapDl7Ar4UKTD5ykbGYdoViHJieBgwYm1P4H39wV4uX0tA
         O1Hg==
X-Gm-Message-State: AFeK/H1GVg31hQfClvPAQmPEoypSneVWanQW+2YkJ9eQLP7p8PByMRMKgJWlHN0iqXd/sA==
X-Received: by 10.98.160.194 with SMTP id p63mr3632385pfl.72.1490722646871;
        Tue, 28 Mar 2017 10:37:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i124sm8591655pgd.66.2017.03.28.10.37.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 10:37:25 -0700 (PDT)
Date: Tue, 28 Mar 2017 23:07:22 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [RFC] staging: iio: ad7759: Replace mlock with driver private
 buf_lock
Message-ID: <20170328173721.GA12157@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a buf_lock in the devices global data.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/meter/ade7759.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7759.c b/drivers/staging/iio/meter/ade7759.c
index 0b65f1847510..514a4f6bb8f9 100644
--- a/drivers/staging/iio/meter/ade7759.c
+++ b/drivers/staging/iio/meter/ade7759.c
@@ -429,7 +429,7 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 27900 / val;
 	if (t > 0)
@@ -447,10 +447,13 @@ static ssize_t ade7759_write_frequency(struct device *dev,
 	reg &= ~(3 << 13);
 	reg |= t << 13;
 
-	ret = ade7759_spi_write_reg_16(dev, ADE7759_MODE, reg);
+	st->tx[0] = ADE7754_WRITE_REG(ADE7754_WAVMODE);
+	st->tx[1] = reg;
+
+	ret = spi_write(st->us, st->tx, 2);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.11.0


