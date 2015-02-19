X-GM-THRID: 1026580021248
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b2e8c53bfffa69b8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr894409lbb.9.1424384029515;
        Thu, 19 Feb 2015 14:13:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls219215lae.5.gmail; Thu, 19 Feb 2015
 14:13:49 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr881570laa.2.1424384029086;
        Thu, 19 Feb 2015 14:13:49 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id ev8si6491966wib.3.2015.02.19.14.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:13:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f53.google.com with SMTP id a1so9840051wgh.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xqefAX/3E3bOGEcI+vC3YGgvvCrzf2CCvBuNaiJKha4=;
        b=JpfiwL1mYlYl19oJG9WFBIHYC8hDzGH1MgyJKeXBeGpEyFiNwOjc1wmcUUmXMNJogA
         qzclz7xnCgQYzhi6i5D68WnzrooaK3V3WTu79THYdR7QJiM9Lcp/Eng7WBpTuyChRXBg
         ebN8D7+kwG9AmfyDfTrUlHD6PSmSZoEpwVj2TgiNnVqdIGpJnU+oMAbNhRexj9rcpFZw
         4LIiPUNVeWffu/qZrfhSbbLiqEu3C6vj8S0o9ETZCMHKdB7/a0YIrldhlBe4/KrcKwqw
         5bsHLhtIz+y408UBbSdS5WzpUH18nZYNCCK5qO3gQffFEM9M7Yy8mMliaSl4sxttcooJ
         +lLw==
X-Received: by 10.180.90.197 with SMTP id by5mr14271413wib.70.1424384028972;
        Thu, 19 Feb 2015 14:13:48 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id lj13sm36076329wic.9.2015.02.19.14.13.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 14:13:48 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Remove brake statement
Date: Thu, 19 Feb 2015 23:13:39 +0100
Message-Id: <1424384019-21836-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:
WARNING: "break is not useful after a goto or return"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index dbd3321..d006602 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1344,7 +1344,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 	default:
 		RT_TRACE(COMP_ERR, "Unknown RFChipID: %d\n", priv->rf_chip);
 		return true;
-		break;
 	}
 
 
-- 
1.9.1


