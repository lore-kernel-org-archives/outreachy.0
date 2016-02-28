X-GM-THRID: 6256430806188687360
X-Received: by 10.13.242.134 with SMTP id b128mr9881682ywf.28.1456690901362;
        Sun, 28 Feb 2016 12:21:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls1944657qgd.6.gmail; Sun, 28 Feb
 2016 12:21:40 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr10601959ywe.53.1456690900840;
        Sun, 28 Feb 2016 12:21:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si3208038pab.0.2016.02.28.12.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:21:40 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id a7so6138268pax.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KQp+tVAT7yoHv1i3Tp7uxi2aFHGignAXhkkOgNOp03I=;
        b=uhFD88It69FsmSk2Dm1INa/UjHQy7YeKPWS275K16++UzBcsQuXz1bzNzAXnEVckCX
         cwafeWx4V+ACMcRSMUMKbQVMfOSwum5/4T9TknUTQ16ODPTaDja8iAiix6k2RYjFW/KR
         godm/97usFQkdxiZHa8o6/dHFU/5zlmCvi6ag5NcDBWVshwYCysO3/I+nQAsBDehW0o2
         EnRN6q7k/PpwdTWPaxyS4PY3vO0uBDSUTPCWbHhsnEOuyu97T/41LuUTK7HyKfGvLOuO
         AouBAP69ci1Ucf1uqfedfpbLT9ve3hb+75Y6qEzkenu52UDoz6YaUQVY5Ca8+kHvLk+w
         VENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KQp+tVAT7yoHv1i3Tp7uxi2aFHGignAXhkkOgNOp03I=;
        b=IPdAysxKx+KSIRQ9tpuisi9SJ4xmVjr67y6NWE5nsR7+kAJFyG5ytKW3PuHZak0dwI
         O/n5f6WIb3hpef+AfnJLDHVrV9pAkWti0b+6JL9BACG/W1hb1V9yP+Y8KE+cPGms5Ifh
         UQaR8gb7j8ssDuYCJ5EgluU7GugvqVjsSr9Lnq0J1h++InSYqMeKrpq7cV9Gny1RDe0+
         yZN6WuwvYNIEq9BLU3CwLMgyGDfMt3jzeahZInKCoFZS/8RJ9GauszQe3xbK82TpnAZ9
         b16Gh0JV+Jh/akpJMCwfhALxSvE0eoVUlTZvGbm11YDFPWESJX1uSysRabWAelSYxvtu
         Aonw==
X-Gm-Message-State: AD7BkJLksJLp5STC40UWIWypAgg/fj4pggwL0uRqLK2GSYpRTFOF9f6i3oPUEvnKIH6BmA==
X-Received: by 10.66.249.41 with SMTP id yr9mr17564159pac.86.1456690900667;
        Sun, 28 Feb 2016 12:21:40 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o73sm32878082pfa.37.2016.02.28.12.21.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:21:40 -0800 (PST)
Date: Mon, 29 Feb 2016 01:48:53 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: rtl8188eu: core: Remove NULL test before
 vfree
Message-ID: <20160228201853.GA2334@Karyakshetra>
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


