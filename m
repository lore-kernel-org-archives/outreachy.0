X-GM-THRID: 2829093699584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7e065b60dab7b1c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr1380376wjb.6.1424702952449;
        Mon, 23 Feb 2015 06:49:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls407849lac.49.gmail; Mon, 23 Feb
 2015 06:49:11 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr1389711lak.5.1424702951974;
        Mon, 23 Feb 2015 06:49:11 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id cl5si698840wib.3.2015.02.23.06.49.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 06:49:11 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so17562638wiw.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 06:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=7ZLzAVG8C3zOM5dxneqnPqY0Ue4hZS+itJPoiXsziDk=;
        b=vA8HZ06Uqd83zqpdx9K51hMOzFzq+q+bFRsN0vGUBFyl562lxjLZ+G+l1+a4ywXJuC
         D3TMT62sObwtOqLgIg1KwFBl8Ldr6+E4CxK9M9Kd8EC9rFU3G6tpron90reIvGan9FBN
         sE0NB/Qa1N45Wy3fHt7o/AxkkSi9LVFL7+88O6UKGF3s/3w7FQMELgVEn130n2nrutKX
         pD9zSfON+jtdcgKxzt4qBHqM4EktsXCv7TW9jWaVd9+W252x9r3ESRzBgaBDJrbfcwAG
         xcK9MzyXNo3GeaVJt3iy/VzUR6ekLhJQgHS/9HwMqVZciRrdkmJY0wVbyvyyFyxVkc3d
         aldA==
X-Received: by 10.181.13.39 with SMTP id ev7mr21662121wid.3.1424702951651;
        Mon, 23 Feb 2015 06:49:11 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id dj4sm55893513wjc.13.2015.02.23.06.49.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 23 Feb 2015 06:49:10 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Add blank line after declarations
Date: Mon, 23 Feb 2015 16:49:04 +0200
Message-Id: <1424702944-6713-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes these warning messages found by checkpatch.pl:
WARNING: Missing a blank line after declarations.

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index df463a2..20e12d0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -550,6 +550,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
 inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
 {
 	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
+
 	pwrpriv->ips_deny_time = jiffies + msecs_to_jiffies(ms);
 }
 
@@ -573,6 +574,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 
 {
 	u32 start = jiffies;
+
 	if (pwrpriv->ps_processing) {
 		DBG_88E("%s wait ps_processing...\n", __func__);
 		while (pwrpriv->ps_processing && rtw_get_passing_time_ms(start) <= 3000)
-- 
1.9.1


