X-GM-THRID: 6396246100239450112
X-Received: by 10.157.39.196 with SMTP id c62mr9605032otb.70.1489244401778;
        Sat, 11 Mar 2017 07:00:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls812258oth.13.gmail; Sat, 11 Mar
 2017 07:00:01 -0800 (PST)
X-Received: by 10.157.60.147 with SMTP id z19mr9883416otc.10.1489244401514;
        Sat, 11 Mar 2017 07:00:01 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id u12si2288099pfd.3.2017.03.11.07.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 07:00:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so13371754pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 07:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HbWk9MV829HbkZipCAl540qYUTNpVTHLQZvuBPxg4LA=;
        b=HvE3Xlwn1KhBmKLIkPUt0IVBEpXUyzVabZ+udeKupraeaGcDujlhmgz7I1BraIygRH
         moQB254slOEb493kWpm5sGHul2pdRKxq/jmJPazwSTTns7RuWNSzAd9VPBG+VcLE/V8K
         waRw2K4yArQvFnkjC1YXZnC+YTfsDECCC6wmrWWcGADrbHaaqkWXZYut5aOgcNjWfsUZ
         spnUwc8t/0LnlT2yyiUTANlv8mAEukiJF0ZfrXVle0nHc8g4ocjR8szo7qoOiDJ1xIIp
         EDJftmAMR2wjojKzoFArJFGuCUgTjhVyPH+MeNHC2TgMs667DvQpyTc5R7XTiaqqBm+l
         eyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HbWk9MV829HbkZipCAl540qYUTNpVTHLQZvuBPxg4LA=;
        b=EykgYseYS/eNjhMOS5iI+Mm/YGTEupY9i+B7xtUnYBb5TWH4zCgOPC21hgPCWCzEji
         MiqYbembQlX8MVWWs0cfDoATclvsgDJcNnJqoI5k5p9IGuHPtjpU1C8u790rUsJeEdK4
         6UKsOpCHSNwiyYKnKr5erexp8eu9mrqSmCnqCKUGjyHJUVCAfIIy0EdPIsTUVZdLAHUY
         324Ti9FYWB0azahDmj1GEGhJh9Jks/uQitiq/5/YX/XKNv28Bl1E7QTjI91fIb2v7wMu
         Fb3RmIc8oWQ14YIrzf0vPi66RoE1tP2eFU1Iw8MzqqYFxEBbBiIwMvdk8fbCBKZaVyjT
         upDw==
X-Gm-Message-State: AMke39ltX3XdHDMYoKGgsEVx/1lYcL947xtc+LNnehkaH64Kh6+z+9OVUDRF6MhrWQOjmA==
X-Received: by 10.98.76.140 with SMTP id e12mr27611619pfj.82.1489244401267;
        Sat, 11 Mar 2017 07:00:01 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id f78sm24680281pfe.116.2017.03.11.06.59.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 07:00:00 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: Remove multiple assignments
Date: Sat, 11 Mar 2017 20:27:20 +0530
Message-Id: <1489244240-13435-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes multiple assignments by factorizing them.
This was done with Coccinelle for the if branch. For the else part
the change was done manually. Braces were also added to the
else part to remove the checkpatch warning, "braces should be
on all arms of if-else statements".

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
	- Remove multiple assignments on the else branch as well.
	  Done manually.
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index d101974..d40621c 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -887,10 +887,13 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
 		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
-		if (tmpval >= 6)
-			tmpOFDMindex = tmpCCK20Mindex = 0;
-		else
-			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
+		if (tmpval >= 6) {
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		} else {
+			tmpOFDMindex = 6 - tmpval;
+			tmpCCK20Mindex = 6 - tmpval;
+		}
 		tmpCCK40Mindex = 0;
 	}
 	if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
-- 
2.7.4


