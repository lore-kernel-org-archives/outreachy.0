X-GM-THRID: 2788406853632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,792ed37fed7a3e12
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.9.135 with SMTP id ow7mr14154743icb.29.1424720821343;
        Mon, 23 Feb 2015 11:47:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.135.136 with SMTP id ps8ls748145obb.94.gmail; Mon, 23 Feb
 2015 11:47:01 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr14325120obc.22.1424720821157;
        Mon, 23 Feb 2015 11:47:01 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id nt14si2591953pab.2.2015.02.23.11.47.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:47:01 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id fl12so27732943pdb.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hAlgcZrRGw/+mZh2f6ToQayXyMlDhDnpbr+jMnX8FXE=;
        b=j0a7y+GbuoMQ2h9i+oPD+W0G2PfLX+EKDg0jZBvnQf1GtigZfK4L6qs7fidD/MlSyw
         XEaKlAoZkakpO2Bx7MC4qw9VWUASFYv8EJkiYz81YPnxztF8gVgHmIwvx66tkxRZUCfF
         M2Y/kxu2NR5vgkEvugIAb7vEomcXqf1dInMD5zGhBuuzeBm6CIRsngu5HPvgvqnlerIO
         jeFSRc2ptBhBV/Cl6now+aRaVy9ta+SH9RxXV+0iDViOUkOkp6EmxZmqHY96OlEomTJe
         M0ck/C8QkutdsoN6NAI+fjC+uxsSYJFa+QvICsDbfR47MbJa735XXFPT0921PNszDj1g
         Prog==
X-Received: by 10.70.50.194 with SMTP id e2mr22367224pdo.74.1424720821042;
        Mon, 23 Feb 2015 11:47:01 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id go1sm36259639pbd.75.2015.02.23.11.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 11:46:59 -0800 (PST)
Date: Tue, 24 Feb 2015 01:16:42 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] Staging: rtl8188eu: Remove redundant if condition
Message-ID: <20150223194642.GA28233@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove redundant if condition as !result is always false.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
Changes in v4: Added "Staging: rtl8188eu" to commit message.
Changes in v3: Removed unneeded newline after if condition to
                follow kernel coding conventions.
Changes in v2: Removed {} around the outer if condition as
                it has single statement.

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


