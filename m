X-GM-THRID: 6396246100239450112
X-Received: by 10.129.141.7 with SMTP id d7mr10621851ywg.83.1489242096903;
        Sat, 11 Mar 2017 06:21:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.131 with SMTP id 3ls3204657iot.36.gmail; Sat, 11 Mar
 2017 06:21:35 -0800 (PST)
X-Received: by 10.107.28.14 with SMTP id c14mr7186528ioc.95.1489242095800;
        Sat, 11 Mar 2017 06:21:35 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si1860914pfb.0.2017.03.11.06.21.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:21:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so13328716pgg.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vflj5HJi6OQPcL72zX855Yq/hpoiwWLftp8kcb6Mpko=;
        b=sVI/4vvAfSXMqprysGX24oM92Qfkq2cKQbGWxPBTyEgLgn0Jpa3pih5CtMOwVhkHyO
         1OQI3rycS33DW/rESFgEzUNJWSlVsj24DjLZLnl+0lngvps9fLETbpBC0KNuhsfEPzmI
         3z/fvymhxP7fwaemaJ0XRjhGS743sGP7g2q4ExZ7A8lDjmYVbXVdsZGY+mkegPTXYFlf
         p20ANjK5FTdis/e7z5seWodb/zQup8DmL8XttzgMr8I9P4d+Yff8dGk6K2qSUoKzCtaV
         /TPlnohlasWv9Ft4HXuuiFUNSmEzPZYBDJpdNoDZfZCEk5mfAEZW8W+kNDXTkJIVwdkW
         0p1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vflj5HJi6OQPcL72zX855Yq/hpoiwWLftp8kcb6Mpko=;
        b=QbzxVAZii5in/LDHWNeq3GMbGllLqtY/GBCQ2aKkDR+h/TFkcRnPHmmEt31U9gnpF9
         nNv31/6mfyA9F/D5yZOUPoIDPjwOh58J4t8QdjzyQAEqht5aHuQKv680HXsTjZQ0L0jk
         HMKpB3ET5auaghALzB8uVybVSmxTpj2yaR2IKfO8saLaJS1Yj786fIFun0eV24XfUGGm
         r+Tjyn9stIKXHEzMVxVMdnAj6X9evypLfMPZIY48f/Fw/LC88ZlinqzFctOfc0uGRzlQ
         QutraiFeqc64bftgt5IMfiQ+REmANswbrYeVM3TzncCqrbkT0npo44OfAgHfDiOiB43q
         Idyw==
X-Gm-Message-State: AMke39nTTL/Vi25bSy2hUJOZLCwoCzChbnGdbvXiVNXFcGGzpB4iNtBe0gP3Cyn5nA7wUA==
X-Received: by 10.98.135.68 with SMTP id i65mr27644027pfe.28.1489242095437;
        Sat, 11 Mar 2017 06:21:35 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id s81sm12417164pgs.18.2017.03.11.06.21.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:21:34 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: rtl8192e: Remove multiple assignments
Date: Sat, 11 Mar 2017 19:49:15 +0530
Message-Id: <1489241955-12103-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes multiple assignments by factorizing them.
This was done with Coccinelle. Braces were also added to the
else part to remove the checkpatch warning, "braces should be
on all arms of if-else statements".

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
index d101974..32e51be 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
@@ -887,10 +887,12 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
 			tmpCCK40Mindex = CCK_Table_length-1;
 	} else {
 		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
-		if (tmpval >= 6)
-			tmpOFDMindex = tmpCCK20Mindex = 0;
-		else
+		if (tmpval >= 6) {
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		} else {
 			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
+		}
 		tmpCCK40Mindex = 0;
 	}
 	if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
-- 
2.7.4


