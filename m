X-GM-THRID: 6209555630081966080
X-Received: by 10.50.176.225 with SMTP id cl1mr11348560igc.7.1445774839353;
        Sun, 25 Oct 2015 05:07:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.38 with SMTP id o35ls570327qgd.47.gmail; Sun, 25 Oct
 2015 05:07:18 -0700 (PDT)
X-Received: by 10.129.51.213 with SMTP id z204mr25083424ywz.20.1445774838898;
        Sun, 25 Oct 2015 05:07:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id sm2si1725929pab.0.2015.10.25.05.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 05:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so159950906pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 05:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=3j20EEqX8euwbphJgbEJ5otkexR1ysa8MPikoDp2J3Y=;
        b=BM0NpLV5iHiDEPElej5FgdP+MDxHqHItpvTWvN4rOUdbZdyRSNGL6+354Gw4U8KAhH
         cYyoBuBIl/p5lDGoMm4nbFgvTMC0QSvqk3evAJYO55dg+sgdYh8o0vh37dsw6imkamD4
         m6HNLU8cWnq2jTLz016D9YHjBCCwIU6lPd7nLAPyk5s0jSlhdSnMUh4caCsG3Vz9Y1SM
         PQnaXgzk7FPwkmo4/yxr6PzJXWM+fr4AwRuq6J6ON0+VIkpaw55kUz90aBInxEt2Hz4N
         RWYydubX67Lx8f+oD54Q1UyXHEpa1Flq8lFcSip8wA6cT3sG8fCzi/D9yn9Hf0KG6nwP
         eIxg==
X-Received: by 10.68.165.35 with SMTP id yv3mr16425338pbb.53.1445774838732;
        Sun, 25 Oct 2015 05:07:18 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sn9sm28505944pac.16.2015.10.25.05.07.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 25 Oct 2015 05:07:18 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/4] Staging: lustre: include: Remove unused obd_cache.h file
Date: Sun, 25 Oct 2015 17:36:57 +0530
Message-Id: <1445774820-9184-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
References: <1445774820-9184-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.562CC5F3.008A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the header file obd_cache.h since it is not needed
---
 drivers/staging/lustre/lustre/include/obd_cache.h | 38 -----------------------
 1 file changed, 38 deletions(-)
 delete mode 100644 drivers/staging/lustre/lustre/include/obd_cache.h

diff --git a/drivers/staging/lustre/lustre/include/obd_cache.h b/drivers/staging/lustre/lustre/include/obd_cache.h
deleted file mode 100644
index b5e1155..0000000
--- a/drivers/staging/lustre/lustre/include/obd_cache.h
+++ /dev/null
@@ -1,38 +0,0 @@
-/*
- * GPL HEADER START
- *
- * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 only,
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details (a copy is included
- * in the LICENSE file that accompanied this code).
- *
- * You should have received a copy of the GNU General Public License
- * version 2 along with this program; If not, see
- * http://www.sun.com/software/products/lustre/docs/GPLv2.pdf
- *
- * Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara,
- * CA 95054 USA or visit www.sun.com if you need additional information or
- * have any questions.
- *
- * GPL HEADER END
- */
-/*
- * Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
- * Use is subject to license terms.
- */
-/*
- * This file is part of Lustre, http://www.lustre.org/
- * Lustre is a trademark of Sun Microsystems, Inc.
- */
-
-#ifndef _OBD_CACHE_H__
-#define _OBD_CACHE_H__
-
-#endif
-- 
2.1.4


