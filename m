X-GM-THRID: 6257131864000036864
X-Received: by 10.66.148.69 with SMTP id tq5mr18305413pab.28.1456860660537;
        Tue, 01 Mar 2016 11:31:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.220 with SMTP id o89ls1871399ioi.29.gmail; Tue, 01 Mar
 2016 11:31:00 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr18274792pfd.0.1456860660126;
        Tue, 01 Mar 2016 11:31:00 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 12si4704040pfb.1.2016.03.01.11.31.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:31:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so10953417pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=QjkPFU6uN+aYzQYe2LaNV5+Y2X8kvuR/hjE3N0K66nGY18BLRvdXfaWA2a+1ddEHOt
         1l7SmsfXcEwSAJm1K3hSEGl8fqLZuodnoF4tmfYrECYnOpVPnU/xiM5wa74gGS9yK3Fc
         wGFxgMOlrjwbtCtCelXJw+Z9hCMFGLNpiYTid2OiiQq+Q8uXr74L31aA/Y/zN2hOTW58
         rr7Pf+E6yws+Wg1oZhaBRT+c0+eryqg61xASJ0dKJoLO5K0uEM5Lhbub+qwyiWMBCL7a
         aVkpQX6KDDluRyYDu4sZZ+sv9yV37o+pslKDOJgL3jDZNULvjL9xAreuao9a0vKTVTSS
         n28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=ZIdhRjsWuTFgcmoX3HDyizhWCjR7kb19s+CC1630t+nMeOnduoYTSlfKUjjMhOiz1N
         9yZTMie1zsggh4QxaVdiswaQlTqzohmCNGZqx8N9WJgmmTeCWvK8fj0VvaDqhjsOdfFW
         nBIRZMyspH8IbX7qN+ncTU2vEclY8G8pn07TcY8++5I+JijRS388UAquvFb6yTveaO0N
         LgSHAPbGmVlv2vwymDCfBhy31GqhrNhJXR418+wFKUDxfl11dfOwikJ7nVrk1phXmufQ
         RtumH7A5tLLowcNfey6Z6hIzt5B0ETjE8N+jXGqJ3ACjaxSnv3UaCDbhjBgjh0I7S6NJ
         LH8A==
X-Gm-Message-State: AD7BkJKFCvo05wMhOCeLuPVGrBlZaYVJ9K4YGXWejtA73wcGMKLyX47bG/RByeViVRqNrQ==
X-Received: by 10.66.235.129 with SMTP id um1mr32270576pac.17.1456860659962;
        Tue, 01 Mar 2016 11:30:59 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id u5sm47389948pfi.15.2016.03.01.11.30.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:30:59 -0800 (PST)
Date: Tue, 1 Mar 2016 17:01:08 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] Staging: rtl8188eu: Do not print message if kzalloc()
 failed.
Message-ID: <8a03457a68e0c915ee1f7955d72986c47573deb0.1456830070.git.bankarsandhya512@gmail.com>
References: <cover.1456830070.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456830070.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index 1de7929..e5a6b7a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -394,9 +394,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
 
 	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("rtw_joinbss_cmd: memory allocate for cmd_obj fail!!!\n"));
 		goto exit;
 	}
 	/* for IEs is fix buf size */
-- 
1.8.3.4


