X-GM-THRID: 6557663232000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7a08b91082310616
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.243.104 with SMTP id wx8mr4124064pbc.3.1425469571779;
        Wed, 04 Mar 2015 03:46:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.74 with SMTP id m71ls550130iom.109.gmail; Wed, 04 Mar
 2015 03:46:11 -0800 (PST)
X-Received: by 10.66.218.163 with SMTP id ph3mr3858085pac.46.1425469571549;
        Wed, 04 Mar 2015 03:46:11 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ks4si481984pbc.1.2015.03.04.03.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:46:11 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id fl12so25644943pdb.5
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jJYcXENKRzBGxq+vExAPRknuZ89+By4sZQobn8JDQow=;
        b=MSZF/yozECTfBdgyN7ZP14EnAwi4Y1rqaUXCEKTzLr3S+KHng0s0gWEk+zwuIaZrX6
         8bDXQrt27wK6Kvv2uIE+Wi+MlRkRpA8seFGIDs9mVoQW1TRxAMxKvX3MzwIPKl5DYzwx
         dh2mRlQoa+FgoJLy7qi9ApuaOx2SYKPFW7Xb/lQXc5C5K82Ik/AXoqRWkgme0+rR0WyD
         XjQn9oJpUmGQnrNCf4qatIwgQQv0uFv8Oqmj00ja7pKpAu+m2sfN7vMGeZV4DoNa3D6C
         Rv7JTFc/TcSkZ/XYSytl2+lHT3BKTFNBXGgGslbf6YoYKxB0Z2Ppb7uR4M2md8GcDSx+
         3kXw==
X-Received: by 10.66.182.166 with SMTP id ef6mr5987490pac.77.1425469571467;
        Wed, 04 Mar 2015 03:46:11 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.46.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:46:11 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 6/6] Staging: rtl8188eu: Remove redundant local variable
Date: Wed,  4 Mar 2015 17:14:02 +0530
Message-Id: <1425469442-32412-7-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch removes a redundant variable "inx" and adds inline
return statements. It also adds a default case in switch statement
which returns 0 to keep the logic intact.

This issue is identified by the following coccinelle script.
@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 41 +++++++++-----------------
 1 file changed, 14 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 9939448..0bb9181 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1195,49 +1195,36 @@ unsigned int is_ap_in_wep(struct adapter *padapter)
 
 static int wifirate2_ratetbl_inx(unsigned char rate)
 {
-	int	inx = 0;
-
 	rate = rate & 0x7f;
 
 	switch (rate) {
 	case 54*2:
-		inx = 11;
-		break;
+		return 11;
 	case 48*2:
-		inx = 10;
-		break;
+		return 10;
 	case 36*2:
-		inx = 9;
-		break;
+		return 9;
 	case 24*2:
-		inx = 8;
-		break;
+		return 8;
 	case 18*2:
-		inx = 7;
-		break;
+		return 7;
 	case 12*2:
-		inx = 6;
-		break;
+		return 6;
 	case 9*2:
-		inx = 5;
-		break;
+		return 5;
 	case 6*2:
-		inx = 4;
-		break;
+		return 4;
 	case 11*2:
-		inx = 3;
-		break;
+		return 3;
 	case 11:
-		inx = 2;
-		break;
+		return 2;
 	case 2*2:
-		inx = 1;
-		break;
+		return 1;
 	case 1*2:
-		inx = 0;
-		break;
+		return 0;
+	default:
+		return 0;
 	}
-	return inx;
 }
 
 unsigned int update_basic_rate(unsigned char *ptn, unsigned int ptn_sz)
-- 
1.9.1


