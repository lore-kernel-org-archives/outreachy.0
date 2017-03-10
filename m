X-GM-THRID: 6395446243166781440
X-Received: by 10.107.16.83 with SMTP id y80mr5897422ioi.75.1489161761315;
        Fri, 10 Mar 2017 08:02:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls5818704otd.0.gmail; Fri, 10 Mar
 2017 08:02:40 -0800 (PST)
X-Received: by 10.157.7.193 with SMTP id 59mr7880378oto.148.1489161760872;
        Fri, 10 Mar 2017 08:02:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id g82si1811315pfb.5.2017.03.10.08.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:02:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so10728890pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 08:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RzXt6hC/ZPwdXbF3N9oFQtxkq9vxFU7epbUr2hsS5Wg=;
        b=KWQLOLwmqav4LV0YJVuYHPIEZn2OZirxy6Ed3gvZf65PtjPSL93fxCnUfKS1PWaV73
         48vxRPAVI/km9wO74x7ckDU5JtcY4HsP3kPBe2E/QRygvLseLjT2cF9R5uS1XbLuAqlk
         g/oJvrN9bcmSNQS+qptDj2TM6mxTpgA4HWn4zDpvkzRMqSbg+uqNbj7sENrCirItY+0b
         rdPfSxbjg+sMEtXmzl6duYRLOhyfZpwIiRPKeeJpgJEWJq2bYRELeRSz+OeSuLN+MoIx
         vnFcAc5Xtcq8ehH768EnDxIbSRIPJE5+MdMkYaSVYkTXFR8jCf8Z3/jNAm3pNy+ynsCv
         bNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RzXt6hC/ZPwdXbF3N9oFQtxkq9vxFU7epbUr2hsS5Wg=;
        b=YFYxg2JPu108jLQxYKJbF/AWpWVrQAoe40DvnGHrNaP9HACQI+VQlPSGHjvNo0DuaA
         N8+QIpPawMt/ChH5WNFORiRD0bdaCziPF1oGIK9OXPDMJTbEyWx7z5VNjg+dyDS/KyRt
         nxYk55FFxsFIcPhTDFGy/RR9v31vDOgqJI9qX6OWdCdvJPgcAF6CnTjLP7R6AwXWQavC
         gcIDYUrPJHNQfxTdyGw6MmIQnQWKtw545s2Xj7IDOzF1pZk3qumelxr0aEtgbWH1vn/m
         6XaOTTzSIEH8RtluryjUxd/TVNGyp8WhVcEx/ceGmpBAD6SKvh7o5EbIyzQ5Kcb1Rt5H
         W93w==
X-Gm-Message-State: AMke39mCEBx731iyknueNErWr/VWGT8Jdv6EnmKHPnxImooxEMHv7sM78KcOVrOukaX1tQ==
X-Received: by 10.98.35.9 with SMTP id j9mr21982756pfj.114.1489161760355;
        Fri, 10 Mar 2017 08:02:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.147])
        by smtp.gmail.com with ESMTPSA id o189sm19679815pga.12.2017.03.10.08.02.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 08:02:39 -0800 (PST)
Date: Fri, 10 Mar 2017 21:32:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v6 7/7] staging: bcm2835-audio: remove BUG_ON() in
 bcm2835_audio_open_connection()
Message-ID: <9a7fa27ac10ecc40160bbf8500b1d015d0988099.1489160830.git.aishpant@gmail.com>
References: <cover.1489160830.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489160830.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The presence of BUG_ON(instance) in bcm2835_audio_open_connection()
makes the next if(instance) block unreachable. The desired behaviour is
that the function should exit gracefully returning an operation not
permitted error value (-EPERM).

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

---
Not sure of this change. This driver is still in staging so maybe then
BUG_ON() is required here for debugging. The kernel coding style document
suggests that BUG_ON() should never be used since it kills the current process.
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index fa06bfd..8ab01c3 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -397,7 +397,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
 	int ret;
 
 	LOG_INFO("%s: start\n", __func__);
-	BUG_ON(instance);
 	if (instance) {
 		LOG_ERR("%s: VCHI instance already open (%p)\n",
 			__func__, instance);
-- 
2.7.4


