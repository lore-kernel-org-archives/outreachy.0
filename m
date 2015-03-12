X-GM-THRID: 7783898415104
X-Received: by 10.66.224.42 with SMTP id qz10mr41487282pac.0.1426134461753;
        Wed, 11 Mar 2015 21:27:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.95 with SMTP id l92ls630832iod.83.gmail; Wed, 11 Mar
 2015 21:27:41 -0700 (PDT)
X-Received: by 10.66.124.198 with SMTP id mk6mr39685244pab.22.1426134461514;
        Wed, 11 Mar 2015 21:27:41 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ri9si1108305pdb.1.2015.03.11.21.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 21:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id li10so17062623pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 21:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=1T/uLivuVtWXjIcau0xitELkoLX3WnjFGdF4fShUpzo=;
        b=m+lT6fq6J/2kGxw+gh8LITD8MN6aabxkIcc7JZTc6lkVVEHmCxSmkTxJ1aeELZnueN
         kfcpKZ1noOLm5j9ZJmkWCuCXQLcnofCiV0OGD90u4g5y6Y3JwqTsppk0//r5ZSv30OW8
         BVmm3npnzxZGfHPCsBSg/QS5VOY7hN0nYvFieOKqT6q2VUb3zqQINCbmc9tTs+9tPLT2
         yNA8vCgJ/T3vXl2csqNAsmYKOm8sflWZhLSlOpFI2SM7UISTXt+TeGsjVsWqQBFSkPzz
         Y1Ek/EqTf1VXuPB/sbMSN013wmd4QBG1JEDyWp3E2m+Nox7axUTtQ+SY7qXt7D012RoV
         uwNg==
X-Received: by 10.66.140.15 with SMTP id rc15mr11617290pab.44.1426134461454;
        Wed, 11 Mar 2015 21:27:41 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id ny9sm8476191pdb.37.2015.03.11.21.27.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 21:27:40 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: rtl8723au: remove intialization of static ints
Date: Thu, 12 Mar 2015 13:26:20 +0900
Message-Id: <09981b7dd5f4cc1a31bcfeb4082c52aa6a453839.1426129493.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>

static ints are initialized to 0 by the compiler.
Explicit initialization is not necessary.

Found by checkpatch.pl - ERROR: do not initialise statics to 0 or NULL

changes made using coccinelle script:
@@
type T;
identifier var;
@@
static T var
- =0
;

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_security.c | 2 +-
 drivers/staging/rtl8723au/os_dep/os_intfs.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_security.c b/drivers/staging/rtl8723au/core/rtw_security.c
index 0610d5f..045a24c 100644
--- a/drivers/staging/rtl8723au/core/rtw_security.c
+++ b/drivers/staging/rtl8723au/core/rtw_security.c
@@ -87,7 +87,7 @@ static void arcfour_encrypt(	struct arc4context	*parc4ctx,
 
 }
 
-static int bcrc32initialized = 0;
+static int bcrc32initialized;
 static u32 crc32_table[256];
 
 static u8 crc32_reverseBit(u8 data)
diff --git a/drivers/staging/rtl8723au/os_dep/os_intfs.c b/drivers/staging/rtl8723au/os_dep/os_intfs.c
index 1b23eb1..db6a1597 100644
--- a/drivers/staging/rtl8723au/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723au/os_dep/os_intfs.c
@@ -34,7 +34,7 @@ MODULE_FIRMWARE("rtlwifi/rtl8723aufw_B.bin");
 MODULE_FIRMWARE("rtlwifi/rtl8723aufw_B_NoBT.bin");
 
 /* module param defaults */
-static int rtw_chip_version = 0x00;
+static int rtw_chip_version;
 static int rtw_rfintfs = HWPI;
 static int rtw_debug = 1;
 
-- 
2.1.0


