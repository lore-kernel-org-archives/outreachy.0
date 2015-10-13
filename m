X-GM-THRID: 6205175654152929280
X-Received: by 10.129.145.210 with SMTP id i201mr25212863ywg.1.1444755041473;
        Tue, 13 Oct 2015 09:50:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.36 with SMTP id tp4ls968969obb.72.gmail; Tue, 13 Oct
 2015 09:50:41 -0700 (PDT)
X-Received: by 10.182.98.196 with SMTP id ek4mr3274736obb.17.1444755041124;
        Tue, 13 Oct 2015 09:50:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si375243pac.2.2015.10.13.09.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 09:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ex6so26097524pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 09:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=LYZmgA0HKjG3w3eBUN9dFM0csviCdDEaOSWQOnHxTwU=;
        b=Sj/dkp/saYXUgC/0eGLUPFLtgc38LYj7C2ai5Xu0tfPyD3BYdmvGgM6Glmjk5MoP6c
         UBHfWKWOcHfFnIxzl9bl3zigtK5lixOOFR8SsHjKL32UqrB14YTb8w/ypfuMuZqWIyM0
         cMYNUuV4gNmLsDzeCNERP/IzQwBLW3k1AnyBA7B24s2ivgGYvwACJItR5yUfr/ANHMii
         sblpq4n8+XtUYPh1ETnKurcfFRu1fhKKHIkYDDGhZa/lDXAUy6l0hJTADg74oRkkdagP
         ZUTcH3SyB78Gqgtt8JsPJwsTDb+DPDZreNBv63x5ENWd139ObE46zkI72lp7rM7NemOi
         d0MA==
X-Received: by 10.68.244.34 with SMTP id xd2mr27450474pbc.0.1444755040988;
        Tue, 13 Oct 2015 09:50:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fk8sm4847541pab.33.2015.10.13.09.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Oct 2015 09:50:40 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: lov: Remove unused #include header file
Date: Tue, 13 Oct 2015 22:20:28 +0530
Message-Id: <1444755028-3159-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.561D365F.0146,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove lclient.h header since it is not used.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_object.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index e67df64..1837bbf 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -42,7 +42,6 @@
 #define DEBUG_SUBSYSTEM S_LOV
 
 #include "lov_cl_internal.h"
-#include "../include/lclient.h"
 
 /** \addtogroup lov
  *  @{
-- 
2.1.4


