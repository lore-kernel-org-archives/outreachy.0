X-GM-THRID: 2898795692032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ff24aea5e2cf3f15,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr1512560lbo.8.1424713018815;
        Mon, 23 Feb 2015 09:36:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.193 with SMTP id v1ls529502lag.102.gmail; Mon, 23 Feb
 2015 09:36:58 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr1512556lbo.8.1424713018355;
        Mon, 23 Feb 2015 09:36:58 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id el6si740872wib.2.2015.02.23.09.36.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 09:36:58 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so45272wgh.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 09:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o2W13G7vdOkVSqf0jVAgw+s3ttzTyy0DV5Wectc4PYg=;
        b=KQ2BIFLR9CDY1alyTNuNp+wJ4QGe8kUImlgNuYsEnjYSCaxZ3sni6SBt5Vqi5zybzc
         HIKVDZ52IzCoHu8st6kD+WsDCoykDfim7EtcRiD303iQ3cSVYK2Kxo7Xd6lFuU/WJKKX
         d4VlVO0W4O0vIZDkx90mBzJgnU7P77lkJDeSIw4mzx/4eXPmxvLWxD2uOu/w5UbNVMiG
         P3bHc34CIaYbquwPLpu/JZp31scYheW1RG2cPVlvkT1yr45IpJSDjyLPv8a2SmUG4Zzx
         Vkii+llCB5+03T+aVsAM2spuvOmLVhmaCakciuUPZpwNFknAVomu0NeStW52IhcLCVAy
         /rOA==
X-Received: by 10.180.107.198 with SMTP id he6mr22184824wib.21.1424713018078;
        Mon, 23 Feb 2015 09:36:58 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id dj5sm56508757wjb.28.2015.02.23.09.36.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 09:36:57 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Delete space before '++'
Date: Mon, 23 Feb 2015 19:36:49 +0200
Message-Id: <1424713009-24299-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

This Error found with checkpatch.pl

ERROR: space prohibited before that '++'

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index 8124d9e..d851675 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -174,7 +174,7 @@ int _rtw_init_xmit_priv23a(struct xmit_priv *pxmitpriv,
 	rtw_alloc_hwxmits23a(padapter);
 	rtw_init_hwxmits23a(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
 
-	for (i = 0; i < 4; i ++)
+	for (i = 0; i < 4; i++)
 		pxmitpriv->wmm_para_seq[i] = i;
 
 	sema_init(&pxmitpriv->tx_retevt, 0);
-- 
1.9.1


