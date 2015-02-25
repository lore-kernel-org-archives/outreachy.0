X-GM-THRID: 3440504733696
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cada1563c35b0518
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr787598lbf.21.1424899625995;
        Wed, 25 Feb 2015 13:27:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls878467lab.107.gmail; Wed, 25
 Feb 2015 13:27:05 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr803410lah.8.1424899625480;
        Wed, 25 Feb 2015 13:27:05 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id cl5si1212884wib.3.2015.02.25.13.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Feb 2015 13:27:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghn12 with SMTP id n12so6375897wgh.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Feb 2015 13:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OLBaHU+N0rB+fFFxUWwUdK2t2dJVdqrFgZxmCVX+HL0=;
        b=xV0CLV2Nh3CZ2KO7x/5O/ahW2tHKetmLb7LkVq15dNVU1/2tpNBC54582NpjUzcsmZ
         wBdSdUwJI5ASHhsSnQSFp9cd01iClUBKz6AHVwVpVp/t1soCFi+HWfrNQ+w8Tr4iu6fR
         3xcWHDMAfYMZfuYphAFSPAHXdGu7qNyGb1OUVjxYy9AKk+Os7qXXToS+C+nbcrKOBGJD
         JvEgXP3EpaAIeMkLDmhtOS7htWnXjwLAfqWj7O9EB9MLFJiVWcJ+O0NdbXzCt0hCNJ+5
         VDaatAG2xDA1fwQ9dufV6MLwnQTuQ6krjD9XTxlRsPkAj5+YIG6C96HjZ0IU2QOsvgPZ
         Eeiw==
X-Received: by 10.194.157.68 with SMTP id wk4mr10127732wjb.123.1424899625391;
        Wed, 25 Feb 2015 13:27:05 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id nb9sm26877560wic.3.2015.02.25.13.27.03
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 25 Feb 2015 13:27:04 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2] Staging: rtl8723au: Remove return in void function
Date: Wed, 25 Feb 2015 23:26:21 +0200
Message-Id: <1424899581-6814-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING: void function return statements are not generally useful
Remove return in void function. That was found by running checkpatch.

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:removed blank line 

 drivers/staging/rtl8723au/hal/hal_com.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/hal_com.c b/drivers/staging/rtl8723au/hal/hal_com.c
index bf4cae2..a7751c9 100644
--- a/drivers/staging/rtl8723au/hal/hal_com.c
+++ b/drivers/staging/rtl8723au/hal/hal_com.c
@@ -236,8 +236,6 @@ void HalSetBrateCfg23a(struct rtw_adapter *padapter, u8 *mBratesOS)
 	}
 		/*  Ziv - Check */
 	rtl8723au_write8(padapter, REG_INIRTS_RATE_SEL, rate_index);
-
-	return;
 }
 
 static void _OneOutPipeMapping(struct rtw_adapter *pAdapter)
-- 
1.8.3.2


