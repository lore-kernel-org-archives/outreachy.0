X-GM-THRID: 5445984976896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1a6a5916f306b309,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.132.99 with SMTP id ot3mr22168191pbb.6.1425223073936;
        Sun, 01 Mar 2015 07:17:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.27.106 with SMTP id s10ls494435obg.73.gmail; Sun, 01 Mar
 2015 07:17:53 -0800 (PST)
X-Received: by 10.182.111.132 with SMTP id ii4mr21964162obb.2.1425223073724;
        Sun, 01 Mar 2015 07:17:53 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id nt14si1167658pab.2.2015.03.01.07.17.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:17:53 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lj1so833182pab.8
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=YsRXbcBfmsl5caH7fXYkijuzcmNR60nBnzsa40icxOU=;
        b=gYvIhpn8s+78onOFrlBcvZ9oipZyydlzVSoNRsinTNg6tidScykwIILdWzKRtyzqq1
         0qjzHpWX7vT2UrG7NqRgUIv8gRyFAfLJbzAUIqkB1UteMaUqZyLM5HqRbrbebn2Bgnnu
         /Y9l5zEt+cEg35vvO4iRAX3RVNumwX3dB/vq/LF51aqm4N4SI19AT6r74ta+yVftK6IC
         ATLraK/APGMR1RmrSvDYRxZDuIbXcRlurt1zlPpNzz209Q0rNn0Fu6vYym3O1Dtat5+y
         DXR/SLR6pGCaPmNZhkiDBSLoNCMrwIgnSz0ANksAc+igkc6B6Teo15sxbbn+vA387SLp
         eamw==
X-Received: by 10.70.45.199 with SMTP id p7mr40044512pdm.32.1425223073573;
        Sun, 01 Mar 2015 07:17:53 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id k14sm9357860pbq.53.2015.03.01.07.17.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:17:52 -0800 (PST)
Date: Sun, 1 Mar 2015 20:46:25 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unused variable.
Message-ID: <20150301151625.GA3232@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The patch was recognized by this Coccinelle script.
The return value of the function need not be assigned
to a variable.

@@
identifier f, ret;
type T;
@@
(
- ret =
+ return
  f(...);
  - return ret;
  
  |
  
  - T ret =
  + return
    f(...);
    - return ret;
)
    Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index 3b28754..8f1fdf1 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -230,7 +230,5 @@ int rtl88eu_download_fw(struct adapter *adapt)
 	_rtl88e_write_fw(adapt, pfwdata, fwsize);
 	_rtl88e_enable_fw_download(adapt, false);
 
-	err = _rtl88e_fw_free_to_go(adapt);
-
-	return err;
+	return _rtl88e_fw_free_to_go(adapt);
 }
-- 
1.9.1


