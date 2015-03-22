X-GM-THRID: 9578996563968
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eea10cd0b8e64b14,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.164.169 with SMTP id yr9mr54280508pab.34.1427015985922;
        Sun, 22 Mar 2015 02:19:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.8 with SMTP id x8ls937249igg.11.gmail; Sun, 22 Mar 2015
 02:19:45 -0700 (PDT)
X-Received: by 10.66.157.129 with SMTP id wm1mr96105298pab.15.1427015985688;
        Sun, 22 Mar 2015 02:19:45 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ni4si1412335pdb.2.2015.03.22.02.19.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 02:19:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id cz9so154864724pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 02:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nMrBq+VFah/47gCuYXHAi0W3hd5v/NPdENUrTXZ1GCg=;
        b=lsFSCUsLn6hT3C9egZ78vE3FpioF39posPQVNfOWVnUKhxboJUGQcQPjovi7mjQyIU
         6He/WXVFD+XYCU3yhvpOQTqcrd6uiPI4tQm2yj3CVrAe3k2ug5guf/+J+GPv4Ps6Kf2T
         YBS997/1ws3EMHTX0+4Wu/4Yd3S18EbVCZb4hiu0GPkkAWZo20UIYRrIZhwC/gWE2vB9
         Q7c4IJXccuLBcMwIE9AkWkJUTitAVbVZlIR50yYDeEvClBCBTul2Ptt5KaURrQV9sKOf
         lCbvyIgaB7/xDH6Of9pGUgMrGQyswlfalIDtUOFuvTZgOs+dM8BDxTg0qXsg8Z0Ecsnp
         FG/Q==
X-Received: by 10.66.101.106 with SMTP id ff10mr207557258pab.103.1427015985579;
        Sun, 22 Mar 2015 02:19:45 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.46.73])
        by mx.google.com with ESMTPSA id pv4sm3897654pbb.17.2015.03.22.02.19.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Mar 2015 02:19:44 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Remove unused function rtw_atimdone_event_callback23a
Date: Sun, 22 Mar 2015 14:49:29 +0530
Message-Id: <1427015969-27675-1-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following sparse warning:

warning: symbol 'rtw_atimdone_event_callback23a' was not declared.
Should it be static?
rtw_atimdone_event_callback23a is local to the file rtw_mlme.c but
it isn't exposed in a header file anywhere. Moreover it is never called
from anywhere as well.

So, this patch removes this function completely.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_mlme.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme.c b/drivers/staging/rtl8723au/core/rtw_mlme.c
index 7299ef0..d6593a2 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme.c
@@ -568,13 +568,6 @@ static int rtw_is_desired_network(struct rtw_adapter *adapter,
 	return bselected;
 }
 
-/* TODO: Perry : For Power Management */
-void rtw_atimdone_event_callback23a(struct rtw_adapter *adapter, const u8 *pbuf)
-{
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_,
-		 ("receive atimdone_evet\n"));
-}
-
 void rtw_survey_event_cb23a(struct rtw_adapter *adapter, const u8 *pbuf)
 {
 	u32 len;
-- 
1.9.1


