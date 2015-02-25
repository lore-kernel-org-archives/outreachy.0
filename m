X-GM-THRID: 3440504733696
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cada1563c35b0518,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr3213740wix.0.1424898951208;
        Wed, 25 Feb 2015 13:15:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls364876lae.7.gmail; Wed, 25 Feb 2015
 13:15:49 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr798391lah.8.1424898949560;
        Wed, 25 Feb 2015 13:15:49 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id el6si1215665wib.2.2015.02.25.13.15.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 13:15:49 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggz12 with SMTP id z12so6332773wgg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 13:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hDmng+xLjTgFtpLgKp4A/OxdjRLvSL2Hh9pen+eHfyw=;
        b=gbA1H97ThkWkgdE85Fi3KA3oBsakOSPakSFmQ0/pFRalTsu/naWexszl2DFHOGWmrC
         vXQuhacu+yAXmKUC5TyTYzwSPDVaMFpqNASN6CsRRP3IOI16Q09zhVMZrP5zXWb8hgvt
         pfX+BzVnIAss1BN3qThKop8gxDgWw4CL0eZcGiFs4bSTQXpDV9W9Sc47uDBoHdPIivPk
         BQCnbL+PHwwsyIazg7fWKQj6JaJemd/qESqB/JShJd1KtSfja+W2DwYvug4x+8FI6HXG
         D/5XFDV3/EUai4Z68Hc7kxyQmaKtpfqBxMP2/WTn8nloJAMe30rLxTrYPE6Ffpy6cv6S
         2P5A==
X-Received: by 10.180.8.165 with SMTP id s5mr10254701wia.16.1424898949437;
        Wed, 25 Feb 2015 13:15:49 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id kr5sm61554293wjc.1.2015.02.25.13.15.47
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 13:15:48 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove return in void function
Date: Wed, 25 Feb 2015 23:15:05 +0200
Message-Id: <1424898905-6290-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: void function return statements are not generally useful
Remove return in void function. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/rtl8723au/hal/hal_com.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/hal_com.c b/drivers/staging/rtl8723au/hal/hal_com.c
index bf4cae2..ce0516b 100644
--- a/drivers/staging/rtl8723au/hal/hal_com.c
+++ b/drivers/staging/rtl8723au/hal/hal_com.c
@@ -237,7 +237,6 @@ void HalSetBrateCfg23a(struct rtw_adapter *padapter, u8 *mBratesOS)
 		/*  Ziv - Check */
 	rtl8723au_write8(padapter, REG_INIRTS_RATE_SEL, rate_index);
 
-	return;
 }
 
 static void _OneOutPipeMapping(struct rtw_adapter *pAdapter)
-- 
1.8.3.2


