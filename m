X-GM-THRID: 6209375197445750784
X-Received: by 10.182.19.195 with SMTP id h3mr9689003obe.25.1445732823768;
        Sat, 24 Oct 2015 17:27:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.137 with SMTP id w9ls559751igl.38.gmail; Sat, 24 Oct
 2015 17:27:03 -0700 (PDT)
X-Received: by 10.68.245.234 with SMTP id xr10mr9802651pbc.7.1445732823422;
        Sat, 24 Oct 2015 17:27:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si2891376pbc.1.2015.10.24.17.27.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 17:27:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so151262720pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 17:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=OROO0YE/sGTtK/TjnLnyI5K2q0a1ZRedHjivdu/dNvM=;
        b=uHwawV/qcJC0WrnDMvs9BproCPnWLFZ1AYbP+uxK4Btndz8+ERiKbz5lRqB+K1IbeL
         H9PZk8tvCu72gTCdNuoBZURvUYJPPNSmnnZt3o+FSiLJq68gX3stzp97+AmL6OR6o89t
         NhoWWFdTrav8fOYcHNZm5/AykB53l4KHPp7ImZLP4cwdoSn9PHxZl0RcMFkQgsTtdI3G
         MhRizDOQysL7ZwafIcTvIOOr/Dz5jtPbVA27tQELll5K4AwL56V6NF1sleffMnNM+SEf
         GR5sesYak2n8LOSqD11dTvwhO7D1pzhC6FwxObGoVbDlx7aUhdUeHvHz+N7mmehU69wH
         ch5g==
X-Received: by 10.68.193.5 with SMTP id hk5mr13747747pbc.152.1445732823303;
        Sat, 24 Oct 2015 17:27:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tk4sm26267942pab.45.2015.10.24.17.27.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 17:27:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: Remove unused obd_cache.h file
Date: Sun, 25 Oct 2015 05:56:55 +0530
Message-Id: <1445732815-7251-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

Remove the header file obd_cache.h since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
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


