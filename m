X-GM-THRID: 2824268152832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ebc4acd0e82739d0,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.42.170 with SMTP id p10mr11814697pdl.3.1424700178982;
        Mon, 23 Feb 2015 06:02:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.247 with SMTP id m110ls2340879qge.81.gmail; Mon, 23 Feb
 2015 06:02:58 -0800 (PST)
X-Received: by 10.236.29.133 with SMTP id i5mr11638533yha.3.1424700178768;
        Mon, 23 Feb 2015 06:02:58 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ks4si4224119pbc.1.2015.02.23.06.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 06:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablf10 with SMTP id lf10so27734179pab.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 06:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=17L/djPoPc3Rv3fDw92xbf8z9/WlzDUlfi/redIfMYw=;
        b=GcCJv5li4V1PxAc4gD0urdt9uWGmQdRW5SWS/URGcyH410CczQO2gbAMjPpjenSgnt
         XNf9ceQSpa1lb6Qqeur4hlGFbkrXGPZkFp+mVDgVqrFKPfEeUjfRBOCyE/N03ORTcQ8T
         vRfg/KAok0fcIvXYZ8IT3mOq1X3yWPSaIFfshJy6MYnCOQHZDtw1StSom0WgRBf5poCn
         /BMBNfDvBRCjqIhPf+sRSq8CO1djFABfg3gr09QFQyz7ZojDgJdUp8TK6w2iPFr6S+IK
         Pe8Du/REyR4cvhAR4ZgL7N+D7zlBN+ZSEzzFfXg3rfOWhxukkW97TtTGsf50/fMBOKJo
         r0Sw==
X-Received: by 10.70.41.33 with SMTP id c1mr19945277pdl.22.1424700178631;
        Mon, 23 Feb 2015 06:02:58 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id c17sm12140005pdl.79.2015.02.23.06.02.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 06:02:56 -0800 (PST)
Date: Mon, 23 Feb 2015 19:32:38 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Changed array and loop construct
Message-ID: <20150223140238.GA11856@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This function only required the array from the 14th element
onwards. Therefore, the array size is reduced and the loop
counter is modified so as to start from 0.
Also, the assignment of variable place is redundant as it is
initialized again in the loop.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3f663fe..e005150 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -386,19 +386,18 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
 
 static u8 get_right_chnl_for_iqk(u8 chnl)
 {
+	u8 place;
 	u8 channel_all[ODM_TARGET_CHNL_NUM_2G_5G] = {
-		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
 		36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64,
 		100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122,
 		124, 126, 128, 130, 132, 134, 136, 138, 140, 149, 151, 153,
 		155, 157, 159, 161, 163, 165
 	};
-	u8 place = chnl;
 
 	if (chnl > 14) {
-		for (place = 14; place < sizeof(channel_all); place++) {
+		for (place = 0; place < sizeof(channel_all); place++) {
 			if (channel_all[place] == chnl)
-				return place-13;
+				return ++place;
 		}
 	}
 	return 0;
-- 
1.9.1


