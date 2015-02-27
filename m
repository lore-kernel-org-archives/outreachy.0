X-GM-THRID: 4688259842048
X-Received: by 10.68.104.5 with SMTP id ga5mr13906595pbb.2.1425059664089;
        Fri, 27 Feb 2015 09:54:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.35 with SMTP id n32ls764472qge.71.gmail; Fri, 27 Feb
 2015 09:54:23 -0800 (PST)
X-Received: by 10.140.146.68 with SMTP id 65mr13892875qhs.4.1425059663745;
        Fri, 27 Feb 2015 09:54:23 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id bo1si587569pbc.0.2015.02.27.09.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 09:54:23 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbfp1 with SMTP id fp1so22598624pdb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 09:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=A2p3XsQMg+bReAXKtZwGQR7ljDIDb1iKXYoO/TtXeVg=;
        b=uXSLdJJUM5gw/CkqYTNWBY4aG+ZMTKAirM6aQZjm8e0O1y7Pow/ZSVLPJX22sBnhYP
         MYnCzDLs3E8wrNyiw04YJkYkKPHXMICPWEKTJmxDoSolEcOrabqdm8aUqYDXA+olkhZ0
         b+QS81uZsPYdbkhLEV2/j/Bz4e4R/ECt5NUeAgiowmf8snfTWqTU3crBKZQ+tfYXPpw7
         2umnVJk/3z+4vjqF+MZgUE1+eZSwuTrdm8evecDvIK+/uZnbMM5olKrZyureCV8XLBNw
         i+bN1cyJNwoxEzBmr9LXIE45Uool1IffkaT5LtHEQBXYcwf/YRmuz4eZPhsRgqg3SU+G
         fg5Q==
X-Received: by 10.70.140.75 with SMTP id re11mr19850849pdb.112.1425059663605;
        Fri, 27 Feb 2015 09:54:23 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id zt11sm4598548pab.36.2015.02.27.09.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 09:54:20 -0800 (PST)
Date: Fri, 27 Feb 2015 23:23:57 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove unused variable
Message-ID: <20150227175357.GA19380@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unused variable assignment for is2t and assign
sim_bitmap at declaration to make the code more compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 006b723..6af72a4 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1024,27 +1024,19 @@ static void pi_mode_switch(struct adapter *adapt, bool pi_mode)
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
 	s32 tmp1 = 0, tmp2 = 0;
 
 	if ((dm_odm->RFType == ODM_2T2R) || (dm_odm->RFType == ODM_2T3R) ||
 	    (dm_odm->RFType == ODM_2T4R))
-		is2t = true;
-	else
-		is2t = false;
-
-	if (is2t)
 		bound = 8;
 	else
 		bound = 4;
 
-	sim_bitmap = 0;
-
 	for (i = 0; i < bound; i++) {
 		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
 			if ((resulta[c1][i] & 0x00000200) != 0)
-- 
1.9.1


