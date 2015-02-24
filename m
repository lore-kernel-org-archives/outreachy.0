X-GM-THRID: 3148599001088
X-Received: by 10.140.231.139 with SMTP id b133mr15781571qhc.1.1424762804921;
        Mon, 23 Feb 2015 23:26:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.65.33 with SMTP id u1ls1224082igs.30.canary; Mon, 23 Feb
 2015 23:26:44 -0800 (PST)
X-Received: by 10.70.88.234 with SMTP id bj10mr15692247pdb.0.1424762804100;
        Mon, 23 Feb 2015 23:26:44 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id pc4si4553724pac.0.2015.02.23.23.26.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:26:44 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id o5so31467670pdn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ohhwx/jlx5X4HGRuMRL3+9pcIDZXmCIP7snMrPMzK08=;
        b=XFf5YnvEthh0wsgtpPcJmUre43UN2qOxRUKNfZyMDCUyhm9oyCkjbPishUg60UHBXA
         SgcM1+2cnI0YfUf+FDG+OwiKkdEJqGdk0dKUZvM0+cgJVFmmms57p5LkshkxYV8etB5A
         SdNlharYOo2Lsnr9CuBonFkR5fPI8qg9ICEcO1YndjEzekFqUw3nfi6DCrcqOweMGx7Q
         dK2sYwrxWsJFFzfcgabXtm/fJlBd2yzgrYiXwTtSO+2ZDZUBcj0qYz3OQ83pG6n5ikpU
         b/05XWGgNfLFuQSs3oL+u4qjoNdIjEUZ+0VKatkG7UGdw0V2gy9j7yMbbZ7eCrVCFHPX
         Iw7g==
X-Received: by 10.66.121.2 with SMTP id lg2mr14900898pab.69.1424762803971;
        Mon, 23 Feb 2015 23:26:43 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id qv9sm38299059pab.27.2015.02.23.23.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 23:26:42 -0800 (PST)
Date: Tue, 24 Feb 2015 12:56:24 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2 v2] Staging: rtl8188eu: Refactor code to increase
 readability
Message-ID: <538a6b526dd178a0d39903c236c27d1726c1b3fc.1424761857.git.vatikaharlalka@gmail.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424761857.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Reduce the array size and modify the loop
counter so as to start from 0.
Also, the assignment of variable place is redundant as it is
initialized again in the loop.


Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a1a9ebf..a91bc6d 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -386,19 +386,18 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 
 static u8 get_right_chnl_for_iqk(u8 chnl)
 {
-	u8 channel_all[ODM_TARGET_CHNL_NUM_2G_5G] = {
-		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
+	u8 place;
+	u8 channel_5g[ODM_TARGET_CHNL_NUM_5G] = {
 		36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64,
 		100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122,
 		124, 126, 128, 130, 132, 134, 136, 138, 140, 149, 151, 153,
 		155, 157, 159, 161, 163, 165
 	};
-	u8 place = chnl;
 
 	if (chnl > 14) {
-		for (place = 14; place < sizeof(channel_all); place++) {
-			if (channel_all[place] == chnl)
-				return place-13;
+		for (place = 0; place < sizeof(channel_5g); place++) {
+			if (channel_5g[place] == chnl)
+				return ++place;
 		}
 	}
 	return 0;
-- 
1.9.1


