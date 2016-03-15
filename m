X-GM-THRID: 6262248427873107968
X-Received: by 10.66.236.199 with SMTP id uw7mr22108704pac.47.1458043547328;
        Tue, 15 Mar 2016 05:05:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.167 with SMTP id o7ls1214831ige.3.canary; Tue, 15 Mar
 2016 05:05:46 -0700 (PDT)
X-Received: by 10.50.36.68 with SMTP id o4mr16976033igj.7.1458043546851;
        Tue, 15 Mar 2016 05:05:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id i133si1555150ywe.7.2016.03.15.05.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:05:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x232.google.com with SMTP id y89so11833756qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s9ptLjVHt65Gd4AH8TKwG+mbCmsKIcOTzcP7qSJZuQ0=;
        b=mL55HB4p/ty3zbKBzInRu3S0pa0T/UvOiv7tYy4FL9P31B0NHv6y1SMdEZqYgsQBnS
         Z/eAP+/bf2iwRxxmguw2kLcKW+iRTyNQGFWHpNP+Qg/XnHiJcWVYlp8eIKyxL7xJJGyi
         mCRvsJ6AfZfRQfH2ZZh3ThCAH7pv+9AtJjWabbWHXDGdSlaN38SDWlOPMxtlK4LL49oq
         VTcdHGtsw+Xpp2YvFkSpHKJvhrcbIHPp6DfqxZywVzHd8b1OcUNUbxakWqXzgUygdaPc
         ZPNnvxDjbt0YK0z2d37c2IZ2x5juWmwgdWC7nTjii60bWB+stHFISu25WgFjwLdK7dFV
         F0+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s9ptLjVHt65Gd4AH8TKwG+mbCmsKIcOTzcP7qSJZuQ0=;
        b=J2+oAGVimtth3sy1MqpCOSphFKlloMjFzv2mRf+WHg/brenX+aCDhTqwbnWRzuNI4P
         iHkLaH+IvC1Im3Iaek7m8WKwuaf15I4maxzykIK5yhM66/AED3pgjeQOQDtxtcrl6jfv
         C39eIJ4KL0C+Cn1XUEDDiUkGhrWW7wF0r4dT/x5TI660jwsXyS5Bpz2MUU3libP/jkZu
         D5Yvj8leUv/n6SwCwiPUGKVB5CCedwrOlAF3tRd/1DBPPu3Mk47DmxGMG+9lLPF76CdV
         MMWKd4OpWNWAARfWYoQa5+OY17SDp2ZJ5l5bFNetIYHrgQ/jSO+rR+l3EU/FtvhsMU46
         nt+w==
X-Gm-Message-State: AD7BkJLYUkNB9Gs4T1NpuC4c1wWSfHpLM6R4RiqpjYKfkuGVFht1djjmLSu52h5ti8c89Q==
X-Received: by 10.140.30.10 with SMTP id c10mr37528410qgc.87.1458043546563;
        Tue, 15 Mar 2016 05:05:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id f108sm12536644qgf.15.2016.03.15.05.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:05:46 -0700 (PDT)
Date: Tue, 15 Mar 2016 09:05:42 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/6] staging: rtl8188eu: usb_halinit.c: removes else after
 return
Message-ID: <eebf45e72754ebca7e45fc966497fcccf02d0166.1458043217.git.juliana.orod@gmail.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes an unnecessary else after a return
that was causing a checkpatch issue.

WARNING: else is not generally useful after a break or return
+			return status;
+		} else {

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 9cdd37d..9ae75c8 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -790,11 +790,11 @@ static u32 rtl8188eu_hal_init(struct adapter *Adapter)
 			DBG_88E("%s: Download Firmware failed!!\n", __func__);
 			Adapter->bFWReady = false;
 			return status;
-		} else {
-			RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
-				("Initializeadapt8192CSdio(): Download Firmware Success!!\n"));
-			Adapter->bFWReady = true;
 		}
+		RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
+			("Initializeadapt8192CSdio(): Download Firmware Success!!\n"));
+		Adapter->bFWReady = true;
+
 	}
 	rtl8188e_InitializeFirmwareVars(Adapter);
 
-- 
2.7.2


