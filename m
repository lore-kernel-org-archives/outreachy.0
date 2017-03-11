X-GM-THRID: 6396244306305220608
X-Received: by 10.157.40.138 with SMTP id s10mr10051388ota.97.1489244961782;
        Sat, 11 Mar 2017 07:09:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.20.13 with SMTP id 13ls603210itg.18.canary-gmail; Sat, 11
 Mar 2017 07:09:21 -0800 (PST)
X-Received: by 10.99.189.17 with SMTP id a17mr11769515pgf.53.1489244961034;
        Sat, 11 Mar 2017 07:09:21 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si2218289pfz.1.2017.03.11.07.09.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 07:09:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so14017101pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 07:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IDK9PfbYl4wUCOQkfANE9vaa/Fo3tmrotzxsKdSkft4=;
        b=lBgNPxnsbvduA0k/auC3BJfJHiOcuLdBtmijrzouKCfffLrEY7G1e08KpKy5N5FEpM
         TjMB+EAnYMqsg0bJgRXb/WcHXEWonCm9+YXSVxbIT0wTvqIIC98OYJ5xDlsJogRgpq3a
         zm1IZlwJW3j5zK5hwaaPiCia0ZnGTLwqIoyb6vspmaPLEfc6BDP9ZGTooTXDsqrvp2Zs
         OWQde5UepXKYUgg6ENxYmGoZp99vFvhMhJyKaPq53rqsuOEoNR6F0+R4zFcNMcUGZLl2
         wcvov+a38XgJYKfqydXv01Qkw+gATSjGGY2pJEs19WK1jUtGEuP7kTD1zyntVudeoGNW
         7Meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IDK9PfbYl4wUCOQkfANE9vaa/Fo3tmrotzxsKdSkft4=;
        b=aGFT3DtMQL8bfsXw2xaDg+gu9fYsNc+Mc49PrbmIbYgDqihXTfa3KshH5WysN/xiZJ
         ps77Wcd1CJ9hpvG+wfwQAZXPtIVzkRLGlJlmLxABhqVbBudH2pk0s/1RG9HIncEsP96f
         v8i2F1Qsf+hx4XfmZlaf1XC24AzjGyxMm0sd4sGCEq7+/sff0rmS/eAwlEv6W/gqOuJ0
         DyOl7cKtrzpL35r3PyJMbZOikyi04ZEgemBOSBxH76HkkXgN/ah52LCprYCImYirmTjQ
         i5pm76P0scltif7p1t1xPPqORVmLwHnw2/caLzT8c6xSdbXTS1TveSjHAvvYbmpEeQdo
         zE6w==
X-Gm-Message-State: AMke39n4UrmOzNOfhG6GrJrhpkizNSZR/SYh631SWUk6mH4j725LOx/so2XsGR/oSkdLbg==
X-Received: by 10.99.37.199 with SMTP id l190mr26500173pgl.86.1489244960799;
        Sat, 11 Mar 2017 07:09:20 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id y21sm24887364pgh.52.2017.03.11.07.09.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 07:09:20 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: Remove multiple assignments
Date: Sat, 11 Mar 2017 20:36:57 +0530
Message-Id: <1489244817-14500-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes multiple assignments by factorizing them.
This was done with Coccinelle for the if branch. For the else part
the change was done manually since Coccinelle only detects constants.
Braces were also added to the else part to remove the checkpatch
warning, "braces should be on all arms of if-else statements".

@ identifier i1,i2; constant c; @@
- i1=i2=c;
+ i1=c;
+ i2=c;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 9209aad..6afc6d6 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -725,10 +725,14 @@ static void dm_TXPowerTrackingCallback_ThermalMeter(struct net_device *dev)
 	} else {
 		tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
 
-		if (tmpval >= 6) /* higher temperature */
-			tmpOFDMindex = tmpCCK20Mindex = 0; /* max to +6dB */
-		else
-			tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
+		if (tmpval >= 6) /* higher temperature */ {
+			tmpOFDMindex = 0;
+			tmpCCK20Mindex = 0;
+		} /* max to +6dB */
+		else {
+			tmpOFDMindex = 6 - tmpval;
+			tmpCCK20Mindex = 6 - tmpval;
+		}
 		tmpCCK40Mindex = 0;
 	}
 	/*DbgPrint("%ddb, tmpOFDMindex = %d, tmpCCK20Mindex = %d, tmpCCK40Mindex = %d",
-- 
2.7.4


