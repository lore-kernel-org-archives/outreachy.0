X-GM-THRID: 6250925107239190528
X-Received: by 10.107.184.195 with SMTP id i186mr10027686iof.24.1455406916136;
        Sat, 13 Feb 2016 15:41:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.229 with SMTP id rf5ls1204876obc.22.gmail; Sat, 13 Feb
 2016 15:41:55 -0800 (PST)
X-Received: by 10.182.19.164 with SMTP id g4mr8960566obe.42.1455406915806;
        Sat, 13 Feb 2016 15:41:55 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id t198si1558593ywe.3.2016.02.13.15.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:41:55 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id y89so88239682qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+a5hZwlpVKIZazK1H/kRuvmsJeCmlRdGb6812BsCapA=;
        b=CYOVQ/5ejEPIPijLWt1NaVxOmBQU9a0eFFa8hn1YwmqPG/hzFF+/Fua3wx085AEzzO
         Li3IhTPDC2b5yyxv9POaXsGtzEy4rBq3BE2g2u6o7vxJ9/tQOrxQRPgTDziAtAEJNDH6
         UUvIWALwjA0FYjL1KL5yfkIuDGkd5ZnuYiTvC5yxIWXpd3xrQmyWmYnFyqXrp+Po9g7o
         D+x9MAyxVmwxJxvwBhAlteDgODS8Mm78q+fyrF2G8n6Cjl6UdyS4gZ9Hxf1tip+s1KKo
         xJVV2ls7uZG82lbweqP6wkpiOt4fZiIpy74CC24EKEYBdl8Do71m0VFrHkKPtWhIXJcT
         AQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+a5hZwlpVKIZazK1H/kRuvmsJeCmlRdGb6812BsCapA=;
        b=b2sjXiyR38UOVTlDeaTaXZlC4CKYv5PzGjhhxHFzwmj8s3qcnIz9eR/VwgydthC+MT
         JlnWTrZAwsbHjPMRSnWVEFmxDtVzjhV60U8nUjLAjN4jwCdAopDVJnRABg5Nv+wI4rw9
         Bye9KE9wChok7992beLL9du9O8Ulg+vDiEE2C86US+MWVVQtKXd+HSDLRvC3XyujnfJ2
         3eV9gZiml8McvcCfF91RBeMyzy9LfkuCFTrHQyhKBGopWW1+iZ6BgAIGZt1HDdevGjzb
         CKSIbkbK/lnkht6FyduPdu8JKZbssL8HJ3GXgFSTkdVHR7vQ0fnCrFbF1PUSv9UUzt2A
         dQHg==
X-Gm-Message-State: AG10YOTTirPDCSpkpr0HYr3nDq0Q5iYWmObldL0ZjinPG4WJ2+2NuGMnkAC/q/Ic35ayYA==
X-Received: by 10.140.101.147 with SMTP id u19mr3818679qge.71.1455406915669;
        Sat, 13 Feb 2016 15:41:55 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id n65sm8340861qki.18.2016.02.13.15.41.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:41:55 -0800 (PST)
Date: Sat, 13 Feb 2016 23:41:16 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: linux_mon.c: Remove unneeded parentheses
Message-ID: <20160214044116.GA25811@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around single statement blocks in if conditions as
they are not required.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e9bb0ec..e5f9ec9 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -302,9 +302,8 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
 	struct WILC_WFI_mon_priv *priv;
 
 	/*If monitor interface is already initialized, return it*/
-	if (wilc_wfi_mon) {
+	if (wilc_wfi_mon) 
 		return wilc_wfi_mon;
-	}
 
 	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
 	if (!wilc_wfi_mon) {
-- 
2.5.0


