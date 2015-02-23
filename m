X-GM-THRID: 2747840593920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,73676da7c7ae513,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.176.35 with SMTP id cf3mr10807875obc.8.1424684509698;
        Mon, 23 Feb 2015 01:41:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.230 with SMTP id 93ls2161551qgj.75.gmail; Mon, 23 Feb
 2015 01:41:49 -0800 (PST)
X-Received: by 10.236.26.179 with SMTP id c39mr10992885yha.27.1424684509550;
        Mon, 23 Feb 2015 01:41:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ks4si4138742pbc.1.2015.02.23.01.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id bj1so26202487pad.5
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yTyuUeGg4wlarp9E7aI1yR14D/513yOKbzfrdjEja98=;
        b=Wndo8DlqSO9+5xML9Za7hO5ji3wm8FrYXSk8G+KdoNeFH50L0CIoUG44kdvLK1iby2
         Vlf6kvO1Dz/6IqXRsY41FHeQQUDXsA7LxifXrCUKYjaoCImaPznA0ld+U0JLb1PilYCR
         16u4emB+XyUTJwKX6fH/riwnhtlaAIdUuckQh3KCb7WACT/QrP51x/DF4Tzmgbi0Cv56
         ovnzGkK83kPCeaVLrZYkxrmuLM6ovyv9VUMwgt0oOOJXZmkq/Hgqjr0NboM2fDMOHNGE
         gLJccnFSdYJZt5w6nr4MnVLXb3JbgH82r494Rb7q6pGbT/Llef8ksUyeJSQ+NcDYtBrP
         4atw==
X-Received: by 10.68.106.226 with SMTP id gx2mr18161395pbb.78.1424684509411;
        Mon, 23 Feb 2015 01:41:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id i6sm35102135pdr.17.2015.02.23.01.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:41:48 -0800 (PST)
Date: Mon, 23 Feb 2015 15:11:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8188eu: Remove unused variable
Message-ID: <20150223094130.GA4668@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

We only need the last 8 bits of the offset variable so we can
directly operate on it instead of introducing unneeded
newoffset variable.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Changed commit message to make it more descriptive.

 drivers/staging/rtl8188eu/hal/phy.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 623fb4f..341f0db 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -117,10 +117,9 @@ static void rf_serial_write(struct adapter *adapt,
 	u32 data_and_addr = 0;
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	struct bb_reg_def *phyreg = &hal_data->PHYRegDef[rfpath];
-	u32 newoffset;
 
-	newoffset = offset & 0xff;
-	data_and_addr = ((newoffset<<20) | (data&0x000fffff)) & 0x0fffffff;
+	offset &= 0xff;
+	data_and_addr = ((offset<<20) | (data&0x000fffff)) & 0x0fffffff;
 	phy_set_bb_reg(adapt, phyreg->rf3wireOffset, bMaskDWord, data_and_addr);
 }
 
-- 
1.9.1


