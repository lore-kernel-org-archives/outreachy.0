X-GM-THRID: 6466352868892868608
X-Received: by 10.99.134.65 with SMTP id x62mr17115829pgd.56.1505565100108;
        Sat, 16 Sep 2017 05:31:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.73 with SMTP id u70ls1398434ioi.17.gmail; Sat, 16 Sep
 2017 05:31:39 -0700 (PDT)
X-Received: by 10.107.182.215 with SMTP id g206mr4866113iof.123.1505565099408;
        Sat, 16 Sep 2017 05:31:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505565099; cv=none;
        d=google.com; s=arc-20160816;
        b=nXiIlcsKsoVHWZ0HzxBlOM5w5KcMTnB2FRNAfb84VTCPqGpv+Rth5XxQviW2CPXSvk
         1G1Cgd3ioT6AbiQHOim14HWL9C9GqGwGijc5YFJl2cjfXW6EdE8StFoSnwZn3+AFRHc6
         OSC6oP2HVmZ9by7Hx2xJhm6cyCzXpWkw/0IjH88C5p14UZXx55zriGE80SmW9BKsiTft
         I3u7b6GYx+PZSRvyQGsPfkl4mNMJo5A0Up73/F8XwtMRTB7XLldE8qKPfH9aI5p5VaE6
         XuZyUHWPc/56igrCpeiXB7gneP0+EiysIjnliQz+fBbcSKN+MxDnOh2U1nkVGcxWwogP
         hERg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=INupHNaxEAx7VJo7j+V1BHrZ0VJmnTWQ4lqtXsP8F7Y=;
        b=Y0ZxvmjgnGblla93e+rar8CfDm8OaeIoy2Sh6Y3/Do7l8AYsXMuaFk8QiiM/dgdigr
         nlh9DZufKnXJgXEDUU3i9CeohD1mb65HFPy0KbwMLsbb59R4jlXVmd1kogQofAXTfgBV
         TK60/NkcWemig3aEXQty4JAhQgZL16MtUHzH+WM73AzLcs2Pe/cnwLlsFlSVTiccwatx
         CmJkMdo9EdLiRA3rYn6GkPhlxy2iJdUcYE2f0kdMcEOO4V3uG1gzThuVxR09pLWPm/hN
         TVG1yua6quXNcCyHWNcwo4DQPMhKBGbVkXKSrlms0IiXYVG4FvHDSnvBkvjLZ9kUyZO4
         Mrhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKmGbACh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id k76si274215pfa.10.2017.09.16.05.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 05:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AKmGbACh;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g65so2486427pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 05:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=INupHNaxEAx7VJo7j+V1BHrZ0VJmnTWQ4lqtXsP8F7Y=;
        b=AKmGbAChlWJ2V/oCeBUkCvZZPUDamx9SUHoqPy5kviQ1JSimSySPqddoOl+cW8T/lq
         wzefq+cwdJlLa+PZxgg1fxIeYCmkQU2XvLuOIjrJbmIJPCTsVgnwNQvmuCVasTYiO5TL
         8kCiiXcZGKUK1GOTLX0gswx8AswVhVzmwFHBP6taJI1Ag79Ydq0jMJruFeAROITGnTJi
         aBTSfemj1AgEekuGI4OzsMARTK2fsGWRtWV3mOou4gWGhzgNyEdc7xpCVStbNln5Vo6A
         N/Z3PivQwIsKY+xp+51KFuRzSAcJuowzaiDjrNogBc1iKgS4dfTfb2QGIimdSs8FXdNj
         pdgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=INupHNaxEAx7VJo7j+V1BHrZ0VJmnTWQ4lqtXsP8F7Y=;
        b=FZAR3CysEbbGhZJLFkockVew4odOJ+/sZbgmt7gwTIJRhiSmIZdaFz0rpUTIDMvpsl
         P1o31Mu6OcGW4bYdoZ2y3ePDgic2KWRq+kV2N/FNzh6hF12PGu6A410GNdxYRskth5AW
         4/tHCcEOe8iFQY34Xxw7aaBa4Be4L2J+bYSFdSLQ2eeydpEUJQqIEpwap2AaXpb7PE1/
         2QZ1ZDeMFY2WJwfvz4TKyUNsbbPptgv3ABzsTdt8gTLUgFp/1MuEhUFYJd557bpQwudE
         z/URD7ADZxGRBOL5fbUf8JziGV+Z7LuaBwU2QddU0clnqPZBVKZ33p4V+/jqHPJ1njpK
         wBYA==
X-Gm-Message-State: AHPjjUh4s9WD4LB9g2vw+fAoHP8POdB20mIYWx4Wmjenvx2A1CHbhhm6
	Yle0QL/LY4NkSg==
X-Google-Smtp-Source: ADKCNb6x97vVd8jSO9WUXF0OLjTOP17iT5m9DVGFcvO86zprj4XkTQgZ81tXv16PCAA7mJVMOCCweA==
X-Received: by 10.101.73.136 with SMTP id r8mr26504082pgs.67.1505565099067;
        Sat, 16 Sep 2017 05:31:39 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id p70sm7218706pfk.130.2017.09.16.05.31.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 05:31:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: dgnc: remove variable rc
Date: Sat, 16 Sep 2017 18:01:28 +0530
Message-Id: <1505565088-9210-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Found using coccinelle script:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/dgnc/dgnc_neo.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
index 1943e66..a8491d7 100644
--- a/drivers/staging/dgnc/dgnc_neo.c
+++ b/drivers/staging/dgnc/dgnc_neo.c
@@ -1199,12 +1199,9 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
 	un->un_flags |= UN_EMPTY;
 	spin_unlock_irqrestore(&ch->ch_lock, flags);
 
-	rc = wait_event_interruptible_timeout(un->un_flags_wait,
+	return wait_event_interruptible_timeout(un->un_flags_wait,
 					      ((un->un_flags & UN_EMPTY) == 0),
 					      msecs_to_jiffies(seconds * 1000));
-
-	/* If ret is non-zero, user ctrl-c'ed us */
-	return rc;
 }
 
 /*
-- 
2.7.4


