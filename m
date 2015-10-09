X-GM-THRID: 6203671464357396480
X-Received: by 10.107.32.204 with SMTP id g195mr11614708iog.12.1444404829773;
        Fri, 09 Oct 2015 08:33:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.165 with SMTP id c5ls631248obh.96.gmail; Fri, 09 Oct
 2015 08:33:49 -0700 (PDT)
X-Received: by 10.182.241.10 with SMTP id we10mr12033660obc.24.1444404829540;
        Fri, 09 Oct 2015 08:33:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si237350pbb.0.2015.10.09.08.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ve7so31098024pab.2
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=d9dim1+Ey8YWYTEvDgHbyQXgUNxCVjvoI7udpPjzwss=;
        b=bPJAYZsP96DrtzJ3Mz2I6uB5hET+Q4e+w4RL7RxGND9k926i3T88tWG0YLmx2MoJMH
         51DeTwzFYpnTnKt9jCx8yNU6oAnq6BX3X825zGuI2WutlPDlz85eBxnqT8mYgOi19Fzl
         kRlF2DYQNNPV1c2T3dg/vVbDOwX2nhjickLm57cCBsMpUTaCHagt9+xGT5XhcX02OuIl
         f2sK0UZ0FXXwzW0U+OSMRTygiUXFOmEQNPsAB3LEkm9Dq81oj00UTNUEsaMeTk8U2BoD
         bNxNarCeGIx0nk0T+hZYd5vN1iuCbMt1t2wnNcDx+739XoEpTxt+/2s/bl2pFi+zt1ZH
         MrhA==
X-Received: by 10.68.137.161 with SMTP id qj1mr15945227pbb.14.1444404829425;
        Fri, 09 Oct 2015 08:33:49 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yg2sm3072675pbb.79.2015.10.09.08.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 08:33:48 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/4] Staging: rtl8192e: Use kcalloc instead of kzalloc to allocate array
Date: Fri,  9 Oct 2015 21:03:29 +0530
Message-Id: <1444404809-22880-5-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
References: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5617DE5C.0066,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The advantage of kcalloc is, that will prevent integer overflows which
could result from the multiplication of number of elements and size and
it is also a bit nicer to read.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_module.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
index a0d5546..113fbf7 100644
--- a/drivers/staging/rtl8192e/rtllib_module.c
+++ b/drivers/staging/rtl8192e/rtllib_module.c
@@ -59,9 +59,8 @@ static inline int rtllib_networks_allocate(struct rtllib_device *ieee)
 	if (ieee->networks)
 		return 0;
 
-	ieee->networks = kzalloc(
-		MAX_NETWORK_COUNT * sizeof(struct rtllib_network),
-		GFP_KERNEL);
+	ieee->networks = kcalloc(MAX_NETWORK_COUNT,
+				 sizeof(struct rtllib_network), GFP_KERNEL);
 	if (!ieee->networks)
 		return -ENOMEM;
 
-- 
2.1.4


