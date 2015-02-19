X-GM-THRID: 505789022208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,370d94720141cc10
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.46.106 with SMTP id u10mr259078lbm.3.1424314613751;
        Wed, 18 Feb 2015 18:56:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.226 with SMTP id gh2ls195235wib.31.gmail; Wed, 18 Feb
 2015 18:56:53 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr274987wjz.0.1424314613432;
        Wed, 18 Feb 2015 18:56:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com. [74.125.82.177])
        by gmr-mx.google.com with ESMTPS id cl5si8928955wib.3.2015.02.18.18.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:56:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.177 as permitted sender) client-ip=74.125.82.177;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 74.125.82.177 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so4707703wes.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qQw/0K/gMSIXj9Bz+titPIhLuk0QFLGOraeIWZuelbQ=;
        b=qq3XPLRsVZLI7S7PPkNueVXaB2CBPYs6Fzeiyjs5/1uw+j2DosbfksG3PiOsNCidLA
         kOfAKvV07aXUSHjPRlvYq/MDJ6jHuxKa5QarrIGaV86FobiAEeriLEAAJt3znfH7bIXD
         PI/W+LMmZ89iS1yipyMMnq5DOeTPPEVuhAjuU+YcdXTcp8Fv1LuGIW2TmZu7FKnMZA3i
         vapNTy5zIondrMJEDzsDFKYNWHvbn1BzKkSVslrP3s61Ideh63kPnMcmFiTVqxy4pzQp
         Jy/BYT/RVKXe0gVTVmWNrIwNqJ80SrkjmWUkQWcht4+3kgLraWl6kpUuPX5uoxtLymbt
         96jA==
X-Received: by 10.194.80.193 with SMTP id t1mr5032845wjx.8.1424314613370;
        Wed, 18 Feb 2015 18:56:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([82.201.174.108])
        by mx.google.com with ESMTPSA id dj4sm35358330wjc.13.2015.02.18.18.56.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:56:52 -0800 (PST)
Date: Thu, 19 Feb 2015 04:56:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 7/8] staging: fbtft: fix space prohibited before that ','
Message-ID: <1c10c47e2a44bbc7f171cb58c308419b03210831.1424313311.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424313310.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the following checkpatch.pl error:
fix space prohibited before that ','

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 37dcf7e..ac4287f 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -49,7 +49,7 @@ extern int fbtft_gamma_parse_str(struct fbtft_par *par, unsigned long *curves,
 						const char *str, int size);
 
 static unsigned long debug;
-module_param(debug, ulong , 0);
+module_param(debug, ulong, 0);
 MODULE_PARM_DESC(debug, "override device debug level");
 
 static bool dma = true;
-- 
1.9.3


