X-GM-THRID: 6387642607582838784
X-Received: by 10.129.73.20 with SMTP id w20mr391704ywa.90.1487238939195;
        Thu, 16 Feb 2017 01:55:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.201 with SMTP id c70ls391988ioj.39.gmail; Thu, 16 Feb
 2017 01:55:38 -0800 (PST)
X-Received: by 10.99.141.73 with SMTP id z70mr349829pgd.72.1487238938523;
        Thu, 16 Feb 2017 01:55:38 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 23si1237630pfw.4.2017.02.16.01.55.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 01:55:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y6so490206pgy.2
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 01:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vzP2bYBaWArmmyta2cv1tTz3fSIASulPPe7ovt786DI=;
        b=JXZL37cH4JGlIQClJp1Vfmnjqr08/XvuQYRk/Xqm63aMqLPdxpWV/OPNpYVrn1C6so
         TQppvRIoQ9YJTff0XSKhtflG0KkqDd52AQZ+xNs5qI8p8KFn07HjgAm2etxUsTf3+FaF
         /sbcqlC/vIulrgd8Ps6thE2yESNnpXV7QGjdU0u2GzgQiOFI8xJFZ9nm88aEzarEYN4I
         rju5Y6RrGVFty4Rdfn93MNs6S5jUIwP5a4tU7nAtoWuukN1ubtDBERZcWPFW7O7Whicc
         f+rK9gFvDVDTunGbp6cHuzvWoXHW6Po/lNjQxjDOSG5IRhKx9ixynquBusiYnk9m1YbZ
         8txw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vzP2bYBaWArmmyta2cv1tTz3fSIASulPPe7ovt786DI=;
        b=YpPwLj0LeqNzufC89SmD0oC9B5QnW6uLAZv2z1Ol2NLYgwW2CX+yjFdVNF/+JjvYiJ
         oAxN8Krw1S15qGdAeFixrwM7811t566NCS2nq8sJ32QCHKheiPt0qpBQCxTEdkrfYxwD
         qeSZqKwfbuCoTgdqsGyDOOe4QJoHYIGPwjXtQolL+6vxwQ0eUgjwQc2EoM07SZNYuaYO
         l5Deoshqa89t+nWh5CxHRdCfwnSD7lr8h56I5anKsPWwq/F3EY5/rGvSMnjqQz32NTd6
         727HhJiJbbbYpZ7cH1jkq7SYOcZCS7at+f3HThbawv+iucX7tQLQrdeTLolJxWyRhBBP
         uSJA==
X-Gm-Message-State: AMke39lVeqIOI80q4PXDxATFk5+mPKEUrtxjQ9xhm38ZXW/owzVRbmKLfIV0OrKqJteH+A==
X-Received: by 10.99.127.28 with SMTP id a28mr1741128pgd.60.1487238938328;
        Thu, 16 Feb 2017 01:55:38 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id s84sm12448313pfg.128.2017.02.16.01.55.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 01:55:37 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: xgifb: add braces around if statement
Date: Thu, 16 Feb 2017 15:23:23 +0530
Message-Id: <1487238803-24600-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

add braces around if statment to fix the checkpatch issue, braces {}
should be used on all arms of this statement.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/XGI_main_26.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7e..6d8120d 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -178,8 +178,9 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
 		*sync |= FB_SYNC_HOR_HIGH_ACT;
 
 	*vmode = FB_VMODE_NONINTERLACED;
-	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080)
+	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080) {
 		*vmode = FB_VMODE_INTERLACED;
+	}
 	else {
 		j = 0;
 		while (XGI330_EModeIDTable[j].Ext_ModeID != 0xff) {
-- 
2.7.4


