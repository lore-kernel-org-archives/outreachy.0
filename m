X-GM-THRID: 6525083396428791808
X-Received: by 10.107.138.161 with SMTP id c33mr3110195ioj.60.1519246733380;
        Wed, 21 Feb 2018 12:58:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.133 with SMTP id j127ls461701ioe.11.gmail; Wed, 21 Feb
 2018 12:58:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELv/O4FyUO6KTG8RoJ/X+4wWmbGNF9fSA/mJXMCTqJygLPBJAVsulBJ6DRAeUPDsRoaGwc9e
X-Received: by 10.107.166.68 with SMTP id p65mr3095959ioe.71.1519246732294;
        Wed, 21 Feb 2018 12:58:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519246732; cv=none;
        d=google.com; s=arc-20160816;
        b=JwlAJpRFvu8CZWyi5+g3LytvE0wpE/bOAzFTbWUk34oMwQ8LFBlcq1pKJ2ZXMcIN4i
         AvrUA+CUTU1z6Bx6JohJktwTMlZCZOVN8DxzWtYQybTzmb4u43nnh3bkctWj9NP5TaSV
         euBQi5owaMfga3tf4vLui+ED9VzEPfappLTt3Sp/0nKtXy864kMSS+xNeQLYnjk18Av6
         5q3Irw7e0PKuVjsAURzthhESad/Umf5LuLbPX0SlU5Z+g4jFG+HVE+qv0qRv809POeyN
         Na2J73AvrJpJNNpp6zCO4PcXKA6/Q64mghNJf5ZCws8Ly1Ipne/HfkddCkuCB9xq7AWe
         XSCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=OPFnAhSliTV88ivhQ7X9tnH0S2/0BM1OLjtH1Z1dnPM=;
        b=eKV/hwuIFUrrUtQ2P35sEQRVl08tAUDhXD9CgfTnP2jAULk7ifgowS6sSrjzzP/of4
         MaiYe2IuydA0nIGEeu+2/s35hYvHL3EHawD8/me48B+jxryVkLrdR6KKDu+kaSFz/AdB
         7gkLfee8WtoH+e2b8vzyGvNKWRQVszRjEoyUaXs3a9HEL34wjBMywJKhEdBSuA7gDxTr
         8Yve/elw335mq1VGHvfDPEYfOHOlFwJ0cF3Hb50SN6uhrreLkQ+7Lk7bl890ub+ueg2B
         YmvTGf8YRXMTIymsv6WQN3EsY1UMBcXlFAPPvY1hBZOauJ/7poxtAbSZo9p+UW9NL2Ul
         lEwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZOaEKyQ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id i201si358776ite.1.2018.02.21.12.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 12:58:52 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZOaEKyQ;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z24so1160147pfh.13
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 12:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OPFnAhSliTV88ivhQ7X9tnH0S2/0BM1OLjtH1Z1dnPM=;
        b=mZOaEKyQhbcKselIiH7xQrapKFn3nPn8KX0rp3lSABWYsTWPgO6cTo9c1nDPLaxMcL
         /piMYrZ+BvhGIsRrP6hjb24Bt0/AT/EH/YXDBQjnYL0oazHxDQjCjMjj0C/PRs3ZWPOq
         DKce1kgaddWeUBOAeW3v6z2oxzKAw47i5zTUhRufPCaDG2K6vKA9xJ9/dudiNIGwsR3H
         jDP81wq9Lybb+21ImD+fhE6u54BuiiUtU0wTuHnFODLHsZviGZXauCG60Lb/LFwoYsf8
         A1KwQCBLwRllQs6Bi3TNccMHzE8MlZLB9OBwXE/q+xDnUpUIHz1bYfvBAKqDAhw29PzC
         gVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OPFnAhSliTV88ivhQ7X9tnH0S2/0BM1OLjtH1Z1dnPM=;
        b=gxNW4e9xb9LZEW13/2S/skiFszp7/XCmA0X7UQIoMIXHrwVdSayAFBL8KYMY1xH7Q+
         cgQ8ZVpcZQxosfpuDdEcSItczVuUPAIMCaZD1oHZBZw8vyRsLpU8f7w8rkmTP6FixxI9
         ZfQVHb1nT79uV4F/0u98BhpWp4/Fb/JJAt6FoOSGm21dwd57BiePlFWZTDdh6KGQpmS3
         /LJ5YMGlctdKMhWz13Gpum2qfNGaL1NmOWrQFDWxDnaWi5LXN6ubXtRCIyGnfbIFbj2m
         1BlrdVpAzFXg5zc9VHlyjArllql/yoUBlC8q+Qh2GDEHWi6F2QCCPt3AolDfmU4zP3QW
         HSsQ==
