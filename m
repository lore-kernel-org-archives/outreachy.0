X-GM-THRID: 1851894267904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6fd1f02eee315fcc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.88.40 with SMTP id bd8mr322008lab.0.1424529504685;
        Sat, 21 Feb 2015 06:38:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls389476lac.92.gmail; Sat, 21 Feb
 2015 06:38:24 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr317661lak.5.1424529504217;
        Sat, 21 Feb 2015 06:38:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id o3si309170wib.2.2015.02.21.06.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:38:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so3601622wib.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eFh47EZ8f9YG2mdaoHK01+F01rS77SMtCEkNYKtiJVs=;
        b=GBqVOclXP21R1m1+9YwGCEbkqWa7J5BFtuD520MYULbO+mWgFJLvJ73nOHO5eJutTL
         O8uvFJYtqChwj9nL7JRZaMprTZf+OZBsrP+GDGnODlwSlS/72TknzWVRU+a4lWRpe4Ur
         ES9/IV9+zcv0NQ5ULg+2L/9VLZCVU9CYMmpa1418MMOR/UvI1ugN4mJnzSJlhaz8FFoI
         0yAu2EXlStUwiLBtZRfh5XhRJV/qP1+mJiI/j61bRbMutLJ3vnzOE3T8HvCcGVlZf0UN
         TDdEY8D2BeWFu9ZWcsYykitI4DTDXR833IZpnp+HuMOHLFtw8I6MpB6DPfp+OeVSzU9o
         FDhQ==
X-Received: by 10.194.58.84 with SMTP id o20mr5193113wjq.75.1424529504125;
        Sat, 21 Feb 2015 06:38:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id qo10sm46879237wjc.38.2015.02.21.06.38.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:38:23 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Add blank line
Date: Sat, 21 Feb 2015 16:38:16 +0200
Message-Id: <1424529496-16682-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

It should be noted that to be added to the blank line after per
overtrick.
This warning found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index 076d38c..cfc404f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -284,6 +284,7 @@ exit:
 static void pwr_state_check_handler(void *FunctionContext)
 {
 	struct adapter *padapter = FunctionContext;
+
 	rtw_ps_cmd(padapter);
 }
 
@@ -548,8 +549,10 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 }
 
 inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
+
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
+
 	pwrpriv->ips_deny_time = jiffies + msecs_to_jiffies(ms);
 }
 
@@ -573,6 +576,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 
 {
 	u32 start = jiffies;
+
 	if (pwrpriv->ps_processing) {
 		DBG_88E("%s wait ps_processing...\n", __func__);
 		while (pwrpriv->ps_processing && rtw_get_passing_time_ms(start) <= 3000)
-- 
1.9.1


