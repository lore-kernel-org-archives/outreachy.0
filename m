X-GM-THRID: 6256430806188687360
X-Received: by 10.140.147.139 with SMTP id 133mr10123658qht.21.1456691529196;
        Sun, 28 Feb 2016 12:32:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.75 with SMTP id b69ls2057975qgf.53.gmail; Sun, 28 Feb
 2016 12:32:08 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr10647618ywe.53.1456691528519;
        Sun, 28 Feb 2016 12:32:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si1117285pfa.2.2016.02.28.12.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:32:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 184so2047577pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KQp+tVAT7yoHv1i3Tp7uxi2aFHGignAXhkkOgNOp03I=;
        b=YLEYb0aa5Bfkj8tiM0iQLTrZ0qTlwbQRVOshuWRTV58WnlxK1T+ZK5KBhoKtAnbXf9
         eUbfO0l7Pi1K2AE4VgDh/Z7zXT98+jAt/CEeqGD1wXj+aRJOIzUTfYob3Y2Yyvt7vWbG
         Hd50uIlT3c10Zt7cgvjez0MPTttHYekChlsoTKnUB4T8blvb0POcN6lKXCfG7eit4I3A
         6icI5El0EftMXETpxSYAzAoHfxPaDV91cAc9MdCCyugyFwc4RPJxzgXc/2oPfq1FBaie
         xYeGH5Pi3uTEv/11Ik56/YiaHeYNd9CSNV/HsN42109cmRkDDt/nZt1WW6gb8FxcJqIC
         2xYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KQp+tVAT7yoHv1i3Tp7uxi2aFHGignAXhkkOgNOp03I=;
        b=b/HrqwrrrCdFWVofU1RWWtFMbevcSeFb4sSuRHnMy7fXbWiegsx9H6D0dZXFTYF4SJ
         zIXaIonAm90IEiWT9dyaXtuIC975Y+iWqFNaSBNQxBOVEfz/lU89I+R+uzRtw6Vgx6/7
         P8TYoeSTE9u/RLRf1apNi7dgncIwPS3kbhJ/NJIzl54qUhaubRDPQ/x36eZ1ztLq/pSU
         ue5DPCcekz44gCqlOHBxos9v9Uk3fyF4P3SEFp2xaRfGAIa913avLf/xVimpPECYAtZY
         Qoxukq+PQR78ur4J29bAu07BoFyLgWXis9lKFkrJIsaICglK3Ljnui0f5bhYLWCkdAYO
         Bq+g==
X-Gm-Message-State: AD7BkJKKMpbsML3d1ibnZtVvp7N7R58J6IchOpbEBCxdHipnBsc0X/USM6iGD5rHTzGLhA==
X-Received: by 10.98.64.4 with SMTP id n4mr17453531pfa.58.1456691528333;
        Sun, 28 Feb 2016 12:32:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r62sm32881748pfr.26.2016.02.28.12.32.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:32:07 -0800 (PST)
Date: Mon, 29 Feb 2016 01:59:20 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] staging: rtl8188eu: core: Remove NULL test before
 vfree
Message-ID: <20160228202920.GA2616@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
vfree(x);
x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c    | 3 +--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 40b7a30..e5a6427 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -116,8 +116,7 @@ void _rtw_free_recv_priv(struct recv_priv *precvpriv)

 	rtw_free_uc_swdec_pending_queue(padapter);

-	if (precvpriv->pallocated_frame_buf)
-		vfree(precvpriv->pallocated_frame_buf);
+	vfree(precvpriv->pallocated_frame_buf);

 	rtw_hal_free_recv_priv(padapter);

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index ce655b6..c1abd5e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -172,8 +172,7 @@ u32	_rtw_free_sta_priv(struct	sta_priv *pstapriv)
 		spin_unlock_bh(&pstapriv->sta_hash_lock);
 		/*===============================*/

-		if (pstapriv->pallocated_stainfo_buf)
-			vfree(pstapriv->pallocated_stainfo_buf);
+		vfree(pstapriv->pallocated_stainfo_buf);
 	}

 	return _SUCCESS;
--
2.1.4


