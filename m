X-GM-THRID: 6402923058008424448
X-Received: by 10.31.153.69 with SMTP id b66mr164831vke.5.1490796696003;
        Wed, 29 Mar 2017 07:11:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls2910050otg.18.gmail; Wed, 29 Mar
 2017 07:11:35 -0700 (PDT)
X-Received: by 10.13.223.16 with SMTP id i16mr219861ywe.33.1490796695427;
        Wed, 29 Mar 2017 07:11:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id s67si1071947pfs.4.2017.03.29.07.11.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 07:11:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n11so2033928pfg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 07:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IRmyu237vJWlqt3dLmRhzUMJOBddSRGJhUGyf43xImg=;
        b=Hpe6AB1OgPR9ed2vbpO0tKm5A9T3CU144gugWyOo879zcUnx23jA27y3u8m+X3XbVY
         obcHopq66+rd9MEcsR4G7rTHnOcODUmqhZYd7CnYM7ggfV3BZg5CuAta5U5xkPMlkJ2r
         rm4zf3rTOleNmeCpsFka0TjUzL5vbwZmDplpG6pDC0JwMews/PVLTpIc1uQzxYabr4GS
         /h+9r2SVhb6LcstjB71YxEBETp6PqAv91IVEEJ9N4IhJrf1jdDosJG7jHa4FV9On4Lrw
         rTAZsgDvpJ7w33D7r2sAgm/AXg+y5oTSN/bCZT4ORrCNxIeDUedbdnHLVO3Vz8zs2tzb
         l4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IRmyu237vJWlqt3dLmRhzUMJOBddSRGJhUGyf43xImg=;
        b=YvUz+wjMtzIxcdCr7zmJuzC3wHup4dD5giimteKvKvHnFhmZkmsupihA/kuJiVn+/X
         rLDh8sOh0OXl7VmfY+JYDDYiHi0DYJRXN6u8bCflYoanavpojLHZpTWVyCCXfMqkvqEz
         +/cloG3STfNsZUdSgAd0vGa4PmjBuS7uqi/eOhAZ1zL+yFI9EPtjkgCsyBMgivDGQd7c
         /EzI9R/vp3numoV3PlNQgAeIOqLuj9JBxaDKKSvljeFLildvdzo+/AIYtT+yNHlgpyWL
         GUuvDwecDYkmnC74yiITiANNdDxnm/+7X6sStxdvZjzm2TbwQuzqvVidC5JBsuuj6xKq
         R62Q==
X-Gm-Message-State: AFeK/H1mmiNUcNTKfUqdVMcZ4iDPsptHoBa7IYB+ZKGSo2o/nZdcZ6S5/yTkRml4+vLMfQ==
X-Received: by 10.99.178.6 with SMTP id x6mr766863pge.80.1490796695190;
        Wed, 29 Mar 2017 07:11:35 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c84sm4750227pfc.38.2017.03.29.07.11.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 07:11:34 -0700 (PDT)
Date: Wed, 29 Mar 2017 19:41:31 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: accel: bma180: Set up buffer timestamps for non-zero
 values
Message-ID: <20170329141131.GA23646@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use the iio_pollfunc_store_time parameter during triggered buffer set-up
to get valid timestamps.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/accel/bma180.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/accel/bma180.c b/drivers/iio/accel/bma180.c
index efc6773..4ae5c80 100644
--- a/drivers/iio/accel/bma180.c
+++ b/drivers/iio/accel/bma180.c
@@ -762,7 +762,7 @@ static int bma180_probe(struct i2c_client *client,
 			goto err_trigger_free;
 	}
 
-	ret = iio_triggered_buffer_setup(indio_dev, NULL,
+	ret = iio_triggered_buffer_setup(indio_dev, iio_pollfunc_store_time,
 			bma180_trigger_handler, NULL);
 	if (ret < 0) {
 		dev_err(&client->dev, "unable to setup iio triggered buffer\n");
-- 
2.7.4


