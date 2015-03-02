X-GM-THRID: 5841740627968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2202a9cb6df1b0d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.166.77 with SMTP id ze13mr14257733vdb.9.1425277469572;
        Sun, 01 Mar 2015 22:24:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.227 with SMTP id i3ls838794igt.38.canary; Sun, 01 Mar
 2015 22:24:29 -0800 (PST)
X-Received: by 10.67.29.231 with SMTP id jz7mr25839278pad.9.1425277469420;
        Sun, 01 Mar 2015 22:24:29 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pc4si1422467pac.0.2015.03.01.22.24.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 22:24:29 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id lf10so40883198pab.12
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 22:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=m4o4+NUUJ/9kJoHtp+yvcoD4zQkagOgys/H0kJycDdg=;
        b=Cv0lYH8oakCUuTCZ0nQzN+mblZ/EuZ02gcMQGTfa8f25Up6zMIVMnLcXm1FQbVU39l
         apiqYbfK4tC32R6utYUwSbBE0eAlPcD+P/KXbTKffDQtuXGNFaaUi79ytRxbiDqSlchg
         2TB11NUakA4/ccchtN/ypUa1CoNkigbETEQysaSqQ0I7LYEBjq6O20rkPun57tBKSVfh
         +KMcjeXlm2krnsoSqxPv/b7iBbdgNoowh8M5f1yKY0RMOuVkkgUG/aInOt+rcM9F3K/Q
         sxahGEkAkBbDUWivrFGJtGunNPFL58OiRbYDZEu2TNmodTREaWfqBwZErM4rMWe7UfBs
         S7Cw==
X-Received: by 10.66.102.4 with SMTP id fk4mr43757735pab.111.1425277469369;
        Sun, 01 Mar 2015 22:24:29 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([183.82.106.99])
        by mx.google.com with ESMTPSA id ki10sm10749671pbd.47.2015.03.01.22.24.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 22:24:27 -0800 (PST)
Date: Mon, 2 Mar 2015 11:52:59 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: rtl8188eu: Change return type of function to
 void.
Message-ID: <5f87ec04f916a76aed86f9e03da6fb417682a487.1425276736.git.vatikaharlalka@gmail.com>
References: <cover.1425276736.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425276736.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Return is made void as the function return value is not used
when it is called.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 2d3d012..bbda569 100644
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


