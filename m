X-GM-THRID: 6616324708763697152
X-Received: by 2002:a17:906:f0f:: with SMTP id z15-v6mr442040eji.0.1540483140799;
        Thu, 25 Oct 2018 08:59:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fb93:: with SMTP id e19-v6ls1223523edq.4.gmail; Thu, 25
 Oct 2018 08:58:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cEq4qyTqEZvPaNy2l9v96yNDLvZGWNTeB2o0u3SX7dE4ZvvklLyqR4w/jdl+rFavduYZw+
X-Received: by 2002:a50:e70e:: with SMTP id a14-v6mr531800edn.11.1540483139864;
        Thu, 25 Oct 2018 08:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540483139; cv=none;
        d=google.com; s=arc-20160816;
        b=PYUDLqqq9PJ+bfq+lErSeduansdJiLvv83Sgsc+DIG0CUcy0M1kCTv2Jynxgl+ZghC
         R/XRcz0sUQrj/RkG+TocDEbSdJ5QWs0qHSbYmPh+2Hvhw4p4rBlf5GAz1p9UINER98Qv
         VCQOP+aN95txIms2o4H8HPch3P28stWhZbz5adKfOzpc98ts2kBwP4FEiDis7Mb1wsfV
         P9LXO1BE8UnPdYyN2EQHPoWxifEyDwACbipujE9P95EsiFfc0xr7eAyn2TYQeNEzAeIc
         +sYZOtcC6sAxsKBt8rpZmpolWSGjgQuWlZRR17m/saKaPMETEFHxBcwIlUjGPtUaWFD6
         0RsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Fe1t/RXf9Fme9Y6s8QB3f3GOu1zd5SMWhl97/H62BNk=;
        b=n/DFwfUg3lm6X+/ntNHLCoeLnwjf0f+YseiXq0jY1iZOuOCgExinJ5ZHc2Cx/asc2m
         dcBTPeonJ2x9cSP2OBmt2parudxzC0Vymp2EfMAxWTSPoXZIEPW/RQKqTx49O+G5NP8d
         HSxQ/GBQJHQcY92Y+vBG89J7e3OhH3M9RDcmCGdfBZWZPj+vYItkluPjhuwpsawjheam
         TPlMAOZjN0eKLLj/X7hMOVmGhyidfiZ5wVnNdoqsevfI/tM5eSsgb7a2sp/t0TvKT6tG
         ksIIlAfdc/i5OVuO472r9q1ZAI/nfUCt1l8LpqkHfNjGfTs8MzTvbFkjw2xa5t4BuqbU
         TNpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DRzqrO0w;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id y16-v6si393971eds.0.2018.10.25.08.58.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 08:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DRzqrO0w;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x433.google.com with SMTP id n5-v6so6105121wrw.12
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 08:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Fe1t/RXf9Fme9Y6s8QB3f3GOu1zd5SMWhl97/H62BNk=;
        b=DRzqrO0w5tu3pdvx/irzixa7UeQmE2i5tWuhu4hDvkufb4aT32wTuCa7yepOu8uuz/
         ouIYaVBCzvXeAnPbwm77enT7EwPqvVBh6zmVFZdtkEq1q+7Mw9HhfaES+CincDnjTpMR
         MmKGqpnpULNwZ/k44vePfrPd4V2kDjRLAuvNH8g3/Bp9ETI6V25/w8V1nggXCiuvRSGf
         q2NHdtXjO0C6pWX5RZCPrSWIEJSeOStWM3CjZeHGoQexUMPGO0mfzTFzB1569Jf1xtte
         cJvfPfgyO9WQJRiimBi3rrW9JJ5e1wNJsd41SGOceaZUvbRHDLuzDzK/N7DJPwJUJtur
         JZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Fe1t/RXf9Fme9Y6s8QB3f3GOu1zd5SMWhl97/H62BNk=;
        b=ArO3fCogWAwZlv4oq2eOLZT/v/2gaslPIP+eaCulnTSjswbLXjKxpbQmKx1vgWMo0R
         CGDjclkfurv6/DfPP+hk6te9rDmb5rWAZfky+BpGtXUWCSukUNnaLYYvfantCmWyYq2A
         DPC64yeQ/kQ/eh7jaHVqMrAbrxnhrpiD2FDTmARGU1x12IKGdz7vxhHcH54m25QmXRch
         Se1CmeHZ9/3PAkyAh/nQzbVwJjWjeFBWdEM+BdjwJK554NDom98WDHhDtl3H8urzjRQM
         fcSwjbBUjfgJ/B2llsrdaWMYripqdZkpQ/LeGQxgY3SoP57W+1IUiY5sc7ubToqaxSca
         c8/g==
X-Gm-Message-State: AGRZ1gLl2nwZBUC1ZGtIIvHYbw683BPPNuBdtNu+3/maPM7TzCGhS18A
	0YQPB6RzGaK3KJBaRxArSNi14jJL5ho=
X-Received: by 2002:adf:ce86:: with SMTP id r6-v6mr2644886wrn.258.1540483139109;
        Thu, 25 Oct 2018 08:58:59 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id b143-v6sm2734458wma.28.2018.10.25.08.58.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 08:58:58 -0700 (PDT)
Date: Thu, 25 Oct 2018 16:58:56 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Align function args overflowing onto next
 line
Message-ID: <20181025155852.GA6089@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Align function arguments overflowing onto next line to beginning
of function brackets, to remove checkpatch style warning.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index e27687719d1d..7ed66d171f24 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -879,7 +879,8 @@ static int rtsx_probe(struct pci_dev *pci,
 		 (unsigned long)(dev->addr), (unsigned long)(dev->remap_addr));
 
 	dev->rtsx_resv_buf = dmam_alloc_coherent(&pci->dev, RTSX_RESV_BUF_LEN,
-			&dev->rtsx_resv_buf_addr, GFP_KERNEL);
+						 &dev->rtsx_resv_buf_addr,
+						 GFP_KERNEL);
 	if (!dev->rtsx_resv_buf) {
 		dev_err(&pci->dev, "alloc dma buffer fail\n");
 		err = -ENXIO;
-- 
2.19.1


