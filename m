X-GM-THRID: 6801905594483605504
X-Received: by 2002:aa7:8e8d:: with SMTP id a13mr12942289pfr.58.1583692057275;
        Sun, 08 Mar 2020 11:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls3277289plo.8.gmail; Sun, 08
 Mar 2020 11:27:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs9Cy4jE3gLT0KlBYPUWheyd1nb9rRNWmSTAFZ18ziK1cVwsbiOLLQgZQt6QajVwUnmsbA7
X-Received: by 2002:a17:902:264:: with SMTP id 91mr12850246plc.335.1583692055779;
        Sun, 08 Mar 2020 11:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583692055; cv=none;
        d=google.com; s=arc-20160816;
        b=EcZXLVjWYYTTXp7CkZUci1nyz9q6JVCC7YsZLW5HLhPEaXYX94ErOqDi4b5Ne4+kbD
         TQBMNHIn4dH+nDe7QYLolJe5sPyjbqSvadmUDLMiK1K65xH+d5Yjomng3UQD1cgS0cns
         glmqaZLN5+UD400XeQPVo6N+EIF+szYhXF997nFS4CKAD182po8YR3YJkVLDOJ9WKr2g
         AVKgdbRwh6VwHR6HgcobB9vlcFaE+CtbWXoZ8wFWMtKlr4FSkFUw1o7V21mV/TFC33MB
         odHd6MPQNbck9u8tVlDL40YsfKByASxKeOhdZSWtXRpKDttiv8QPkb/Ji6R6N4AhSjf+
         J0wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lA33hwuNKX3X6ZKj0n373Yf63swHqp/b4p1OattNuUI=;
        b=IgikvBoP6ccLUNbhts0JXCWiR5z5Jq3ILBAzoCrs4XnkvP2FAGkMtT0mfy9/BVn6BK
         Z7XYFLvLCd6DhdyXNDxGPMQ76PfwJ2gxMqvkonehIRmuJxAggs1Fr5ra1NkuxABZVkju
         t81DlryTU+osgRdXeSB5gthFeevmOQRcUNV7EF1tS0PRdyeYJkpDnkZFOog0EJ2irel0
         5gndGY20WYJeBSu6SN2VOCaOCOhcpiu2+JPXrEMUeXOB9q9z8oDatNGmSio44tSDZkcS
         HzPClUze4F9a3n5/86sbnazQNHL0u760PLyWq/y+hCv02IswcFL5RQj+CaEjp/5k83fT
         Y5bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGdc7BsF;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id hg11si776391pjb.2.2020.03.08.11.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 11:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGdc7BsF;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id d9so3047477plo.11
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 11:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lA33hwuNKX3X6ZKj0n373Yf63swHqp/b4p1OattNuUI=;
        b=AGdc7BsFrZ1aAExeUmwaSy8QECob6kP+KtasPCtg07THEBGx+Y0pp12FrZu/K8/roO
         MXRAjeYFnsMc6zlkzvqj6A9+g68lW7tI+tDyHyDn8MLc+50PLMmVHQmQg2FuGgfVMRUM
         JgYa2KLzXHGowBDj34AO45qfI5QuQhdaetKYfP/VNLAg7sQ1QcKXIcVQUawfeMs/shXq
         Dz2yj9tnkNM7ZVT2S+bhDBQ6YTr4o+g303BY6Kn9OEbSbDt8zwAjZeSaswwEfrocn+je
         BBk02Zo6sjbjK96L5rGoFCh2ZlU6QfwKrF6lkUr5TnEDWX8A4jTuA508utQbeRIzIHLo
         U3kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lA33hwuNKX3X6ZKj0n373Yf63swHqp/b4p1OattNuUI=;
        b=ilRM3nxkPdYotAlzhNpKoC2j7M1eZASbYvRStSWBGxols29bIYmdRx8BuqDIYVDHnG
         xNgMH84t02Z8nz8jCBLesSC+vCXkKNgLYxX7/0UyyiPuW1S8z4ENeNMw3QnynaSkUJS9
         0R2jdVniEIFCT7tVFimHyDo3n6DDhPlnLx3qKp++Dv6fGfUt2H19rh0qn99dxH4XLQCj
         a17KCL+zJvvsOGuufmHIQHOjP7uB511AB6IPMRN64edNpDW7NAMpL0iX1QQZ5zLhB5wO
         IsoLr30gLVdz1ZqKo2//s7YC4ZvaCdf/pAAwB8L1ex+k2mOvWrlih3s2F15X37eBUYiy
         rncg==
X-Gm-Message-State: ANhLgQ0tW1aNMD49uEm0r/Ux4RfbCBSFIESPLHZZ5a2CVhUNU+EjK4Xg
	Kzv/lO4Yj03Ao77h21XmJIzumDIV
X-Received: by 2002:a17:90a:208b:: with SMTP id f11mr8557257pjg.67.1583692055403;
        Sun, 08 Mar 2020 11:27:35 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id b3sm15821423pjo.30.2020.03.08.11.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 11:27:34 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: exfat: exfat_super.c: alignment should match open parenthesis
Date: Sun,  8 Mar 2020 23:57:27 +0530
Message-Id: <20200308182727.4571-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Align code to the open parenthesis to fix the alignment issue.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 75813d0fe7a7..6d4e72d744c4 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -363,7 +363,7 @@ static int ffsMountVol(struct super_block *sb)
 
 	if (p_bd->sector_size < sb->s_blocksize) {
 		pr_info("EXFAT: mount failed - sector size %d less than blocksize %ld\n",
-		       p_bd->sector_size,  sb->s_blocksize);
+			p_bd->sector_size,  sb->s_blocksize);
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.17.1


