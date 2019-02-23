X-GM-THRID: 6661153650381946880
X-Received: by 2002:adf:a390:: with SMTP id l16mr474725wrb.11.1550920691015;
        Sat, 23 Feb 2019 03:18:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:ce03:: with SMTP id m3ls1036802wmc.10.canary-gmail; Sat,
 23 Feb 2019 03:18:09 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbK9Mw+WF0gi84i6tKvSFE2/ty/zqnq9RAuJi7jLiXkWjDqSMkIL3kJa6CCFed8TQub6udi
X-Received: by 2002:a1c:be10:: with SMTP id o16mr104966wmf.24.1550920689485;
        Sat, 23 Feb 2019 03:18:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550920689; cv=none;
        d=google.com; s=arc-20160816;
        b=iU6b7n8ic7gqnFzyFRAxlIuIQOWmfOOmiBMwMIp2wokkVz45oOxxYN61MeeE34ZQ3c
         Aj3jUATWsORMJAilzLeERnWcF7QFNDR9t/Y/0FaFVkpBWZ/daA4lZx/N2fmJlJjcHXRm
         ee1Ld9TdMw1SFSXsty/cczEIUnCWZ/u8DT8ucDtpi7qNP1koQJpQjDUOV9PLUutqxOAe
         PeOr4dCm5+k5JD3/lSdyXcieyOqa5URkWPZAJDKA9A3n55HQLSJOC6x7b6CQbHnDicgI
         Y/hr+wNYrvT/NTygohm6mfKP5198eJOWBX1zifoDrqDcyt9Hbc+gk1Qz4rCBPgpdR8K0
         E13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+GsSC8kWeNV/R5tzYgG2c+8rJl0TR4KyHpnRG356StI=;
        b=bG76GX/vQNAAbcBe+i7pPT/gS28K4ILj0zLlEVi7B+yeXRZ0SQWW4L3E1drJYiY8n7
         Y1VZCeeWsZ1z/GRdu1NYGgGRcXbtnoCUONvhtHoECerj/zo8HS4W+GxBsbPXbnkqc8mD
         IUmyna1W9HOdsjdw+XeWW+U2hkh+CDtVhH4Btm0PkF+mfvFjSvgWRwuYu6k937VPIqiN
         1Diu4fKHpdMdr4AVqjxz4bOddTvAU6bRRsnlptK68fSW2To3JGbcclDcCuyPZCzsMtX5
         ftaOzHWJcPj+5kZ3fV+glB/C2DmkkXiPSXJ+5asNLFtkDlGNfOob/wxQ4M+oZkkU2PPj
         hOvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRrBQi1D;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t2si131918wrn.3.2019.02.23.03.18.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 03:18:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRrBQi1D;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id x10so4099807wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 03:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+GsSC8kWeNV/R5tzYgG2c+8rJl0TR4KyHpnRG356StI=;
        b=fRrBQi1D01cnqbMJVM4n0JMvL8mc0axr2ZstRz/OxbFmzvrYUELvT8u4HD9R5Czgcf
         CPjnn8YS5g7G/ejmZY7pEQwdFP9GJPM/7vJlW7qkEJRKb/06UVU7iH2oTGnDMasZecFQ
         +FrK02J5qO2pa4TAxL2pmksE7axb+ZaoSvKsmG6HPj/HR/LjF0n/Mx7TbYba7Ddn/40i
         y+ayWOuT2osOwgZXdbCtD1g7is2W6oTaH70PWf37msDR5fvk5v4/UQaf4d+3tJDeDtKu
         fzzdiwn+O0W9tV0kdEHiEJWLCQO8XenlojapcqPWX7VAOV3vaJF5zoRRoWIZj+94n0yr
         /yDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+GsSC8kWeNV/R5tzYgG2c+8rJl0TR4KyHpnRG356StI=;
        b=r8BrAUAbX8vY/dMFKE1pJsG+OelGBG5+ZqEIvApaxaTD0nUaZx/vVTaY2hpHQpgEBY
         7GDr7yb6k5tXjfvULXxt0wsqGiOorIOvTwCx0gskE78y5BtrzxdBp9Yw2/jL29jp/8Nr
         rm89rBjkpYrd632qZwWBx3a7fHACMSUwXB0CmaUSgOW/V+vdz7cdYovBpk3E79VheqSv
         cxKlRj9BuKCRqmebPaeOtIH5G/9Sgh2X+SDRfjaBh2iSnSnzB37nbBT7SLnzxZg8aVpU
         yK6bK6SiROBvAib4tlTZJstURoHE+wvtbOz7QoS7wH8xfqNPs+DeloQcw2wwzlkvTc2K
         jiuQ==
X-Gm-Message-State: AHQUAuaButrAuaG18h1PZ7wPeXPj6y4vFXkQszG9RisTuWt5MdkCJ7g8
	oq4E30JbeuvpaZHQBYjBOyC8+aPe5g==
X-Received: by 2002:a1c:6788:: with SMTP id b130mr5574456wmc.102.1550920688846;
        Sat, 23 Feb 2019 03:18:08 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain ([185.61.164.85])
        by smtp.gmail.com with ESMTPSA id g202sm6940124wme.26.2019.02.23.03.18.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Feb 2019 03:18:08 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: jreuter@yaina.de
Cc: linux-hams@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	davem@davemloft.net,
	ralf@linux-mips.org,
	netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	jbi.octave@gmail.com
Subject: [PATCH] net: ax25: Fix  multiple blank lines warning
Date: Sat, 23 Feb 2019 11:17:51 +0000
Message-Id: <20190223111751.14620-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 net/ax25/af_ax25.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
index 5048790a75f6..2da349b7854a 100644
--- a/net/ax25/af_ax25.c
+++ b/net/ax25/af_ax25.c
@@ -49,8 +49,6 @@
 #include <net/ip.h>
 #include <net/arp.h>
 
-
-
 HLIST_HEAD(ax25_list);
 DEFINE_SPINLOCK(ax25_list_lock);
 
-- 
2.20.1


