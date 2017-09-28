X-GM-THRID: 6470837981099851776
X-Received: by 10.99.151.82 with SMTP id d18mr702285pgo.77.1506609372522;
        Thu, 28 Sep 2017 07:36:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.80.6 with SMTP id f6ls1189794pgo.19.gmail; Thu, 28 Sep
 2017 07:36:11 -0700 (PDT)
X-Received: by 10.101.91.131 with SMTP id i3mr625898pgr.93.1506609371319;
        Thu, 28 Sep 2017 07:36:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506609371; cv=none;
        d=google.com; s=arc-20160816;
        b=h+BsjF8utyrZITN/4uUw7sa09IvLOjfibiPMcVf31w0iix6v6F3OrxfuZYIJiWcbrS
         1vNZkGFoMPWeNW/bplNKc6dtOJO1LxQfYaPVRJABLx9wMHs2CVfkQWPaQHgNXUhWaskm
         MLY7j+aztcZQxm7ZV/r1XhbPbr/BfktOMLdBqM2czCUZWL/SOW8h7TZUGLQTyPVb6POz
         lko1lt82bz8/IcghgxtjLm1QG4K4kxI3vtIX/bTd6oQUItShTBvdYuY9EBHgaXPCEAla
         UOGG2gluT4Vf05dV044t5JwLpimudojFcOFRNXbcDDSiDmO4sDnoEoG2ghaLmoZOAoJe
         dVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=A/Gu+4bIhL3AWC7Qj5GwYM3k1crp63oKc5wj2XsA22A=;
        b=FwFfp51t8M01+tzqBHUmySyrqU0lB+5Up5IvRG+FCZF982wQag2W9148Z+p8OBm76P
         MzMLJvpQVPP9f3PR9c9OnNf07O0n5Cxrb7jwQpDlTI2iGH59RI9Mq3DtcyiSKG+L5aE7
         gS04jdVSeC+v5J9bx+hFtLuZwqZGLcFC/dDBtkiChpz+ctWWllWOIK660j6V0PERYeWo
         Bm4UsCCme7JAK2K2Kag0rkaEzL4AqIXUqdtY1RBQb9cvSLXZ7VYsEz9d9gvYQx9s/g6J
         PWIM28573d7oJ0Sst2LPHjQkmEXDZdo7SNMhoZho2yVeOlD+IhAd4wVjynHmhcDLWjhv
         H16w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s9NWwRCJ;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id h3si238362pfk.9.2017.09.28.07.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:36:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s9NWwRCJ;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so1665083pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 07:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=A/Gu+4bIhL3AWC7Qj5GwYM3k1crp63oKc5wj2XsA22A=;
        b=s9NWwRCJAa0tclwFoA6Op13qI5Hgeu8xdAEPC3Cep1hmvPhWTJk4XYHYhB42YWHObV
         FNXUn+O7vkxocGOrEmuE2n7tbGLncjSIbTf+rl427aHHxSj7VUvxl/RYtPhgJ+7j4B98
         0ziPJ3t1UzlO5ize4+zXQkfu3+LcwSJKQRRw0WM70Pshbk/TASbHkx4Kwm0qfRgNq8+T
         LmxR1aXvBBWtcUq3mxVLCB3Xn5YcfOm9w3mqOd5zQGf7dk+/GUnOvGKrGzOba+nzuZor
         aq526nJals2MaC77s5SbLLMOAiahvAm0PYy2GYmu65JytzT2pqetG1lxUOYev+ph57Ac
         vRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=A/Gu+4bIhL3AWC7Qj5GwYM3k1crp63oKc5wj2XsA22A=;
        b=YJkrRzvluZOOiz1qg7inn+Ru4+FPgQbTLgarVz6px76zMz9ZYJhih2oEqbu0Kxkyzb
         fmSIw5GVkiyzRL2QuYxi2VMLdNzeebQ82/sdfKTEXkVcdAYYU6tj5HB2UfmdfkV2ZIzV
         dtbENqn/inWAPhvTBYRZ2Z/+5ml1+k2K6wUA4c9RMAd8QOXSxppIZhtBANeyokwcXmB5
         BiKsx+9H33qgTL/kkEVm2dtFvYwXVr9Am0apmnz37iC0ie4gQnYa9OVm+VWvDjt0wxgi
         rcQFlQVWfOh6Mb4lKy784Pd+hdosUPOknJCEt4j6EIaAu0I16t9ee3uW6t1SjYkuE984
         X/oQ==
X-Gm-Message-State: AHPjjUgXJg0l9L6WEFSwi69ZHpzhCP82kt7/nhEDlK5FsvPWkmxwwuJM
	dHXWDLLtuoRq5mlQkpY3zP5nal/w
X-Google-Smtp-Source: AOwi7QD/o2r9bIuumbdynpftkEKMDmR9niDD+56InCUjlcpehGKL8feGPQc4z1tYI3v5kqtqIzcD4A==
X-Received: by 10.159.216.139 with SMTP id s11mr4179263plp.120.1506609370914;
        Thu, 28 Sep 2017 07:36:10 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id s4sm3098093pgr.32.2017.09.28.07.36.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:36:10 -0700 (PDT)
Date: Thu, 28 Sep 2017 20:06:02 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com, speakup@linux-speakup.org,
	chris@the-brannons.com, w.d.hubbs@gmail.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org
Subject: [PATCH] Staging: speakup: Add comment for spinlock definition
Message-ID: <20170928143602.GA15962@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Its good practice to comment the usage of spinlock variable.
Specially because, at the time of congestion, it becomes easy
to identify how a particular mutex is used. This improves
readability of code. So add comment for spinlock variable.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index e215d05..bb3908a 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -246,7 +246,7 @@ static u_long last_spk_jiffy;
 
 struct st_spk_t *speakup_console[MAX_NR_CONSOLES];
 
-DEFINE_MUTEX(spk_mutex);
+DEFINE_MUTEX(spk_mutex); /* Spinlock for synth_release() */
 
 static int keyboard_notifier_call(struct notifier_block *,
 				  unsigned long code, void *param);
-- 
2.7.4


