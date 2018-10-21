X-GM-THRID: 6614961709570326528
X-Received: by 2002:a67:3790:: with SMTP id j16mr41247128vsi.46.1540165792537;
        Sun, 21 Oct 2018 16:49:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3404:: with SMTP id b4ls3571502vka.2.gmail; Sun, 21 Oct
 2018 16:49:51 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63CLIHsghIAUHIRUDE7cSlbE5QGlFsIfwInM4GNj1ospBEY6f4P3RGPmxSdfcQ/CaF2vSNE
X-Received: by 2002:a1f:3250:: with SMTP id y77mr28202785vky.4.1540165791685;
        Sun, 21 Oct 2018 16:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540165791; cv=none;
        d=google.com; s=arc-20160816;
        b=bDfoJJneQtLaIf0mxfjzYsk1ee7JagjMTbfXwXwEFUZc0ktiTKOL4rJSxOFVZv18Wy
         umTfaSKrHiIFSQrP1uzjiGoWpCc4tL2biVdXXCIYYMMhURqkFrUq2WFxX46bTNOTe/58
         D87jJmRV+SmjUQfDNzzNqV//wofYqg+HGhjxm1B4ZS/7w/GfE2V776Fv9j36YJUPvcjp
         RXmHeCOfjr4RF07/+FZacLVKPt9jQCBTrzVHsRHaani9rl6Hm+4bg3zchYaNJ7wfBQwI
         jlW+nPouvIgoS6Juo9C2ADIP/pWKnec8z3hLPCbG9YCcTV7jYssOkakVIIP+zmBl2D+l
         d91g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=6Uts7WoHfvaaVgmLOJxRD3aeCr1lUra09b9xmxiwKTI=;
        b=KV8MuwWhHKmXCzRcWuUmQQU6F7UmCwH65nHtejHmBxqAHrfbpXPXu2aW/qC4oY0r/M
         iS0pz8Rwd24TZihBB9vkZUnE2kgjoWdRXA/i20/W5PpG66/CxkMwYamIPM1C4nV1U8Ou
         KsP2KgAkLOqyuyaBH43eou6Lsym5ZKso0xzhzUkie3B0Zgi+ZCBoXLVoMUPWV966eBST
         L1UEPWRfQVG9HrlqxrgTXmKpcynVOSVikGkvWYrB5kstc5qTYS2MOtd8BKB3V7Wiwzf+
         IKmu/I7EDWZreoKpYa5Iv+x7ddLgK7rRtdYGQs5LVEq3YNAd6eyN6iD45EnXw+zISdy/
         ORwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TynzK1Ch;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c74si1333103vkd.5.2018.10.21.16.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 16:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TynzK1Ch;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id bh10-v6so4813567plb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Oct 2018 16:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6Uts7WoHfvaaVgmLOJxRD3aeCr1lUra09b9xmxiwKTI=;
        b=TynzK1ChttFDFfp9YoecRJoqJ6Xgh8do/RhVXllzLLhFKcllqpagIvqXxWqvzMvFRk
         haTlZoUIixCUtuMwjNK8vA0oXjSnxxWflBGMzGCsMyXd9aq2+dY99ferNScpFFEV+eM3
         0RZlsnRRQfr369Sg2ZDSuVvrMFNBypZZ5JqL4mkqbYlk3aoHzcF0c5hXAlhPaXV5FLih
         I2X7J5qLJoVFUGDlqO83rofoljt+iRhcmlWXdCc4dj8aCRp+g3UaKSvY2kijekSthIfI
         TK6YeSSckWav3+QpiaDu21nRA5kfcw0fMSxapWySNBcYpBToqo8a/flQZt6QN2g7dS9M
         +Izg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6Uts7WoHfvaaVgmLOJxRD3aeCr1lUra09b9xmxiwKTI=;
        b=E0He4YXWF0WE9USgAi4VLJ5MY4av3pbWkTutWgwaLa+ALCeofmcevqbZlIFKTcBIwl
         PFv8Pd+NmWO3V3A0xhK8t8JpvIS3jL3e0K5l9gRkhONWGfCYHGzyWmdmmaK1Ed2qUR/g
         /9rq14ZDYkZEjEPkn/LlHHOyfk7msVYeTfeKa3BqDJ0yQK4gZXtDdkX0+EE8jxRoNBZt
         MvQ4Bqj+hSzv0GLfHAh/1A4ummTt44Oe3+TfUmdIPbo3mZEU3LVKJRfSa369QOHEk0cb
         eeCVjZ76xQ4hF/nOnW+4htLIj6f8aAcf4COx0RaVjDnQ8tGl/CI1iJyyNWfITqsUnjd+
         AksQ==
X-Gm-Message-State: ABuFfoho90WBruUkrXZk3iDp3irMB5hL33J9eJHytXFDjGyP5JBGWcIX
	GFE/n5QMjYmpI3mgxrVZ7goHfXXT
X-Received: by 2002:a17:902:1a7:: with SMTP id b36-v6mr33799913plb.240.1540165790676;
        Sun, 21 Oct 2018 16:49:50 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id z63-v6sm36884213pfz.31.2018.10.21.16.49.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 21 Oct 2018 16:49:50 -0700 (PDT)
Date: Sun, 21 Oct 2018 16:49:49 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtlwifi: Remove an extra pair of braces
Message-ID: <20181021234946.GA2183@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove an extra pair of braces. Issue found while reviewing one of
Coccinelle's semantic patch results for returnvar.cocci.

Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
index 4bf86e5a451f..90a41c64c0c2 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
+++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
@@ -484,9 +484,7 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
 
 s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig)
 {
-	{
-		return curr_sig;
-	}
+	return curr_sig;
 }
 
 static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
-- 
2.17.1


