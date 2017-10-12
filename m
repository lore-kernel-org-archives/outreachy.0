X-GM-THRID: 6474128496939499520
X-Received: by 10.80.139.209 with SMTP id n17mr1032072edn.10.1507839989147;
        Thu, 12 Oct 2017 13:26:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.241.28 with SMTP id w28ls2267226edl.6.gmail; Thu, 12 Oct
 2017 13:26:28 -0700 (PDT)
X-Received: by 10.80.202.69 with SMTP id e5mr1041111edi.0.1507839988266;
        Thu, 12 Oct 2017 13:26:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507839988; cv=none;
        d=google.com; s=arc-20160816;
        b=MSHyizBQ6Jx7vIjZxNiykIBJJUcS/x8cP4FlBC/o4r9gK/+tmGf/QTz1B7gtJhXNzb
         BleqN1aZrnA/H67SKcZSkpmecC/0zZcGxMl00ur4UmKFY9nTrSnIiF+qm6gMMHZUz0nr
         1h92vmcQzs6BSgVslngGxAKFAJ0WyU1Y8hcmYQr0gDa515zxQOSX8WUU5oq8EbEigJZz
         Gps7nRFxBFy3cYsGRiXDDPRRPaLEfFahE2m//+TcbyZkV//++J6zzJ54VUzEMaOo4yTp
         uYXKthnBMMuSX6L4P9qtE9UXXQuHsFiZgND1Vqop+t1WLqxcnzzx3NP2ZXtovvVPIjfx
         inVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=bWnSe63KJrk4NASpKSIUq+Itu8PjuPs9jdmYbKFOqog=;
        b=HpR+2u+AGOXzMjpFJ9aSIYLCEE+RkzngO4QpFpCjo1wPMLiJC06h9jMPWxNuZ9kC5U
         c0CvO4RGRuKJihue+vBI2W4Yf3KfscQmK8Gz1Mxc7PIG5VQYyJ3JVzgMChZidaPNHoj9
         IeGaBizUtfWPvoBCg5ltpy+ONGJqIFTr9JmU6iVgi34dBPLa1uzyPA5Jp83zosmcaTHS
         tQWeL9rZ6uPYyMEG0j7YsdpOJStlHLf5oAb42JKY1TrXOE2KdXkwEf5VvcjExkrGbSPB
         v4fwoy8mcj2B3HGJ4IatACNyciFFq3+nhaTqyH83YadDwrRiZSIT+s1XVSSc5Xy0m0Xf
         XvPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALL0uyHo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id f9si324510edm.1.2017.10.12.13.26.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 13:26:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALL0uyHo;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id b189so4573149wmd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 13:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bWnSe63KJrk4NASpKSIUq+Itu8PjuPs9jdmYbKFOqog=;
        b=ALL0uyHo4gmfeWPa9YfUtSFW4+/HZI1q7Hd/zTo1bIDrHMd5Of+7gdVca29ygnWR5b
         XtXEjXrBaNsG007+472Lho2i5TC7C9nBg59UvCio6QFyYEW2+twtv0Rovw2K7DfUaSfE
         T94HEKNsUck/gjyip/J+oohcjZLfIKlbfzEUG4QzLUly5gAecBMpYyW7V3es7opdJJhc
         +eq3e+TefHmMG7zyFiLIepRkDmaKJTpqT10rb2A2B1Q3nq830s+kAHT8kFh/ecnuUsMf
         aBTLK3wucUcR8k2XX06LgN2G4btgoPwqTM5T5K4iFof0j+HAUEdmarudcZRPovGyfHb8
         UdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bWnSe63KJrk4NASpKSIUq+Itu8PjuPs9jdmYbKFOqog=;
        b=DPOqteGmyiZgzmDtqdwmhwwp2oh+O2kxakhR3FeIRWnzk2QTK740RTEWSqoTebtg0M
         N2++xktysqHiM1E2ByHmBnrVY05BgPUEqYwav60jH+4y7TVwHICh1Jj9lYXWnlpWleP6
         u41HY48lEyDv2otlnJms/tvqn3bpkZG9MTpso40qFnT/Jjafo50iNkXiPoVP+yI7PH8d
         MjgLgKnx6QxLx4giNgCoHCKpDEOx708Xr5/XBjmvUJI0vP5T8hqqPASrLXs2ksmotzrH
         cQRlfz/0l6KViWxRM0uE3M2vLm8HTqb70aXKv8WWvp+AXAY24kr6AdBgeuGP5Nx+Kp5y
         nFxQ==
X-Gm-Message-State: AMCzsaUI9hObVyF7DSs1qQ5uIVteFnlb90gTIhCIcEHe+SXXZNP3ZdG2
	5yEP/tck3q/ywa+Zft5thWA=
X-Google-Smtp-Source: AOwi7QBYQ6LdbhupsVnXHGzUuwJo/OSNDy4cBgr+rnxjhAiKqcfGPKgWogZyvO9aSwgaeeOIvgtigw==
X-Received: by 10.223.141.139 with SMTP id o11mr2948558wrb.20.1507839987978;
        Thu, 12 Oct 2017 13:26:27 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id c4sm2272849wrf.43.2017.10.12.13.26.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Oct 2017 13:26:27 -0700 (PDT)
Date: Thu, 12 Oct 2017 23:26:26 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8192e: Use __func__ instead of function name
Message-ID: <20171012202626.GA25395@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use identifier __func__ instead of the name of the function.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
Changes in v2:
        -add newlines so that the modified code fits better into 80
	 characters.

 drivers/staging/rtl8192e/dot11d.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 017fe04..c97262d 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -128,12 +128,16 @@ void Dot11d_UpdateCountryIe(struct rtllib_device *dev, u8 *pTaddr,
 	pTriple = (struct chnl_txpow_triple *)(pCoutryIe + 3);
 	for (i = 0; i < NumTriples; i++) {
 		if (MaxChnlNum >= pTriple->FirstChnl) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........1\n");
+			netdev_info(dev->dev,
+					"%s: Invalid country IE, skip it........1\n",
+					__func__);
 			return;
 		}
 		if (MAX_CHANNEL_NUMBER < (pTriple->FirstChnl +
 		    pTriple->NumChnls)) {
-			netdev_info(dev->dev, "Dot11d_UpdateCountryIe(): Invalid country IE, skip it........2\n");
+			netdev_info(dev->dev,
+					"%s: Invalid country IE, skip it........2\n",
+					__func__);
 			return;
 		}
 
-- 
2.7.4


