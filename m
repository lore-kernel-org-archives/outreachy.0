X-GM-THRID: 4501080637440
X-Received: by 10.236.30.41 with SMTP id j29mr12268611yha.28.1425041635743;
        Fri, 27 Feb 2015 04:53:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.247 with SMTP id m110ls613166qge.81.gmail; Fri, 27 Feb
 2015 04:53:55 -0800 (PST)
X-Received: by 10.236.15.167 with SMTP id f27mr12147667yhf.8.1425041635578;
        Fri, 27 Feb 2015 04:53:55 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id ri9si484077pdb.1.2015.02.27.04.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:53:55 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so22467784pad.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0Wm4mqHYTURYCGGbSCtGJdslHOUKj0vp4rL4tVviYKA=;
        b=zTd+ZHZBXxPTvtwtBM1J6yOXaSlZj+0QTjtMzDYXbifkVij5kB//wsn94zJ7o9+uXs
         sv0sCuAFUx0hRE+rjRYegKLY3Hb62+U1LDZsUnyaIBhpqt9g4Kvo+vQLUsY41acus7X4
         GNlS+Wu8LKRYgRoF/DcZtYHmTPpcRWS/jaXpER7k4cQ7FNwtkW+aT9qJ3ungfuFikTv5
         DZ4KcIrdHpTStBP0BLZdtIQBqmXfyImQEOrjfFYlTzJhdJlyOmS0RrbTQ7hL2YtshEND
         u+pH/XQFtqMAj0UfWLd7NSjn96orPa620/IFTVvlzRmnDY69ilWb58SN2L8MV3+O6vdp
         qJQA==
X-Received: by 10.70.135.106 with SMTP id pr10mr23648307pdb.144.1425041635425;
        Fri, 27 Feb 2015 04:53:55 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ut3sm3988675pbc.25.2015.02.27.04.53.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:53:54 -0800 (PST)
Date: Fri, 27 Feb 2015 18:23:31 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Cleanup code to increase readability
Message-ID: <20150227125330.GA15425@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Code cleanup includes removing unneeded variables and replacing ternary
operators with existing macro to increase readability and make it more
compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 35 +++++++++++------------------------
 1 file changed, 11 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 006b723..17edbd7 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1024,47 +1024,34 @@ static void pi_mode_switch(struct adapter *adapt, bool pi_mode)
 static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 			       u8 c1, u8 c2)
 {
-	u32 i, j, diff, sim_bitmap, bound = 0;
+	u32 i, j, diff, sim_bitmap = 0, bound;
 	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
 	struct odm_dm_struct *dm_odm = &hal_data->odmpriv;
 	u8 final_candidate[2] = {0xFF, 0xFF};	/* for path A and path B */
 	bool result = true;
-	bool is2t;
-	s32 tmp1 = 0, tmp2 = 0;
+	s32 tmp1, tmp2;
 
 	if ((dm_odm->RFType == ODM_2T2R) || (dm_odm->RFType == ODM_2T3R) ||
-	    (dm_odm->RFType == ODM_2T4R))
-		is2t = true;
-	else
-		is2t = false;
-
-	if (is2t)
+	    (dm_odm->RFType == ODM_2T4R)) {
 		bound = 8;
-	else
+	} else{
 		bound = 4;
-
-	sim_bitmap = 0;
+	}
 
 	for (i = 0; i < bound; i++) {
-		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
+		tmp1 = resulta[c1][i];
+		tmp2 = resulta[c2][i];
+
+		if (i%2) {
 			if ((resulta[c1][i] & 0x00000200) != 0)
 				tmp1 = resulta[c1][i] | 0xFFFFFC00;
-			else
-				tmp1 = resulta[c1][i];
-
 			if ((resulta[c2][i] & 0x00000200) != 0)
 				tmp2 = resulta[c2][i] | 0xFFFFFC00;
-			else
-				tmp2 = resulta[c2][i];
-		} else {
-			tmp1 = resulta[c1][i];
-			tmp2 = resulta[c2][i];
 		}
 
-		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
-
+		diff = abs(tmp1 - tmp2);
 		if (diff > MAX_TOLERANCE) {
-			if ((i == 2 || i == 6) && !sim_bitmap) {
+			if (i == 2 || i == 6) {
 				if (resulta[c1][i] + resulta[c1][i+1] == 0)
 					final_candidate[(i/4)] = c2;
 				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
-- 
1.9.1


