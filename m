X-GM-THRID: 6210684421978193920
X-Received: by 10.107.38.141 with SMTP id m135mr39722131iom.18.1446037651348;
        Wed, 28 Oct 2015 06:07:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.83 with SMTP id 77ls4641639qge.74.gmail; Wed, 28 Oct
 2015 06:07:30 -0700 (PDT)
X-Received: by 10.129.157.15 with SMTP id u15mr10172316ywg.4.1446037650529;
        Wed, 28 Oct 2015 06:07:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si4880274pac.2.2015.10.28.06.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 06:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so1013047pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 06:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=8Yj/Nl+BwxM0XXuR13jbXr94bFgtQYpjWT/ELZL/MBg=;
        b=WEFsDq20q0TOywZ8NLc4+kRft6qIBn3BVHRyuDzLwNuK6OgOyOclCW5hEzvmfPU6Ru
         wvFHUWig6lksUrNOjpw9w/omy4uyjAj6DorV2EaW31TzNh5e7ikNRtdHSB2iaT5w1JW+
         9qbLX3nHuNWu5DwSfT6Di670oLCcrKbP7IYrWOwjH+IJO09MbihiV/wPZDKYq36r3/4x
         ZmaZSNTYj4ZcsbPtIkbt23bkwpuOXKV07qqgiZbrmNY4GBRwE361VpwG87CO8lhqVDLP
         V9fHxFjvClwm7BMyGkMDQHJQOuVWGx6NidZSXeyenqBPdH+7ld/2f2tzlOVRV3VdelH5
         mt1g==
X-Received: by 10.68.224.132 with SMTP id rc4mr8891369pbc.11.1446037650305;
        Wed, 28 Oct 2015 06:07:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id b6sm45446821pbu.90.2015.10.28.06.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 06:07:29 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: wlan-ng: Remove unused p80211meta.h file
Date: Wed, 28 Oct 2015 18:37:20 +0530
Message-Id: <1446037640-18428-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5630C891.0011,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove the header file p80211meta.h since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/wlan-ng/p80211meta.h | 90 ------------------------------------
 1 file changed, 90 deletions(-)
 delete mode 100644 drivers/staging/wlan-ng/p80211meta.h

diff --git a/drivers/staging/wlan-ng/p80211meta.h b/drivers/staging/wlan-ng/p80211meta.h
deleted file mode 100644
index c5f1a63..0000000
--- a/drivers/staging/wlan-ng/p80211meta.h
+++ /dev/null
@@ -1,90 +0,0 @@
-/* p80211meta.h
-*
-* Macros, constants, types, and funcs for p80211 metadata
-*
-* Copyright (C) 1999 AbsoluteValue Systems, Inc.  All Rights Reserved.
-* --------------------------------------------------------------------
-*
-* linux-wlan
-*
-*   The contents of this file are subject to the Mozilla Public
-*   License Version 1.1 (the "License"); you may not use this file
-*   except in compliance with the License. You may obtain a copy of
-*   the License at http://www.mozilla.org/MPL/
-*
-*   Software distributed under the License is distributed on an "AS
-*   IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
-*   implied. See the License for the specific language governing
-*   rights and limitations under the License.
-*
-*   Alternatively, the contents of this file may be used under the
-*   terms of the GNU Public License version 2 (the "GPL"), in which
-*   case the provisions of the GPL are applicable instead of the
-*   above.  If you wish to allow the use of your version of this file
-*   only under the terms of the GPL and not to allow others to use
-*   your version of this file under the MPL, indicate your decision
-*   by deleting the provisions above and replace them with the notice
-*   and other provisions required by the GPL.  If you do not delete
-*   the provisions above, a recipient may use your version of this
-*   file under either the MPL or the GPL.
-*
-* --------------------------------------------------------------------
-*
-* Inquiries regarding the linux-wlan Open Source project can be
-* made directly to:
-*
-* AbsoluteValue Systems Inc.
-* info@linux-wlan.com
-* http://www.linux-wlan.com
-*
-* --------------------------------------------------------------------
-*
-* Portions of the development of this software were funded by
-* Intersil Corporation as part of PRISM(R) chipset product development.
-*
-* --------------------------------------------------------------------
-*
-* This file declares some of the constants and types used in various
-* parts of the linux-wlan system.
-*
-* Notes:
-*   - Constant values are always in HOST byte order.
-*
-* All functions and statics declared here are implemented in p80211types.c
-*   --------------------------------------------------------------------
-*/
-
-#ifndef _P80211META_H
-#define _P80211META_H
-
-/*----------------------------------------------------------------*/
-/* The following structure types are used for the metadata */
-/* representation of category list metadata, group list metadata, */
-/* and data item metadata for both Mib and Messages. */
-
-struct p80211meta {
-	char *name;		/* data item name */
-	u32 did;		/* partial did */
-	u32 flags;		/* set of various flag bits */
-	u32 min;		/* min value of a BOUNDEDint */
-	u32 max;		/* max value of a BOUNDEDint */
-
-	u32 maxlen;		/* maxlen of a OCTETSTR or DISPLAYSTR */
-	u32 minlen;		/* minlen of a OCTETSTR or DISPLAYSTR */
-	p80211enum_t *enumptr;	/* ptr to the enum type for ENUMint */
-	p80211_totext_t totextptr;	/* ptr to totext conversion function */
-	p80211_fromtext_t fromtextptr;	/* ptr to totext conversion function */
-	p80211_valid_t validfunptr;	/* ptr to totext conversion function */
-};
-
-struct grplistitem {
-	char *name;
-	struct p80211meta *itemlist;
-};
-
-struct catlistitem {
-	char *name;
-	struct grplistitem *grplist;
-};
-
-#endif /* _P80211META_H */
-- 
2.1.4


