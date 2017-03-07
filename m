X-GM-THRID: 6394683804598927360
X-Received: by 10.46.78.9 with SMTP id c9mr237420ljb.20.1488904685899;
        Tue, 07 Mar 2017 08:38:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls118726lja.1.gmail; Tue, 07 Mar 2017
 08:38:05 -0800 (PST)
X-Received: by 10.25.104.21 with SMTP id d21mr200197lfc.31.1488904685425;
        Tue, 07 Mar 2017 08:38:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id i76si383509wmh.1.2017.03.07.08.38.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:38:05 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so1906141wma.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3/UrLtymNMyoPQx/qLsYyHvEH4Go7giH795n2i3ZNHw=;
        b=hb8YQ4aJDhkOQ2hiDZsiPZFaqZ1bPtRxLgM2PTlGM4Zu5VMmwPx6A1Utqunv6KEawa
         S2znQLEJ1HdY1hcvI3Q29jo992S+LeeqObidtMAfxDAN8i0Im5LjoxurmROx8DaA1rgn
         7sWmOFRtTYEPrxiNZXY7AAxkortgel/UuofubhyIv2j8jfa4fADcNKVpJ7sZxPxLccco
         VmCktUiC1s/ujEWozwCogx777h5Mw7pCsWkezaI/0ZlEVSJL2tVaigMXbSfnCZSObhEI
         3iRbmkp4jodxhupvTfdhqGte2bdjyRqdcMCeXlIc1e5p9QbbBgfqqBC1tFU2NYBevZp7
         ygsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3/UrLtymNMyoPQx/qLsYyHvEH4Go7giH795n2i3ZNHw=;
        b=tlfxf7IAZcXZIbdDNuvAR/bfQbNSR5DSKMCh1CnHOpsag9ujq2nuE39cRO/anDZepT
         O5sjmCsEFC9GyQIOpuXZ+sjNzMS6NkLpHwXVDMmoXdZOkQvcGAnfK4z92gfD+SzOgbt7
         nLvuLWcZKEScwAiZI67mHFrwiVo40IXWPJr+17h3TL+nEYCtQkIeRmu2gDQIJer0PQib
         l+9/Wk168VfByiGm9/OnI6rqoIW46O2M0YKBx4G7lfqzD7kzZ1ph+j13V850yQ5CfElm
         2RqUleDG6JRasjeqA0ggZ6x282BR/5uikBmQb35cRnrik6of57E8V45mV5cSH+od/1vw
         vBjw==
X-Gm-Message-State: AMke39mFoehlkag9hUPjATnRZOgOAGA/Pfm6ZRUCLD+HoKnmowyAeK+Cou6evCCi2dhNtg==
X-Received: by 10.28.234.206 with SMTP id g75mr1656695wmi.54.1488904685255;
        Tue, 07 Mar 2017 08:38:05 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id l21sm621470wrl.59.2017.03.07.08.38.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:38:04 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/5] staging: speakup: kobjects: Delete blank line
Date: Tue,  7 Mar 2017 18:38:01 +0200
Message-Id: <20170307163801.9228-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Delet the blank line after an open brace '{' to fix the checkpath.pl issue:
CHECK: Blank lines aren't necessary after an open brace '{'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 9d44133..5d8ec05 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -761,7 +761,6 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	enum msg_index_t curmessage;
 
 	while (cp < end) {
-
 		while ((cp < end) && (*cp == ' ' || *cp == '\t'))
 			cp++;
 
-- 
2.9.3


