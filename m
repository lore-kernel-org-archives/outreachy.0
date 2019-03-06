X-GM-THRID: 6664942000953884672
X-Received: by 2002:ac5:c316:: with SMTP id j22mr3650277vkk.18.1551870161203;
        Wed, 06 Mar 2019 03:02:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7201:: with SMTP id u1ls375634uao.3.gmail; Wed, 06 Mar
 2019 03:02:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqzVkTwiM/fiBhyloCN3Uk9f/HgmpEb8dDE54H3bpSG3h5pyE8dtn63i5lN8MsROhwSMD3Ju
X-Received: by 2002:ab0:20d2:: with SMTP id z18mr4629580ual.24.1551870160367;
        Wed, 06 Mar 2019 03:02:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551870160; cv=none;
        d=google.com; s=arc-20160816;
        b=YUkW1Op8QLNbI5muK1OitDpw16dJiivZeQNSPBX/2ql0sL3PdCxskJfVEfY1oGN669
         Y16dRWSbhiZWnznYS/alXq/qAnPaUR8IW5W1CplmHomVyzeBWZIXnQDaAwfGupSjOAqQ
         WnYQOuXkzoPBI9695BAaUEXsHK30GstiFiVQT1Kw7cG1QgbFnBfCQPsDXEKISJADxLNm
         Z6O27RmKvNsgZZ9NygZPK6FvHnKardqhDkRXqLuyMzq8MN8o5cEar4v6jU5nMOi3mdzu
         AeSUPtqPf99ZmFl2DXJispzjL6IHYiLtYbH4xHF2ILeKN6a9xxZ2AkNV8UFXS537Jxmi
         8xLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=iBxiU6gYYAUfsQt2wtB3typC41XzyQMPyfPMasJlq6xDfViJ1gQ1zwPSe0QRSyreKL
         /SpoCnUPPhDW6+NVIZA0VhqAGCN0JWCPnuGLTpLcuetxeNxzP+kqkr9+8Xoq6zjm6bp9
         JiNWrM4ytvFIojcn+qQYkuvY5jN3qpgXvWpvXlNBBZFTuocxU7ORxeWo91PhURBQXd9G
         0Joap0Sd4ruKNraQeCH9mkOlRuWzOdLKPao0fNaMkXHOyO/ECB2a1vFaXIxze5MpA3tI
         KWIjp9O+nTdJXTzL2A03wNyOX1n8q2ZbDP6g6fz+XPr4QFxQAKema0Q4+Q3IR0pvQ2BZ
         tlIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AcH5wO/A";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s73si61163vkd.1.2019.03.06.03.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 03:02:40 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AcH5wO/A";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id d25so8316441pfn.8
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 03:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=AcH5wO/Adg017/vqvJmOdAiR5ELuklfL1FvbNa97SRf7xmLRo149lCo2XBjImxdY5N
         a5vyoeSJqSyiOd4DmS8I62IXggTleG7tDgAUzARcGOAbwFL+N5QYcgnBOi19AyaO2hWO
         kW6FH5EQZ7upcg0luVrr4Xbdb3xivHCMxhHRQ8T92HTxZdj/5/Gt+o+xSLlWGtlY/rns
         i3YDMuwYZMM07o/7kGC2zyffq0xVHBah79hcSc3cLuGmWLSnEPNnA+6Uq7Q+lfpckP8W
         sreDix9T/wNfPTgAIYcqkfRudIy5b7WiGHJs0WJ6CXMbPj2DSk90NYIsNLr3MIGD2dUG
         KggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=CzOTDV7pv0gMCIAPWHM7npRvRHUDLQfzACz1K2t965UdI+G/LaCGQ3rMaKvRAjbqxC
         IzftzHOSvkmohf1KeSln3C7Er+Nu1EOSpSuzDaH3bmowAibaQxud6Nhay4M2fijbs73e
         xz131c8+RU/n4Py9Z4H3p7/81EQIlPc6zUChJA+HyM5o6HM7uK1TiljxPlPDMO96la/0
         eehshhJCf3KoX67NSoshBjzXNF/Z8wh/A8g7wMFLsHuF1LEEZE0owe7AQxDF/cDllBD/
         kblH8bBU+FhuI/y3B92OTn86WFhJCZKkOh504fOjCA+0+u/7IfU3ubRzRkNtabwUtb4D
         lb4g==
X-Gm-Message-State: APjAAAVG2KB/+ySwzrU123jgMl5tOEOxVvMnnCGGlp3XgZUUFex2gR9Y
	r7z1AqaAuMnnC9Nlldk8vdxttJGGGnsToQ==
X-Received: by 2002:a65:64d9:: with SMTP id t25mr5806368pgv.244.1551870159086;
        Wed, 06 Mar 2019 03:02:39 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id q62sm4382582pfi.183.2019.03.06.03.02.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 03:02:38 -0800 (PST)
Date: Wed, 6 Mar 2019 16:32:32 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [v4 1/2] staging: fbtft: Remove unused #defines.
Message-ID: <20190306110232.GA11468@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unused #defines, which is detected while resolving `CHECK:
Avoid CamelCase` issue.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v4:
  -- Modify log message

Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  - Remove unused macro.

 drivers/staging/fbtft/fb_watterott.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..502d67f 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000600) >> 6) |\
-			   (((c) & 0x001C) >> 2))
 #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
 			   (((c) & 000700) >> 6) |\
 			   (((c) & 0x0018) >> 3))
-#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
-			   (((c) & 000700) >> 5) |\
-			   (((c) & 0x001C) >> 2))
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
-- 
2.7.4


