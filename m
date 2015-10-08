X-GM-THRID: 6203339889957666816
X-Received: by 10.31.148.206 with SMTP id w197mr7096422vkd.9.1444327619856;
        Thu, 08 Oct 2015 11:06:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.34 with SMTP id d31ls1205419qga.59.gmail; Thu, 08 Oct
 2015 11:06:59 -0700 (PDT)
X-Received: by 10.140.165.83 with SMTP id l80mr7160179qhl.14.1444327619198;
        Thu, 08 Oct 2015 11:06:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id zg1si5901444pbb.2.2015.10.08.11.06.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 11:06:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy16so61161384pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 11:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=hUusUfBmjLDhAzcbbEiksWVEbUWWXPxmYhKEAL39I2g=;
        b=dSvCCMpHWoExqWwsZSABrhyH0fKLz7cwsAz9VGyUhiGmUAhh65xNomMcYh6Cmv97Mr
         SnI5vhAlZpm+eUWiECvShKVHObaxE0Y8j3Ksa4olnikq54d1cJBWoVuhGLn/SeW6swA7
         Nz23a4IvtmIU3+gHG+/W361HwV+/5SMxei4Omi0coLZ49k8KR0XMcg+LFKi1Hk9CmfiU
         spHrODW+C1WGcAOLwTTBXZKCX5J+P3PiIkYXwVfiqU9BrDaCeSSynOtOl+H070uGSoFJ
         SiwErcIrVJj7Yl2X/Sq2rfYov+DhQYLSirr2tSHIWQMm5DADV1U7NNEHeP/pkgiharRr
         9c3A==
X-Received: by 10.69.10.133 with SMTP id ea5mr9424011pbd.2.1444327619010;
        Thu, 08 Oct 2015 11:06:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gy2sm27652835pbc.8.2015.10.08.11.06.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 11:06:58 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: Remove unused libiam.h header
Date: Thu,  8 Oct 2015 23:36:47 +0530
Message-Id: <1444327607-14718-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5616B0C1.005A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove libiam.h since it is not used anywhere throughout the kernel.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../staging/lustre/lustre/include/lustre/libiam.h  | 145 ---------------------
 1 file changed, 145 deletions(-)
 delete mode 100644 drivers/staging/lustre/lustre/include/lustre/libiam.h

diff --git a/drivers/staging/lustre/lustre/include/lustre/libiam.h b/drivers/staging/lustre/lustre/include/lustre/libiam.h
deleted file mode 100644
index e8e0b08..0000000
--- a/drivers/staging/lustre/lustre/include/lustre/libiam.h
+++ /dev/null
@@ -1,145 +0,0 @@
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
- * Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
- * Use is subject to license terms.
- */
-/*
- * This file is part of Lustre, http://www.lustre.org/
- * Lustre is a trademark of Sun Microsystems, Inc.
- *
- * lustre/include/lustre/libiam.h
- *
- * iam user level library
- *
- * Author: Wang Di <wangdi@clusterfs.com>
- * Author: Nikita Danilov <nikita@clusterfs.com>
- * Author: Fan Yong <fanyong@clusterfs.com>
- */
-
-/*
- *  lustre/libiam.h
- */
-
-#ifndef __IAM_ULIB_H__
-#define __IAM_ULIB_H__
-
-/** \defgroup libiam libiam
- *
- * @{
- */
-
-
-#define DX_FMT_NAME_LEN 16
-
-enum iam_fmt_t {
-	FMT_LFIX,
-	FMT_LVAR
-};
-
-struct iam_uapi_info {
-	__u16 iui_keysize;
-	__u16 iui_recsize;
-	__u16 iui_ptrsize;
-	__u16 iui_height;
-	char  iui_fmt_name[DX_FMT_NAME_LEN];
-};
-
-/*
- * Creat an iam file, but do NOT open it.
- * Return 0 if success, else -1.
- */
-int iam_creat(char *filename, enum iam_fmt_t fmt,
-	      int blocksize, int keysize, int recsize, int ptrsize);
-
-/*
- * Open an iam file, but do NOT creat it if the file doesn't exist.
- * Please use iam_creat for creating the file before use iam_open.
- * Return file id (fd) if success, else -1.
- */
-int iam_open(char *filename, struct iam_uapi_info *ua);
-
-/*
- * Close file opened by iam_open.
- */
-int iam_close(int fd);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_insert(int fd, struct iam_uapi_info *ua,
-	       int key_need_convert, char *keybuf,
-	       int rec_need_convert, char *recbuf);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_lookup(int fd, struct iam_uapi_info *ua,
-	       int key_need_convert, char *key_buf,
-	       int *keysize, char *save_key,
-	       int rec_need_convert, char *rec_buf,
-	       int *recsize, char *save_rec);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_delete(int fd, struct iam_uapi_info *ua,
-	       int key_need_convert, char *keybuf,
-	       int rec_need_convert, char *recbuf);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_it_start(int fd, struct iam_uapi_info *ua,
-		 int key_need_convert, char *key_buf,
-		 int *keysize, char *save_key,
-		 int rec_need_convert, char *rec_buf,
-		 int *recsize, char *save_rec);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_it_next(int fd, struct iam_uapi_info *ua,
-		int key_need_convert, char *key_buf,
-		int *keysize, char *save_key,
-		int rec_need_convert, char *rec_buf,
-		int *recsize, char *save_rec);
-
-/*
- * Please use iam_open before use this function.
- */
-int iam_it_stop(int fd, struct iam_uapi_info *ua,
-		int key_need_convert, char *keybuf,
-		int rec_need_convert, char *recbuf);
-
-/*
- * Change iam file mode.
- */
-int iam_polymorph(char *filename, unsigned long mode);
-
-/** @} libiam */
-
-#endif
-- 
2.1.4


