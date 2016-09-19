X-GM-THRID: 6332014923786223616
X-Received: by 10.36.69.36 with SMTP id y36mr3347818ita.27.1474287243840;
        Mon, 19 Sep 2016 05:14:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls10131730ott.0.gmail; Mon, 19 Sep
 2016 05:14:03 -0700 (PDT)
X-Received: by 10.200.45.85 with SMTP id o21mr4140105qta.54.1474287243544;
        Mon, 19 Sep 2016 05:14:03 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id d184si1695490itg.0.2016.09.19.05.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 05:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id my20so3940021pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 05:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=axiwmc+loDU0B4pjVv9230pZ35xoCUaePhdRuikQn1M=;
        b=fabzjDZNNuO/noFfbjMKQ73fnJ/tCboncbwgq70dts+ew3Vp3wvFXTNbzPkVN8y4kM
         Z8btfsqBHdW8U+6TJs+uzyD8d7BvT1smskWMsnyfm3jALLuhTY/IB6wXo572Gsd6pcgw
         pGuVH17QR+r9bbm6Ex2Wke0tuQA57OXIecGlIIsi8CURzttsoHZG2nh2GwKsYXvcyetE
         hDX2rU0YLnGDYvy3oF/Cq3eqos2d88GvSDJXR+AJxxf+igdMYbw9prrcNOB0tPpur4nt
         GNBwNZKJIgyy2OC7NXRLfrjRwrCEUBcWOf7EnOiTFstLbkguLJK1wToFQvP5VZf1nUCI
         1TBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=axiwmc+loDU0B4pjVv9230pZ35xoCUaePhdRuikQn1M=;
        b=BzzzYt9gDSc6BDlxawhIP88cFQ20VM53fc1C8eYTLpyPpWXeqvR4llFNx8MhXpsvW2
         TDYZwhOAq8wXJJ1CfMw6294DHz/uY+ubx3yZVmhIWdpqWDiiEP66gxLgSZCSzLC7hnDU
         JYp8Iu9QbrZycLsvlAzxwX2kSzuwNiR2dD886DATTl0coxPYiLkoLM1kgGsWtdvHmwaZ
         WP5+4z8Lt3h0GfPKYfJaY1OwUKb50qfCyAgFnyng/JWyTHRnXKQJVHyd42e/M90dWyul
         M/wQHAcyxwf15RCWnfi75n6UJlnyX4fmPwv8PJI3Ggo0CFkTSnr5WHl4ZRW6BTLat7oI
         aZMQ==
X-Gm-Message-State: AE9vXwPq3k/qR0vDcLh80763/mi8PorSxM/jHOC5hPojf7caIjYYAGnrzLG7D4kiTsF1Ng==
X-Received: by 10.66.127.38 with SMTP id nd6mr46339844pab.74.1474287242806;
        Mon, 19 Sep 2016 05:14:02 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id i68sm71329309pfc.25.2016.09.19.05.14.00
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 05:14:02 -0700 (PDT)
Date: Mon, 19 Sep 2016 17:44:43 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net
Subject: [PATCH 1/2] Staging: vt6655: baseband: Remove unnecessary space
 after a cast
Message-ID: <e97d762cf4e296d066ed3a6aeed9460a7a5e4021.1474286513.git.bankarsandhya512@gmail.com>
References: <cover.1474286513.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474286513.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after a cast. This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/vt6655/baseband.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 654d072..de503a3 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1729,7 +1729,7 @@ BBuGetFrameTime(
 	unsigned int uFrameTime;
 	unsigned int uPreamble;
 	unsigned int uTmp;
-	unsigned int uRateIdx = (unsigned int) wRate;
+	unsigned int uRateIdx = (unsigned int)wRate;
 	unsigned int uRate = 0;
 
 	if (uRateIdx > RATE_54M)
-- 
1.7.1


