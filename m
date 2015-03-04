X-GM-THRID: 6557663232000
X-Received: by 10.236.50.227 with SMTP id z63mr4354301yhb.4.1425469553511;
        Wed, 04 Mar 2015 03:45:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.200 with SMTP id og8ls263656obb.15.gmail; Wed, 04 Mar
 2015 03:45:53 -0800 (PST)
X-Received: by 10.182.133.69 with SMTP id pa5mr4060433obb.32.1425469553275;
        Wed, 04 Mar 2015 03:45:53 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id ks4si481993pbc.1.2015.03.04.03.45.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:45:53 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so56867818pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=B6Jnk9ERNsmmgWHu06kujKe8chSwLouSpcVVjgxai9w=;
        b=FJjJ1I2dn2bYDs5ev18IFmIKDmYeBPk4GuOHIfwgWZhttQbacR/cy+ySsxAsv/Cbrr
         RAFNfxZIS/t9fdGvpQOtxXBH7+gRkzaPQwDKtsMvbOPdR1K0Zf0tbqskA4kWVP+X+yAK
         +efQ21Pmyc8RyPxUQDreIl1omwaEybZcZ69NCIQHQYMt3Rk2pDqIgDjJdnDPz4KkhVWz
         ICtQtyEwu3tG+b9/QEO6CVOyvvaeSzPPC+0x3XL2/DkM+Y74NHI1uFrE2iiC82I718o5
         2s9VjIEtiUOZp9LMLoofRCm6+0+gxGBiQRO7psPsSFs7NJXIJSDOaGYjBtuAtkIf7G28
         ztQg==
X-Received: by 10.68.244.167 with SMTP id xh7mr6143248pbc.19.1425469553132;
        Wed, 04 Mar 2015 03:45:53 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.45.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:45:52 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 3/6] Staging: rtl8188eu: Remove unnecessary return statement
Date: Wed,  4 Mar 2015 17:13:59 +0530
Message-Id: <1425469442-32412-4-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch removes unnecessary return statement from a void
function.

The issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 94dfbf6..074f48a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -797,7 +797,6 @@ void HT_info_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 
 	pmlmeinfo->HT_info_enable = 1;
 	memcpy(&(pmlmeinfo->HT_info), pIE->data, pIE->Length);
-	return;
 }
 
 void HTOnAssocRsp(struct adapter *padapter)
-- 
1.9.1


