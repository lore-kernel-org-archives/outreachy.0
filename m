X-GM-THRID: 6400705153326907392
X-Received: by 10.200.48.172 with SMTP id v41mr770006qta.86.1490280300824;
        Thu, 23 Mar 2017 07:45:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls2172537ota.4.gmail; Thu, 23 Mar
 2017 07:45:00 -0700 (PDT)
X-Received: by 10.13.220.65 with SMTP id f62mr848986ywe.66.1490280300440;
        Thu, 23 Mar 2017 07:45:00 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y203si1149583pfb.0.2017.03.23.07.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 07:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so28573428pgh.3
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 07:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=H6Mck9dYR9tzh3O0CwtdUVynwYZs+vbFEWcb0imoXl0=;
        b=LzlXko/YvAfNe0BgKlptxbffx3DWAoGqngI09LmlsxKYsHtv2rWMknvyzCraUM448u
         YiJM9VWj7qu6xahZ9kVkTMntWn3s79+FLIGDKGgBjC+h3CJma8brrkRwrDD6qJDbjgql
         9At1Ue+NifTvPzBoSP17QzK+VYbzQubimOIRWDF2khCaR+53IpNNERw5/D/T7zaGEYH2
         9xKme67SLzG2ahiAEYby8aPsByanNn8femZFtXPswAyDxASdsM3G0ld6whAyVjRS765r
         IrtGI7eKq28ENUuB38FPUZ/WvuygIFiGMWXCS0mWe/6Er5q60p4vl2+PD+51pIuY5zov
         rrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=H6Mck9dYR9tzh3O0CwtdUVynwYZs+vbFEWcb0imoXl0=;
        b=dERFKyvSRmmXJbVstvd8Jf3iUpk6a7BCiblphQF0Sw2oByGidvLduaASjEB0KoTey2
         YAPjc/2Ib3T/aeFgtj7L3uJIxle9jsk0XdXO/smZsKGlc8pkoIw6WUuefZ0LIRAOTLbX
         PH+60qoO6FZczQchOQVnN0ynaFkSkh/oPW93dqpKM+2FRzXz7lL6EALlxW2Q+/JypB1k
         RziXfOHvKID31qOGP5ws7NykJMgiW2XYKweC0SAZrCYx/QV/O+5RpxFhBLLo+CWW6R+e
         ng2rGiW5cKAuNRvXO1FaJbtWu24JuozV8Sp3q/Q+BJ0MHkjipA3tk4fVvDaVZQ36IGJd
         rcpA==
X-Gm-Message-State: AFeK/H10+oByai1yzO86qr8g/W+68T8wbKBZaRa2ntybigQHrUldyhX8hkYOVoSqmB9Hlw==
X-Received: by 10.84.222.11 with SMTP id w11mr934342pls.163.1490280300195;
        Thu, 23 Mar 2017 07:45:00 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.12])
        by smtp.gmail.com with ESMTPSA id g64sm10862060pfc.57.2017.03.23.07.44.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 07:44:59 -0700 (PDT)
Date: Thu, 23 Mar 2017 20:14:53 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH] staging: iio: accel: adis16201: remove local variable addr
Message-ID: <20170323144453.GA7093@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove local variable addr from adis_read_reg_16() and adis_write_reg_16()
as it is used only once.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/iio/accel/adis16201.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16201.c b/drivers/staging/iio/accel/adis16201.c
index fbc2406..b03c4f3 100644
--- a/drivers/staging/iio/accel/adis16201.c
+++ b/drivers/staging/iio/accel/adis16201.c
@@ -175,7 +175,6 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
 	struct adis *st = iio_priv(indio_dev);
 	int ret;
 	int bits;
-	u8 addr;
 	s16 val16;
 
 	switch (mask) {
@@ -223,8 +222,9 @@ static int adis16201_read_raw(struct iio_dev *indio_dev,
 		default:
 			return -EINVAL;
 		}
-		addr = adis16201_addresses[chan->scan_index];
-		ret = adis_read_reg_16(st, addr, &val16);
+		ret = adis_read_reg_16(st,
+				       adis16201_addresses[chan->scan_index],
+				       &val16);
 		if (ret)
 			return ret;
 		val16 &= (1 << bits) - 1;
@@ -244,7 +244,6 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
 	struct adis *st = iio_priv(indio_dev);
 	int bits;
 	s16 val16;
-	u8 addr;
 
 	switch (mask) {
 	case IIO_CHAN_INFO_CALIBBIAS:
@@ -259,8 +258,9 @@ static int adis16201_write_raw(struct iio_dev *indio_dev,
 			return -EINVAL;
 		}
 		val16 = val & ((1 << bits) - 1);
-		addr = adis16201_addresses[chan->scan_index];
-		return adis_write_reg_16(st, addr, val16);
+		return adis_write_reg_16(st,
+					 adis16201_addresses[chan->scan_index],
+					 val16);
 	}
 	return -EINVAL;
 }
-- 
2.7.4


