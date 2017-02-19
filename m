X-GM-THRID: 6388940361638608896
X-Received: by 10.107.163.194 with SMTP id m185mr6023286ioe.23.1487541096228;
        Sun, 19 Feb 2017 13:51:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.95 with SMTP id a92ls2409354ioj.34.gmail; Sun, 19 Feb
 2017 13:51:35 -0800 (PST)
X-Received: by 10.36.31.7 with SMTP id d7mr6756874itd.3.1487541095483;
        Sun, 19 Feb 2017 13:51:35 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id z73si2006422pfa.2.2017.02.19.13.51.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 13:51:35 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so10309185pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 13:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uiIHG0FUqUlgfRwPvZuPKjbFt/VsLybDU1q/gtTglUE=;
        b=u6lLR3eb1JczHI4WJjOMFwA+twL8UEnmhG9CZJejePAt1daClEJcbY7zPsBdPctR28
         EA22AU87FBq6xLTHcmo7ysDtG6n+OI5YY693+2wZqV3KqPqh7x5gBvLkXOMogfQGbCDQ
         CBSvRn++o97Vm2TBQK0OErherJkHrBGEj+N4iikoDZ1c/TKKeEKk5wKLO052qsfhhWQ7
         rS7dc4WmcGBH144lOjMeWkzHwLYQtbVS24DoQcQjRky3f8qttIAxw+zb1NCCK8aUo+5F
         oYK1F/Id+EXS1GSg88MkckOS308CLPtzQf7oLy315OGa172Sif93qTVHCPsvznFBfYJs
         2jDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uiIHG0FUqUlgfRwPvZuPKjbFt/VsLybDU1q/gtTglUE=;
        b=OkBU5MQU6CwCT1Wuiz2xuhfkZrRVnidca884cR38+6fbjQTTV/9cdDId3at4JYz71N
         cFJmvw2ap+PXUbAtfv//nXzFMxefkFxITL3p+bJ3KLdS7a4qJ7DaCXm/TVHewbl0heRd
         tQOCdWIrSn3ryH6FAr4W+G10KAYk+pRSHGo8KPOSDaTg46V9UH7kbiSjaoUPfzXpRF6Z
         jSCCAwGq7nb6e6rl0d0OUQRIZLif+nsp+ZmNBlSJNZz+pWfL/3OLoGJPOgI6aR8/6AT8
         ut401WF4lYYL5WsGxr+Z+KxH6bmKlg64URobOqyOUl4ZBAKf9B0N3lJzS1+HLb/OPQaB
         nNYQ==
X-Gm-Message-State: AMke39nr6/WYUGfwwgeSwz4V/QCsgLxC77LyHqnARyo5dZF9BdOsPOsruB10Z96SSEYczw==
X-Received: by 10.99.142.193 with SMTP id k184mr9512679pge.209.1487541094977;
        Sun, 19 Feb 2017 13:51:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x2sm30868399pfa.71.2017.02.19.13.51.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 13:51:33 -0800 (PST)
Date: Mon, 20 Feb 2017 03:21:30 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8192e: Change form of NULL comparisons
Message-ID: <20170219215130.GA26435@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.

@@ expression e;
@@
- e == NULL
+ !e

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_TSProc.c    | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 drivers/staging/rtl8192e/rtllib_crypt_wep.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 48bbd9e..d0c2f3c 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -289,7 +289,7 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
 {
 	u8	count;
 
-	if (pTsCommonInfo == NULL)
+	if (!pTsCommonInfo)
 		return;
 
 	memcpy(pTsCommonInfo->Addr, Addr, 6);
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index bc45cf0..ed2e06f 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -63,7 +63,7 @@ static void *rtllib_ccmp_init(int key_idx)
 	struct rtllib_ccmp_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = key_idx;
 
diff --git a/drivers/staging/rtl8192e/rtllib_crypt_wep.c b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
index b3343a5..f5a1bc5 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_wep.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
@@ -37,7 +37,7 @@ static void *prism2_wep_init(int keyidx)
 	struct prism2_wep_data *priv;
 
 	priv = kzalloc(sizeof(*priv), GFP_ATOMIC);
-	if (priv == NULL)
+	if (!priv)
 		goto fail;
 	priv->key_idx = keyidx;
 
-- 
2.7.4


