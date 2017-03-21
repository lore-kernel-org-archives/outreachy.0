X-GM-THRID: 6399483181164134400
X-Received: by 10.36.94.204 with SMTP id h195mr119291itb.35.1490112250704;
        Tue, 21 Mar 2017 09:04:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.1 with SMTP id a1ls10934963otd.37.gmail; Tue, 21 Mar
 2017 09:04:10 -0700 (PDT)
X-Received: by 10.129.88.85 with SMTP id m82mr17369258ywb.97.1490112250224;
        Tue, 21 Mar 2017 09:04:10 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si3421195pfb.7.2017.03.21.09.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 09:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so18801208pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 09:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/A7YodLc/PSBy3iuF5xAfKDwcsFgQ8OdFyueDsn65Vk=;
        b=E2lkm64LS1ICB2CbStpqF/9bsht9ZWDF8APvdY2D9uw9GgAF/O3RiS5UzaqFuvoy52
         fh/rxoCBvq0EX3KG83f2Pv3WR8WzApSa+AWBw2pQMv7EQwBDU0v7kxJdKhT8WlWEt0IP
         eszP7gVgPsBUSSbwRKaipY/B4cEKnRWnsyFZhkOBG+EBkkuAKDyqnhouCk3yLV2MXDKo
         Qlp32TRlUlDPAUYSsHrzLQX8/qSWkhqsspzBFMC+YYUXKN8sJkihms7PVAhTHE7v7nng
         fWTkunNk9m2JIq5aOExDqFcEoqEeXGbXVWNJ8Nc5v3HiBud/a5A0KGcY1i9NWENmHGue
         Oa/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/A7YodLc/PSBy3iuF5xAfKDwcsFgQ8OdFyueDsn65Vk=;
        b=q9K3qYCHM7qIkw4hlaA4p8dOEpQxIjf6ec1G/o0Vl0VkfIKLyqQkAVqor+CWPLhy1R
         cEtAZDR4jjoAFvQMeyEFXEIiKfzl0W2HEbLPuilllWR1NSaSKRdoxLVNcKIH2jh+1Nb9
         nKp5AEbx+jAZOoQdPblCNULPoj1eceynIX6fUgBYrONBb1ZCTIQ7YjWhHIFGOyiU2sfR
         GKm+k0jQAPrNcQogCjNmRcyBI6JXhBxbpRRppG790N5H1rS1Y7bfEEA8IK0fYmU48Y/h
         nz7ryPov96ttoDK9YjnOVdxhC4b4enl4BnQE4S7xPTrd19T63XkYm4gxLHF/ei6CU88r
         x3jg==
X-Gm-Message-State: AFeK/H2fOkm2WgzmyT9z7SePbKaCauojpDTvSHhbM9ak0fY9TTglJy8/fr99dyH1WnBqRw==
X-Received: by 10.84.130.66 with SMTP id 60mr3684058plc.115.1490112249949;
        Tue, 21 Mar 2017 09:04:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id l126sm6693009pfl.56.2017.03.21.09.04.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 09:04:09 -0700 (PDT)
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
Subject: [RESEND PATCH] staging: ade7754: Replace mlock with buf_lock and refactor code
Date: Tue, 21 Mar 2017 21:31:41 +0530
Message-Id: <1490112101-30192-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The IIO subsystem is redefining iio_dev->mlock to be used by
the IIO core only for protecting device operating mode changes.
ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.

In this driver, mlock was being used to protect hardware state
changes. Replace it with buf_lock in the devices global data.

As buf_lock already protects operations in ade7754_write_frequency,
there isn't a need to acquire the lock inside ade7754_spi_write_reg_8
when writing to the register.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/iio/meter/ade7754.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
index 024463a..eb03469 100644
--- a/drivers/staging/iio/meter/ade7754.c
+++ b/drivers/staging/iio/meter/ade7754.c
@@ -29,6 +29,15 @@ static int ade7754_spi_write_reg_8(struct device *dev, u8 reg_address, u8 val)
 	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 	struct ade7754_state *st = iio_priv(indio_dev);
 
+	if (reg_address == ADE7754_WAVMODE) {
+		st->tx[0] = ADE7754_WRITE_REG(reg_address);
+		st->tx[1] = val;
+
+		ret = spi_write(st->us, st->tx, 2);
+
+		return ret;
+	}
+
 	mutex_lock(&st->buf_lock);
 	st->tx[0] = ADE7754_WRITE_REG(reg_address);
 	st->tx[1] = val;
@@ -430,7 +439,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	if (!val)
 		return -EINVAL;
 
-	mutex_lock(&indio_dev->mlock);
+	mutex_lock(&st->buf_lock);
 
 	t = 26000 / val;
 	if (t > 0)
@@ -451,7 +460,7 @@ static ssize_t ade7754_write_frequency(struct device *dev,
 	ret = ade7754_spi_write_reg_8(dev, ADE7754_WAVMODE, reg);
 
 out:
-	mutex_unlock(&indio_dev->mlock);
+	mutex_unlock(&st->buf_lock);
 
 	return ret ? ret : len;
 }
-- 
2.7.4


