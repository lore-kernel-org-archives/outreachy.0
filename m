X-GM-THRID: 6660473770141024256
X-Received: by 2002:a5b:1d1:: with SMTP id f17mr16503081ybp.79.1550762394252;
        Thu, 21 Feb 2019 07:19:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:1cb:: with SMTP id f11ls905126ybp.11.gmail; Thu, 21 Feb
 2019 07:19:53 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYq3+y8vX/Y3th0gXW1+OaUaI8L3ochVoKU5pr2fCClaHQV95ebH5iyfNG/Mc49aaLr12pZ
X-Received: by 2002:a5b:44f:: with SMTP id s15mr16142244ybp.39.1550762393092;
        Thu, 21 Feb 2019 07:19:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550762393; cv=none;
        d=google.com; s=arc-20160816;
        b=AudZVlH72go6GX1aNx0iJDjkxH6NVTkIuewMzp4JiDBbf+MCBjEhm/83jHT6zm1wBZ
         Xco613n4U59hoPpuFYivs37Hyh28XouVZxNFlz3yNrz0Hsw6o51ZBndBknLEuZ8AfW/z
         euW18Ec+N9Pg+RDsPEe/YRPrzooD4IZt28hKDJqZ5zC14EVoUxCJuzbD97PKlucdrZB6
         t7GZ2YcYF8zYf+H3+q+V+4Yrq3v72Ptz0b5tjiGgiJ4bqfXJRQ1ug+SIXZiGOGuFcmOh
         aQ3nLSPDBu4LHXu6uRxmd9tk6tEiKY0K8fNwvWXjrMh1P5vZw4H1umvVPWl/uNLUdIQY
         L7vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zKjpa6MwDM2ZlkgEa56C0Z1MI/O1TmkgmWjfDPI0ZOE=;
        b=LzYShnguPrupEj5zrPw+dNAqP0k49xP3un6M8HR7h3xqJbGwYArcBtYLqhQZPcJJKk
         +XcRTuvVROSAeMtreE7AH2tVbWDA9XtiQ6fpVh2Jk+MEcKFUt2KPxgaFksRLho/QgoZr
         3/G+XhXExSQoJ0aVaaOyo/mhrNxelwpJI5eRMkGxw03B/zGa/FQgqgVHUr9l7q1pkRCq
         TTU/EDxd/2Ewjq+YkJMKHRThFOukBXgLclT3nYlFdCmRd0qyB9Bz0kwVFWUaa4lHmsx1
         WbMDyA4hwGRtcFP146Q2mYgcxpn0JRZvKjtLMMNQ4z7ZBXJOvqj4H5sD02PhHfTYoAD1
         5m6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TSt0nww9;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id z185si931539ywa.3.2019.02.21.07.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 07:19:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TSt0nww9;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id y4so13832333pgc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 07:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zKjpa6MwDM2ZlkgEa56C0Z1MI/O1TmkgmWjfDPI0ZOE=;
        b=TSt0nww97emU6iHneuvKxdHjSWFSnMFY2FgWzjX2khj29dIeQtvdhi2WLAflVrjDHk
         kI/swQhPf4GoFX0t1S4S+jhfBbbsMcXzvjhzVWL7sSuXieKWlbsm+bPBgR2L8sfoG1tP
         jbq2lQWsfIPwquILpLaaPhhT4sWDYBJwIT95rA5Ut0FViArbj36Aq/ZQZC8+LWBH8FJC
         EstvrkcMbtH8PiBJcQpon3e0LlsQwpS95qmiSN4FIUCBW6bK7v6HboeD53TiVmDgS8db
         Se2tROsMY49xHyho7OSNbZCNKioa752g3yA4zCkv+NJNGXBmtsO4NiQmfjHGs2jzyVuZ
         BudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zKjpa6MwDM2ZlkgEa56C0Z1MI/O1TmkgmWjfDPI0ZOE=;
        b=uQgqvt1qmLtcuDzNwNAN2GR5jbXqZZIx4EEPv+lurFRQ0rm661vs9U0Pe7HQ23Cy4N
         a+R68MfY/DNIjORMBeQbIU/UeCvRCq9Ejc6+0PhXa9tTCPb7gxAUVlNxVOUhhmgwBF8X
         2G/M0ZEr5pVLwA+XOV/VpmPccq/7ganKDNBNZ9QGEkANJzEZKxIWYruFJJKHDnBCAJNK
         ngh3jXXch5mO9TVhjDSIeN3qKhbAYb7NhXo4TzX9oEAbyqsu+5fE+CaOjZEFR1ue2Ziq
         0SSOrkm4Xo9oH0lg9UcIoIciK97VYAGNr7lcI9ISBbuaEEYe/z6wiopkoR0e/VEAwZ2K
         JQ6g==
X-Gm-Message-State: AHQUAuY9RCLMl4OPSyJTzastDBik7bEKQIhbe1088d+kbYk+cZMW17Sq
	UUNqnUy5sYDj21IzgmPzh6ognJUdeD8=
X-Received: by 2002:aa7:928d:: with SMTP id j13mr31363698pfa.112.1550762392714;
        Thu, 21 Feb 2019 07:19:52 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id k17sm52204262pfj.92.2019.02.21.07.19.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 07:19:52 -0800 (PST)
Date: Thu, 21 Feb 2019 20:49:49 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] Staging: fbtft: Fix line over 80 characters warning
Message-ID: <20190221151949.GA2059@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fixes the checkpatch.pl warning:
WARNING:line over 80 characters
Parameters noved to the next lines with proper alignment

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index a5cdce4766bb..ff20cbbda833 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -436,9 +436,9 @@ static unsigned int chan_to_field(unsigned int chan, struct fb_bitfield *bf)
 	return chan << bf->offset;
 }
 
-static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
-			      unsigned int blue, unsigned int transp,
-			      struct fb_info *info)
+static int fbtft_fb_setcolreg(unsigned int regno, unsigned int red,
+			      unsigned int green, unsigned int blue,
+			      unsigned int transp, struct fb_info *info)
 {
 	unsigned int val;
 	int ret = 1;
-- 
2.17.1


