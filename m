X-GM-THRID: 4837939871744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,682342c50be8dc45,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.119.231 with SMTP id kx7mr15042958pab.14.1425068649096;
        Fri, 27 Feb 2015 12:24:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.80 with SMTP id f77ls738840iod.39.gmail; Fri, 27 Feb
 2015 12:24:08 -0800 (PST)
X-Received: by 10.42.16.141 with SMTP id p13mr14827774ica.6.1425068648916;
        Fri, 27 Feb 2015 12:24:08 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id bo1si630397pbc.0.2015.02.27.12.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:24:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id g10so23530065pdj.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=SwpQzmRrKSYuA9cJm21qtqL1vVSLnE3+fVmX9nB+aVo=;
        b=qyZXCwuFPARiDsnNv1Zr4q+9NSGBRdDZ+O5L2CieNR4fQAp631LxznEZSU37OvNhO0
         uewdhFvtWc3hQAFA2Coytrlwjm0EyUt50tM+PISsma7suXihhIZSxGk35MWI/mMI9DJV
         ryAzhi9KtAbgcQg27FW1hmMUJoQzs4ObSP96bxZj3M/2Y+oy/NwEegdKoKAjE8R7S1dU
         DiwFYNwezAPJfopc3IDI5LpsyFLjKpuyNUMcidC7Fj8oSgmOgYUyCm9++XVgCcGM+f5R
         lIckvF5BOSIcFrXy0XOzBNwccXZkOnVrcDYNelaf4B82xgzsxcEpF7ArmKnPAy1IWWRO
         26YA==
X-Received: by 10.66.158.163 with SMTP id wv3mr26974159pab.53.1425068648771;
        Fri, 27 Feb 2015 12:24:08 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id r8sm4844137pdp.10.2015.02.27.12.24.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:24:07 -0800 (PST)
Date: Sat, 28 Feb 2015 01:53:45 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Change return type of function to void
Message-ID: <20150227202345.GA2034@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Return is made void as the function is only called once where its
return value is not used.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index baebe35..0fad714 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -398,7 +398,7 @@ static void rtl_bb_delay(struct adapter *adapt, u32 addr, u32 data)
 	}
 }
 
-static bool set_baseband_phy_config(struct adapter *adapt)
+static void set_baseband_phy_config(struct adapter *adapt)
 {
 	u32 i;
 	u32 arraylen = sizeof(array_phy_reg_1t_8188e)/sizeof(u32);
@@ -411,7 +411,6 @@ static bool set_baseband_phy_config(struct adapter *adapt)
 		if (v1 < 0xCDCDCDCD)
 			rtl_bb_delay(adapt, v1, v2);
 	}
-	return true;
 }
 
 /*  PHY_REG_PG.TXT  */
-- 
1.9.1


