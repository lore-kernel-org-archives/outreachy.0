X-GM-THRID: 6525083396428791808
X-Received: by 10.55.165.207 with SMTP id o198mr3351080qke.38.1519248833179;
        Wed, 21 Feb 2018 13:33:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.162.69 with SMTP id l66ls1410182qke.5.gmail; Wed, 21 Feb
 2018 13:33:51 -0800 (PST)
X-Google-Smtp-Source: AH8x2250I4XSiGYY9sgqJmPAFgO9fYw6YkdtwFqifS221fwvBMkH0SmGfmKGhnO6LOsoupEXsLuK
X-Received: by 10.55.141.70 with SMTP id p67mr3365675qkd.22.1519248831812;
        Wed, 21 Feb 2018 13:33:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519248831; cv=none;
        d=google.com; s=arc-20160816;
        b=UdV9FDxWoK05KLzN29T09XJ8JTvOF+BbBJkZYGtTcAc4dH775pK62YUFzjLSKjiwN2
         MQUuLx46+ok5WNPTXZMnL17xWwrYIYLQZ8VJfo3XNtRBSV4HNfmw4RrPCXj/I57gtupp
         j+ouC2NdP7TPENlG6DKCyzPBx8NR5N/VNiKPxHJZCMs8TluLgQD5w2LlkoURNVXzqX3o
         Kf9xUjWzkjJkhBNI4RpFC0/nDugYO5x9PGjbMncTSW25nF0SDj/KFTVCMbV/uFdazReQ
         jR8K0K4sXD4cvXtJa3mKU7y906Zep/9OzR0rNw67R3nCG0K7uonhZW9p5dueVQhhgsVP
         Sojg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=m4VLN6r7lkqW/oy/wu9qtdRmvd5mHLbHX677cV9L+2g=;
        b=giXCfSYOrBcec/HmiGK0o5ZtWb/Jn00UCRe22WFU9FRTrgi+yYLX2IAbrUHf9Hy6QV
         6g5DkHBKOaglns49ooQM0m4c4h2n0u6dPZvPEOv83W8pWEOPFd32NCkCHCavpS66F3NR
         2o/bWxII3pABiAiXILN/yHOGc0pP5FLUKZe2SplVlpgg77FdWbClAL92embEDZkW1FA5
         fT0QKoeNMM4ZCWMN8phe6lkhsvkmk2epLvXf2+DJFixGVT9DbaO+oGrcnwDcGNFf3jXx
         geHod5+/dcz98Dn5jvvlSXGmczyG/fbfz5HvFmCv4yshchP163hczShsjhfjBM/CeYiJ
         PJag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wv++sSiG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id p43si817129qtg.2.2018.02.21.13.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:33:51 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wv++sSiG;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id k2so1209230pfi.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=m4VLN6r7lkqW/oy/wu9qtdRmvd5mHLbHX677cV9L+2g=;
        b=Wv++sSiGqdJaDHfJmlpVDGQGibczx1N4P4NIzi4mJwbq14Ce4ampYZIexO4CXLrZEt
         JIsgIt3++IH255ZS589NRjMmk0KRJVzJMW4PQa3h8A84043WdxMxOgo9G2kv8sy9ZZu7
         ebr0cqCaILisu21zO2n40hRuX9/0ZdK/nxftVNUd/J6S4jsxyugozH6DzCEmzrSGCsGO
         bYn6i/U0mMB5E5uiOlfnEjji4NuaCSSghUwNfQtTKROqVHdOsJXZ4NyziMr7uP2BcBoA
         OnaYEUwvWj5/s3lcVRxgz4x9zuvkySelRdIKYl8ORUL2lIiQLVaOSGky1VmmZqgSK3To
         fCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=m4VLN6r7lkqW/oy/wu9qtdRmvd5mHLbHX677cV9L+2g=;
        b=VyqhFrG2BLz3w2wUhRgpegcmsje7vEYZ9kHwrq4w3kaCifR7e3M9Rb80EQIThdEBqk
         lKExBWx1M0WL9SCzQPdFWP5Ueb2zWRZSlW3tt0ymkw/cJCTRLNIFyT1S0daezv+p3QFM
         JlqPzr0OtV3LdlEgOrWxPB9NqMc9meq6P+qLff2VffM+pvgpS0Dd0nBGfxMCkNr7THJK
         TxfAZix+BvDLS2IvTDFzn8EUOel9z+34eDbLyFCPSR33AnFIHZyeitV8omO2I2T4MxZW
         RjWVKC8NJnhnyFRO90uZlLIfHxxYc/GvOUUn3cKiqOYTKHLMI2VsL6u0uhj3TvPjRV39
         nAWg==
X-Gm-Message-State: APf1xPBKME34sncymcaAVTSfOKAAGdxLeB+m9nRR8tvqgue9s5Y2N+GB
	EggRKDeOt8rwGPz8k2oRacs=
X-Received: by 10.98.223.93 with SMTP id u90mr4600191pfg.13.1519248831390;
        Wed, 21 Feb 2018 13:33:51 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id n81sm9295573pfk.152.2018.02.21.13.33.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Feb 2018 13:33:50 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v3 1/3] staging: speakup: add spaces around arithmetic operators
Date: Wed, 21 Feb 2018 13:33:41 -0800
Message-Id: <1519248823-3468-2-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>
References: <1519248823-3468-1-git-send-email-santhameena13@gmail.com>

Add space around arithmetic operators ('+', '-' and '*') to conform to
Linux kernel coding style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Change since v3:
 - Change the commit message to being with capital letter.

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