X-Gm-Message-State: APf1xPAWnaSkhDEcVYpTVt8kjeOLV7wCXyHFWGcyNDWtGJxoB+vbE4Pa
	ysqA75B6q/kerRI21/NyMnE=
X-Received: by 10.99.108.7 with SMTP id h7mr3720182pgc.292.1519246731615;
        Wed, 21 Feb 2018 12:58:51 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e127sm25582510pfe.157.2018.02.21.12.58.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 12:58:50 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2 1/3] staging: speakup: add spaces around arithmetic operators
Date: Wed, 21 Feb 2018 12:58:41 -0800
Message-Id: <1519246723-2977-2-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>
References: <1519246723-2977-1-git-send-email-santhameena13@gmail.com>

Add space around arithmetic operators ('+', '-' and '*') to conform to
Linux kernel coding style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change in v2:
 - Change the commit message to begin with capital letter.
 
 drivers/staging/speakup/speakup_dtlk.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f8cb83c..df31f8b 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -287,7 +287,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
 	}
 	t = buf;
 	/* serial number is little endian */
-	status.serial_number = t[0] + t[1]*256;
+	status.serial_number = t[0] + t[1] * 256;
 	t += 2;
 	for (i = 0; *t != '\r'; t++) {
 		status.rom_version[i] = *t;
@@ -326,13 +326,13 @@ static int synth_probe(struct spk_synth *synth)
 				speakup_info.port_tts);
 		if ((port_forced & 0xf) != 0xf)
 			pr_info("warning: port base should probably end with f\n");
-		if (synth_request_region(speakup_info.port_tts-1,
+		if (synth_request_region(speakup_info.port_tts - 1,
 					SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
-		port_val = inw(speakup_info.port_tts-1);
-		synth_lpc = speakup_info.port_tts-1;
+		port_val = inw(speakup_info.port_tts - 1);
+		synth_lpc = speakup_info.port_tts - 1;
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
@@ -341,7 +341,7 @@ static int synth_probe(struct spk_synth *synth)
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
 				synth_lpc = synth_portlist[i];
-				speakup_info.port_tts = synth_lpc+1;
+				speakup_info.port_tts = synth_lpc + 1;
 				break;
 			}
 			synth_release_region(synth_portlist[i],
@@ -359,7 +359,7 @@ static int synth_probe(struct spk_synth *synth)
 		cpu_relax(); /* wait until it's ready */
 	sp = synth_interrogate(synth);
 	pr_info("%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\n",
-		synth->long_name, synth_lpc, synth_lpc+SYNTH_IO_EXTENT - 1,
+		synth->long_name, synth_lpc, synth_lpc + SYNTH_IO_EXTENT - 1,
 		sp->rom_version, sp->serial_number, synth->version);
 	synth->alive = 1;
 	return 0;
@@ -369,7 +369,8 @@ static void dtlk_release(void)
 {
 	spk_stop_serial_interrupt();
 	if (speakup_info.port_tts)
-		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
+		synth_release_region(speakup_info.port_tts - 1,
+				     SYNTH_IO_EXTENT);
 	speakup_info.port_tts = 0;
 }
 
-- 
2.7.4


