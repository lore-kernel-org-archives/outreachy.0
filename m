X-GM-THRID: 6394764238679703552
X-Received: by 10.157.47.184 with SMTP id r53mr239545otb.15.1488897073479;
        Tue, 07 Mar 2017 06:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.31.133 with SMTP id f127ls230167iof.27.gmail; Tue, 07 Mar
 2017 06:31:12 -0800 (PST)
X-Received: by 10.99.117.70 with SMTP id f6mr260276pgn.91.1488897072530;
        Tue, 07 Mar 2017 06:31:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a3si33197pfb.2.2017.03.07.06.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 06:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so312664pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 06:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HVj4sCxOoqin+dcutmRQddGbYG7CYaoQTe2RVTqsESA=;
        b=p1FgDSqR/bUNAUKJU7a/WZl3boYNh6uFMOdmCRhZ/iEG+uD7oCs/CLMWoBHrEj4PkG
         nqvZ5npZfZ+0hEBTV8QCbeRFjjL1+MOOGxF+hzeGFFiFEstekBMOrksz1PYIcoczHZ+U
         0635k1OiDXBePteh/+VpGXcJQwjiWHIl4YK1RUnLw68JOjwLtkphlHBY/FAABTmWSuAS
         N8UAwJUAh5E4Ib88rn+1umuzRjkwirBFL/vt6mxKZvW1gAkhjnhR0mCI+f5SFJLrIl/W
         V7xM748jJ/E6IdAn3THxiZ6cHF35VejtAVbpXGE5s4EYc/d/TC2FqUyTjg7e0j70udQX
         PLVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HVj4sCxOoqin+dcutmRQddGbYG7CYaoQTe2RVTqsESA=;
        b=Lft6ToYAwDTMUvldI2BSn+IvGO7jbcJXzmnGP9vaGvx6liQ/sbl14AZktSMWHJOFZM
         wurpR4u8kb23IL6kInySWmNJeKOV0C1KFRSstz07mNLWINZpEnu1NhF3kb86M5vnCNAF
         iaP21CanUdZkmkzmCaGP2M93fwetSbvC/P3mp1peNlbqg5wrpJ5ygp/xT0By9s+R9eub
         frx5eLJz5lvJA38jgFejwORcJHZhPL3qhrm15nnX5gLgZVqlws1L6V2p30viVr6zl7cM
         eU1FzTeH6driywyAi6pXNbO7TcRaLSjQCrjh0yOGhGzN9owZn2Y6dQSyeBsIvNCD2/5K
         RhYQ==
X-Gm-Message-State: AMke39km45l8770OJ7JBHvkgpNo+r0QDu2tyT09W6DxdTA5ejv6+9a+u+BLQikdEhqjf+Q==
X-Received: by 10.98.12.148 with SMTP id 20mr671811pfm.116.1488897072336;
        Tue, 07 Mar 2017 06:31:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q73sm299807pfa.129.2017.03.07.06.31.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 06:31:11 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Stephen Warren <swarren@wwwdotorg.org>,
	Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>
Subject: [PATCH] staging: bcm2835-audio: Fix alignment with parenthesis
Date: Tue,  7 Mar 2017 20:00:56 +0530
Message-Id: <20170307143056.3252-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix the checkpatch issue:
Alignment should match open parenthesis

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/bcm2835-audio/bcm2835-ctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/bcm2835-audio/bcm2835-ctl.c
index a4ffa1b..2d8bc08 100644
--- a/drivers/staging/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/bcm2835-audio/bcm2835-ctl.c
@@ -107,7 +107,7 @@ static int snd_bcm2835_ctl_get(struct snd_kcontrol *kcontrol,
 }
 
 static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
-	struct snd_ctl_elem_value *ucontrol)
+				struct snd_ctl_elem_value *ucontrol)
 {
 	struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);
 	int changed = 0;
-- 
2.9.3


