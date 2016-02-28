X-GM-THRID: 6256430806188687360
X-Received: by 10.140.134.134 with SMTP id 128mr5912356qhg.29.1456688811368;
        Sun, 28 Feb 2016 11:46:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.205 with SMTP id p74ls1220738ioi.11.gmail; Sun, 28 Feb
 2016 11:46:51 -0800 (PST)
X-Received: by 10.107.11.23 with SMTP id v23mr15567017ioi.13.1456688811106;
        Sun, 28 Feb 2016 11:46:51 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si1097115pfa.2.2016.02.28.11.46.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:46:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so3501144pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EcFVvqnJVS9g/Cl8kGrkcwtOw4H9jEGOYl3u9MAmuZo=;
        b=aOH0UEjYFzMP5ipARKcwJcU1AjxBq6z1cMsoUgmGRWR3iTJeuF4dMTGAibJUUsDy4o
         XGYj/JvCydfsnz1eTTILkFEy60/VyYCX+WPy7C0gjyCfwBnYg2aZPw0CgITMhrFvLt6C
         sZ3+1J9tIfgBryH1rFjLXMFHUbPaT/Aq7uMSCP7oZhUB3N5waUZ9tDnKrr82ryuTe+F7
         6SEsG6DWx/QxPG+RD6f//ND8KpLnQJGROU/2vaMWXZTuuN1CkyhrGxwsLNV//CavHcv6
         vD3F082k1pHrdQpmcOnVBthST6E6pEn4Xs4IGuESsgxqyYdGbZXDf7N+oUy2R3QPjEro
         BvzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EcFVvqnJVS9g/Cl8kGrkcwtOw4H9jEGOYl3u9MAmuZo=;
        b=i1YiYfUmZdvah4SUs2sxNSRebqvlblaNQHejmgql1Xpj2yQf7yHyJFfA3z2PmJCroC
         2lJD/48a0pXKTZJpLG6IvUhIUWz1iT+E5Mk8O/57Irt5ovXmAmaLghNwPLtD0AORInCT
         5s6AW3aHUgas8Q5y7u1gWH7Xtr0Ciot6lRAHK2BeWlNYT06/3mgwVYVNE2VAPB4Lt/NO
         fIudwobOwhj+dosJztWoGYdgNZVPIJ5Ykkj372+LKKcVJYEbHZjxglTgUZpXcTuME3ki
         YTJwIDn//JBTYiwpLJkF1ZfSJ4W6UNwdseK47PCIcW5dmgW4K6VNMQFrvMM76MicidN1
         BL+A==
X-Gm-Message-State: AD7BkJIbM9EsjMUGvttCrghI0pL8Ux3wR9GLjUFiz/pGicPyCSqsTIl4GczDjdrrmt4ghA==
X-Received: by 10.98.0.11 with SMTP id 11mr17526436pfa.5.1456688810966;
        Sun, 28 Feb 2016 11:46:50 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id cq9sm32848724pac.26.2016.02.28.11.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:46:50 -0800 (PST)
Date: Mon, 29 Feb 2016 01:14:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: rtl8188eu: core: Remove NULL test before vfree
Message-ID: <20160228194403.GA1748@Karyakshetra>
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
 drivers/staging/rtl8188eu/core/rtw_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

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

--
2.1.4


