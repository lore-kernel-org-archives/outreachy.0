X-GM-THRID: 6524345864166572032
X-Received: by 10.107.175.218 with SMTP id p87mr15889695ioo.53.1519067646162;
        Mon, 19 Feb 2018 11:14:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.195 with SMTP id c186ls1899159ith.3.gmail; Mon, 19 Feb
 2018 11:14:05 -0800 (PST)
X-Google-Smtp-Source: AH8x225weTygdxifciR2J3UUqdKZ4hFnw/4S4/xVPGLcjwC7p5u3YevknA9BrWWRCOvW9KjyfS9E
X-Received: by 10.36.76.211 with SMTP id a202mr11885362itb.12.1519067645227;
        Mon, 19 Feb 2018 11:14:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519067645; cv=none;
        d=google.com; s=arc-20160816;
        b=LUvMQwKV42RSg3J09XjaXwpeXnmsfUgLcHhANygN5uyFIW+PTBoRSx5QpK5VgxOijA
         9Vb01JlOSKxFrKnzsWImbGyCmFwbpyrRtWucRmVmg0Em8/BByf96kfST5GVM8SfSxfB9
         OtXk6Sda4D/fKoCTw9XujQIJ9EQDQjauZRFss55HU2wVP7tyG3MNqbGm4mfq0vYbbB0l
         WvxDdZgD3XpoZetR/JWR1gF5VvC8c5Gr0l3xxFEs8f9a+1tc0bzoW3kdyJWKhxGckG4/
         trBiPChUCAFS60hbpviAiwe7xCFGdIIisc+Xx9Q3ou4x2ZhTc7a0OPEOudHpnOtiiV+v
         PcUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=cmOXbqb1dHxdFrXM0JR5P9y6VJXpATS2jv9RXkTaTCM=;
        b=VDMi7O9zmcneUFZ7AajJzj45VgJvm9aCQ5dr6bHwQsUdYevZrxYSXSbMtlo8hU7dr3
         GSDNK3abBaetFSdZqpoBLUxhEtd0HWJDhxbXEK2IvQM3mvxRbhBEpOHWBvuCqdjXdK+O
         Y9vwpcipscpaBd8yo9gxFjqimk+O2O3L5D0K7C+o7qmpvtoz91STbly54KXcq5R8yD++
         bnjtxdGnjn8d0LULBkapuVi0w0jVaJJp9thtpJna7bnxW2+ENl61agAZ7Z1RTDjLHts6
         P/J4wJxbJiCCV35q8UbDoGcFDlQk2ZZ+UCT82A7FqUCzBY4ZVOaNmnrU3L/2EUoQafbm
         3RIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWqi7Xmu;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x229.google.com (mail-pl0-x229.google.com. [2607:f8b0:400e:c01::229])
        by gmr-mx.google.com with ESMTPS id l8si63757iog.3.2018.02.19.11.14.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 11:14:05 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) client-ip=2607:f8b0:400e:c01::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWqi7Xmu;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x229.google.com with SMTP id x18so568027pln.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 11:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cmOXbqb1dHxdFrXM0JR5P9y6VJXpATS2jv9RXkTaTCM=;
        b=MWqi7XmutfSmTHYu4Rx0PWq78QvQe8Hl5WPZlTrQ8YERYyzWxzSTNAuy1AwDtyv360
         IMdYbMn1kv3J2DCLIAy6kPVhzobZhkFIf4tci0TdDTXSSqHRkr64DOhWL7w6Y9kQP2qV
         3ZViTti4vEIanqi6mq23HxdzxXZvcJDYt/NcNQEBNQlND36DUGM09GNdD3UhCv7n4RZP
         JBgY5VdJgtbNNVi4RC5J/BoT6RrebTG4Cp776zq9pFPL4KxbZUgx77STx9CLt3LtisRF
         zGRP0MWvqTUbQjZ57aePi0Sva+MU2E4DS9lYTdHySrKjcr/kne6y0Xv0BZZHKmhJGhjr
         sqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cmOXbqb1dHxdFrXM0JR5P9y6VJXpATS2jv9RXkTaTCM=;
        b=UjrdvKQMQ/3JLwh+GCQ/tjWrfEIvQ6WrDeIUgvgN7+hsMgro/xnK3lcoUbsyrU2AWQ
         pZeFeLzwv4lYnzaAeQ2kl0SVhwr7nZJnk7o3JDMl52C6igQdJhkKM3BdGqzTa831VKrI
         xpX2Pwrw6Amssi52twl4920ZcUtLjBMwoQsY4N/TyOzmaEI5WrMVQEcK5gMgJz7haaW7
         pVEA/iZjB3wMnUgXZaQd61HBj/+kG/becx/IwIx23CGpuTuW9M2Ol1wv4Nl9IFZT3wje
         +JHn38vLUkhQRgtZIP2svF/LEFIqoiK8ENjf+rVw6BqT5lIqaVxfnyRUdqkiHDtpvF+G
         S9Iw==
X-Gm-Message-State: APf1xPAfKHqMRBP3oAKdL0RP32bbIofCEB7X/DgpA+8Ofda2WN7AQh64
	AjXJmSpOAY3XlNLoYy0t7aY+S3UZ
X-Received: by 2002:a17:902:6782:: with SMTP id g2-v6mr690447plk.19.1519067644843;
        Mon, 19 Feb 2018 11:14:04 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id y7sm56956419pfy.128.2018.02.19.11.14.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Feb 2018 11:14:03 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	outreachy-kernel@googlegroups.com,
	chris@the-brannons.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: speakup: add spaces around arithmetic operators
Date: Mon, 19 Feb 2018 11:13:58 -0800
Message-Id: <1519067638-5144-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around arithmetic operators ('+', '-' and '*') to conform to
Linux kernel coding style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/speakup/speakup_dtlk.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index f8cb83c..835582a 100644
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
-					SYNTH_IO_EXTENT)) {
+		if (synth_request_region(speakup_info.port_tts - 1,
+					 SYNTH_IO_EXTENT)) {
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


