X-GM-THRID: 6392958806119153664
X-Received: by 10.107.53.232 with SMTP id k101mr5036446ioo.36.1488476713248;
        Thu, 02 Mar 2017 09:45:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.130 with SMTP id o124ls2207674ioe.53.gmail; Thu, 02
 Mar 2017 09:45:12 -0800 (PST)
X-Received: by 10.98.9.141 with SMTP id 13mr3090711pfj.10.1488476712090;
        Thu, 02 Mar 2017 09:45:12 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si1687368pfd.3.2017.03.02.09.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 09:45:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e66so1715804pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 09:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=6E6CruJlpvNc7OW1vxdjJHCBcD6ISP6rVmQ3T3wVHNk=;
        b=ac5aN0zwzPpFLZD1LVzTXmq6YAbcEB19M+Y9Znr1vh7xrokBuh2VaRs7EN1Anb5SMv
         xZqrUEv4VRmxY/q2f24yeZspddhHTt+kTdzzazYmNeZIsuibzhKWpxf1Ol1M61kYnNQw
         Wg1r7CRvmpi9Sgvcb/0ADDdJs9nUFqiIm/TJL0gULU25d8pmri8UmxnWCI/KcEsi/isU
         xgJf8kN8p1tZN4IoG+lDKuV/C1Yc8hkaI7siTKlJuZm32wGZu25rzRGt0hXIBjr8Mgvn
         lrLj4eIEDF/L/eoyZMLUYsaF8W+ZDcE103XowjgG+9w1ytLud+ZOKrdmYy1begpFCLPm
         J2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6E6CruJlpvNc7OW1vxdjJHCBcD6ISP6rVmQ3T3wVHNk=;
        b=hd4hD69WQM6H+VwU9WUDugyWYbhQnSmVQQR/nR1LYRxbDh7K6jJhOzXyTn687D6LOu
         2S9B84s4MvT7WhpScW+HVbd6j81KHS3scgGWS3R9ZUEzEq7jbzk61XGHh6FIHIDLGgbH
         cIPY3bVcZJ5Ndlzy23XdUI6twbimkvODXVsIUIXHU3T3yrk661NgVTpWfcCXaBCfAkMP
         yH4ZUNAX2TFh3JqWvIsLdIi/Vm5XpStZriPYTevqNDCsycbQS1Li6hgsTd64vE3lvWFz
         Eu5s+nmv7j5oPQzPCc3dbPzWpjka0D0rzfG/nM1KxaJP8/OhGqYwwXFSv0WvTT+/XsBZ
         78CQ==
X-Gm-Message-State: AMke39njHPH4qrqxeUZ99XZrOZ56/iNCdy2ooAsN05AHL7b+eFRk5JhnK6UrXSScnBFIUg==
X-Received: by 10.98.219.3 with SMTP id f3mr6915484pfg.181.1488476711824;
        Thu, 02 Mar 2017 09:45:11 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id d10sm18343837pfl.59.2017.03.02.09.45.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 09:45:11 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: lustre: Remove lustre_eacl.h
Date: Thu,  2 Mar 2017 23:12:55 +0530
Message-Id: <1488476575-16322-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The structures and the macros in the header file are not used
anywhere inside the kernel (verified by using grep). The structures
and macros were leftover from the patch
341f1f0affed1c24712f37c95bb654b3b33ab2c6 "staging: lustre: remove
remote client support". Also, removed the include statements for
lustre_eacl.h.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 .../staging/lustre/lustre/include/lustre_eacl.h    | 74 ----------------------
 .../staging/lustre/lustre/llite/llite_internal.h   |  1 -
 drivers/staging/lustre/lustre/llite/xattr.c        |  1 -
 3 files changed, 76 deletions(-)
 delete mode 100644 drivers/staging/lustre/lustre/include/lustre_eacl.h

diff --git a/drivers/staging/lustre/lustre/include/lustre_eacl.h b/drivers/staging/lustre/lustre/include/lustre_eacl.h
deleted file mode 100644
index c198eda..0000000
--- a/drivers/staging/lustre/lustre/include/lustre_eacl.h
+++ /dev/null
@@ -1,74 +0,0 @@
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
- * http://www.gnu.org/licenses/gpl-2.0.html
- *
- * GPL HEADER END
- */
-/*
- * Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
- * Use is subject to license terms.
- */
-/*
- * Copyright (c) 2011, 2012, Intel Corporation.
- */
-/*
- * This file is part of Lustre, http://www.lustre.org/
- * Lustre is a trademark of Sun Microsystems, Inc.
- *
- * lustre/lustre/include/lustre_idmap.h
- *
- * MDS data structures.
- * See also lustre_idl.h for wire formats of requests.
- */
-
-#ifndef _LUSTRE_EACL_H
-#define _LUSTRE_EACL_H
-
-/** \defgroup eacl eacl
- *
- * @{
- */
-
-#ifdef CONFIG_FS_POSIX_ACL
-
-#include <linux/fs.h>
-#include <linux/posix_acl_xattr.h>
-
-struct ext_acl_xattr_entry {
-	__u16		   e_tag;
-	__u16		   e_perm;
-	__u32		   e_id;
-	__u32		   e_stat;
-};
-
-struct ext_acl_xattr_header {
-	__u32 a_count;
-	struct ext_acl_xattr_entry a_entries[0];
-};
-
-#define CFS_ACL_XATTR_SIZE(count, prefix) \
-	(sizeof(prefix ## _header) + (count) * sizeof(prefix ## _entry))
-
-#define CFS_ACL_XATTR_COUNT(size, prefix) \
-	(((size) - sizeof(prefix ## _header)) / sizeof(prefix ## _entry))
-
-#endif /* CONFIG_FS_POSIX_ACL */
-
-/** @} eacl */
-
-#endif
diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
index ecdfd0c..15bd75f 100644
--- a/drivers/staging/lustre/lustre/llite/llite_internal.h
+++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
@@ -35,7 +35,6 @@
 #include "../include/lustre_debug.h"
 #include "../include/lustre_ver.h"
 #include "../include/lustre_disk.h"	/* for s2sbi */
-#include "../include/lustre_eacl.h"
 #include "../include/lustre_linkea.h"
 
 /* for struct cl_lock_descr and struct cl_io */
diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
index 421cc04..bcbc77e 100644
--- a/drivers/staging/lustre/lustre/llite/xattr.c
+++ b/drivers/staging/lustre/lustre/llite/xattr.c
@@ -40,7 +40,6 @@
 #include "../include/obd_support.h"
 #include "../include/lustre_dlm.h"
 #include "../include/lustre_ver.h"
-#include "../include/lustre_eacl.h"
 
 #include "llite_internal.h"
 
-- 
2.7.4


