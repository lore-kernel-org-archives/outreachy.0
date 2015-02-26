X-GM-THRID: 3774394400768
X-Received: by 10.66.196.11 with SMTP id ii11mr8015087pac.37.1424955734803;
        Thu, 26 Feb 2015 05:02:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.10 with SMTP id d10ls30056obr.11.gmail; Thu, 26 Feb
 2015 05:02:14 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr8396133obc.22.1424955734618;
        Thu, 26 Feb 2015 05:02:14 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id nt14si80031pab.2.2015.02.26.05.02.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 05:02:14 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so12789062pdj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 05:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SCSqRJJb1qpuAGUBOx3c6DaM5rp4pjqQCBkrEOmmBEs=;
        b=htqnegaj9hF0LZZ2/H2AjwqieBmXnI2TmhhKkq+tm5yEgt/BeLAKgDX8ew+YTqCbz8
         YYVW9GsCWT9CHC1MUd8n7LToklgcscpaaIEw+WKPc7NWAXQQI5YIEyC7HUnf9/uJn4aG
         gtH1ihCe58ICMowrsirm4iqUakpqK+QNv4qPZSJvr3bNUxF6QXV/4gpLeUf7bkJ+WZhz
         nxmcnWIA3UJIcS5zRfKyQGodPkeBD9JH4dddTpS6tt3ZQeYLSte0KXl+uRmxLswtwkSg
         6lLWoEnDI1xaQ8altRn5OobD0LEkmJUV8P9MF9uGTwYZ8B6s0NLJjA4zkOk9BEGvALcj
         6OBQ==
X-Received: by 10.68.130.101 with SMTP id od5mr14889226pbb.108.1424955734493;
        Thu, 26 Feb 2015 05:02:14 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id s4sm1008200pdd.40.2015.02.26.05.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 05:02:13 -0800 (PST)
Date: Thu, 26 Feb 2015 18:31:52 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: rtl8188eu: Remove redundant if condition
Message-ID: <20150226130152.GA23206@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if condition as !result is always false.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---

Changes in v4: Added "Staging: rtl8188eu" to commit message.
Changes in v3: Removed unneeded newline after if condition to
                follow kernel coding conventions.
Changes in v2: Removed {} around the outer if condition as
                it has single statement.

 drivers/staging/rtl8188eu/hal/phy.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a91bc6d..a708ff9 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -361,7 +361,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 {
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	u8 tmpchannel = hal_data->CurrentChannel;
-	bool  result = true;
 
 	if (hal_data->rf_chip == RF_PSEUDO_11N)
 		return;
@@ -371,15 +370,10 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 
 	hal_data->CurrentChannel = channel;
 
-	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
+	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
 		phy_sw_chnl_callback(adapt, channel);
-
-		if (!result)
-			hal_data->CurrentChannel = tmpchannel;
-
-	} else {
+	else
 		hal_data->CurrentChannel = tmpchannel;
-	}
 }
 
 #define ODM_TXPWRTRACK_MAX_IDX_88E  6
-- 
1.9.1


