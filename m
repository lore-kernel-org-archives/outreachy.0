X-GM-THRID: 3803080294400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c9a040a50d04121c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.36.39 with SMTP id v27mr8982935yha.24.1424972133797;
        Thu, 26 Feb 2015 09:35:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.165 with SMTP id d5ls258594igg.42.gmail; Thu, 26 Feb
 2015 09:35:33 -0800 (PST)
X-Received: by 10.43.161.6 with SMTP id me6mr9534604icc.21.1424972133562;
        Thu, 26 Feb 2015 09:35:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id bx1si176095pdb.2.2015.02.26.09.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 09:35:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjy10 with SMTP id y10so14396287pdj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 09:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+yzfwzPt5RxO5jAFLby9Wh9Ugv70uNyeSlnvh6fRPJA=;
        b=Mcon9NfrKjuu147B/RftT5E8QHJLRZN4UW5HTqK+O39D2/V2wXVWE/lNWMwrNT5Jge
         HKXjbpL/h2uBYU95lB1brsjV+2Y1fbdFdcNDYiJbkUldlQ4QDXUIMKlTQIFU3d7h3dJG
         Fxodp4nCkFZLefg3sEU3wOHxzhV0HCIdXiYV/gi+SZETWm3AbK3kGfbIKylE2MV6L7Bk
         X5qA70pSSg81sy535jtBI3BlSU1JaVkimY0QQXEFyvikigwbMkvpVq0kq6wn4tffeR9q
         7OWr1BVvj1TCbvUQP8fzda5EPOYjHwxPW7AM5nnljr/kihr05NwxVMWbq8sgqWoPwUjq
         Ex+g==
X-Received: by 10.70.0.66 with SMTP id 2mr16942392pdc.4.1424972133410;
        Thu, 26 Feb 2015 09:35:33 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id ot6sm1617576pdb.28.2015.02.26.09.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 09:35:32 -0800 (PST)
Date: Thu, 26 Feb 2015 23:05:11 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Refactor conditional code to increase
 readability
Message-ID: <20150226173511.GA24658@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the nested conditionals. The if and else-if have the same
code so they are combined to make the code more compact.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index a708ff9..1d9c662 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -522,18 +522,12 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
 		temp_cck = dm_odm->RFCalibrateInfo.RegA24;
 
 		for (i = 0; i < CCK_TABLE_SIZE; i++) {
-			if (dm_odm->RFCalibrateInfo.bCCKinCH14) {
-				if (memcmp(&temp_cck, &CCKSwingTable_Ch14[i][2], 4)) {
+			if ((dm_odm->RFCalibrateInfo.bCCKinCH14 &&
+				memcmp(&temp_cck, &CCKSwingTable_Ch14[i][2], 4)) ||
+				memcmp(&temp_cck, &CCKSwingTable_Ch1_Ch13[i][2], 4)) {
 					cck_index_old = (u8)i;
 					dm_odm->BbSwingIdxCckBase = (u8)i;
 					break;
-				}
-			} else {
-				if (memcmp(&temp_cck, &CCKSwingTable_Ch1_Ch13[i][2], 4)) {
-					cck_index_old = (u8)i;
-					dm_odm->BbSwingIdxCckBase = (u8)i;
-					break;
-				}
 			}
 		}
 
-- 
1.9.1


