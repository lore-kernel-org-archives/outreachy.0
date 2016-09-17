X-GM-THRID: 6331379866262306816
X-Received: by 10.36.4.65 with SMTP id 62mr1728359itb.20.1474192164802;
        Sun, 18 Sep 2016 02:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.201.21 with SMTP id z21ls519420iof.15.gmail; Sun, 18 Sep
 2016 02:49:23 -0700 (PDT)
X-Received: by 10.107.131.204 with SMTP id n73mr2494948ioi.45.1474192163325;
        Sun, 18 Sep 2016 02:49:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id e66si274585pfk.2.2016.09.18.02.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 02:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so5516515pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gic0tR0wL99DgG5LLnKYnkE8YWBjP2lLh7BVSrniRLs=;
        b=vlhyoFGwpZeruZWw5neLMFp/HDvQRGQ2NYS3TUCduD7fNg+gZB6cZ6/ExTo8TSzSVK
         NYOqzbGTnF8m5q5jA4qRzaP1u/iHfByrp2zEz8a4lHApFWx3nZDmDz5sFqVbjWyGM6Yd
         5S1HkOSdZrhn3FUaEIaxI828TX+atKNAp8PAfsxmkL8k9+lBaG+k1rI74JT5qC5Z4yCk
         47jj4be2Rm0f/32fPE+Bbn4B2JoI9CR9F67IhgmIzxs2X1JWPBtP+4FtiEYLQ/AitzQO
         dyLd8ag0uegtkvi792/DzYYqCPLp7tCwsNWxhzgU4T7sA/+GPkJ4bXU8dhRavAy14z/H
         vrkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gic0tR0wL99DgG5LLnKYnkE8YWBjP2lLh7BVSrniRLs=;
        b=Jd6wXIHwFNDi5OPb7xiEB6dQpEGQHhYW160RW8qEc9TfMfcSFCIpXip/AKigq+DGTm
         U5BmvwPGRbhwDYwym0PIgyhW0z8DcUcJPXXaxILMMadffho6y6xoSmUAQPKGnJoNwcFT
         oZSQmjZRk/gQmN/R2MpGhTAmL0T892YPg7b+ioG++fAzTAjzRdVh0nz92T0HOc7jxcXP
         qsa+QJEZnaLXG/lJ/XPQAV8uw/8MxEj9fsff+mFS45tUE4vBrGcgQHRv2R/sIR7nBo0U
         P66oV7KG23QGy9bATEZvTEMUoukM+PjuU3yOMplENTtg1oEhto/8HStZ+nIGmoO956EY
         AVPg==
X-Gm-Message-State: AE9vXwNYrxJT5773ZLdPIFem7e9VsGAxCPJDS5HEEERY2d5SrjpW+w32PJgg25X4jbNOOg==
X-Received: by 10.66.89.72 with SMTP id bm8mr35113975pab.1.1474192162938;
        Sun, 18 Sep 2016 02:49:22 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id h8sm32507578pfk.88.2016.09.18.02.49.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 02:49:22 -0700 (PDT)
Date: Sun, 18 Sep 2016 04:18:22 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: rtl8192e: Use !x instead of x == NULL
Message-ID: <20160917224822.GA24450@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting file permission issue
 drivers/staging/rtl8192e/rtllib_module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
index f4f318a..9d5788e 100644
--- a/drivers/staging/rtl8192e/rtllib_module.c
+++ b/drivers/staging/rtl8192e/rtllib_module.c
@@ -138,7 +138,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
 	rtllib_softmac_init(ieee);
 
 	ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
-	if (ieee->pHTInfo == NULL)
+	if (!ieee->pHTInfo)
 		return NULL;
 
 	HTUpdateDefaultSetting(ieee);
-- 
1.7.1


