X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.207.230 with SMTP id n66mr94378971yho.30.1426985509939;
        Sat, 21 Mar 2015 17:51:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.48 with SMTP id u45ls2045955qgd.58.gmail; Sat, 21 Mar
 2015 17:51:49 -0700 (PDT)
X-Received: by 10.236.201.110 with SMTP id a74mr18280345yho.45.1426985509715;
        Sat, 21 Mar 2015 17:51:49 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gu4si1335430pac.1.2015.03.21.17.51.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:51:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so149654507pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=D/LspMawtKFmwde4LM8soGctEc7D9EKqzc7lvmq5y2M=;
        b=P/HpuKItFEBJtfH53S+jg/6Pps227tTnZgY0baurDJ6GT8b2TElcq20Gx7rhOdAxTQ
         CJpxlHoXKW4hYdocTLp4WM+qe+CjlITfKPNl5AXjwQpanNDF9IQMGrni0CYsmG7sudHP
         +UmLfwjxfaRD8MG874bfnyFotaEkGEFA1CG+CbkyF8qwh4deuWNQyGZJ9/gepTfBeuAm
         TD5TCC4OO43dNVL+Q7zPBhPUgiSaU9sanHDSlZxC69EVyGTeZlHBYNrLRc7366fCkAFP
         23AzaWEmzT+EobgDUcm9x+WdCwGd9UkXdU77MP4id3D4s5bbBbNIyRtQJaBMWljoLuE7
         B9Pg==
X-Received: by 10.70.140.67 with SMTP id re3mr90425326pdb.19.1426985509572;
        Sat, 21 Mar 2015 17:51:49 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id x4sm12696523pas.40.2015.03.21.17.51.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 17:51:48 -0700 (PDT)
Date: Sun, 22 Mar 2015 06:19:47 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 01/10] Staging: rtl8712: Fix incorrect assignment type in
 ieee80211.c
Message-ID: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix Sparse warning due to incorrect assignment type in ieee80211.c :

drivers/staging/rtl8712/ieee80211.c:182:20: warning: incorrect type in assignment
drivers/staging/rtl8712/ieee80211.c:182:20: expected unsigned short
drivers/staging/rtl8712/ieee80211.c:182:20: got restricted __le16

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 5786808..d75a7b0 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -179,7 +179,7 @@ int r8712_generate_ie(struct registry_priv *pregistrypriv)
 	sz += 8;
 	ie += sz;
 	/*beacon interval : 2bytes*/
-	*(u16 *)ie = cpu_to_le16((u16)pdev_network->Configuration.BeaconPeriod);
+	*(u16 *)ie = (u16)pdev_network->Configuration.BeaconPeriod;
 	sz += 2;
 	ie += 2;
 	/*capability info*/
-- 
1.9.1


