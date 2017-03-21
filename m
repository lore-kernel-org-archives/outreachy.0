X-GM-THRID: 6399943776789331968
X-Received: by 10.99.122.65 with SMTP id j1mr16333131pgn.89.1490103041350;
        Tue, 21 Mar 2017 06:30:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls1823506otc.34.gmail; Tue, 21 Mar
 2017 06:30:40 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr17365649ywc.45.1490103040891;
        Tue, 21 Mar 2017 06:30:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si3380732pfb.2.2017.03.21.06.30.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 06:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so25189796pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 06:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yB3R1WdvbBebNdUsEUxg6cLwqmOUH1Dkh0Rn+AQ9TK4=;
        b=pJrLfY6c47RK1zD0H0MPrSHEWYKrDJAjYG/eOSHuuGaFnxyJQFF55BB/+RaFQVOU3G
         fEl//vtqvgfWo2FAnS64l0lS9rayRzQFHAWEaHoTEPYsNloAe85IXAKoQ0hl8eEW7ccL
         XtWdrQZ71tcaqWE1lvnkI3TCUxlmX/xcSkhLfKQhWtJs7i7ai0NMVpnEcyoUbwn8UaoH
         Wgg8rZqPVNM0ka3OVMd63rN5FnV712G6hilIWpHaZBhh71P3ryFvU3RpaWhlXQz+Opjg
         XcI451Ni6DUVHwV2o6E++/gyTjMA768fC6NaxFQW+tTNsRT5xcDh6p4qwkJL+u601nOg
         sn5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yB3R1WdvbBebNdUsEUxg6cLwqmOUH1Dkh0Rn+AQ9TK4=;
        b=MKNaKR4ZzJ04oW6ZQ33u3CecRv/M5n1EsI6Efs7az6fjWDS7FTX/Ebke0/mO5Pz8dN
         frbIAyhe4+YaDlsUAsZmCuqfRquwfeRYldABeyjpNw3cYEKcAMb4l05GEKChMw3C/BBP
         +qJHOcSNx0RUGV79aSU+C0Iru5J+TuwicRqTb7uRg+DK3JAyioWjERuvcx3LHKkWfq8G
         KoyW7hEg69GldYriodK3YZgdtkpdMB/1GJrnCiePR6xw7YqnvVSqS651DKoQ1e1tt7cI
         HMcFiVLsHnZVf19KxwmpUzO9gqnxHZLuTkPFW+KSEGEGwiy0BbJg8bR2tBIXpe88Ib6h
         dieg==
X-Gm-Message-State: AFeK/H3C5WFeBhg4F3LdDso1TSmUb9Jz+WgcJG2OWAbUytHgHWjJILKIM0IcqyoKpHcfPQ==
X-Received: by 10.98.82.78 with SMTP id g75mr39479265pfb.245.1490103040488;
        Tue, 21 Mar 2017 06:30:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d2sm40093460pgf.35.2017.03.21.06.30.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 06:30:39 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: jic23@kernel.org
Cc: knaack.h@gmx.de,
	outreachy-kernel@googlegroups.com,
	Michael.Hennerich@analog.com,
	lars@metafoo.de,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/2] staging: ad7759: Replace mlock with driver private lock
Date: Tue, 21 Mar 2017 19:00:18 +0530
Message-Id: <20170321133021.6737-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170321133021.6737-1-arushisinghal19971997@gmail.com>
References: <20170321133021.6737-1-arushisinghal19971997@gmail.com>

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


