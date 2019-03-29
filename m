X-GM-THRID: 6673772779804819456
X-Received: by 2002:aca:39d6:: with SMTP id g205mr3706727oia.42.1553858811127;
        Fri, 29 Mar 2019 04:26:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:764b:: with SMTP id o11ls531359otl.4.gmail; Fri, 29 Mar
 2019 04:26:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcbGfbZy3sB7XG8/iZG4I24MYnRHepL6en5xqRU/jeVClc98bcEHR7i+KDLUtyYR94yCPk
X-Received: by 2002:a05:6830:1582:: with SMTP id i2mr2706138otr.45.1553858810378;
        Fri, 29 Mar 2019 04:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553858810; cv=none;
        d=google.com; s=arc-20160816;
        b=HkZ1emSGbeouCFBGlsXiHTh2OOSaJq7EwJOzRDvXSSxMiUT4b5FB4aiYtwTVYFlBHQ
         V/UMf8u8E3GJbyL9RUd+HgSUoIqz5XCrqRkdveYrByVHmvJe+4U1y73HnDn5jM9Il2vd
         +FNhx8ka6cd+oQf4wzvOmcUP4TJJoWs1jD/NI3Tbj/jDoaAengHIlDW75YUTY7p6QVna
         w9lOMeo9z2M+Bzg0o74DMJpKe1ds6EpY9Q5XGWX+YgVgLi0fkZMWF0L4TkXw9mmuqvqE
         u2Pee6OaXOleuApIVPPMPl1MNsikrVZ1RF6KWWoSzMOq2BpijrS2MMNZe7azTCr2N4jU
         ZC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CO32fGLkhF/OJ5U3SFH9vk6Iyqd/WCcRRL8bd0Fs8Mk=;
        b=xTrBD/Dld/qsQOGbqT35q8EArSr1vlfyaqH8Gks1wf9OLE4kQSxgV/vriX1G3kbqLx
         XASwuMaWTwiCdIcskAqUVeJBghIxtXGdoDgye3uNGU+5B3cTUCas270xzQT1rvfnW1eA
         ofNDnGzmXxDBjvMHRBQWdPoL3J/beBGGiE/Qf7rVB62OIwesU00JhBsi4Fwknb+g8WlP
         53UfXip87pkU6vIpO3sbPR/9rfMILnIzIayUam7oX2+Of1vmSkNfNGXS7F0sPR6q4/Tp
         kqTyRD6EFN6S0Bbti7c56SULQd8hj03lAKad1oPNA8vAKmhh7nwlhBZzSBbhNxcKiYta
         /cpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i1/ciSWq";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d12si83257oib.0.2019.03.29.04.26.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 04:26:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i1/ciSWq";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id v12so1099664pgq.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 04:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CO32fGLkhF/OJ5U3SFH9vk6Iyqd/WCcRRL8bd0Fs8Mk=;
        b=i1/ciSWqvN2IZFPI2N2Ovsx1vIKk5yzkZPQtowkeGP16K30hCgjLeqBtPunJgmWW2c
         YjvvowGglgL5eC6sprDnZ8WdSPeQ41JF926EthrmsJf+jTdLAlvCJi/4ggRPDsOnMP+I
         CL1QpCHAUFU8BtJ8ccOhUA7YDyd6fuZOefEiWilOVeiBgRy1Z3PCN6aWT2gLb74aWnrv
         CaRoH9qtzYSfV5sBNNrWtMBf4+v37zoTicns9qcNgq+PfytkYqYhwFq87amePfT6cz6E
         lHjapp85V8HOTd7XRsEkvdiltLGphXlVkqY597A8K3SWaxVu6hh9WXlkx9hk3tNbP0th
         x0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CO32fGLkhF/OJ5U3SFH9vk6Iyqd/WCcRRL8bd0Fs8Mk=;
        b=qpiTGklAIEhHWTbuwtWUE44z861IunImrluRsy6g9n63QDR+OWsj3QhxkO7FxD3j6r
         ZesuRt1yf1nsLiGf32LU0KyjxPimzLFRZE0dFh6tJbZA4ihoLTkPZgh/c4i7q2BOhjzj
         tRQlh+SrwWow8WT1wxaA0aG3X8Z8f5qOD6IFTsU4I7YwgjMHKcTobGBbUYhl7vM02hRb
         p39k+A+0k71zhr8gROu5R5oLLsGzqeX2J0TVyUv/xi2IvIXyWf+LzBLGy6jkxIgRHV32
         1uszp4KFL+n65Rhe3stZU4mojWj8A+jwHSm1982Z7Y4CknmbAEbLm5MAG7OID6GxQdB2
         p3wQ==
X-Gm-Message-State: APjAAAWbMs+D2J9z4EygZHlQCNixLnnNTHtOypybMAu8q7tMohor+SVi
	0jlHbnF0WZby/JVHW1KL5ZSHukeS
X-Received: by 2002:a63:360c:: with SMTP id d12mr36172305pga.404.1553858809117;
        Fri, 29 Mar 2019 04:26:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.161.1])
        by smtp.gmail.com with ESMTPSA id a8sm2963002pfo.144.2019.03.29.04.26.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 04:26:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: fbtft: line over 80 characters
Date: Fri, 29 Mar 2019 16:56:32 +0530
Message-Id: <1553858792-4632-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix style issue - line over 80 characters.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1331.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
-- 
2.7.4


