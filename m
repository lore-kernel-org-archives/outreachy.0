X-GM-THRID: 108667076608
X-Received: by 10.236.70.100 with SMTP id o64mr16138265yhd.9.1424178663275;
        Tue, 17 Feb 2015 05:11:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.173 with SMTP id 42ls2634915qgb.55.gmail; Tue, 17 Feb
 2015 05:11:03 -0800 (PST)
X-Received: by 10.236.70.100 with SMTP id o64mr16138254yhd.9.1424178663091;
        Tue, 17 Feb 2015 05:11:03 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com. [209.85.220.46])
        by gmr-mx.google.com with ESMTPS id bo1si2138274pbc.0.2015.02.17.05.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 05:11:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.46 as permitted sender) client-ip=209.85.220.46;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.46 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-f46.google.com with SMTP id eu11so6238884pac.10
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 05:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XWbK8zf7AtbIvH3HcbroxYkVSMLJEjkGsyT5CwF9m6k=;
        b=cexGMYSwIwrlgJAAaO7V8U4nLvSE2ODxxEkiXv61gNgXk1XhR+J9Z26+5EJd+7p8cK
         +DHSNZMCbq71b52WjfmbElxJhD5+r9egAAYBX6ifNxq2BNSUQdICmnMXiS2qJAIwcuKV
         hsey2VAlr/w30tRmt4ScJMfypPtRvBdZHWL5EuwQV26n4QwLxsSUDx2O6uvkfYaOxPrr
         MeQkTyUWAUVvjSbWDBP3Bbs3EtnLC+1qe/FGMLBZOLpi7fajcckm/VcDY08agk8oclJm
         2DJI8D1O3VG7A9YTqL48m82WQMVnzLzO9cdg/FbLXLlzliVobkP7oq24/MY68/e895oM
         vPSA==
X-Received: by 10.70.140.162 with SMTP id rh2mr34277808pdb.131.1424178662953;
        Tue, 17 Feb 2015 05:11:02 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id sf7sm17601048pbc.29.2015.02.17.05.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 05:11:01 -0800 (PST)
Date: Tue, 17 Feb 2015 18:40:48 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [Patch] Staging: emxx_udc: Convert from
 __attribute__((aligned(size))) to __aligned(size).
Message-ID: <20150217131048.GA5235@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch addresses the checkpatch.pl warning

WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index ee1b80d..90c5d1d 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -535,8 +535,7 @@ typedef struct _T_FC_REGS {
 
 	u8 Reserved1200[0x1000-0x200];	/* Reserved */
 
-} __attribute__ ((aligned(32))) T_FC_REGS, *PT_FC_REGS;
-
+} __aligned(32) T_FC_REGS, *PT_FC_REGS;
 
 
 
-- 
1.9.1


