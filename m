X-GM-THRID: 6525083396428791808
X-Received: by 10.55.156.140 with SMTP id f134mr3134342qke.31.1519239368614;
        Wed, 21 Feb 2018 10:56:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.68.2 with SMTP id j2ls1181048qtn.8.gmail; Wed, 21 Feb 2018
 10:56:07 -0800 (PST)
X-Google-Smtp-Source: AH8x226g2gokDbpB6iFuRLIPQgERHAA9QPYjNvrfMP3DV0kqbOXVcD9AueTpi/X0n5nQsfPKDSoh
X-Received: by 10.200.55.229 with SMTP id e34mr2892615qtc.46.1519239367966;
        Wed, 21 Feb 2018 10:56:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519239367; cv=none;
        d=google.com; s=arc-20160816;
        b=FpYkxM+F2U+ArbN1iJ+jgAGHRSlh8rbkBWK4JXH2CalBvLaJaEvZyqxrtJwO4/dCan
         3EDr+kZthBaw6YpHRcbEysrbAqfXycQVk3SylCJUEXqfandprrIEdjn1S8eyZSBu7nTV
         rD/Hw6LZXwcbbBtuBdFuIMSEwKPd/CkO0Bup/inHvjoEnB2jC7cqs3Y22j+KUHLaQQLu
         JV6amHmPYB2UK1EjhHD+00DCTFM+cDnSX1/CpYa769QcwDo0YIh3A2Kw+V46w4U+h76f
         UaXy3hnpvyHbpbUDgFeKNSPrCr++lFmiAGTOseqJ/8SspOnESj9dy98Uwk3sXe5S6ma9
         GUWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=ryciYJDZNU67baIoWpjBoKtBq53NKbpcvHtjuTjcTtU=;
        b=uAES54k1gd5GUE/dQJpJUVoujvVCs38NcYSQLVs6VS0OEJLdVfaJKx22nVisVEybGW
         1g07U+NnE7dxWcrRo+efhTfI1BhuVsIIokzMmFoxIZ8jdm6Ti41GU4LjRs4NuNqD077Z
         QWJgEdrgiEeoGqYUbEPap0p4c/KC6O7K+yfO679Fn2Tg1hqHYyrPC9NOxHOyiRwQqcgz
         NxmFnb6yUFTKDvYHAsHSjrWSuMmUISWN+3fmKOasPGEWJk0kLwVwJIkeQw4Sz5k/PN2x
         SRuqSpZl61XJn9SPMGwafGJviNERIRzFvcI0Akb4a7XRHeBxtsjUNAnKzOwzkaPBb6Qf
         YdNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XKbkajAD;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id o5si59783qke.2.2018.02.21.10.56.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 10:56:07 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XKbkajAD;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id 31so1420221ple.9
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 10:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ryciYJDZNU67baIoWpjBoKtBq53NKbpcvHtjuTjcTtU=;
        b=XKbkajAD3KhkWQInLlEL3jPFvL4Q+zkB11Ee2N1iiuclUDzKa9JRUsCLjUZ1R2UoTv
         DxsZFJbDJAghZoCFxfgG9VtcSFDjL7znaNSgEYDUbdlP7n7npalf26LtrXWCnkpMBqsN
         iCuf0DQIkjCVEgN/6+OyPOuyArRYMPm5WhOlMlui+9gF3J7JXCOWryuCDeorqjUo5nkC
         7+v4Ew2Twchzl3XwI3gfk8fnEb1ldajKeHG2wBfYD6SudNvOHebYoUZONuZl30ZqNfV3
         IGxbi+nIAuRYZ6DXgdcWvAtaCh0B/0fXu5AEsn4J92pkZhmZ6/8O3zXG57clY9xIv+Yz
         e0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ryciYJDZNU67baIoWpjBoKtBq53NKbpcvHtjuTjcTtU=;
        b=LDV/SdloylIhN38pHdqsKjNSIdlMykoU47Lnm71aSBGLtVeZn94T0/2nOpJeI7OfQ3
         zLW69kgJmxB/UjtENfCrYYMfh9+I906dusJtCoBDsjLgFIzLeFGUqfeAtYq4aZf1nXEH
         BEjJnGjSRAhhyGfNIx9FIMg3V6QfYlMoAIm4+EEjIazgzGC+al2s8Zec99aOLXxab1zu
         eBfm2NKVFYrwBemsYdapUFecAkv2yIPTCZOaGD9YLnw0EH403MkcmHvcQqw82SEkXCN3
         C+78rftZXPjqed2wMjuSJLh+n2zIxMtteEBYTj5WRD59fmeNZ74WCjoUHYNGLPpxN7HK
         4Kfw==
X-Gm-Message-State: APf1xPAIG9jowW/iAq7xJV+QQgrPpjJy1mIGNFEJynyBhQ6T3lnZGvTZ
	3rB4VdlZg7TYjMLwDS90kCU=
X-Received: by 2002:a17:902:b904:: with SMTP id bf4-v6mr3935038plb.195.1519239367124;
        Wed, 21 Feb 2018 10:56:07 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id r29sm998352pfj.99.2018.02.21.10.56.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 10:56:06 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH 1/3] staging: speakup: add spaces around arithmetic operators
Date: Wed, 21 Feb 2018 10:55:55 -0800
Message-Id: <1519239357-9527-2-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>
References: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>

add space around arithmetic operators ('+', '-' and '*') to conform to
Linux kernel coding style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
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


