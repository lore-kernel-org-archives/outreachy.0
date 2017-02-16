X-GM-THRID: 6387642607582838784
X-Received: by 10.176.2.208 with SMTP id 74mr907293uah.7.1487270534450;
        Thu, 16 Feb 2017 10:42:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.13 with SMTP id j13ls2342647otb.40.gmail; Thu, 16 Feb
 2017 10:42:14 -0800 (PST)
X-Received: by 10.176.3.148 with SMTP id 20mr942635uau.9.1487270533964;
        Thu, 16 Feb 2017 10:42:13 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 23si213284pfw.4.2017.02.16.10.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 10:42:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v184so2647338pgv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 10:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nYQdOKErW8U/4vezqnhAKaKbntEH0KZgyGvUCiWLPhg=;
        b=jB4/SLr9suj28mdz2E7YNNYctCxcwbOzX/Nd9i0W6odGB3Lo/iXKQv237OZpNERASR
         97/eXHUeVKbsZPgWXA8FozGIpK5Xq6dMFQezV7aXX/iyfmluqOxHqF4GGSZWLZCtrNHd
         Sr70G2VtqgYAinJeJ+wZutSJIa0sIwOwKcExCEG8So6p6aIn60HWl69SOuyBBV3wN7nl
         ckknfetLYV23/glBz1oktgnR9tQJlXoOP2CxakrHrz9R/WNmeI4DRtMMb5M1sRxgJc7z
         KFkrBhvy5kNZBD4FSDjkDubWegqlU9er5eh9mv6SOIi45m+vlxkQzwQY93MXQELSCwOX
         u1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nYQdOKErW8U/4vezqnhAKaKbntEH0KZgyGvUCiWLPhg=;
        b=YnaDSYGNrtpX3G+O11mvvx3DyjXiwe8S7hrbPswH5DpSLAmdyOMoG0ANzzK75wyJ8T
         uJOtGtS6p2d2VhYbQVZM1RfuRL6x0wlUkXPoenRVX975rAmzd9bSxe9rVi3mMHMkTTJv
         cHwlFgdrCEKDOqP3iy82Ot8JRaY1zrqoPg+4Sfl87LfC+t9nXisyTjjV0tugbYyMn6Mb
         5Vfe0JLp6VOXkEKoL/EmULgh+h/ZKSdlbKwP4U1eufY8vQ1Y7IpsxMykwzQwvVnAN1Kr
         SldHZB8JZwkbwCLLT/f/h/CnKH5zA5noqhHlOAoAOfRarAxwlNnjJBjyerioTIuPyqF3
         SS7w==
X-Gm-Message-State: AMke39ll68B41ElDxe69zo82h+mbdV0FZSG9eZe16cfj++6FtvODbHkJlBHBl3Pb1jVbaw==
X-Received: by 10.84.232.202 with SMTP id x10mr5175550plm.119.1487270533579;
        Thu, 16 Feb 2017 10:42:13 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 89sm15030288pfo.40.2017.02.16.10.42.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Feb 2017 10:42:12 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: arnaud.patard@rtp-net.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: xgifb: add braces around if statement
Date: Fri, 17 Feb 2017 00:09:55 +0530
Message-Id: <1487270395-7837-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

add braces around if statment to fix the checkpatch issue, braces {}
should be used on all arms of this statement.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
move the closing brace for if statement on the same line as the else
statement.
`
---
 drivers/staging/xgifb/XGI_main_26.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
index 6930f7e..6895235 100644
--- a/drivers/staging/xgifb/XGI_main_26.c
+++ b/drivers/staging/xgifb/XGI_main_26.c
@@ -178,9 +178,9 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
 		*sync |= FB_SYNC_HOR_HIGH_ACT;
 
 	*vmode = FB_VMODE_NONINTERLACED;
-	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080)
+	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080) {
 		*vmode = FB_VMODE_INTERLACED;
-	else {
+	} else {
 		j = 0;
 		while (XGI330_EModeIDTable[j].Ext_ModeID != 0xff) {
 			if (XGI330_EModeIDTable[j].Ext_ModeID ==
-- 
2.7.4


