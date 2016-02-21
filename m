X-GM-THRID: 6253814508623495168
X-Received: by 10.140.240.129 with SMTP id l123mr20411085qhc.8.1456079657546;
        Sun, 21 Feb 2016 10:34:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls1144611qgy.63.gmail; Sun, 21 Feb
 2016 10:34:17 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr22828460ywb.47.1456079657090;
        Sun, 21 Feb 2016 10:34:17 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 12si2709770pfb.1.2016.02.21.10.34.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 10:34:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id c10so82365258pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 10:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=c1PURI3ptHMo1Na1H6Ei7NWblRsJFc7c2xX2u25LQqs=;
        b=nVmwpgD0UhVY2PB3yjxTGubJlCOB5pSLwFH1Xdft+DUEhjFkNUdy4SDON/AKG9UATm
         x4ndnwgvHj9f3LkkajLLM0rns7H2YHT/1EMUQWCJgd6PGV6tXtL5qaD6vQBFYsR7hq7q
         AsJnGcXEs6uzLwBE3dPySnF3k8722MABTHPFPfx04Bew+s3T6Sa7cHX555wX/rGyVIzE
         Fp88AP5wweejFFxO8f0MDC5EltZOoJVDSSiQNWnLDmKOud4RYdvGuSgCz+ujhYiDtGbv
         f2UvwTDWgKwsWBvrKOtKzmbN0SD4g+b9ivV6hqQFXLk7nlGqScs10Sqhfr1I7NH1+FvO
         /Dow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=c1PURI3ptHMo1Na1H6Ei7NWblRsJFc7c2xX2u25LQqs=;
        b=mHVsxrb1ahuFtmdNAljz3vDXzjW7sYaoAVyefYbosJMcKFIAiXuwZ7uRDAEhsyZRGK
         iyjaGKcDhvf/Euk9h+1n4+yRGBKYCmkc5xoL4H3syNJb94tA7p6B/QzepZnNEnCT+ixj
         OczDYq1S5sjm25M0+V7vcgC4D4A6PiibMZeTl9Gyn26SA8z10QLwzFT3CVhOOyY+p7EJ
         /2t/X7XuHfRDoyb1XFgzTNVwH3r81dhR/Xi2p/AL9kgOyJ6xmkzi3dgh5Qw/B/XZ4ZQC
         ojjtxxZKS2D79kLVDdpuSgh7ZwzsWPQJ2EmOm3QzJ4UVV9CYZUTH/KwUlxsDl8ybmEjb
         GLMQ==
X-Gm-Message-State: AG10YOTQcYN1FNl+r1h+UPfnUoQYtAiuKoBcwcJanQmGTq+U56P+pKN8suEyTxD8hh5tLQ==
X-Received: by 10.98.67.149 with SMTP id l21mr32927545pfi.112.1456079656953;
        Sun, 21 Feb 2016 10:34:16 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y27sm31247057pfi.82.2016.02.21.10.34.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 10:34:16 -0800 (PST)
Date: Mon, 22 Feb 2016 00:04:50 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: rtl8723au: hal: Use macro DIV_ROUND_UP
Message-ID: <20160221183449.GA3380@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/hal/usb_halinit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/usb_halinit.c b/drivers/staging/rtl8723au/hal/usb_halinit.c
index 3c2d03e..fa47aeb 100644
--- a/drivers/staging/rtl8723au/hal/usb_halinit.c
+++ b/drivers/staging/rtl8723au/hal/usb_halinit.c
@@ -736,8 +736,7 @@ int rtl8723au_hal_init(struct rtw_adapter *Adapter)

 	rtl8723a_InitHalDm(Adapter);

-	val8 = (WiFiNavUpperUs + HAL_8723A_NAV_UPPER_UNIT - 1) /
-		HAL_8723A_NAV_UPPER_UNIT;
+	val8 = DIV_ROUND_UP(WiFiNavUpperUs, HAL_8723A_NAV_UPPER_UNIT);
 	rtl8723au_write8(Adapter, REG_NAV_UPPER, val8);

 	/*  2011/03/09 MH debug only, UMC-B cut pass 2500 S5 test, but we need to fin root cause. */
--
2.1.4


