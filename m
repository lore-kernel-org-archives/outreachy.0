X-GM-THRID: 6395756748523700224
X-Received: by 10.99.228.83 with SMTP id i19mr7514997pgk.57.1489128160538;
        Thu, 09 Mar 2017 22:42:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.43.135 with SMTP id h129ls315872ita.4.canary-gmail; Thu, 09
 Mar 2017 22:42:38 -0800 (PST)
X-Received: by 10.99.96.10 with SMTP id u10mr7426277pgb.141.1489128158064;
        Thu, 09 Mar 2017 22:42:38 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1589999pfz.1.2017.03.09.22.42.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:42:38 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so9771939pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 22:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pP7oQHeq0uTCnulsbzoyXD6SdInWMTjwEdRsfAumt30=;
        b=AuXRcS2buGZBi2Wy9GsQ7WnyUt8TbxFZ8O0tsufTkqG5z8vCgIBnSKV2vVj1MFffTC
         m6Q90ZUO2gh3hxqMIHVrNYYfSo+/VnY8dkfILSWsAXyGGLWLdE2WFT7e9kSk9flhWwH7
         hyeMcRSU4uNHtoF0Q/1fnc9XQDZMlADnSXgbKn6DDzvTe/4iXzOyzUBQSr0OutlX4D5s
         HgIZJdMJpuAlD5toASQOBXAA7gBTanjdGFEE4PPiOojyNQsqmthEPx6o0Sak9qq95dnV
         ohTzrihZVrSt58x5gUossyNgRNpiPY+w6PzwL1fpU1b9TfEW0iW4RA6kzm6bh+xBxcWs
         qMkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pP7oQHeq0uTCnulsbzoyXD6SdInWMTjwEdRsfAumt30=;
        b=HC6vGEMTwNYbw4LwOUYxoZE3SOZl9lg+853VPGfKAgMlD4tT0DYt1XBKEZ2EV1O2pI
         j2v0dCs6q4sPutRcK1xgcofUbGvQO6NZzDWDDhvcbYGSYO/B1tHZK+QO6hRYSviE7H9f
         +1TYu3IcgL4nHsyOmr/4UIjObLULthp8qP/9/ZihEy8TMMDfn1mn2Ur/vFvcpAp3Lw+W
         rFSzucr7N6GcV2qHzlVmY+BoDzeyxb3fTrdF1k62W5FH+GhmIT9dc8C4208ChIrzGdfK
         bOj2zxMWygBhBES+JwXVG62+WIIBbjrFjvx1NfHgfIkd3W5SiUx+iDak6w3zemqZxe+q
         gQRQ==
X-Gm-Message-State: AMke39knXbKxUqd/Y3tGkVbtFNx0uY3ZIQABcRN3VYbsRmhpqEEXhFqkKFVg4oyaBpJaQg==
X-Received: by 10.84.212.136 with SMTP id e8mr23234538pli.140.1489128157616;
        Thu, 09 Mar 2017 22:42:37 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([42.109.66.179])
        by smtp.gmail.com with ESMTPSA id i3sm16098061pfg.117.2017.03.09.22.42.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:42:37 -0800 (PST)
Date: Fri, 10 Mar 2017 12:12:11 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>
Subject: [PATCH] staging: bcm2835-audio: bcm2835-vchiq: Replace kmalloc with
 kzalloc
Message-ID: <20170310064211.GA7443@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces kmalloc and memset with kzalloc.
Done using coccinelle:
@@
type T, T2;
expression x;
expression E1,E2;
statement S;
@@

- x = (T)kmalloc(E1,E2);
+ x = kzalloc(E1,E2);
  if ((x==NULL) || ...) S
- memset((T2)x,0,E1);

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/bcm2835-audio/bcm2835-vchiq.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
index fa23a13..a117b05 100644
--- a/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/bcm2835-audio/bcm2835-vchiq.c
@@ -289,11 +289,10 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
 		return NULL;
 	}
 	/* Allocate memory for this instance */
-	instance = kmalloc(sizeof(*instance), GFP_KERNEL);
+	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 	if (!instance)
 		return NULL;
 
-	memset(instance, 0, sizeof(*instance));
 	instance->num_connections = num_connections;
 
 	/* Create a lock for exclusive, serialized VCHI connection access */
-- 
2.7.4


