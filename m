X-GM-THRID: 6202887067130658816
X-Received: by 10.195.12.234 with SMTP id et10mr1795239wjd.2.1444332339931;
        Thu, 08 Oct 2015 12:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.104 with SMTP id gl8ls204841wib.41.gmail; Thu, 08 Oct
 2015 12:25:39 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr1795229wjd.2.1444332338980;
        Thu, 08 Oct 2015 12:25:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id w4si203510wiz.0.2015.10.08.12.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so39044643wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=zpJ0K03VAXtk2Mj/GbZL3KtVYmU4gP+HvST0ZnNGXbY=;
        b=iZU8o6arA2eS6RSfXz+cZHliEtO/Pen2n0gQwVE1ToPmchsbL8Q2+XvyfCn2x+nIQn
         XK6R1S0SjiIVriiXknMCaSK5cGjtx69eG2fj52XmeHjJ0PlWStC6KL5ZwoplU8aF4iTI
         ugyufWCLLQX5ngzaabGyGMU/QwT9TSuphIgOgbLeoocoC4/vzOkMM33I/R0drAkkm2cZ
         /1wsC8t51GqUkpOSXEim7Fb0qMPi2hsPhB+3UHfsIzkONqAMTdyS/v1XZCe9d/tUOoT6
         ImDURwHD9bk7M7HypC/tR/88DuFJUvxuYRFU0WYuqKpQktJBfn6qGZv9wPkRZo+xc+g1
         fK/A==
X-Received: by 10.194.87.129 with SMTP id ay1mr9538101wjb.110.1444332338765;
        Thu, 08 Oct 2015 12:25:38 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv5sm75362wic.7.2015.10.08.12.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 12:25:38 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] Staging: rtl8712: Use ARRAY_SIZE macro
Date: Fri,  9 Oct 2015 00:55:18 +0530
Message-Id: <1444332319-654-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
References: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5616C331.0029,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

ARRAY_SIZE is more concise to use when the size of an array is divided
by the size of its type

Changes made using Coccinelle-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8712/usb_intf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index f8b5b33..4c63baa 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -330,8 +330,7 @@ static void disable_ht_for_spec_devid(const struct usb_device_id *pdid,
 	u16 vid, pid;
 	u32 flags;
 	int i;
-	int num = sizeof(specific_device_id_tbl) /
-		  sizeof(struct specific_device_id);
+	int num = ARRAY_SIZE(specific_device_id_tbl);
 
 	for (i = 0; i < num; i++) {
 		vid = specific_device_id_tbl[i].idVendor;
-- 
2.1.4


