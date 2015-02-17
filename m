X-GM-THRID: 135506427904
X-Received: by 10.140.196.209 with SMTP id r200mr14584012qha.0.1424184668410;
        Tue, 17 Feb 2015 06:51:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.234 with SMTP id nr10ls899032obb.66.gmail; Tue, 17 Feb
 2015 06:51:08 -0800 (PST)
X-Received: by 10.182.108.193 with SMTP id hm1mr25887764obb.43.1424184668132;
        Tue, 17 Feb 2015 06:51:08 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com. [209.85.220.48])
        by gmr-mx.google.com with ESMTPS id ki8si2164640pdb.1.2015.02.17.06.51.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 06:51:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.48 as permitted sender) client-ip=209.85.220.48;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.48 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so6809844pab.6
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 06:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=7qebTEX4VwtsgUJmcMtopwjY79yDinynOjB3YUTEfhw=;
        b=tzX415ykbikTX5qv3wtTEzhNdqh8edlcw06rukzGhBeeW7Haf2BgWs5gY3uOAkJlQS
         VYfXhMNguog4glB6+tXIcg7VBElOpEtSJ5v4HVgMxkkDAIEvS5iemBJlE5SYQzblbfBP
         zDUiXyH+8i3WhRIRffXFFYbVXUr4pR5BupIwTgBFLfCcQh3APY/L+wY47SMykdK1hvX2
         JetQw+3lP88VMoO9BqyJaUiPPHhs4qEZDanpwPxoq6YLUMJlxuW0tphB0j8gJ3r/twt6
         etWSPkNovW0Ke+eMSmPPk5Sk2HlQtrxItAIFSlJyh8q+phVNnGdfRUC4ozCdE2rfE04V
         rWrg==
X-Received: by 10.70.30.3 with SMTP id o3mr47147944pdh.114.1424184668011;
        Tue, 17 Feb 2015 06:51:08 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id v2sm17868797pdm.77.2015.02.17.06.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 06:51:06 -0800 (PST)
Date: Tue, 17 Feb 2015 20:20:54 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size)
Message-ID: <20150217145054.GA6161@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch addresses the checkpatch.pl warning
WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

aligned(x) is a macro :
#define __aligned(x)                   __attribute__((aligned(x)))

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index ee1b80d..2ac216f 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -535,7 +535,7 @@ typedef struct _T_FC_REGS {
 
 	u8 Reserved1200[0x1000-0x200];	/* Reserved */
 
-} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
+} __aligned(32) T_FC_REGS, *PT_FC_REGS;
 
 
 
-- 
1.9.1


