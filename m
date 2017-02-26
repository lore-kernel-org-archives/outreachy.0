X-GM-THRID: 6391116266457792512
X-Received: by 10.176.91.8 with SMTP id u8mr2958743uae.33.1488113619089;
        Sun, 26 Feb 2017 04:53:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls3182865otb.24.gmail; Sun, 26 Feb
 2017 04:53:38 -0800 (PST)
X-Received: by 10.129.90.215 with SMTP id o206mr4441607ywb.101.1488113618737;
        Sun, 26 Feb 2017 04:53:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si2588396pfk.5.2017.02.26.04.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:53:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 5so9509435pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=UD2brXcNI8CjGdf1RHiGonoQrTMnA5vM1im6pYv3weKbBLRuctvVh03v0dPMuknLb/
         gZ1ZvwGlqv8bg9Ap8vMr10d8GPSsl+3WeVPPB4XR+0JPgESTfYoz38vCr7kMWxJJJTSM
         h/f/mcEZmfRVRZql2fTqgs5t7TxATexwvwxPzH6ETdtq9HjYjsTyGN+Ge1OIuwB/ZhhR
         7GX5Uf/iN3S9Uki75cyK7IazWrgCZWqgWutJhKrtyCImbn6kAHdCRNviISvPINskEkT/
         LrPUuubtvHN1AaTb/toelwjMPGUUh9GY20w6Izi8aso4FcP/23O0a3zQnf7M7FJIG/7b
         k3Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Igv7HFlvEoqJwKFOwq9ke5DSpYlSxr7n/dEoQkK87TY=;
        b=DGlkTJAKjciJ0EvHhXj3qpSh+4IPFo4HeRS0iAMYU2kPAVzDWpSnkveW9dD4NPPZ+h
         HXb7AfbtfPsZyYWs0p6H0abWhkmGA4KksWzvJHLr8kSHyys+fLtfePqj5jjdyfp0x/w9
         vbZqAZK0PZQbiihtY3lEasbE1Lr/j3OtoOHsNekWl86d/L28RCMy8S/soa/mWTZP4BYJ
         /yg7uFudjuFx/jvZJjaBeJP9lEGEzYCRB5Nbwp/d9M5+tgxc+TnDBiC91kCy5uO1+F5/
         Kud45P50DxjqDEHIyMcjb64xEhchXh/aG+DdREcjXBsFyPSKOvJCwDgwbL1WY3pwpyxM
         8/RQ==
X-Gm-Message-State: AMke39lih4r26CLIg6pm8moL4t1RatfwLMrS6UMHkp+IVs11yfkK8Y3jnRzR6NmSlhlI9Q==
X-Received: by 10.84.196.164 with SMTP id l33mr17119330pld.158.1488113618536;
        Sun, 26 Feb 2017 04:53:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id x16sm24722499pfk.79.2017.02.26.04.53.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:53:37 -0800 (PST)
Message-ID: <58b2cfd1.90c6620a.ef358.4e58@mx.google.com>
X-Google-Original-Message-ID: <20170226125334.GA17851@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:23:35 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: sm750fb: Replace NULL comparison.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced NULL comparison with pCurrentDviCtrl->pfnInit. This patch fixes
the following checkpatch issue:

CHECK: Comparison to NULL could be written "pCurrentDviCtrl->pfnInit"

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 42c753f..171ae06 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -45,7 +45,7 @@ int dviInit(
 	dvi_ctrl_device_t *pCurrentDviCtrl;
 
 	pCurrentDviCtrl = g_dcftSupportedDviController;
-	if (pCurrentDviCtrl->pfnInit != NULL) {
+	if (pCurrentDviCtrl->pfnInit) {
 		return pCurrentDviCtrl->pfnInit(edgeSelect, busSelect, dualEdgeClkSelect, hsyncEnable,
 						vsyncEnable, deskewEnable, deskewSetting, continuousSyncEnable,
 						pllFilterEnable, pllFilterValue);
-- 
2.9.3


