X-GM-THRID: 6211433707094409216
X-Received: by 10.182.27.101 with SMTP id s5mr6139318obg.35.1446213797578;
        Fri, 30 Oct 2015 07:03:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.70 with SMTP id o6ls169268igj.20.gmail; Fri, 30 Oct 2015
 07:03:17 -0700 (PDT)
X-Received: by 10.68.92.35 with SMTP id cj3mr6219296pbb.11.1446213797062;
        Fri, 30 Oct 2015 07:03:17 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id sm2si683766pab.0.2015.10.30.07.03.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:03:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so78664147pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 07:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Qga0HI2nUvj7mP701acendz/oZalx9Ms1h/se96D4Rg=;
        b=YECn46XdWGzzkg2/xCoqJrtjzuiI5HGaKlKuo2xnzfq90XKGA3dx86bS8ZzbPe/vxE
         WRT+ZUnbARzXxVRhAqJniDmrv+tPdhCXeqkf+kLi51iKoMs+696so0Mysjj/QIbh5+Xd
         lL7ytG0qXP4Z1DDIFJwhtra3fSDdm6Uy/3/FOsKXiV/AXyjQEknImDZV6FKjaOwhpJCJ
         mQ3BjGZRCCoNqgw4PP9t1Y8hbLPaI7kB22zGO/6cVfu1la8M7UOAMT+H8nlq29XPZSt2
         ssaaCbUTH45wlN3+X/EKgVBxCnAv+pOo3IonJ959C6rm7yaEUEz04T9xn0TcL7ENA3rM
         J9Sw==
X-Received: by 10.68.185.67 with SMTP id fa3mr8853749pbc.113.1446213796962;
        Fri, 30 Oct 2015 07:03:16 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id d2sm8483837pat.24.2015.10.30.07.03.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 07:03:16 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/2] Staging: dgnc: Remove unused #include header file
Date: Fri, 30 Oct 2015 19:33:03 +0530
Message-Id: <1446213783-30267-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
References: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563378A3.0194,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Since the things defined by digi.h are not used in dgnc_utils.c,
remove the header from this file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v2-
 Made commit message clearer.

 drivers/staging/dgnc/dgnc_utils.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_utils.c b/drivers/staging/dgnc/dgnc_utils.c
index f76de82..95272f4 100644
--- a/drivers/staging/dgnc/dgnc_utils.c
+++ b/drivers/staging/dgnc/dgnc_utils.c
@@ -1,7 +1,6 @@
 #include <linux/tty.h>
 #include <linux/sched.h>
 #include "dgnc_utils.h"
-#include "digi.h"
 
 /*
  * dgnc_ms_sleep()
-- 
2.1.4


