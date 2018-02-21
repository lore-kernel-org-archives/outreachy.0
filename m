X-GM-THRID: 6525083396428791808
X-Received: by 10.99.2.9 with SMTP id 9mr435708pgc.76.1519246734910;
        Wed, 21 Feb 2018 12:58:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.98.133 with SMTP id f5ls479119pgv.19.gmail; Wed, 21 Feb
 2018 12:58:53 -0800 (PST)
X-Google-Smtp-Source: AH8x227VrLEEN9eZCEROtm/0cDwxBSlbAxAgmcrRwIiauq7kmK4KyDcifkx13zBLu2iZy11CaBKq
X-Received: by 10.101.93.70 with SMTP id e6mr984085pgt.73.1519246733661;
        Wed, 21 Feb 2018 12:58:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519246733; cv=none;
        d=google.com; s=arc-20160816;
        b=BITlBtj0OiG+kgM5RPMqpJahHF8rfmZxidinLphDl3H9JxC9sY+oddhkk8NBM0XHFl
         Hsq8ynJ5bMbxn+i+w3c9k99l4e/k9X8MkkiYZNuZBfAAKUZTkjx5lefZ6VlRVzJJyheM
         ilKsXSdNljAlU9vBXAO5zskHCdQVSED6bCKHrIcux8hrj7MgckOIBfe6Ntb1WTcfCnhM
         JiqN19bvuDHj5D1g32CK5lNcoFrmkCfaE5di5zUQ5l6DK+TbhtIGgTX2uvcP3UIgHBOS
         oM/3PvqlYpJ95ui9gSegCPfzUQ4DKRMzdhjKwSGslB92bK5SjvZ/C+IkGacK3xiY3nZq
         So/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=nvfXfJOlMl528tA1MMsgOU9jtU1byLVYGYO5I8DYtPEQKCbSHc9uGEw3TajQ1YOgV6
         AkCpUP4Tl1aMYbaWRRHBk/BzVka6PiUG19yKfXUsfBSeX/2+jLRj3At+d6XEnDNhovZY
         ibB+drhLNbgW7d5oH69GomMCuOF55MWLzkwb8wrasojOFw1wwbsuEIIL/InzZ6/K7s2A
         lZTZ5wk+p47DVbC9U/Q1YF7MfvvuJaSOltGP1uQEGG2eduI3yNqJzcNCzBPH23YSUBGX
         CryEHAAAtnNxKSEvDjIab1N72Zw225We7OwV9etwgeR279v6BJFZDCJHgghyKeaYKtRO
         e0aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BueoRqzl;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id g9si28788pfh.0.2018.02.21.12.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 12:58:53 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BueoRqzl;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id s24so1165852pfm.4
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 12:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=BueoRqzlp2CjOMRfpEEeE/+fHsi2FXbcOAwjT3To78CMURZMh3N1o+opxJ1BKGfDJE
         /Rp924UjGGra2jGJhtLtiNXbnrB7FQ9RiE8U1dkTHY5wrKPyIufGMOXgjNQV8EMSzRIz
         dv9drBLJvrp7iYU3cInzS24D2UjYnpAjdzA4sIQMywUAQJu2vPXhAIYbsx4rf8h70aC+
         YNYt03QxYRE0lXHAaA9FbyPEgPRhFkT1ZdB8FZO7Zowb/kCF6YVZPV3A5wFDbCo9tDwf
         x0WSCsXjBcG/fJVObWW2uR8O0oikq/v5QXOAa+LQzZu9xpDgP8nSwV5wk2tSDxhS/bJi
         oQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=08K0VMNgMA3Q8ROJwvdvOpP7z+xWsWB2N5ho3L0ZRhA=;
        b=uXodQs+kXnw4VDkQCylm+mRqf1Yv2FoBpIxqIbheoe5yZ4PDiKlNqWii6BWDTfedg2
         wNlHRJa8Tq6VYUPkubUcuvB8g+rB6ZCSPTiOu8NAEAx9iMxUvppK3RjCne+hq8wUyrta
         +3kWxl+H+HFsm2bAxpRMhX36LJx2dWHFkKdJ+7jfiz5XS6i4V04M/RTO2kdmy90dAZJ5
         +Sejk7E6UOv/mDuEyr444TuAGn/qHC39tTnNG06TtmsxE33iz+j8aYJYWHS3YCRpaUZo
         lFHgjrwYNxfK1q29rsiecwahxw383MWs8Bvhl258M4x04osHuRhl3U8xuBe+9Pk3tLpI
         nc1g==
X-Gm-Message-State: APf1xPCy98n6KHDphcV0Ddr3H1cNOpK/seBzJPUqYAtEDyAS0Ed0pvFx
	IOOqE8H4lfyTV5pm9tNuhOk=
X-Received: by 10.99.123.74 with SMTP id k10mr3729305pgn.217.1519246733379;
        Wed, 21 Feb 2018 12:58:53 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e127sm25582510pfe.157.2018.02.21.12.58.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 12:58:52 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2 2/3] staging: speakup: match alignment with open paranthesis
Date: Wed, 21 Feb 2018 12:58:42 -0800
Message-Id: <1519246723-2977-3-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>

Match alignment with open paranthesis to conform to Linux kernel coding
style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index df31f8b..f109b51 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -323,11 +323,11 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if ((port_forced & 0xf) != 0xf)
 			pr_info("warning: port base should probably end with f\n");
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -336,7 +336,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT))
+						 SYNTH_IO_EXTENT))
 				continue;
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
@@ -345,7 +345,7 @@ static int synth_probe(struct spk_synth *synth)
 				break;
 			}
 			synth_release_region(synth_portlist[i],
-					SYNTH_IO_EXTENT);
+					     SYNTH_IO_EXTENT);
 		}
 	}
 	port_val &= 0xfbff;
-- 
2.7.4


