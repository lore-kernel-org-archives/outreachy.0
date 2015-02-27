X-GM-THRID: 4342409068544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82ce42717c948575,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.34.133 with SMTP id z5mr12828734obi.3.1425030506696;
        Fri, 27 Feb 2015 01:48:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.119.199 with SMTP id kw7ls249427obb.30.gmail; Fri, 27 Feb
 2015 01:48:26 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr13080055obc.22.1425030506451;
        Fri, 27 Feb 2015 01:48:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id xj4si414726pbc.2.2015.02.27.01.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 01:48:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id z10so19878140pdj.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 01:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Rvi+zxuWHwuD2NLAYb/93D47DFLcJ+ZLJOemQMkvf2g=;
        b=q2ZJTgs+Pq0jvz6wXfe0impVljr++7cR74QIzLH6YSr1+2IAgSfpm12snUBlETVgq2
         nWOohysc3HucJrltl0hxbAghK4G8RcUTUa2DN0ZDbOD885X4FsrdnrKGjet4DQGV93uw
         4zutEAOCCfSqgPPpHf1/+WDhCq2i38smZ+eu1IhRKFrlJpm9Qv6omepQF+OADd7Zdwx8
         V+ApXn4SmxliJZdQfb9NUUzAXqrtd+gMYy7ukcvwtIKCQBY4rPkk97XaKINHPFZqLYir
         IVdDTFZ+ycsVzcr1MtJTHPL/6yWDKqNBiFyRdM0MOCpQq30E/bgweUTMTLsrzUvb9RCF
         JIZQ==
X-Received: by 10.70.89.135 with SMTP id bo7mr22656083pdb.93.1425030506280;
        Fri, 27 Feb 2015 01:48:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ss9sm3346776pbc.96.2015.02.27.01.48.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 01:48:24 -0800 (PST)
Date: Fri, 27 Feb 2015 15:18:02 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Move variable assignment
Message-ID: <20150227094802.GA12516@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Variable path_on is assigned explicitly in the if branch and so
its assignment outside can be moved to the else branch.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 56c0bc9..006b723 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -980,11 +980,11 @@ static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
 	u32 path_on;
 	u32 i;
 
-	path_on = is_path_a_on ? 0x04db25a4 : 0x0b1b25a4;
 	if (!is2t) {
 		path_on = 0x0bdb25a0;
 		phy_set_bb_reg(adapt, adda_reg[0], bMaskDWord, 0x0b1b25a0);
 	} else {
+		path_on = is_path_a_on ? 0x04db25a4 : 0x0b1b25a4;
 		phy_set_bb_reg(adapt, adda_reg[0], bMaskDWord, path_on);
 	}
 
-- 
1.9.1


