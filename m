X-GM-THRID: 9654834823168
X-Received: by 10.152.4.229 with SMTP id n5mr14890091lan.1.1427054711972;
        Sun, 22 Mar 2015 13:05:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.9.137 with SMTP id z9ls564867laa.15.gmail; Sun, 22 Mar
 2015 13:05:11 -0700 (PDT)
X-Received: by 10.152.87.141 with SMTP id ay13mr10800558lab.3.1427054711348;
        Sun, 22 Mar 2015 13:05:11 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com. [209.85.215.43])
        by gmr-mx.google.com with ESMTPS id wz2si820178lbb.0.2015.03.22.13.05.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 13:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of marianne@masu.dk designates 209.85.215.43 as permitted sender) client-ip=209.85.215.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of marianne@masu.dk designates 209.85.215.43 as permitted sender) smtp.mail=marianne@masu.dk
Received: by labon10 with SMTP id on10so19558382lab.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 13:05:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=qXxefU+BMRYEzy7XxR+8Aqizc/xBBtBqR28uIjMiGog=;
        b=b+aHZx9mZeclWmN4JU7zQriTj9RitJkJ5F/7Auw5zHw/t/cXFT3uosg2l+FkVcTiKl
         SeBVKnrLg4Y7eIJQ9FVi79Gh9pNeZ/43bJ3ezzevhluV9bwXhOFP20ishxPHc0l62FX1
         DswDlfHt+rEOM6Gw1P/DqEhryDkwUfMtYrfNCooKvhoUKD9WuY8l2BTg8cTyTRNlMDR2
         j0TxsyY6eq3ibbwrvSkCUK+zpe04fbnjCSTWL84dlEJiHcbk95SXavVuaXlT+Sm4VK+8
         2v8TOT5yl8Mf/3bjH9Bb6soo9ouu8f1SEZTjJ9aidwZw+qttJk9NLHv2H/Nl+jIiYDTW
         4v7g==
X-Gm-Message-State: ALoCoQlRLqx74+wIHOsuZnduLaixDT1ve3Ho+D5K5ktPFBimVrtknQBaSUhtET0+jQ1sjxYYTPPg
X-Received: by 10.112.173.41 with SMTP id bh9mr79869872lbc.107.1427054711130;
        Sun, 22 Mar 2015 13:05:11 -0700 (PDT)
Return-Path: <marianne@masu.dk>
Received: from debianvm (x1-6-20-4e-7f-5c-75-ca.cpe.webspeed.dk. [80.162.217.84])
        by mx.google.com with ESMTPSA id us1sm2194739lbc.1.2015.03.22.13.05.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 13:05:10 -0700 (PDT)
Date: Sun, 22 Mar 2015 21:05:02 +0100
From: Marianne Moeller Knudsen <marianne@masu.dk>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Replace printk with pr_debug
Message-ID: <20150322200502.GA7693@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace printk without loglevel with pr_debug. Issue found by
checkpatch.

Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
---
 drivers/staging/sm750fb/ddk750_display.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index c84196a..9f768a3 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
 				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
 			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
 					(ulDisplayCtrlReg & ~ulReservedBits));
-			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
+			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);
 		}
 		else
 		{
-- 
1.7.10.4


