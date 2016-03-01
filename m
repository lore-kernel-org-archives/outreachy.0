X-GM-THRID: 6257131864000036864
X-Received: by 10.107.186.134 with SMTP id k128mr23246269iof.26.1456852324014;
        Tue, 01 Mar 2016 09:12:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls3441490qgl.47.gmail; Tue, 01 Mar
 2016 09:12:03 -0800 (PST)
X-Received: by 10.129.145.193 with SMTP id i184mr17558430ywg.32.1456852323531;
        Tue, 01 Mar 2016 09:12:03 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si4595986pfb.1.2016.03.01.09.12.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:12:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so10757050pad.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=CbE8J62zqUWZ15sYzNr+F9CIRSU/qCQ5YMjshULqQ83Gh5WrSVRDAGY6Fg5sblXZCo
         oNwhFtRhVLFdZxeq0BYs70vUGdYBIYL80IkSJMzFm+t9HKrmOpHFWsLotohMCAQiZ4Pj
         Oz1eOYm2S2DdIrq7jfvNOmQeadNGcgflJC3a2gfwmJnhzFcUmVU4d8ZPZiIHGEWyghUx
         K+5dY3ujERIkBwRD0qDftxhnrnlRBmIsQoPuYaGmpGH8cVFYwx74tAYarv1uQD3H6xsE
         lknIw1mWB2Pu00qCGzPe2oGLZUXuRePX6K1wnDsCzO4TZDny76+PKs3w2BOskVy2WWa7
         RjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hinTysvcYui4hVDQud76EnDBA/+UYXrBhZkGW1rrmHQ=;
        b=OCtK396M52OGGipSRqu6VQ5STKGmqBHhBKaElEqvlfAGhaFtsljH54/1xD6zKNgEm5
         oE7D2BqcD5e9ayAAYBzuBRlFPYUhnOFTElh8hpDiFZNy/69pNOnhVFRg6RKysASiqrxD
         truoEJqVMC3vc7/KP/+8iWUHQEaXs2dcM2xxg1biKNhOsrRtEfSiXMwFh0vB6bG2ov/1
         PGI1ZV4rK/K1X6B/KIyuaosOLLmOupTXB/6GOWi2RnpmF9MUWwI0m5VS3JZWxo2/0eib
         srvB+Io+IGNb1ub78ocjcseNyNGzwYx9MWufSO8DwWvfnNAIb5vZJU7Q1ZT+K0+E9f3V
         gHEg==
X-Gm-Message-State: AD7BkJJ1u/wv8mNuEh1k5iOmPgzqEEM/nHWRMtDOC0bYzKIXl5ZAqwz0mTX3X337N8J4fA==
X-Received: by 10.66.160.7 with SMTP id xg7mr31242665pab.10.1456852323338;
        Tue, 01 Mar 2016 09:12:03 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.66])
        by smtp.gmail.com with ESMTPSA id e20sm46888549pfd.4.2016.03.01.09.12.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:12:02 -0800 (PST)
Date: Tue, 1 Mar 2016 14:42:11 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] Staging: rtl8188eu: Do not print message if kzalloc()
 failed.
Message-ID: <5253209bb309d2d872ccd31e35610c982658e188.1456822984.git.bankarsandhya512@gmail.com>
References: <cover.1456822984.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456822984.git.bankarsandhya512@gmail.com>
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


