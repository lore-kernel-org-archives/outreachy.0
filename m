X-GM-THRID: 7783898415104
X-Received: by 10.182.186.74 with SMTP id fi10mr38805172obc.1.1426134457519;
        Wed, 11 Mar 2015 21:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.230 with SMTP id p93ls978699qgd.35.gmail; Wed, 11 Mar
 2015 21:27:37 -0700 (PDT)
X-Received: by 10.236.70.234 with SMTP id p70mr40123461yhd.56.1426134457380;
        Wed, 11 Mar 2015 21:27:37 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ri9si1108305pdb.1.2015.03.11.21.27.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 21:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so17062623pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 21:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=f0G99PnFneNwNec4N5fC70YzQS7T0U2gW1spZ/dcgUs=;
        b=ZaY5rxdcclaf7KfFdrowEQEssCOTMLVB3TuyYk3XgdRZL1+J9nnCjowCgqNzjNb66o
         QGUSj1DW25r36zEGAKMs20IGMfbdUiwI48P5s1okf8xKLolFX86qvnJk2i/O9HOvG0g6
         MV5iQAB1/uUYzXcM3qVNI4K0msb48tUh5Bi2hZmYcSoiizUXxSkk06+cTFxL7V7gRgqo
         7KlpllULYWp5ALMRCr+Qk3XPOK1qGhYZGZa3gWUVokYUme6LNiWtrEIQbHQ0zNm3AvYf
         fqj7RZJpeOTJ6wVA06XLJ9n1iB6zxhaJPny2wWiO9vYI1mfW5I3hiS318Qg4p9p+Ojlh
         oA/g==
X-Received: by 10.70.96.165 with SMTP id dt5mr84136306pdb.119.1426134457277;
        Wed, 11 Mar 2015 21:27:37 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id ny9sm8476191pdb.37.2015.03.11.21.27.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 21:27:36 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8188eu: remove intialization of static ints
Date: Thu, 12 Mar 2015 13:26:19 +0900
Message-Id: <ddda9fd4bdd74a11b8af14e0bde7836e8cba3b15.1426129493.git.iskaranth@gmail.com>
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
 drivers/staging/rtl8188eu/os_dep/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 88a909c..d762e25 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -38,7 +38,7 @@ MODULE_VERSION(DRIVERVERSION);
 #define RTW_NOTCH_FILTER 0 /* 0:Disable, 1:Enable, */
 
 /* module param defaults */
-static int rtw_chip_version = 0x00;
+static int rtw_chip_version;
 static int rtw_rfintfs = HWPI;
 static int rtw_lbkmode;/* RTL8712_AIR_TRX; */
 static int rtw_network_mode = Ndis802_11IBSS;/* Ndis802_11Infrastructure; infra, ad-hoc, auto */
-- 
2.1.0


