X-GM-THRID: 6338775155629621248
X-Received: by 10.66.86.135 with SMTP id p7mr687648paz.33.1476185863207;
        Tue, 11 Oct 2016 04:37:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.196 with SMTP id 65ls510696iop.22.gmail; Tue, 11 Oct
 2016 04:37:38 -0700 (PDT)
X-Received: by 10.66.235.101 with SMTP id ul5mr744201pac.58.1476185858886;
        Tue, 11 Oct 2016 04:37:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ua1si446257pac.1.2016.10.11.04.37.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 04:37:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fn2so592368pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Oct 2016 04:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hM1AGNrEX1XKvxECn2+2BVuM/dwO6FB6YWBRgXADuac=;
        b=FZ0e6+o3bPwpKX9RJUNA3+pcQ4fPxLFe4Tvzb9+j3mMOORfVN3LgQaBzunDBh6JqYM
         byHl92EAvALCKPbP6yUOo5D2aLP+Uq9rDH/UbCAl0Ue0I8lPcjtNJaJM3mseV/wxdAV+
         jLEsFKw12wYbmMGgNV+HbcBpHUN00gMODlBMHPCojUxjrwjIzkSuLXbFILhqugEx7yg+
         vV55WnRQTF35ugcr9DTLMsAk4LRZ8c/IfJkpaNYBVG+2alFc5MQKAUPm4NnZ6PVJPrpE
         yCIJ1EjluuJ6O7lkF9ybgQ5TY6Qifmc2hby1ufyt7dShTBlrFnFwVBfncgs3q6Wm9wpq
         rXSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hM1AGNrEX1XKvxECn2+2BVuM/dwO6FB6YWBRgXADuac=;
        b=gctQErUehTnAFeDiUbaRS1GrAK5isz+2mXFwRgM1qtPClBMTNi+AjIM1pkZvJ1xoLp
         lqWDj913W1jB5G5j2wXsnwvujBf+jgsuOIzFFVz0fUo2pBUTbNqcVElpph1myStJJrxb
         xV0W1cM0xLzK1mww/Nl78YyaWGb22/mLnOvPQmEQ1eb+/MfCwD8trB4QOztkWJT00Dys
         /sncBvSgxTorK+d4BgFco5DuRu7v3tlT77U/uaDwiomNDNDtyzA3uvTIKMAs1Sl5WqgY
         PAZc7gYjsFlBwlhlXmPC8tmcm0lQfVW3RbxC/AaKnTNqKxDVAb3aWJ42nHzSQSxBA3Lt
         4glg==
X-Gm-Message-State: AA6/9RmCF3CAV/8OpikkJT9SBFW0+Tek6lkVj0mClUZB323y4D5TUWzA7MJHDiBUJMLzAg==
X-Received: by 10.66.43.176 with SMTP id x16mr6144983pal.150.1476185858531;
        Tue, 11 Oct 2016 04:37:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.255.105])
        by smtp.gmail.com with ESMTPSA id y64sm3938517pfa.7.2016.10.11.04.37.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 04:37:38 -0700 (PDT)
Date: Tue, 11 Oct 2016 17:07:21 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: [PATCH v2] iio: bmi160_core: Fix sparse warning due to incorrect
 type in assignment
Message-ID: <20161011113721.GA26944@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

There is a type mismatch between the buffer which is of type s16 and the
samples stored, which are declared as __le16.

Fix the following sparse warning:
drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
in assignment (different base types)

drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
[signed] [short] [explicitly-signed] <noident>
drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
[addressable] [usertype] sample

This is a cosmetic-type patch since it does not alter code behaviour.
The le16 is going into a 16bit buf element, and is labelled as IIO_LE in the
channel buffer definition.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Moved comment above declaration of buf array

 drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
index e0251b8..5355507 100644
--- a/drivers/iio/imu/bmi160/bmi160_core.c
+++ b/drivers/iio/imu/bmi160/bmi160_core.c
@@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
 	struct iio_poll_func *pf = p;
 	struct iio_dev *indio_dev = pf->indio_dev;
 	struct bmi160_data *data = iio_priv(indio_dev);
-	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
+	__le16 buf[16];
+	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
 	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
 	__le16 sample;
 
-- 
2.7.4


