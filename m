X-GM-THRID: 6262247928978472960
X-Received: by 10.129.154.16 with SMTP id r16mr22011922ywg.39.1458043400255;
        Tue, 15 Mar 2016 05:03:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.196 with SMTP id o187ls138374ioo.94.gmail; Tue, 15 Mar
 2016 05:03:19 -0700 (PDT)
X-Received: by 10.107.128.217 with SMTP id k86mr21799033ioi.12.1458043399794;
        Tue, 15 Mar 2016 05:03:19 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id ui7si4096205pab.0.2016.03.15.05.03.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:03:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id n5so26214122pfn.2
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4BShgXTUjPhfaWnEiHS9J1+vmEBheklcxxYCpXRuJSI=;
        b=Pckdnlly0w8ZI6/3itVMgtSK7XYiGixTrWqxiEcgLfQoKVZj7eByNxPWauktcLXE/5
         wP0c8O5BpvGUiOs0R4Ra+DRTFffdIndTzQo3n5npPdklmANd0MaRRAsdCaz5n+AAwK+J
         kERdH0UC7PWmU96UZ8gKeEEmUJ6TUvRyjRxiOXHZHJpS68u0dRSd//oI5uSMHE5koE1z
         KFHCszdnUow/Wav/MT2FNiJiXyn/SmDkM7yF2DUNwc/Y35H1SJGL+Bq3ak9feW9kLxyg
         IkZovcKKO2xKGsb4xF0/Y7F8eUV4usWutBrLEmdPsdQ4GP3LyU2gO1YoLIFrPMUIzf8X
         ZOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4BShgXTUjPhfaWnEiHS9J1+vmEBheklcxxYCpXRuJSI=;
        b=UXyZAVWxkzmeVi/HP+WNvb9d1Hqw7vfvAwpNrQSLbsuh1aERxa4nehFKL7tSGVvBbj
         YWHoj4djFTo+QSnF4kBIewPhoGN0r8d8ksmn+oEBUDBuWOCHgjJSmbce82rcy2BP1N0P
         GGEVOouleH26T2DK4oi9/TYYW9p9cmfOr7DckC/Lja85tY/eAr5SlLRTrCJmCy/qhNLR
         nBqOJWXQ3stZF4FvE73J+3VrxVRkgnJZeABM4685TXhxX6BzU/hNeLThZG58MUrjImGc
         qdCPPtvBQwUjAD+vVv05AnKLZhH16HeXUB/SRMQ+BgJ/+Jc4noqxATQofuNtp4INEkGJ
         n2eA==
X-Gm-Message-State: AD7BkJK8tyHHbEG+8agoVCqVoFUImyYcXOQlSxqVsvWf27RJCayuQYe+6jmIMZMUvkOtpA==
X-Received: by 10.66.220.101 with SMTP id pv5mr27638158pac.139.1458043399572;
        Tue, 15 Mar 2016 05:03:19 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id qh8sm39331083pac.40.2016.03.15.05.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:03:19 -0700 (PDT)
Date: Tue, 15 Mar 2016 17:33:02 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: nvec: CHECK: No space is necessary after a cast
Message-ID: <4c16413d3738593c55bb5a11a4fcd4c6c86e59cf.1458043064.git.anchalj109@gmail.com>
References: <cover.1458043063.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043063.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove a CHECK produced by checkpatch.pl

CHECK: No space is necessary after a cast


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c335ae2..7b7de5a 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -663,8 +663,8 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		} else {
 			dev_err(nvec->dev, "tx buffer underflow on %p (%u > %u)\n",
 				nvec->tx,
-				(uint) (nvec->tx ? nvec->tx->pos : 0),
-				(uint) (nvec->tx ? nvec->tx->size : 0));
+				(uint)(nvec->tx ? nvec->tx->pos : 0),
+				(uint)(nvec->tx ? nvec->tx->size : 0));
 			nvec->state = 0;
 		}
 		break;
-- 
1.9.1


