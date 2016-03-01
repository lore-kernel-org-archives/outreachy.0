X-GM-THRID: 6257158121021505536
X-Received: by 10.182.29.129 with SMTP id k1mr17785143obh.23.1456858152180;
        Tue, 01 Mar 2016 10:49:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.82 with SMTP id p79ls1757335ioe.23.gmail; Tue, 01 Mar
 2016 10:49:11 -0800 (PST)
X-Received: by 10.98.1.85 with SMTP id 82mr18072170pfb.1.1456858151464;
        Tue, 01 Mar 2016 10:49:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id y20si2608442pfa.2.2016.03.01.10.49.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 10:49:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id bj10so47883016pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 10:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bMbinsdcEH86URcXtrxcS9ZrTgO44/JSw6PwV9HO9aQ=;
        b=HvElf8cNBayrMwEc3KryX4KzWttJmpYXfZHUjcTfMTfQD9BHkJLqZ1xdAWfIjS5UXH
         xt/niPOWJnr36XFr2RCDDuuNkcpt6mqfFpcul3HvPM282Wery/md2QsgKZEHfRzvpqsk
         KSa1edOT0MMswZ13K0P6WNr1Jm3+Mp6DjL47StEsc+/k7kk+4XVYjgs/r/gUeav9ZZMG
         8/FkYMe9Q6bQssxr71bvSkdhZWyFCT3oakk7O2tKxlKz/5atE/XxvONkVnI/aTqV7hXM
         TbnSCvJ8x1xIPu92QRVmIJVg9unsZcTNLa7kF7C41q/4smuZbZ/6YNQRoB12YXzLs/pF
         pQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bMbinsdcEH86URcXtrxcS9ZrTgO44/JSw6PwV9HO9aQ=;
        b=jf4bs0+EGTE7epZSD7MZsNqelPDxRruDm91egQ2CJxxYMGWoFf7Ny+8Y88pNvKm6Mf
         +5XggGBErHScP678LQQoiEN4NPcfd70TR3JcY5Vewhljx7f9EpCqVu/Hw9IUWns395nE
         KNz1bZ0YWfStwHFsqf17BaDs/MWb1iOQTYp54pX0ZcU4v/2ODARBxf1sqbi7eAygEXDV
         uC8P3v6oQ1Cpc7lwFgijvCs5QL5a/LIA/gNl5pHoD4VtbbLJ2DrTc9Y1NInSgCtp8sST
         ObD9YY75ia6JATysMX+UV64AuauQ0m5LgJuIvllK2WSuyL8Jixs/S6mkvba98zmFDYgK
         0HWg==
X-Gm-Message-State: AD7BkJLN8B7NIcEhuF49UnQ4onSnkSIbj7nzIgEdsfTShNHgxXj6Mx5ja2xX9oic2pVbgQ==
X-Received: by 10.66.120.202 with SMTP id le10mr31888937pab.155.1456858151338;
        Tue, 01 Mar 2016 10:49:11 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.159.79])
        by smtp.gmail.com with ESMTPSA id p5sm6557056pfi.94.2016.03.01.10.49.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 10:49:10 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 02 Mar 2016 00:19:00 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: iio: adc: Replace memset with eth_broadcast_addr
Date: Wed,  2 Mar 2016 00:18:59 +0530
Message-Id: <1456858139-3318-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use eth_broadcast_addr to assign the broadcast address to the given
address array instead of memset when the second argument is a broacast
address 0xff. ETH_ALEN is a macro with value 6, so 6 is treated as
ETH_ALEN if it is the third argument of memset.

Done using coccinelle.
@@
expression e;
@@
- memset(e,\(0xff\|0xFF\|255\),\(ETH_ALEN\|6\));
+ eth_broadcast_addr(e);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 1e85657..c2b5d21 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -225,7 +225,7 @@ static int ad7192_setup(struct ad7192_state *st,
 	u8 ones[6];
 
 	/* reset the serial interface */
-	memset(&ones, 0xFF, 6);
+	eth_broadcast_addr(&ones);
 	ret = spi_write(st->sd.spi, &ones, 6);
 	if (ret < 0)
 		goto out;
-- 
1.9.1


