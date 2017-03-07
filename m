X-GM-THRID: 6394852201114632192
X-Received: by 10.129.137.3 with SMTP id z3mr1018021ywf.20.1488917554932;
        Tue, 07 Mar 2017 12:12:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls1421082otf.39.gmail; Tue, 07 Mar
 2017 12:12:34 -0800 (PST)
X-Received: by 10.157.82.35 with SMTP id e35mr913731oth.127.1488917554529;
        Tue, 07 Mar 2017 12:12:34 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si202950pfx.8.2017.03.07.12.12.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 12:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so1161635pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 12:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VlXIQ9Tun0cKdxVsP4U8dLEj4lPmUbuUKNBgRGSl83M=;
        b=FbA1PynTDop6a3t8PrqacwuqhNip0hIm1VqjojfDc4S4hkNlSt/25NchYCkE1boDrm
         BTAJcgI5dQAlzRmbSLEsA7Fb+17k/S4LnsxlSIiNY9CR4h/7dYrOPGeVOPqPuJfhZk4Q
         /+MjYcaVNrtK89nqVfthWdDlMSNnAw8RnCDLG8eFxZpS1I70rkgUB+1gn1Cj2RCwU0u8
         PCvrmYYd++3qPK0r+ap/nEDNsRKL2AiYf8JuoyC86mC/gXwczzEyQD0IfBszzVN2h4K5
         cz89eD4vO1PPan/Hb06nVHp8UX+8RHcIzY9CQf1BQIeE6IJ5GnOWi/dRUiHWx/ag+2OF
         kY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VlXIQ9Tun0cKdxVsP4U8dLEj4lPmUbuUKNBgRGSl83M=;
        b=ixmckY0tSTozjk9t8QzISAyCV+wmREZuCI2Y6gCtUl9nBwlQgndoAtUUAGA81UhSsb
         HjLbVWkpbz+W7Uhni9Z1VPrSRsmUTXawS5nOLFaN3ybdd1IkDTYpvxMdRe/l2riOeApx
         SpKhbYOBo6t6P++Rvl3Cw06iRujsDrcphTeQFZDDF6D2kPxtBfP3A6Tm9VJEZ3Mk4w1n
         k6uI0GkHF2QJBEbg4pHcyYQ+qjce4t4sIYmMSA1KDRryYOrMvble//KdPwnQkeb2VdCW
         ECVVwJOPW4HxlXS7c/m9JfEkEMqbXTOd0uSLA5yaUCeXEwYu8T519SdAD8X5WB5n+AUd
         DlMg==
X-Gm-Message-State: AMke39lbFG6eooQvlRQwGr6UsDou3/rE/9gBx3xGIvUQ2Xcx17Dv0aHyC7Xqx9LyOuzk9g==
X-Received: by 10.98.147.10 with SMTP id b10mr2390036pfe.177.1488917554310;
        Tue, 07 Mar 2017 12:12:34 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 74sm1476070pge.14.2017.03.07.12.12.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 12:12:33 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Stephen Warren <swarren@wwwdotorg.org>,
	Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH] staging: vc04_services: bcm2835-audio: Align with parenthesis
Date: Wed,  8 Mar 2017 01:42:16 +0530
Message-Id: <20170307201216.5104-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix the checkpatch issue:
Alignment should match open parenthesis

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
index 659c3d1..5b03102 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
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


