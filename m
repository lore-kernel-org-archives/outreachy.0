X-GM-THRID: 6210356255905546240
X-Received: by 10.182.28.39 with SMTP id y7mr719676obg.11.1445961244200;
        Tue, 27 Oct 2015 08:54:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.37 with SMTP id rt5ls1316365igb.24.gmail; Tue, 27 Oct
 2015 08:54:03 -0700 (PDT)
X-Received: by 10.66.154.170 with SMTP id vp10mr18947512pab.29.1445961243690;
        Tue, 27 Oct 2015 08:54:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si4316997pac.2.2015.10.27.08.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 08:54:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so225931811pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 08:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=HzjXaxh/el+Iu6eMQ5zKZWtb0kuCDpBwL2oHObHoqYg=;
        b=uolJLpiOttmB1McjJlvNCv2tSXmMnAJckpuEaHVpRtlsX/jN52nCLXyEsVr2usbDDe
         PJDINe97fx6IyQs6FHFt5BmBYlNU3vbZDMWIcfbbAqdDRiCdfnKotFl8M94XDKAHw5Z/
         6eg03PnjoWq0oPfhgSElXiNnjAVR/fUQ0q97D/OUt96/cPKfeUAHTDyPU3qJB9SM8gcI
         AVS0SYS6Keb9iQikpuiNQWErDgVwuxrXgrn8EQ11kntHhu9VqpJpnpQvB30noKncRngy
         UMBjUn+dknzV8avV08pmiiPFPyqIFqbAdWx6VpqlGq6/HJWtmf0VimrAppskQnKEmLl0
         V37Q==
X-Received: by 10.66.161.35 with SMTP id xp3mr28854874pab.13.1445961243599;
        Tue, 27 Oct 2015 08:54:03 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id bn1sm40540432pad.17.2015.10.27.08.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 08:54:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: Remove unused lustre_lfsck_user.h file
Date: Tue, 27 Oct 2015 21:23:46 +0530
Message-Id: <1445961226-7196-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150206.562F9E1A.0037,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the header file lustre_lfsck_user.h since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 .../lustre/include/lustre/lustre_lfsck_user.h      | 95 ----------------------
 1 file changed, 95 deletions(-)
 delete mode 100644 drivers/staging/lustre/lustre/include/lustre/lustre_lfsck_user.h

diff --git a/drivers/staging/lustre/lustre/include/lustre/lustre_lfsck_user.h b/drivers/staging/lustre/lustre/include/lustre/lustre_lfsck_user.h
deleted file mode 100644
index 1c87a61..0000000
--- a/drivers/staging/lustre/lustre/include/lustre/lustre_lfsck_user.h
+++ /dev/null
@@ -1,95 +0,0 @@
-/*
- * GPL HEADER START
- *
- * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 only,
- * as published by the Free Software Foundation.
-
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License version 2 for more details.  A copy is
- * included in the COPYING file that accompanied this code.
-
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
- *
- * GPL HEADER END
- */
-/*
- * Copyright (c) 2012, Intel Corporation.
- */
-/*
- * lustre/include/lustre/lustre_lfsck_user.h
- *
- * Lustre LFSCK userspace interfaces.
- *
- * Author: Fan Yong <yong.fan@whamcloud.com>
- */
-
-#ifndef _LUSTRE_LFSCK_USER_H
-# define _LUSTRE_LFSCK_USER_H
-
-enum lfsck_param_flags {
-	/* Reset LFSCK iterator position to the device beginning. */
-	LPF_RESET       = 0x0001,
-
-	/* Exit when fail. */
-	LPF_FAILOUT     = 0x0002,
-
-	/* Dryrun mode, only check without modification */
-	LPF_DRYRUN      = 0x0004,
-};
-
-enum lfsck_type {
-	/* For MDT-OST consistency check/repair. */
-	LT_LAYOUT	= 0x0001,
-
-	/* For MDT-MDT consistency check/repair. */
-	LT_DNE		= 0x0002,
-
-	/* For FID-in-dirent and linkEA consistency check/repair. */
-	LT_NAMESPACE	= 0x0004,
-};
-
-#define LFSCK_VERSION_V1	1
-#define LFSCK_VERSION_V2	2
-
-#define LFSCK_TYPES_ALL		((__u16)(~0))
-#define LFSCK_TYPES_DEF		((__u16)0)
-#define LFSCK_TYPES_SUPPORTED	LT_NAMESPACE
-
-#define LFSCK_SPEED_NO_LIMIT	0
-#define LFSCK_SPEED_LIMIT_DEF	LFSCK_SPEED_NO_LIMIT
-
-enum lfsck_start_valid {
-	LSV_SPEED_LIMIT		= 0x00000001,
-	LSV_ERROR_HANDLE	= 0x00000002,
-	LSV_DRYRUN		= 0x00000004,
-};
-
-/* Arguments for starting lfsck. */
-struct lfsck_start {
-	/* Which arguments are valid, see 'enum lfsck_start_valid'. */
-	__u32   ls_valid;
-
-	/* How many items can be scanned at most per second. */
-	__u32   ls_speed_limit;
-
-	/* For compatibility between user space tools and kernel service. */
-	__u16   ls_version;
-
-	/* Which LFSCK components to be (have been) started. */
-	__u16   ls_active;
-
-	/* Flags for the LFSCK, see 'enum lfsck_param_flags'. */
-	__u16   ls_flags;
-
-	/* For 64-bits aligned. */
-	__u16   ls_padding;
-};
-
-#endif /* _LUSTRE_LFSCK_USER_H */
-- 
2.1.4


