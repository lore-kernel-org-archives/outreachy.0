X-GM-THRID: 6664942000953884672
X-Received: by 2002:a63:6407:: with SMTP id y7mr2422647pgb.24.1551870753748;
        Wed, 06 Mar 2019 03:12:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls847274pfv.7.gmail; Wed, 06 Mar
 2019 03:12:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqyntQXyPVl1nrebZFyeZcgdbgVFB9gaKblM+cuhMnufLVSBbsvyorwDmTDP8Yx414pHsJYA
X-Received: by 2002:a62:f54a:: with SMTP id n71mr2423403pfh.10.1551870753043;
        Wed, 06 Mar 2019 03:12:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551870753; cv=none;
        d=google.com; s=arc-20160816;
        b=NwyW8pD7M3iOvICBSX7dzszPd+/CM75fh8ZiK4qdNCiwXz1DyncGHRX53Nl4BigkNN
         Ulq/ozAgwyTQ7sTRDVE1fvzpo3cN06/9n1OmA4iQmM0OMqXNUS5WarK9PDUQUELHUdiQ
         Aq/qas+0c1KtREKdliLMaVUB2KYz80W9K78vC5+1taTxGuyfs/szz0ohoBwPy6PSk5V1
         OHoHqlTF3iiGgpN84eixo2wSZKaJR3dS6AUgdskw0ffTHCoZStXKYxIySkn8bz2K/+5v
         bfPL3IMdE2XoX7fmqhUEqhy9b3jhdq+qGqHBPd1sTaMHu0GvyI3oSYgZehlrd1yLs2/F
         hpRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=KhWAQOB9sQO6D3kMK67UFJmBKWdv22JFdD3pUntKqXPWvNpW4Q4Rqm3kNTQ/WfPYsF
         9L4J6sm446aNP/rnjlbJSLHEGEmOgM6Gzzdf4P+QwU6+A1bBllpRC/kDzhTX0H+RzPVW
         PvWqgWv9VDzqs62cCaQBIwCK5VRIseeSzuzvoUoMPF3ddoA4S4Y3NKRWIHG5zhrU9d9L
         S2oLnK9fprMTTc/mrrDgllFqcy9+4bk/18EViBa1Jc/Kjwio0+hLTqdUbcSLKfwGlADW
         IqEBn+p2O2bnHBgpEg1QKmVuLy1INC6PrYrqYQhsce8iuUQ+S/P7tIG2g6Qg8A4WpHot
         23ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rygtm6iQ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c12si133273pfc.2.2019.03.06.03.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 03:12:33 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rygtm6iQ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id r124so8157464pgr.3
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 03:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=Rygtm6iQJ+JCCCZGBYq49jSgnJRO9E9WolI9hBjedcjMyhksfuM21awz4ghM8FuUjQ
         3V1/L57ivFu7iBBcwMv8W7u1f4Iy5l1RsZzDcA60xw9xa+YYWFkbmhNCeyLbE/p8Gd1M
         2+InniQkhnHy+DaBt4PELVQP8reMRvkTqBZKQDwLhlmsrbxL2xuKL5FBAOqeTfxJcQvx
         tFBEJQlz7tnYysUR8AOt1MBcxmGs+ZRD9EzBCg2muz90czZAuGAjvMaUuBihTQ518tCV
         8l5Liwgef3jGxxRh/vrMfduLqzK3M84WggDA8EWsFCiAnedxErlXtSskZ+wxjo6PUSoL
         lEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZvwiA8T0JZy4seHhBYr8cYQ9vCquI89+gQMvi437YyY=;
        b=elAGwTENh3SfGDY1TM/twbnph0aEpCKhYizhmRBFnCvf0p/yng96+GQ1jDNdQC+eaY
         uV3wMCOoNJ5AGIiaoj6qMjKuT7U2lZ7KmXu5FXk9EmcybCLtkYEq+dOmlMA0NgqLeFfG
         Oy3fK8vi+U/d/XA2yddV4deuPC0l89bL3bdhrMoJwzq8IafMCZHmb+gOx+qtPqncX5pe
         4ISSxLKReH1EfyKIoy1LAuxLsZau3uEjxD5c/qrXB2PdrLed38ghOjOBrsrB6h6vz4fX
         VJ1wzZ0mQmznmCqL2fJstPZ/ktrvbJ/3dDDKs43zqzn3ZJNNk67+2orYEgOF+NvzaR57
         lvEQ==
X-Gm-Message-State: APjAAAVjnMcZATJj50Ur4raF8mmvsgTwUYID+Bvpp9dpi/cFt4oWVEzW
	69bI2iv2Ia5gXAT8R3HGuPQJ3PI5owJMYQ==
X-Received: by 2002:a63:1061:: with SMTP id 33mr5734831pgq.226.1551870752498;
        Wed, 06 Mar 2019 03:12:32 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id l12sm3207707pgn.83.2019.03.06.03.12.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 03:12:32 -0800 (PST)
Date: Wed, 6 Mar 2019 16:42:22 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 1/2] staging: fbtft: Remove unused #defines.
Message-ID: <20190306111222.GA11618@bhagyashri-Lenovo-G570>
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


