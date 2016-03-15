X-GM-THRID: 6262126512629088256
X-Received: by 10.140.25.227 with SMTP id 90mr21195694qgt.17.1458015107575;
        Mon, 14 Mar 2016 21:11:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.85 with SMTP id h82ls26081ioh.63.gmail; Mon, 14 Mar
 2016 21:11:47 -0700 (PDT)
X-Received: by 10.66.236.129 with SMTP id uu1mr20799658pac.18.1458015107100;
        Mon, 14 Mar 2016 21:11:47 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id k13si1331884ywe.1.2016.03.14.21.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:11:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id s5so2331838qkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s9ptLjVHt65Gd4AH8TKwG+mbCmsKIcOTzcP7qSJZuQ0=;
        b=h65bNiJi9/oFtIabum+KyPdl37KBKNC22s2kRSDUztLAyB/AXaZI0XLepryedQyWC3
         wDQrY8zAoloSsqs3sZKC218GjA9zUOwiD/nv2x5IBP0/lyBcWJ2HWdKtfDzZFbSYWG+H
         aBvCPHGZUZyCOE4Nkgp07B45QHB6YJt+2xYePJkG517xTWrKewapNgsK3UkzTrkBmDoo
         xVkHNHGqbpLqRevaRMu9DM+D/ZGQflkhoubvcIelyQTiXwTAfmMw/13jjbBppIDyLIvx
         wOOGZUr6Vq/7cN6ItrdRHQrbv+rNKlZXU/ovtU9OV7Jm2ScukjXoB87vpczgtqYs+0Jj
         V2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s9ptLjVHt65Gd4AH8TKwG+mbCmsKIcOTzcP7qSJZuQ0=;
        b=VRqKQ0+IUtGsfSo5t+tI6FdTJCJn3hX1h+uimr2e8DdLL/wLhuxzGXdH+5KWTVW5mA
         VDpI33kKGUHO+lYNJaR7x1p1FUy5i1MTsdL1c8T2Rcj3d3eTxfXGCajs72+s1tSvObLV
         y89+4ZxASkSnkllyi/IF76UdxQb7N9ID6xyUQvFYTTdPzQXu0OWfUlH1kk1tfY/28eou
         oRl1B21KFzNAf8bgsI58OKjzHzmpQX4A+OmHZ/Vk4QfK/7NUFK7D5W72Jd1cOeylQ+Eg
         vimKa/DfU5ld5seM8X9/tcRGLKIXetcLF9S45kVfXlgxpJjUMVBlwebmtMpEGnEbiy9B
         HT3A==
X-Gm-Message-State: AD7BkJIZjkHew7vXEeOtha6/3zXNcV7Dzh4Ct77TBiHn5AqVK2kJC1SAC7qNLKxBWPEcwg==
X-Received: by 10.55.207.82 with SMTP id e79mr34760959qkj.102.1458015106736;
        Mon, 14 Mar 2016 21:11:46 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id l33sm11875208qge.11.2016.03.14.21.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:11:46 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:11:43 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rtl8188eu: usb_halinit.c: removes else after
 return
Message-ID: <eebf45e72754ebca7e45fc966497fcccf02d0166.1458014176.git.juliana.orod@gmail.com>
References: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458014176.git.juliana.orod@gmail.com>
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


