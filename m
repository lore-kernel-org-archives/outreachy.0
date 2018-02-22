X-GM-THRID: 6525083396428791808
X-Received: by 10.55.66.65 with SMTP id p62mr5547075qka.15.1519323320905;
        Thu, 22 Feb 2018 10:15:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.47.196 with SMTP id m62ls2714847qtd.7.gmail; Thu, 22 Feb
 2018 10:15:19 -0800 (PST)
X-Google-Smtp-Source: AH8x227/PwLatV3W8uu25gc1RfNkuJT4/ypwjmykGLZUw9TxCDR9RgsSgExACxwc1e08ROOd18G2
X-Received: by 10.200.69.19 with SMTP id q19mr5434633qtn.45.1519323319588;
        Thu, 22 Feb 2018 10:15:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519323319; cv=none;
        d=google.com; s=arc-20160816;
        b=RsAzM0gTi5AQ+5qsDYcDXkdwJOVwnB0tyQotADrddrHhpFSqgOeCX+0FFqPXSwz3d2
         z/MTU684c2KxGFm+Yeziea/UiWbDnKsagK+tD+imueg8yDP9imotk7UWhAj7YBS+U65b
         g+FJhVfYzAjiXwd1dHoB+B1uIpOvLxT0w93/dX5j/swcCpZn68MBl7lrxuxvyhYbjmZl
         4DNwLCxi4xZrV4DxK61A1NSWkPMxTM39RSeRdPau0Eq+S/PPIUsgR7ij8jYszYT7orDc
         gH1j0HP5EbGfdj2JYUUv+NhbVu92S2Qr94dUzHeClsvYdbZNmDoc5JdFaffVcCnUXF3j
         zhDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=0VpeMICwTi4dH4/UDAzxhHMZpj2jF0CUMfejsfbudCU=;
        b=KJ7mTluqXv6ykpiUauQgg7z8GWAxi5wAnUEnZK2GfN62GMfzW3buSllZPZl6niGiEh
         nh2xvLrf9ZyJ7z7x1/s0y/ZLUa51Sn9NMCStUXGGJ1GWyHHmZB2InpCbFce88jbGYnr4
         etLgCoYTMU/ftGicCDO36rLLLb03ECMMbe61tDKnAVjvaQ9vr5+twUAIZ3y3d8ZiCIlm
         OnMeCExL7QQuTmSRj4qigFm4nsZB92QAVxGdIL58GosizhS1jR0FoHxWoSplQKCqccaa
         +ca+g777C20fcRSesvFxH+XgBOtuCYktGkuuPkoAVFtE9y60qaUhKDPCfVB0Df4M3xJv
         MSww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mu3rVk2W;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id p12si44209qtl.1.2018.02.22.10.15.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 10:15:19 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mu3rVk2W;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id u13so3334362plq.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 10:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0VpeMICwTi4dH4/UDAzxhHMZpj2jF0CUMfejsfbudCU=;
        b=mu3rVk2WB67ZtJajNAqQFG+ZCF4+u0wdcArUIXNiJ48zZ6pQUYHb/bp6/GSY+2Em7H
         elZFkxtH0qM9sZDfNH27/R84GGHn3wdrvo9jd8nkzW/ISoLur4t0BLM4o652ymQg2l5r
         +D61zvSdoeYdZIcJaoJCPG1kfXkfFQTgzAncH9nnB/B+rkGGFRUblw8DPSK43J9A8okg
         Qa9JspRXbkWI16dOhy1I7RhK+xBV6z8Mz6CFEPidHhPv+7DXEF4WL4D/mRXgl/TTNG4K
         9q9jVb+buOziqay5EgzvXaQGe9jz1auZf2z8oi42akeHs038Vb61e/PglXV/xJQe3TNs
         JL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0VpeMICwTi4dH4/UDAzxhHMZpj2jF0CUMfejsfbudCU=;
        b=bTHH23TJCUA/oMepyZWxAuTWH0DLY1pr/sYN/ypucl6Eg952NylCDk2yYJRfTOkCNr
         Bzt4MKodXj+k+LDj/z057HRHmXUtCfVKsWAhi20wCPN/zZI/KRww/ApLvIEzOmIWRaOd
         ZqN8+pctShQpV6eppjuEeKseK3zk865vUJ+gYgOor4TvThfe8l0OX0S+f3y3JPEoP21t
         8jq3A/7K7n+RBWIlPbetAO5QFWBe6XAmZ4fR+P/ADHWMfgY7wJdofSRD8K+dEljoQjgu
         ozZ6xoy8fxtmW8dawNQsUfLKY6n/nRQd5Izha3TLh6Zs0f+fiXV6EEDY+SwlQXrVawXX
         7hZw==
X-Gm-Message-State: APf1xPC5M6ZpcOrYRq0kBQu2IDY3liIErBV8w7gffNnP7b/Oo2vLLm5F
	wNVLZwSDzDXbk7t/44fIXDU=
X-Received: by 2002:a17:902:b686:: with SMTP id c6-v6mr1831594pls.339.1519323318766;
        Thu, 22 Feb 2018 10:15:18 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id i1sm1506314pfi.116.2018.02.22.10.15.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 10:15:17 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v4 1/3] staging: speakup: add spaces around arithmetic operators
Date: Thu, 22 Feb 2018 10:15:09 -0800
Message-Id: <1519323311-24338-2-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>
References: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>

Add space around arithmetic operators ('+', '-' and '*') to conform to
Linux kernel coding style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Changes:
 - Change commit message to begin with a capital letter in v2.
 - Make the change description more clear since v3.
 - No code modification since v1.

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


