X-GM-THRID: 4416259227648
X-Received: by 10.152.29.97 with SMTP id j1mr1957165lah.3.1425034682859;
        Fri, 27 Feb 2015 02:58:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls152315lah.23.gmail; Fri, 27 Feb
 2015 02:58:02 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr1960617lan.1.1425034682477;
        Fri, 27 Feb 2015 02:58:02 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id o3si84992wib.2.2015.02.27.02.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x231.google.com with SMTP id w55so19311900wes.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=LQNkMojyzKzAR0mYh97werxWn63vhJEHFuFnKGt74NI=;
        b=yYuF5kAvnCwJLwAct5Namc/3zRqV5m5+OUXf7cv0XhUtCHrXZ6ujZDNkZrDF7SQlrV
         PnNINnJXF348ykDTlJq2VqwBfTbxFDKpJr+CuBb5xsUXa+toyRijbT2WLBzIxet3JbKc
         WI/8CN4Z4gKwiulnZbZCa3/sd4StynZcB97g1wML+YKpoL0MyUlRbtmBjw0mBuq7sGk6
         uP/W0MeW1b1F30o9XGNWJnqyz3x98ZQuKsFRNW4faniO9gbUfOBQZupTNGGmFq7MvQ7k
         b/smDiTLHYIpTvBTcm+qrSrrLCBNnVD8VF3SUSsPkE54cqZFxsvAZc48EDPlJiFsTgEn
         09TQ==
X-Received: by 10.180.198.19 with SMTP id iy19mr5324778wic.8.1425034682344;
        Fri, 27 Feb 2015 02:58:02 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id ka1sm5452095wjc.2.2015.02.27.02.58.00
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 02:58:01 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove white space before semicolon
Date: Fri, 27 Feb 2015 12:58:09 +0200
Message-Id: <1425034689-9145-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

drivers/staging/rtl8723au/core/rtw_cmd.c warning: space prohibited before semicolon

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_cmd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 2447a56..f6b99d8 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -1368,7 +1368,7 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
 					 ("\nCan't alloc sta_info when "
 					  "createbss_cmd_callback\n"));
-				goto createbss_cmd_fail ;
+				goto createbss_cmd_fail;
 			}
 		}
 
-- 
1.8.3.2


