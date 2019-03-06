X-GM-THRID: 6665254645143699456
X-Received: by 2002:a2e:8852:: with SMTP id z18mr260459ljj.18.1551875529299;
        Wed, 06 Mar 2019 04:32:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls206368lje.4.gmail; Wed, 06 Mar
 2019 04:32:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqxMKJKZSaRYIY5Tg91VKjyWFu/u0JEX1YYn/S64wR2L9zfrylqyYZ8F69FKBVR9lkFUXczH
X-Received: by 2002:a2e:944f:: with SMTP id o15mr251914ljh.28.1551875528356;
        Wed, 06 Mar 2019 04:32:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551875528; cv=none;
        d=google.com; s=arc-20160816;
        b=iidra+TbAS58RxIF2+vAjf9KSY4zurdl3GPKPbuwAvwBng1W4UbqTLciaG6z9PwspD
         SoLrOgm5BdmsB1yHHjj1Z4ztl+JK8S8P4pSTvDnHEKptI9B/4NPt+VAcR+yr34ULra+W
         CrndyqcZx7L+QioCfQRyVeIHgVfvT1jEQcLi+8vs0u4H7m5c+/fAwdvC+rzZm85MUy5X
         qX40VEGEBK6RNUeif/X5IZpW7axF3c93vPufuxetr5MhICbpXyK/n152n3kVtzUd6YZP
         /Oc/mku1ZVynxisIEYtUEWWVd5/WiGWgM+JPekdq34/H+KyyZel9h8rnwnJHOtZMlFhy
         dP3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y9xyUqUGrDSracrBvwu9/Hh0jfq1YVLmi6zmnvfRBMk=;
        b=Lo7Ayq5kdyS2Avs7/e0UDNpSALnJij7gXUoJ4oNzQ+qDCddaFHKncourd5QdhpFmJH
         BWis5EYa1cXOb0vtC0jN7ZDqgEFiHtJhmtwfblTP+eydDR622pZ1u4RzjWIZbvtWfvb0
         PJQxJ0TFip5KpxvlTJgYy8yuHBDqScDGoO2tnYou8jCEEOB3SMi/dlv7IImBTqR10Q8T
         gjcaqAxKW/aORXLUTr+b/mwNdGsAj54IDb4hybLgPlxDwctdvA9hE3EtbVROTg6E/vY2
         E7ykgoLYGKtYuwLYdKBJTvT9p24QGI4ButJj2wRuVrGJPJK1ok+Rdec2SgTX2aAZEHv9
         7pjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JR6X63Dh;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id f20si41687lfc.5.2019.03.06.04.32.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:32:08 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JR6X63Dh;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32e.google.com with SMTP id c13so4334875wmb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 04:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y9xyUqUGrDSracrBvwu9/Hh0jfq1YVLmi6zmnvfRBMk=;
        b=JR6X63Dh8kDR/vjbgrlfxwxmTDMlRJ0BFJsTzzmtZFFamBwcJ9fDawwOu5bVoOFGq1
         vAgreHdQFIdKUjfRzrV0VT3NgRDu/OghGm8kiDJE9XyWbQHecw1FSbAFLmF4pH6ii/fh
         hfECOBQGCqsL5/ZiG02vCEiUNjpy3IhTP+PMKlUSrKULbiYCrVYOMFaR1pHCAf/vfIC6
         ufa7YiwEo1XTSQZNsqzfxjJ0Z8n3eR+O7G4rUVLoUF2cyA4Mzhezd0f5uonZeNRRKry0
         l9o3UHdN5S3jtv/VCPS6aFlmNQakgCitzZnIodmresPBEpFxzPKhASJFjVeYC8qhlJV7
         Xtag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y9xyUqUGrDSracrBvwu9/Hh0jfq1YVLmi6zmnvfRBMk=;
        b=O8MjUJPxevFwN7czCyXap0s9X+FAltD1A8n62dnekEowO0vNAgzUloLqD1VpCT2P6G
         LSVKVPk1vbwsHf2/4QQYyDRBiZq9yVBJs7m+ZuPJ/jRIlyBW9hEjAV1n5xGVwan+pTyS
         mfqVTH6HuBnzI5iqy6o2/vi1XWO4SMCFPp6AT6OUTmzuciSyP+Ki8KSLzTptxmTB+Gzd
         nyPToFdf+T4A32ozjPTG8uUabOoF/m0icfUtlM8fLdo2K5yg1Cl2w56zXfO8xY1Q4Le5
         y4QdO5RonuPsqD6C0yhyJ4ucZX29mnEcBEyHsZWzJIuz9+UnvM99N1wl1ytGNwBEDtN3
         hfOw==
X-Gm-Message-State: APjAAAVcNgTwVchvupsoi1iCInWpMrK99gfr+xVXV65E5LINmJvyXy3T
	ePNc2LTI5S4WcbfxwCy0ESfX6mVbMNE=
X-Received: by 2002:a1c:234d:: with SMTP id j74mr2121356wmj.130.1551875527980;
        Wed, 06 Mar 2019 04:32:07 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id w4sm2265175wmg.8.2019.03.06.04.32.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 04:32:07 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH] staging: speakup: Spaces around operator
Date: Wed,  6 Mar 2019 14:32:05 +0200
Message-Id: <1551875525-501-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around bitwise AND operator

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/speakup/speakup_decpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 459ee0c..798c42d 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -263,7 +263,7 @@ static int dt_wait_dma(void)
 	if (!dt_waitbit(STAT_dma_ready))
 		return 0;
 	while (--timeout > 0) {
-		if ((dt_getstatus()&STAT_dma_state) == state)
+		if ((dt_getstatus() & STAT_dma_state) == state)
 			return 1;
 		udelay(50);
 	}
-- 
2.7.4


