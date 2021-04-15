X-GM-THRID: 6951428975234121728
X-Received: by 2002:a25:ba85:: with SMTP id s5mr5989480ybg.336.1618505682691;
        Thu, 15 Apr 2021 09:54:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:702:: with SMTP id k2ls2878246ybt.2.gmail; Thu, 15
 Apr 2021 09:54:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHgSawfxBiGNr1HLmnIGDfvUsGFSmYRig3BtgYHvQf5Oxu7j9nMwLSKHLq1uk1gooZbEOH
X-Received: by 2002:a25:ac48:: with SMTP id r8mr5971631ybd.488.1618505681836;
        Thu, 15 Apr 2021 09:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505681; cv=none;
        d=google.com; s=arc-20160816;
        b=0GFjnUP2YRLbVRVlZ4LkyeH+KlEzxBFw2tG+3ktVVS2gv72CAnb8tLnwwF3ZPHyNGs
         wNS8BC1Y0DDWoPI+iEdXn9F3XYqopdXIyZr8kBZ1GZUfoX7kHCTyp9dXge45sl04ZDHJ
         Z39orNxsfQabqcnB6Y43YjhqhYCEYgz//OCkgrCb72ZnYls7OML/fKgNwZ0/JFO7lWz1
         6hTnv/YNjq+JLFCXo/BaiDjA6Vss+oVOfJdvOJJ5sFLxiYkgEEia2fIq+LDixuRdV4Ru
         JbBqU7xW+6rmiEndsLe6jRdwwT2+4JE5/NTucycWuIwoHvoC7gth7g8hK0px6TzvtmGC
         ZIBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fR/xSrCM/HXuA5hfHE8+/OAjFdohjbHZ5jP2nSMBAdE=;
        b=p0+3n7oM7wSA0cgNJe6ck/bkcodONr5ZkDhOBmsa3jleMXDibMA5ljFOyo+yxG74EI
         GdVV4Ik90TP5x9ROlpoCentQj3/hKOoN94mUo4pgSmAGpJfwc5IVtzmmS82vmRTidA5B
         Rot/QgRX6mVmHsOGwj9VYmI8+g1xGpwXQ7g2C9zPR9fyzR7TpzeW1Z94mlXeymqeP61k
         mz8SK8iSkMECiMLJbfjhhQQUlV7u5Dz5rFlrfYeFLCJeYZv2XK2NfM6tFWXZcFcZ+pRx
         s0hHg7ke4VJBSXmKWWNtuN+YLLuwXTbcLvIf3Hjubk6bFfqcZG3yToKHeJ8RvveuY/e3
         +iuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ly1ZFEkH;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id t17si311531ybi.3.2021.04.15.09.54.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:54:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ly1ZFEkH;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x730.google.com with SMTP id q136so4959060qka.7
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 09:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fR/xSrCM/HXuA5hfHE8+/OAjFdohjbHZ5jP2nSMBAdE=;
        b=ly1ZFEkH3Idb9G5huOwqD5wG1MLCgXGaiyWPzbx89bALJKcD2bIr11Jt4E5v9VNWOP
         ++CD5FyssgkVeBJNAP16TCyRuxW82Cd8JMZ3VOrlkWv2EpNDmiHy8wmCio0YdcFonbCh
         04ydqyC0bqjWECpcHPj3pbIr/jiKbA9W8XOF37nBwPwYSrjMQQB7QYyNnkShkmOkafsC
         1XgVBFPdBzmotToKrYgjxBLfnNZO4bc7bCSuQ1uas3BavxfzksPXlLkVV1oMSNGwMwv0
         CAcgqrB/u+Mln819pqzIORJ4t/eHcn7URY4TruBTVz0QvKNgPoQO9+6M9I0XOCfwK1ml
         oTIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fR/xSrCM/HXuA5hfHE8+/OAjFdohjbHZ5jP2nSMBAdE=;
        b=MZWJuSIiUSBuyCdixF4TGKF0gXTCGZHTmnPrjKj6fCAlFczQNaZSt6ku9L2g9HICsE
         LgVONh/vcC5gWu1nCENrSB7j66vToAw8HO10NxSKdZAO2TiYi13yHg8/stWKriI0eJ/Z
         pY2mMIdKSKbIJsXja8k1LQIM1uKS6GLoZw/EpfvzvePBxGMrwVwQwYpTBfmbca2SagDV
         khFi2Cxs2erpQ6YN0k5FiUCKle5HvDHDJBjtDitaVHh8HlMheQYyQWvFSvgtHu2fqPf+
         Y8cUG+SaKVxuzSTOqm6+TG6zisDpkBhj4BN4VATFgT2kXdxder5lUwnKPquKd2Q17OPN
         bMxA==
X-Gm-Message-State: AOAM531uca4qlfLA3jM4Ks3s94ktj+KDe3nDVG/xsie43LuWgyHi/32H
	03unDeJ/M+e72POq3T9a6Cd+NakviEg/5hHn
X-Received: by 2002:a37:8743:: with SMTP id j64mr4210752qkd.299.1618505681316;
        Thu, 15 Apr 2021 09:54:41 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id 8sm2358598qkb.32.2021.04.15.09.54.40
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 09:54:41 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:54:38 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: media: atomisp: pci: Balance braces around
 conditional statements in file atomisp_v4l2.c
Message-ID: <ed214ffbf6c8866bfa55d4aab1655ec711174c67.1618505476.git.alinesantanacordeiro@gmail.com>
References: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Balance braces around conditional statements.
Issue detected by checkpatch.pl.
It happens in if-else statements where one of the commands
uses braces around a block of code and the other command
does not since it has just a single line of code.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 6d853f4..948769c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -1500,9 +1500,9 @@ static int init_atomisp_wdts(struct atomisp_device *isp)
 	for (i = 0; i < isp->num_of_streams; i++) {
 		struct atomisp_sub_device *asd = &isp->asd[i];
 
-		if (!IS_ISP2401)
+		if (!IS_ISP2401) {
 			timer_setup(&asd->wdt, atomisp_wdt, 0);
-		else {
+		} else {
 			timer_setup(&asd->video_out_capture.wdt,
 				    atomisp_wdt, 0);
 			timer_setup(&asd->video_out_preview.wdt,
-- 
2.7.4


