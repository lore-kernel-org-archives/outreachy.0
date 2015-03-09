X-GM-THRID: 7184305881088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ca8c52ff4cb76c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.229.36 with SMTP id sn4mr26566125pac.32.1425882935881;
        Sun, 08 Mar 2015 23:35:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.90 with SMTP id z87ls894727ioi.36.gmail; Sun, 08 Mar
 2015 23:35:35 -0700 (PDT)
X-Received: by 10.42.236.199 with SMTP id kl7mr15416514icb.2.1425882935697;
        Sun, 08 Mar 2015 23:35:35 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id m1si2435880pdc.0.2015.03.08.23.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 23:35:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pablj1 with SMTP id lj1so61106470pab.10
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 23:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H08c0r4fBESFG7CCEgGK0AY0EUlx2DHUlHulkybftgQ=;
        b=chHpInqtuFrehQUVYbnw0auyJSLBWEaCyKuFXkTYN/F6nicMND6oXydHxp+WHUNiEL
         HiKmz4wfbefxwpXJjx958UkhHP6qn0k4Ndu+pFSmUcNV3RMsdMIHQnTeLc3qfRD90956
         iFaYnNAlwJv1B5lXxye/gGc2fvUaT2asAPs++0WMqYdDbk0iwcnR+MfYInAMQ+lY3er1
         35xcIRtRw9feSgOvWacE2JhDnypWakYk+2mSGG7G8xH/6wksoeR347h59+qofmRr6GvS
         4i8834kKyftpknpSgmg/F75XX8ZSS0mavsAwh+J4ug3KBqR8MITCQoJCfobjbz5zYDXH
         6diw==
X-Received: by 10.66.102.34 with SMTP id fl2mr50097206pab.40.1425882935563;
        Sun, 08 Mar 2015 23:35:35 -0700 (PDT)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.16.175])
        by mx.google.com with ESMTPSA id r8sm17310415pdp.10.2015.03.08.23.35.32
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 23:35:34 -0700 (PDT)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH 4/4] drivers: staging: rtl8723au: hal: Removed unnecessary parentheses
Date: Mon,  9 Mar 2015 12:02:50 +0530
Message-Id: <1425882770-6239-5-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1425882770-6239-1-git-send-email-tinajohnson.1234@gmail.com>
References: <1425882770-6239-1-git-send-email-tinajohnson.1234@gmail.com>

Parentheses around the right side of an assignment statement are
unnecessary and hence removed. Coccinelle was used to produce the
patch:

@rule1@
identifier x,y;
constant c;
@@

(

 x =
-(
 y << c
-)
 ;
|
 x =
-(
 y >> c
-)
 ;
|
 x =
-(
 y + c
-)
 ;
|
 x =
-(
 y - c
-)
 ;

)

Signed-off-by: Tina Johnson <tinajohnson.1234@gmail.com>
---
 drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c b/drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c
index ba37374..3f9ec9e0 100644
--- a/drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c
+++ b/drivers/staging/rtl8723au/hal/HalDMOutSrc8723A_CE.c
@@ -222,7 +222,7 @@ odm_TXPowerTrackingCallback_ThermalMeter_92C(struct rtw_adapter *Adapter)
 			}
 
 			if (CCK_index > (CCK_TABLE_SIZE-1))
-				CCK_index = (CCK_TABLE_SIZE-1);
+				CCK_index = CCK_TABLE_SIZE-1;
 			else if (CCK_index < 0)
 				CCK_index = 0;
 		}
-- 
1.7.10.4


