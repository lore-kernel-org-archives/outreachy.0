X-GM-THRID: 6330303746353922048
X-Received: by 10.157.21.114 with SMTP id z47mr6459187otz.13.1473943227273;
        Thu, 15 Sep 2016 05:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.219 with SMTP id o88ls1020337ioi.54.gmail; Thu, 15 Sep
 2016 05:40:26 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr6414530paa.11.1473943226786;
        Thu, 15 Sep 2016 05:40:26 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si2619985pfe.0.2016.09.15.05.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so2107748pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YKCHjgSP0yYNgUzFv3uJZyC1ll9uLSdAQKJ0xkfY0UA=;
        b=CupbLYF4VgPpuz9lSzgHXlk872Nd4jUroSVcZ40Jt02WFWelJDCXDu/sKGGlrQxs6s
         UYerdIEtS/MJxCgzfvngmi+Vi9RdE2jxcdvh7E0y9n+vtvrfEcNb6i6qWGWT2eevIojU
         lwamZ6c0PZR0XTATLgSvtK20TaQsYyZjDKp/7miBq06Z9jo4yAMvCyxhMk7QEVtZVwKM
         3Zp96SwwtNGL/ORDXcbhqmiHQIk2PpriVxPXf2ApbiQ+ng5kB9B7t9Fu0dnYqyLpxkxr
         creiDuKIlso8X8Mb25Kh2DRg5VXKd4LBmh6dvZfy/ocHKPZl2NfpP9H1LX8G3jlAyFDL
         qZ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YKCHjgSP0yYNgUzFv3uJZyC1ll9uLSdAQKJ0xkfY0UA=;
        b=aLhFnX2jG22bGlhLODqmsAjmiNK7zw4i+8w6PR6u0UHTkSfFgbDFi5EzgW17o69R+T
         y+AYe4avWMuKDuQfjeku6oYwIHfvVFzWipDBmcfWWZiqND/21lY7WINjd86wGOlBzdWM
         shioenusx6eQ8Kstc11Bg3jrO26TtlYJWU10gigiXHM3JQCFiDJRSQexZ8ikJwib0Syr
         zp2YfjSSaZgrd49/ZACmCvcA/3hgZr7wtjPrV/3MvPlAa/xO8qBm0UKrMvIj+llSsNSY
         6jy4vgcO9XHeYuJ1R8G5yQ86jE0k0EbRIDcAECZYclPF4rLT1LB9W/JG4AO58nzmJPS9
         gpPw==
X-Gm-Message-State: AE9vXwMYvQTedCzO0E+eJyEx7ZTj+k/TpTuz1gf2dR/tFy9prC+RJ/659FKTwTAKSdwr/w==
X-Received: by 10.66.161.132 with SMTP id xs4mr14179662pab.140.1473943226438;
        Thu, 15 Sep 2016 05:40:26 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h123sm45162289pfe.69.2016.09.15.05.40.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 05:40:26 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4 4/6] staging: xgifb: add spaces around |
Date: Thu, 15 Sep 2016 18:09:17 +0530
Message-Id: <050f45e562861dc856dd54bd0377e40c7aa77c64.1473942527.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>
In-Reply-To: <cover.1473942527.git.gs051095@gmail.com>
References: <cover.1473942527.git.gs051095@gmail.com>

insert spaces around '|' to fix the checkpatch issue
spaces preferred around that '|'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index 41dcc6d3..b0ec981 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -1914,7 +1914,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
 		}
 	}
 
-	if (pVBInfo->VBType & (VB_SIS301LV|VB_SIS302LV|VB_XGI301C)) {
+	if (pVBInfo->VBType & (VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
 		if (temp & SetYPbPr) {
 			/* shampoo add for new scratch */
 			temp = xgifb_reg_get(pVBInfo->P3d4, 0x35);
-- 
2.9.2


