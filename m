X-GM-THRID: 135506427904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2402c1ea35d84fcd
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.160.3 with SMTP id xg3mr716447lbb.5.1424364355116;
        Thu, 19 Feb 2015 08:45:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls165497lam.85.gmail; Thu, 19 Feb
 2015 08:45:54 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr730271lbc.2.1424364354648;
        Thu, 19 Feb 2015 08:45:54 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id l8si144136wia.0.2015.02.19.08.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 08:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so10480392wid.5
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 08:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=u0jJCYeDHoXJCMx0Z3iBCNg2MYBs0WmL2juESAKj2Hs=;
        b=TSEgEbcO/q7PX5V55EUDJhNU694WE3u5Hf+dKgwJDkL5Axz/14pfiV+Cu2VL8i/5K5
         OKMtm9h6UUx4uzpNDYuEGVoiYLc6VtVDU/REj8GHjcoqafcIO0KUypcHb6US4jTJ7O46
         c0IF++jVaofTgUWr3i+GDQJsUOWdIYUQM500jDGC5tQEBsEzYjmbedZJhyA1UXlE/fje
         f5h8n9LpsOmDaNPqrzAGnN4BpSMPI1eBA7jnc2vUCzKcF7nCFhMJJxM8rbvRL/IpIcll
         Mif0l3qiJ7VokEysVVkVPIZEwrqCr5knlcHw5RHDAM04fWZFnhMoBe9UpGEf4o3I/nZI
         sF4A==
X-Received: by 10.180.75.132 with SMTP id c4mr11607073wiw.78.1424364353733;
        Thu, 19 Feb 2015 08:45:53 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id gz3sm18811281wib.1.2015.02.19.08.45.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 08:45:52 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: emxx_udc: Convert from __attribute__((aligned(size))) to __aligned(size)
Date: Thu, 19 Feb 2015 18:45:43 +0200
Message-Id: <1424364343-3944-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This fixes the following checkpatch.pl warnings in emxx_udc.h file:
WARNING: __aligned(size) is preferred over __attribute__((aligned(size)))

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
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


