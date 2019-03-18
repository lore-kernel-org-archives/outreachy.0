X-GM-THRID: 6669700273225596928
X-Received: by 2002:a0c:9de5:: with SMTP id p37mr9473448qvf.50.1552910607757;
        Mon, 18 Mar 2019 05:03:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls7212797qkb.7.gmail; Mon, 18
 Mar 2019 05:03:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQww6TZ/N4RQK0u/ILWAglNTPconz3potNuewvoBTFXXsiUQ/TaOcyzOye1kIEe6HhnPxH
X-Received: by 2002:a37:b241:: with SMTP id b62mr9636418qkf.14.1552910606783;
        Mon, 18 Mar 2019 05:03:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552910606; cv=none;
        d=google.com; s=arc-20160816;
        b=PiHHHXGsbWUKy3SrNhtjjioLxcatNtBevyML0JuzoIicGJHyggYs3jr4hk9YDl+Rsf
         +YsSUjANdUKVjfyStFh3Zd1QvmSrV/8kmkcZKGfzJgm0nVhGR/CWLo1sQGL52sMbXvA+
         tufFU1JTt5G+q7gQMpCnN6zYfB0qBSuX6LBxvtFuySzj0e4+EFzL1soKyzWVKKqmaP+Z
         Sc9YMJhenZI93SpeSVCQQzQCPvGwFQAycPFP6AGYR5bba5EeuS6kt2C6EV5fz1Pg/LUA
         fOHMvZBDfxUazeVJgK0H+0Z4ZUu8qCrG8oHLvFLq2vCn2MOwtp8Ko5GVtADSaUttu9uP
         OaHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+Cg7pQfmmKSiROPfrU2cywx9Oquy4Mx1Fc84HdQiaOo=;
        b=mXLS0gD1NDrQZANqfk4TkxopIADfuzh+duE6X6dgpqfz5jeKtiZf/UkRgvxG4QOAJF
         7qFXL6v2i8tA0Y6gsfDOu7ETdBEfgtyVzgYdvcKAiMUpgtFJoUz2KP+VzmTItuJ7tQ3h
         iMp7K1qKk+f50NsxCl23ihTpmqbKaCLVBxpVSJbcrMfS8jXd36Wt8x1EG51iBvDupWMh
         aBo2A03n3AM0mFkcX86Xrv7C41pPBzhdc6kU6d3nMf+E4FliRyVphs3vQrc2eBsT5taC
         S3vs0sEUV24nG6Y3yFuQM7EYUufUECFV9nckMcdxVRhnfcx0RONkyJadzcyDirczqKmz
         fa+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i44sPMPh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id t17si56386qtq.0.2019.03.18.05.03.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 05:03:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i44sPMPh;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id i7so8009065pgq.0
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 05:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+Cg7pQfmmKSiROPfrU2cywx9Oquy4Mx1Fc84HdQiaOo=;
        b=i44sPMPhY4QBbSTiC3hczdck6+o5RaELKHOMQbh/VhwYqawKZ2jhLzw7rqZ1TDh/lt
         1WuQ1PF5/ZLD8/3BU7OTt+YWbuNMGhBltif5hJ8ygneWxXosVtN9ZdwEo3OUDae0fy/b
         58I9XMCc4q9I58bviyOoSlk3oW648BBTkXEI4QHL/zrCwS5jo7S4gyXQmTdozlL4w9Tu
         EZtDQNiuuEPeiZBX5j3cWxtbyCpmj69i8tS54p4KLf8luMecBwCR2lS2gVnhBp+aTRNs
         6I/3RVl9s6FLeMj0dDl2CEXrxQIiR0V+NrwKh0fuPCx99YneRCv8dnn0ddwsFe7KLpBr
         aOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+Cg7pQfmmKSiROPfrU2cywx9Oquy4Mx1Fc84HdQiaOo=;
        b=GkUUEGE3DW8WiBllha22puGzNXpfzbni4L3uYPEHKjIwpeyXc4DMilKBXsN1VtDYvy
         SLVABFSgt1n8sVKLpYlQz8X77Sj7CTIvCCWRHOvdaOIRDDnsb6HSugBXfboyPXHRuSkh
         AFQen682GnI1y/U/YDNHBETvuw8vfa89sOj43r3lFCwGMrsKFpH8ocSIlkAapfpp5lQp
         Y4OcKsF+6sRKvRH+dzWWliZPYUxf+3H/XTeGjuVW6nmia9nstovTlQKIAcdGPauHaLGe
         sQlqsROp3FCAxBK92AZmuXghsyZuLP8c348+wCCrGhc3X9TbuCWWf8Roa4D+pkhijTDt
         8XDA==
X-Gm-Message-State: APjAAAWgLyaseJf5azOSa5I7i9Ld+cXvA12ROeNQBaWizDgkrhM0gLnb
	kUTijGbL64pDI8UtRt777lk3/YvE
X-Received: by 2002:a62:be02:: with SMTP id l2mr18875937pff.55.1552910605550;
        Mon, 18 Mar 2019 05:03:25 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.125.144])
        by smtp.gmail.com with ESMTPSA id g15sm16742560pfo.35.2019.03.18.05.03.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Mar 2019 05:03:24 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: mt7621-mmc: remove blank line
Date: Mon, 18 Mar 2019 17:33:02 +0530
Message-Id: <1552910582-2749-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid style issues, remove multiple blank lines.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/mt7621-mmc/dbg.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-mmc/dbg.c b/drivers/staging/mt7621-mmc/dbg.c
index c7c091f..6b59ac8 100644
--- a/drivers/staging/mt7621-mmc/dbg.c
+++ b/drivers/staging/mt7621-mmc/dbg.c
@@ -50,7 +50,6 @@
 #include "mt6575_sd.h"
 #include <linux/seq_file.h>
 
-
 /* for debug zone */
 unsigned int sd_debug_zone[4] = {
 	0,
-- 
2.7.4


