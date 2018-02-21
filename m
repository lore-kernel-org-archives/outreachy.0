X-GM-THRID: 6525083396428791808
X-Received: by 10.176.83.144 with SMTP id k16mr2223335uaa.3.1519248835405;
        Wed, 21 Feb 2018 13:33:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.198 with SMTP id y6ls215210uac.21.gmail; Wed, 21 Feb
 2018 13:33:53 -0800 (PST)
X-Google-Smtp-Source: AH8x225f9BNC1ciAdEqdlIc2CQNzeVo+De78obqgcJC6vrawtm/DMkqaLbOvoW1MxIFX6218tu5R
X-Received: by 10.176.26.27 with SMTP id a27mr2273429uai.35.1519248833930;
        Wed, 21 Feb 2018 13:33:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519248833; cv=none;
        d=google.com; s=arc-20160816;
        b=zyvXclvT3suP7AXUXUwktjgMnVqsw9SRHbj8XA/zTeEXF/KcdxJlWd3CX9VVrtumqw
         8w9GYO+LkTbb5sjoqNQAi33VsxuF9bo92CNhPIavJgwemUkqm7Jh8vflNUrryLTYcoA+
         gm3sM6CWOOM10OlZIG4ri8/a2jKhyYLaPSA9y5a3Igd6pKTkK0P2rdmn+K1xuh5ifVRS
         flXNFtSNPC9cmrTduNc+3ZXIOLL4iLGhe21yiFiyTd97BiiTap1jfmyeiNhrt2wtJLO/
         AdBPqMxjMnbFTiKa9z40GuNKeu2GpO58Y09airrQrFhjONRlh4hTJVyefj8yJGhXQqjc
         MErA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=gpCgbLWe5N52OOxiJ/fc4iWJO76VNbRaypBwwnbou4o=;
        b=bPO1BZfklZTuFWJYKEf+N04xowvQdOAbQk4aHLF6aa7YdtiiIa7jJXfBDAjDb1xwb6
         PJar5n5M/tmVyOoRq2w/Z+BTaBPITgTnLd4fdJXEF2dDvymEDymH0RIU1QAu9gZXIJMs
         cfRkwoO/d7ukrjTAMz+aHecZVZ7MnhgAyav9yuQFPPb8RK8Rjx47Ua9JtfcYXFDVOJl2
         mZl+XdLPPxjh/S84tkNYUtKXHey6bAQm9RB88BoViQcJ3Vew1gpWxkKfC/tFn+BjQH7r
         VhlqmQUtow7EMExFm91RY4gETdjNegNnqTIOh/IkoAZKNx3vUZf4I0WJrSkdgEIpw/QG
         6h3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bPljq2tG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id q126si494871vkf.1.2018.02.21.13.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:33:53 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bPljq2tG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id w21so1658460plp.11
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gpCgbLWe5N52OOxiJ/fc4iWJO76VNbRaypBwwnbou4o=;
        b=bPljq2tGY92Xi8P9cFXyI54Cr1TrBi3sbsF0RPDO5gaf5viixuUGn99pbA27Ku+n+3
         dcMo0VvYsocl4OGr2lO6dbcfErsHJ8176/RtSxBxizmFLQXV3/Jfu7l94VoCYDywlFlj
         EYiTdKKY14IXjSd2u59NI9PmQFdAqdQpSvUzZwx9ZyMSAFzoEPYeMUYu1Jh04gO74MJ+
         SCA0f3sfDrQ7BiuyiiXb7m04vUnxns/S79XtIYbcCCcrxH2UL2R+IGXSYKETosTgrSpV
         kUckfXP5bJbjKse4sFkk1gleRPA/A/KHKT4TdoTzKIOHnRB7JXzE4ZGSSaCnnOvUXfbp
         97gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=gpCgbLWe5N52OOxiJ/fc4iWJO76VNbRaypBwwnbou4o=;
        b=jO3raDfXW4iyvOyKTHC8NiOROkL+ShBJlNVpfsueAS08l+wVaTSGPw5T5bC3DQZJVH
         iunIAWz32Yf9YMDSxxITZ/difceNjza5JeTABerq1JhKBIS+7n3kf0WWFIbcDSv02SwI
         n4qVD/mjCwq0fRbw8GU3ljwWzqwFlBd3JEw3aJoNE5Am06UeRvPSFFrUeXW01TDJnlc2
         8JfvczVOub1F8GdO6Wh0UXadWwbUN9ynXtL9Ind5ojJKugf4LQ+BZenH8jXPOMvzvxh5
         1p2zTonuzxGE9CauHltCB3tcPvrwTvOaW+fnlLhi6ogCaKwoEn+yweiPafIB5o55v61+
         ML8w==
X-Gm-Message-State: APf1xPDcDfJrBKWarOehJ2AMZtRnoxxqYfp6idNcTFFstdtWsHdQsHid
	+xl3rC+vRzp4xTdkLC2R364KzbUM
X-Received: by 2002:a17:902:b081:: with SMTP id p1-v6mr4302567plr.314.1519248833021;
        Wed, 21 Feb 2018 13:33:53 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id n81sm9295573pfk.152.2018.02.21.13.33.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 13:33:52 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v3 2/3] staging: speakup: match alignment with open paranthesis
Date: Wed, 21 Feb 2018 13:33:42 -0800
Message-Id: <1519248823-3468-3-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>
References: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>

Match alignment with open paranthesis to conform to Linux kernel coding
style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change since v3:
 - Nothing has changed.

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


