X-GM-THRID: 6523943394650095616
X-Received: by 10.28.18.212 with SMTP id 203mr54938wms.7.1518973939314;
        Sun, 18 Feb 2018 09:12:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.10 with SMTP id t10ls140246wmd.9.canary-gmail; Sun, 18
 Feb 2018 09:12:18 -0800 (PST)
X-Google-Smtp-Source: AH8x225hGfQmpd5UevoR/BeKuAo9QmneSv/qcr3C/9hKV5rTMCNnDegMe6J+/noHfXUy8o/ZkzbP
X-Received: by 10.28.15.145 with SMTP id 139mr1868266wmp.27.1518973938054;
        Sun, 18 Feb 2018 09:12:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518973938; cv=none;
        d=google.com; s=arc-20160816;
        b=mD+lzTsWVI905qp5+CqXPHHgj/wNRwBPF3z+6mQz15AI+ZZfsNVwN3eFuHONQmxr51
         vFSbM7ChVCH73GDYc/aIw1Dv/pmrkWsfuxFWzAc68H+We+jcaPaRsprRT96QML/LNLOf
         F+JHBlq1YRRU+vx/i/gNkGnTGRMhcMgaINS4dob/0e+xSE3uOAPr80rXwXqfTDUHutVn
         CP/igLYeM3EpIbBmLY6KtfA0WWK8kEVlSC/3sw0o+G76LFmjXj+Ju24HdXJso5fFBKmi
         dttJsnupb6wlx6cKJlkGfaWLzAd0qLIEra2fM6VHG2kUTH/QhSaC4BN2BI2jwuHO55qR
         UC2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=LJoDnChzJygeBdpQ0+HqF/YbNKBYKB4gkKHq01igsbs=;
        b=PHm4SYP/Z+8ZqLxF55ns1aODoxpQZl6F3UIg77pA5qkwwbQwjfo+bk3Kgu7W//HBPg
         3kqK4X68niVSOLYqyCWrU1KwaFvx3X9KZOm14RjlunIi/lKgVeK55+eFfbpJ8JWSQOG3
         mrTGZchLrY5WhOGRk7A/Jgs9hFgd4Sr9EGuCPefnBWE4Y/FDrHNKc2rgKeNx0Mp03d9u
         ZKkLu/jxtIqz6JkIS4VglbIJIwRujZMo0/iBNKCkUnEOxnsOCm03r/SuFQiM6SyMBEHc
         bhFrUygBrstDfqFEDwQ/7+jii0uusErYWbkPBv5qF1rOSj0OoUU7Hof4X/f6IDbOhJM9
         /vmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sU0Q6j2F;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id v196si439595wmf.1.2018.02.18.09.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 09:12:18 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sU0Q6j2F;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id h21so3807160wmd.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 09:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=LJoDnChzJygeBdpQ0+HqF/YbNKBYKB4gkKHq01igsbs=;
        b=sU0Q6j2Fu1De0mQBx+iYLRMX2kDDevKzDsd9kDEr3LpeQwvmATern7z2stz+Lvm27M
         FB9ETXBNDQYtKk9+t+G5DvgLMBITgeSzW1QTZy21jZSUUZnBixTh+sA0zVxTnx+pTpXq
         T3f2FL5e84wR2M/wDT3BQp//ptdoT4xcQEVXxKj8/iCytKPHujiy8u7saJ6XpaC9znrZ
         rmL2ycUK0gDJyWuWn5lhs63vZAtJMm1bbv9vhesbxSYTaptJABQAjySZalGDDEy96oMv
         doyJQXaaP2l8VCwVyB7UsRpRvkPdv85ma2KtjTmewK8AoVzaS9GppQ4wBhe6vMGmebjD
         319w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=LJoDnChzJygeBdpQ0+HqF/YbNKBYKB4gkKHq01igsbs=;
        b=PjfftEdt2QWLI7jNYdnRIIpcAzPtAZNh7H8LAmXnvCnQphtGteJRA/gl12le/dBQ6C
         AVFntc5pmZzlcn8GYI7TDvO0TQLluLUYBAN0FHGfOBAeRaQRajmNxdGQekw8CRPnvBC+
         VD8b1rdw+9KH5/7a+r1JrWSQU4Zf8FcgO7TMqeZZ/+j0fWTyLjyEg6tVwsuy/7PykiwP
         iWru/jyeNaxmXQVDL9g1bxBU8AehlvYr7LW39ArTukHgAtGHXkAjbDq1rMcBVljx17cY
         VnL5+3kbeBANyP8ahciXwtst24xhSlK2zRgqIwmqsz+Axug7aAnbiCGye5/3GgqvuxHK
         025w==
X-Gm-Message-State: APf1xPDjOj81hw++tEW1jD1j0DRSnl0dNAgAtpLX7Gc8hm3sBCCZQe5j
	Dps0FgVNkE7hDwezNpw+zDktJ0AUbwk=
X-Received: by 10.28.18.144 with SMTP id 138mr9888224wms.131.1518973937440;
        Sun, 18 Feb 2018 09:12:17 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id w104sm22750795wrb.33.2018.02.18.09.12.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 18 Feb 2018 09:12:16 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH] staging: comedi: Add a missing space
Date: Sun, 18 Feb 2018 18:11:38 +0100
Message-Id: <20180218171138.4313-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Add a missing space so that the * is properly aligned with
the rest of the block comment. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/ni_stc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_stc.h b/drivers/staging/comedi/drivers/ni_stc.h
index cb9d4c3a1926..831088c5cabb 100644
--- a/drivers/staging/comedi/drivers/ni_stc.h
+++ b/drivers/staging/comedi/drivers/ni_stc.h
@@ -9,7 +9,7 @@
 /*
  * References:
  *   DAQ-STC Technical Reference Manual
-*/
+ */
 
 #ifndef _COMEDI_NI_STC_H
 #define _COMEDI_NI_STC_H
-- 
2.14.3


