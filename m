X-GM-THRID: 6470276694187966464
X-Received: by 10.202.237.141 with SMTP id l135mr7007082oih.15.1506478687798;
        Tue, 26 Sep 2017 19:18:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.188.207 with SMTP id m198ls159218vkf.21.gmail; Tue, 26 Sep
 2017 19:18:06 -0700 (PDT)
X-Received: by 10.31.172.81 with SMTP id v78mr2571883vke.58.1506478686745;
        Tue, 26 Sep 2017 19:18:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506478686; cv=none;
        d=google.com; s=arc-20160816;
        b=AbKqYee+GI8Nb4zGFz8RdnecyG2TRRHQk+dD7KWfEplp/PmpAY3IONcuOnYp7G5UdT
         ywnw0a9x1fvu2PPPHYUUuwmL60wkils0/QDuFUSStXySn0yM0PDdybBgpEzFoOPl1nqx
         zzlaXRVGzeR1y3+Z196gRoXr4OSgU7uM/oXLEsXW0OEKF25TZzxX0Q0fZTQsRxN8dG72
         yRvqg2oiQqcFWJ4vPBVLMlMrXp8GH799+65ODGGj0OWJfdpwCfrDR9e7majWZd22J2Si
         2ztxi6WPP6uTSl6Vva5JqMjbr49DAywtpuNby+KQOJD2iKsoByvPagTe2935tPcjevU7
         W+5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=A/kABDwUF/WExdLXgYioIB6PuGB4B/jpmRioezUbiLo=;
        b=bsbF7rEKO3ichOe926SVLqGmiuBSynMo8mE/vHZdxq45LUr2QmsyjMI1wmRfiPbE29
         Co7nWUd0/9luke6glLeJuTouq7JoHK84LJQNx6LgnAKXOmaAeoW5BuiFqmXi4dxSbFkR
         yYhi5A4+3xIk069EI8TjvTZKu8FQvlccjjST7h+jxUrXinIkQJFel2ITcXe6JlOv/qAP
         F9aW+8eF3URbD4S7qUlGOjn8/weiYF0LYG8f6XAy5OCnQNVZFsA8wMvaZPTkw3iihpex
         QJxUSh7MtvrTO4KTBj9W+tZeJqASsN/DCXO0Ie5DwzrWGKQZlAwBzIxESBJdAGZ7YUmW
         QJOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Po/cl6Zo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id v9si789378pfj.24.2017.09.26.19.18.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 19:18:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Po/cl6Zo;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id a7so5757532pfj.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 19:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=A/kABDwUF/WExdLXgYioIB6PuGB4B/jpmRioezUbiLo=;
        b=Po/cl6ZoY+cSwW2Tz+8DdjkQKo5c0PDnTyeaoVt/Xg7UgTOCDMwBggjC2+BP/7O/m8
         EeBeAYWQrmWKDf5ebO/X6mo5tx0racyFDpA+EjrBoYoMdyyRdQjpr1zaTnkoaKxJu+DT
         e/zmA2NCJE8jjsvvLaAKmm/HUNoga0evmcxoNgjX+tRRSzYKncls+CGDJS21wJpYYrq0
         SHQ4RoCDYIPYkq/o3Qk9t4lDU59r5CkpLRd8BsyVEqYrwfTy3WLPC/3zAN6Qi88s6jzE
         4Ghpe9gONs1c+30PHZuRIMV3YsGuFoIiz48WQluT8YsCFSldQJ2doq03CE++LEk2lSuW
         7AHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=A/kABDwUF/WExdLXgYioIB6PuGB4B/jpmRioezUbiLo=;
        b=gGH5O5ZxPzGanRjKGbrYC4vvj0fdyIox15PfE4lNLo/WPtYviIewdJv/T4Bntqi9Zp
         sj0PRZwGx+oQX2+KZVzWlMmHwF1deRJ4LPPPItQ+txgga4sRDs/mOUAPu0g0LM1jIBLG
         U9XyYTvBf7IQRcNxQPklQYVAPqr9jYrYN8EGCkLN9R9mp/wIV3YmlToC2YZ5xEqY5sYd
         h8l9xp7wFqm1o/L4xvk/S6ob9A7SdLBwC11448AMzCds7yDHl6NnfgVOjmisU3To5CkY
         Ep3EXLgaSBMwIBjCeM86EfpyJ4D8re+iFXPsS8kzUnq8h9MNB26s/yO6O+8Ge6haWzzV
         QIsA==
X-Gm-Message-State: AHPjjUhgqEqQdWzDZiAsvZvonHFxPBMgP7LBXkXSjCzCGsQJU8BNDF2n
	hFqSbbNhSyR6jOKaah3NYPM=
X-Google-Smtp-Source: AOwi7QBJFNEdYRiA5d+GT5Nauo9d0R9VLLdUxkTiexts2pPtdqxEpS0n40QHAEUZpU22p2WkOvqY8g==
X-Received: by 10.159.197.6 with SMTP id bj6mr12487792plb.178.1506478686430;
        Tue, 26 Sep 2017 19:18:06 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([47.31.7.99])
        by smtp.gmail.com with ESMTPSA id m5sm18534326pfg.12.2017.09.26.19.18.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 19:18:05 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	hennerich@blackfin.uclinux.org,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	linux-iio@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v3] staging: iio: adc: ad7192: use driver private lock to protect hardware changes
Date: Wed, 27 Sep 2017 07:47:52 +0530
Message-Id: <1506478672-5937-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes.  Replace it with a lock in the devices global data.

Also, private driver lock is being used to protect hardware
state changes as here state variables are being changed.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v3:
	- combined patch 1 and patch 2 into one patch

 drivers/staging/iio/adc/ad7192.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index d11c6de..609a649 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -162,6 +162,7 @@ struct ad7192_state {
 	u32				scale_avail[8][2];
 	u8				gpocon;
 	u8				devid;
+	struct mutex			lock;
 
 	struct ad_sigma_delta		sd;
 };
@@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_dev,
 	case IIO_CHAN_INFO_SCALE:
 		switch (chan->type) {
 		case IIO_VOLTAGE:
-			mutex_lock(&indio_dev->mlock);
+			mutex_lock(&st->lock);
 			*val = st->scale_avail[AD7192_CONF_GAIN(st->conf)][0];
 			*val2 = st->scale_avail[AD7192_CONF_GAIN(st->conf)][1];
-			mutex_unlock(&indio_dev->mlock);
+			mutex_unlock(&st->lock);
 			return IIO_VAL_INT_PLUS_NANO;
 		case IIO_TEMP:
 			*val = 0;
@@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 	switch (mask) {
 	case IIO_CHAN_INFO_SCALE:
 		ret = -EINVAL;
+		mutex_lock(&st->lock);
 		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
 			if (val2 == st->scale_avail[i][1]) {
 				ret = 0;
@@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
 				ad7192_calibrate_all(st);
 				break;
 			}
+		mutex_unlock(&st->lock);
 		break;
 	case IIO_CHAN_INFO_SAMP_FREQ:
 		if (!val) {
@@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
 
 	st = iio_priv(indio_dev);
 
+	mutex_init(&st->lock);
+
 	st->avdd = devm_regulator_get(&spi->dev, "avdd");
 	if (IS_ERR(st->avdd))
 		return PTR_ERR(st->avdd);
-- 
2.7.4


