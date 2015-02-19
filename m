X-GM-THRID: 675560816640
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3e77155b76fea8d3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.191.65 with SMTP id gw1mr3812397obc.40.1424343073273;
        Thu, 19 Feb 2015 02:51:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.198 with SMTP id zu6ls182207obc.44.gmail; Thu, 19 Feb
 2015 02:51:13 -0800 (PST)
X-Received: by 10.182.39.169 with SMTP id q9mr3942696obk.33.1424343073091;
        Thu, 19 Feb 2015 02:51:13 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com. [209.85.192.177])
        by gmr-mx.google.com with ESMTPS id f2si2855405pdg.0.2015.02.19.02.51.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 02:51:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.177 as permitted sender) client-ip=209.85.192.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.192.177 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so8102387pdj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 02:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=A9K1MjLgMmrADd1Jq519yaD8S3bn8wjEUVdlPn9ozGs=;
        b=IRcOVGkeo8SyVq3ycZLF4kikQC1m2hnRRrYfifiQqr2x8Dp6OsUg2+0ETEU0hZ3kNZ
         puQ6GuPqtcitmMmGhNFoIpXsDYH9BTaZAHdDACVZi6vdZu9v+7mOzdqC+2iB5sLsThd1
         H2eYEcxIKocrOuXkCdcC4O0g+QQXpXChADKe5lesTRtRJNMXsHqitq+UNLHdeaTUKIN/
         g3t1M8mQEL2tM/z3Qv8PQ21xn4l954LYLMRfqVmkch8pRJCygFsIZsWsaNJxslaen8CZ
         13GLWJlAPlj6ABOJ4FRAZ4Vv2JpJPCIejeRKbMe9P/gN2JOdtgMcSeJ8naPONQbXIJbT
         bCSQ==
X-Received: by 10.68.69.40 with SMTP id b8mr6737574pbu.88.1424343072942;
        Thu, 19 Feb 2015 02:51:12 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id px9sm7155119pbb.48.2015.02.19.02.51.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 02:51:10 -0800 (PST)
Date: Thu, 19 Feb 2015 16:20:55 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Remove unneeded void return
Message-ID: <20150219105055.GA29289@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove return statement from void function.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/tlg2300/pd-alsa.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/tlg2300/pd-alsa.c b/drivers/staging/media/tlg2300/pd-alsa.c
index e23f437..7a07a1d 100644
--- a/drivers/staging/media/tlg2300/pd-alsa.c
+++ b/drivers/staging/media/tlg2300/pd-alsa.c
@@ -195,7 +195,6 @@ static void complete_handler_audio(struct urb *urb)
 	ret = usb_submit_urb(urb, GFP_ATOMIC);
 	if (ret < 0)
 		log("audio urb failed (errcod = %i)", ret);
-	return;
 }
 
 static int fire_audio_urb(struct poseidon *p)
-- 
1.9.1


