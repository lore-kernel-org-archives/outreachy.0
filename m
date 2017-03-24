X-GM-THRID: 6400988055125098496
X-Received: by 10.25.153.74 with SMTP id b71mr1005169lfe.23.1490346168518;
        Fri, 24 Mar 2017 02:02:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.209.137 with SMTP id i131ls149061wmg.5.gmail; Fri, 24 Mar
 2017 02:02:47 -0700 (PDT)
X-Received: by 10.223.176.227 with SMTP id j32mr435727wra.17.1490346167459;
        Fri, 24 Mar 2017 02:02:47 -0700 (PDT)
Return-Path: <anaradilovab@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p144si118189wme.2.2017.03.24.02.02.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Mar 2017 02:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of anaradilovab@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anaradilovab@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=anaradilovab@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id n78so813227lfi.3
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Mar 2017 02:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DdXQRWsntEDBor0bkKB06YdAOPm8GCZnyVMoVnw9t90=;
        b=V+YbCaNY8qdFvwpORSGroQjItITt4eJOWEQebJ/84NRr2ab06Wlrc5L0/MJo2kXgxJ
         yFcQGh1pcs/ePgn6TOOXBNCZuIt4eKwqFvsyzwj3PdLqN3QgmFagbeYP1rjnhay2CRDi
         D2yrXqF28xDOz4D83wp/URsYqGMFrY/0HgQtv8QC1/y7fMULzOaqKrhAsGDd8QRuclAu
         psde5fTQ6mFB4MbnJmJ94aanIBvHXfQfexcJYaSj2t8lHtevtW3OCLOavw1LyVjOfIXP
         QmK4pxtBDWKHKN/OqBC0jwkkSwcfwpDBNDXoeDWjUeuUyoacFAJwN695KL9XRj/DzIwU
         FONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DdXQRWsntEDBor0bkKB06YdAOPm8GCZnyVMoVnw9t90=;
        b=G0B3Ch8hND2aSnmBohB3UUOlZa+6CsB8eRPTHJnfH0LR4o8Fw8vb31wLxUQYAm6II5
         gKpMwtkfcwN/bT2GW1LH2qkq7ENSlGC1Db94AXn2qMEWQTx/DuPafig5naYYDsgJwBvR
         A6pWBMyHPRFMkMrvdp3FIVGUjyOBqHbA3IfP35o1aeZvY4nGGIsdZSddrrPmmIlfBSYG
         fW73l/rvnd3gSyan7dojD9M1BRWZpWPBu07i9kh2gDVRxMmUsrpezfXLxxmOI4rVfaqG
         2iQQ65DKneuUdVu3rJtC6LfF7esOQSOQfjcRonwQIPrNya/bP4vs/lehVCL1fFae5Gut
         fWkQ==
X-Gm-Message-State: AFeK/H1NVJynE0NmHVFwKUUh+xckgWDit9U14DNBETGQmsrS+PkS6rDrAz5i0m6VA6CyyQ==
X-Received: by 10.25.149.74 with SMTP id x71mr3903482lfd.100.1490346166965;
        Fri, 24 Mar 2017 02:02:46 -0700 (PDT)
Return-Path: <anaradilovab@gmail.com>
Received: from anar-Lenovo-Z50-70 ([178.91.253.103])
        by smtp.gmail.com with ESMTPSA id 2sm259755ljh.57.2017.03.24.02.02.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 24 Mar 2017 02:02:46 -0700 (PDT)
Date: Fri, 24 Mar 2017 15:02:45 +0600
From: Anar Adilova <anaradilovab@gmail.com>
To: thomas.petazzoni@free-electrons.com, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: fbtft: Fix checkpatch warning
Message-ID: <20170324090244.mit7ciqsq6t2z35r@anar-Lenovo-Z50-70>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-08-21)

This patch fixes the checkpatch.pl warning:

EXPORT_SYMBOL(foo); should immediately follow its function/variable.

The EXPORT_SYMBOL statements are placed inside if blocks, after both function implementations.

Signed-off-by: Anar Adilova <anaradilovab@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index b742ee7..d2e3e8d 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -284,6 +284,7 @@ void fbtft_unregister_backlight(struct fbtft_par *par)
 		par->info->bl_dev = NULL;
 	}
 }
+EXPORT_SYMBOL(fbtft_unregister_backlight);
 
 static const struct backlight_ops fbtft_bl_ops = {
 	.get_brightness	= fbtft_backlight_get_brightness,
@@ -321,12 +322,13 @@ void fbtft_register_backlight(struct fbtft_par *par)
 	if (!par->fbtftops.unregister_backlight)
 		par->fbtftops.unregister_backlight = fbtft_unregister_backlight;
 }
+EXPORT_SYMBOL(fbtft_register_backlight);
 #else
 void fbtft_register_backlight(struct fbtft_par *par) { };
-void fbtft_unregister_backlight(struct fbtft_par *par) { };
-#endif
 EXPORT_SYMBOL(fbtft_register_backlight);
+void fbtft_unregister_backlight(struct fbtft_par *par) { };
 EXPORT_SYMBOL(fbtft_unregister_backlight);
+#endif
 
 static void fbtft_set_addr_win(struct fbtft_par *par, int xs, int ys, int xe,
 			       int ye)
-- 
2.9.3


