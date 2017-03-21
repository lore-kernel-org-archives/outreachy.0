X-GM-THRID: 6399496110666153984
X-Received: by 10.107.202.195 with SMTP id a186mr3363397iog.26.1490112276318;
        Tue, 21 Mar 2017 09:04:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls4606586iod.49.gmail; Tue, 21 Mar
 2017 09:04:35 -0700 (PDT)
X-Received: by 10.98.141.69 with SMTP id z66mr326563pfd.16.1490112275540;
        Tue, 21 Mar 2017 09:04:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si3552248pfx.8.2017.03.21.09.04.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:04:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so17888613pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1eKvGLk4IDxH0y+MrezDVuuh/ie2UK+f0s0GdzlWmE4=;
        b=fuE+fSJQROMHAhMyfJQ8PqHULT1nlK/DMnOPhLKbGAGxNHcFUy22HFZAH/KnTRMn7X
         FTQBGlMvg1w04qEfOmBqWvlvX8kRZp5L8O8r6UoW555wcEf/Wva0KwEcd8dU/QgmIWNy
         S30V+WNBjvKpyna1gkREwMeLiW++I/kLXLDEwT8tyrtG8pBppNXEt7zFjRuaDaFUDOzX
         c7Xg+mErXiQIOt881GiVucPL5UE6Gof/Immj7JdpNzEdYQ0hWHqQojMZHZIDcdH+sABd
         9ZHDZCby8cNulJEuzMdtQww3SC+ddJBiCVitfJcJRLh22+A5qOXvmyI3OUKYjfQceJo2
         sEkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1eKvGLk4IDxH0y+MrezDVuuh/ie2UK+f0s0GdzlWmE4=;
        b=KcnF30501v52eoPT4/WgUQVhPw4FtGXS4DV4fLj8r4xIk1D3CRKI/2fzSyobb3kibZ
         Q8gBaSowiyE5xQmo5MDGEobdYNhs2SKDDczi+FMHiM66RhOZ0QGCqd1Zho6l0lE419Xx
         WuSLFb7os6PlF7apZc6k2boiIJmENZkQp0SezogdX/DmiSHw1JYoNZ3FlnWrJgsW7PdA
         Rb/uj6o4aQs0IL5CrtUCn0/f5dlhMD5dG/PHhx7MH+FJe9XI2FqWEI/oN9sQ/WvSERuB
         a+A4uTCpOgxUIZUqqulZlN787yUq7AeGgnTIX1gJbtHvmz8NSAwAZYTuExLwDxNsstDd
         A/cw==
X-Gm-Message-State: AFeK/H2gF3esshzZOjfVRt2ViNdABHpqp4VAh1CjxgvFuTTxh2GnruONnYWpauVvsGmRYQ==
X-Received: by 10.99.94.195 with SMTP id s186mr39473438pgb.197.1490112275150;
        Tue, 21 Mar 2017 09:04:35 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id z189sm40699013pgb.3.2017.03.21.09.04.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:04:34 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [RESEND PATCH] staging: adis16203: Remove locking on raw reads of IIO_CHAN_INFO_CALIBBIAS
Date: Tue, 21 Mar 2017 21:32:06 +0530
Message-Id: <1490112126-30265-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

adis16203_read_raw does not need lock for IIO_CHAN_INFO_CALIBBIAS
since adis_read_reg_16 is already atomic and nothing else needs to be
protected.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/accel/adis16203.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/iio/accel/adis16203.c b/drivers/staging/iio/accel/adis16203.c
index 68189ad..14fe2d3 100644
--- a/drivers/staging/iio/accel/adis16203.c
+++ b/drivers/staging/iio/accel/adis16203.c
@@ -203,17 +203,14 @@ static int adis16203_read_raw(struct iio_dev *indio_dev,
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_CALIBBIAS:
 		bits = 14;
-		mutex_lock(&indio_dev->mlock);
 		addr = adis16203_addresses[chan->scan_index];
 		ret = adis_read_reg_16(st, addr, &val16);
 		if (ret) {
-			mutex_unlock(&indio_dev->mlock);
 			return ret;
 		}
 		val16 &= (1 << bits) - 1;
 		val16 = (s16)(val16 << (16 - bits)) >> (16 - bits);
 		*val = val16;
-		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	default:
 		return -EINVAL;
-- 
2.7.4


