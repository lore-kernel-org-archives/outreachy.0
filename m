X-GM-THRID: 6338470134532800512
X-Received: by 10.66.10.37 with SMTP id f5mr3572605pab.70.1475790081765;
        Thu, 06 Oct 2016 14:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.208 with SMTP id e16ls4054398otd.6.gmail; Thu, 06 Oct
 2016 14:41:21 -0700 (PDT)
X-Received: by 10.13.247.7 with SMTP id h7mr4041814ywf.46.1475790081275;
        Thu, 06 Oct 2016 14:41:21 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d11si1293145pfl.2.2016.10.06.14.41.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 14:41:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so123832pfz.3
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 14:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=r2ycTx9VCTWP1bekNrAEuSkmQe9jjQCXv5T3UWew7xs=;
        b=S7iCi2GAmIm28bjQcvH8ClPgd3NzAv9vCyU6G4p1/oYYw7y8Yhc0c2af114WzzFt26
         BdSVwjjtt/Kra8MBIwRfVXAnFNGgQWhlzts8SwqNUldmW1NDlEdlaz7BEmJ8MCKyhv3r
         GvbcKuNTsAyNeXGo6s8l5y3/gaBhSefYpEvwGk0XnGtSX9lR0p8AXcauSdTG6kc/bmLL
         iwb7sJqbsh5eCgu+7li0O0kDcQfkc9IwoXrqV7jXaww5USgR6md4RP0nP8oyoV6Q0S/I
         4VqohHCVgW8TXGE9eZ6rPkpa4AFNYSOoRCn4cnG1hbXgPvmCmN/CMhcZ6fRkIGgmDLI9
         L64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=r2ycTx9VCTWP1bekNrAEuSkmQe9jjQCXv5T3UWew7xs=;
        b=UlI3yZkEOWdscuok1fp+nXHEmqMNYTbidVphxQOqbfBfgD0F2c0pNOBJASZzUh6kTp
         d6s0//G6hAnSyFKlNN5919q5yUNvA6T7y3woexWdTlars9ImB8uD0r07WZoIy+idg5IB
         QR2Gsl+7tHZCT/XL2DJgTMKt4dYGD2JdoVneftoi+wP6XIyhzFlH8jK5uJu9JwwG/Oke
         1IykTgJT4bMYt9b3FRrHlghVZxAahntHvCvPUI4yOSbkp4+1RcQ4xBzA3XigHqInnmXx
         h4fOGoPlImOsm0D0dQIXmv7pwJak3uHDzq0k2krhKUQAXrg4My3d0iX1xb3uVSYand7N
         eNCQ==
X-Gm-Message-State: AA6/9Rki972f4g1nz1C03XXuC1hrniwRttOJzi8lVE1TlQDnL/rhCRWyBp2wGzNgZ5k3ew==
X-Received: by 10.98.92.197 with SMTP id q188mr29839029pfb.31.1475790081052;
        Thu, 06 Oct 2016 14:41:21 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id f86sm8123465pfd.83.2016.10.06.14.41.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 14:41:20 -0700 (PDT)
Date: Thu, 6 Oct 2016 14:41:18 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, amsfield22@gmail.com,
	daniel.baluta@intel.com
Subject: [PATCH] staging: i4l: move open brace to previous line
Message-ID: <20161006214116.GA10879@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fix checkpatch error "open brace should be on previous line" since only
functions should have their opening brace on a new line.

Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
---
 drivers/staging/i4l/act2000/module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 0573f51..4746a62 100644
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -19,8 +19,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 
-static unsigned short act2000_isa_ports[] =
-{
+static unsigned short act2000_isa_ports[] = {
 	0x0200, 0x0240, 0x0280, 0x02c0, 0x0300, 0x0340, 0x0380,
 	0xcfe0, 0xcfa0, 0xcf60, 0xcf20, 0xcee0, 0xcea0, 0xce60,
 };
-- 
2.1.4


