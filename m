X-GM-THRID: 9590400876544
X-Received: by 10.236.228.163 with SMTP id f33mr9452478yhq.3.1427039748187;
        Sun, 22 Mar 2015 08:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.129 with SMTP id u1ls1657044qge.13.gmail; Sun, 22 Mar
 2015 08:55:48 -0700 (PDT)
X-Received: by 10.236.36.39 with SMTP id v27mr98764071yha.24.1427039748012;
        Sun, 22 Mar 2015 08:55:48 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ni4si1487065pdb.2.2015.03.22.08.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 08:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id xg6so151680850pab.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 08:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/EHTUFAiLhmZW2mpI3iQmyg4DhxvjQWy5SSQs4O/qUs=;
        b=W8q9MfHu9/Kd9bvt+rDUcm1ShtLdU3uOC0ctc0pZDuePq2Ml80d1riqjezd6mW4fgg
         E5y9JaUaEcN6vW3Azi+MHHUMq5LqNbqWBaJbbIz7+SqBLmBVmES/QU2Wm+Tqcv8ol+1I
         2HTQWIwFt6B17qSdwlRB8o37EAih6pvHr3PPOzsOtcyl2n38BForxaqi6zUifDlrlywI
         /Sr2aODLhj0LBdu0savic6/Di/W4e+JG/XFWAmbntYLre8h22nq0+yERKzgyeEqhOKdm
         8IDK0qSyk8DS6eNgDtTHFA/5FXFHlhDdp1GfpiDZdvHDa5ut0tGn6kKjQvcoJhNeM5TF
         sOgA==
X-Received: by 10.66.166.39 with SMTP id zd7mr188162965pab.117.1427039747799;
        Sun, 22 Mar 2015 08:55:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.249.51])
        by mx.google.com with ESMTPSA id zi5sm4667932pbc.39.2015.03.22.08.55.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 08:55:47 -0700 (PDT)
Date: Sun, 22 Mar 2015 21:25:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Remove struct typedefs
Message-ID: <20150322155542.GA1063@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove typedef for struct. Warning found using checkpatch.pl
WARNING: do not add new typedefs

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 03d96c0..74a3642 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -2,7 +2,7 @@
 #include "ddk750_reg.h"
 #include "ddk750_chip.h"
 #include "ddk750_power.h"
-typedef struct _pllcalparam{
+struct _pllcalparam {
 	unsigned char power;/* d : 0~ 6*/
 	unsigned char pod;
 	unsigned char od;
-- 
1.9.1


