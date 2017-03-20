X-GM-THRID: 6399382286818607104
X-Received: by 10.157.36.99 with SMTP id p90mr12482342ota.7.1489972296751;
        Sun, 19 Mar 2017 18:11:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.39 with SMTP id i36ls4794487otb.24.gmail; Sun, 19 Mar
 2017 18:11:36 -0700 (PDT)
X-Received: by 10.157.11.109 with SMTP id p42mr12524413otd.14.1489972296373;
        Sun, 19 Mar 2017 18:11:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id s67si195913pfs.4.2017.03.19.18.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 18:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so14964461pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 18:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=VsHeQVMmS5Bi6c90IYt13x4DnhAqhJU5hdWHmNoMYJ0U2YMlLW5d2xilIjtN4SYYHs
         +hVz/RQ1ENNxVl35hXXfwQooaEYbEUmCEFEFwC3WGPa6HOaGG8S/bXKbzI8Vx1XqHn/+
         tlyQhpVqsuDpnGL2cfG3jZ8XoniAHMTgqOU230hmddViD3Nw1W6sq08ifrOuqG7yCHb3
         eArX4SV+p9MbQrWFPtG1+oZDU4ZrQJTQ+iAsQXljv/Nf+NW+VbQFFtuejBCBA01QOc0m
         X8YBIyA4WHar2pBxvLpBI9NpzQfNlzBODNqvNN+QCvKDzA2fjPoLNNQJJQqL8+VgYUOO
         YZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+eBTjyKtrzFKQQbBUs5njc8dF6PsWrOdWdjCUGNxnBk=;
        b=pPUm+crOJwNROf0UNUQCXfO0feJJbfB6iGQrVOqovB+2E0dg4SuvxpbhXPBbILcTEz
         Z0Wf2hz51pKnJU8t9svkVLJRYiznSy8hD0OHB255m+/5SdA3qcy1erOTL3EUtI7r9QQl
         QB4BLQpjTV+L6GFTcqATP/lUrPlV6RczQOuZZ+vu9jI+Rr6GeflIl8DWT8+Ktblt2Gjd
         z+3A8TAtnEi7nz3TUki5aOpYhPm+OIQHYqvImMPjNUu2EuzF7B5aGSrhcBQVWsBnoAbX
         NRKdZqo26alzRVZKDeynftNPyVEBPEQdK2ogl/HFBzKvxiodaNNupDDZK5/jPSJ2WiPH
         5e9g==
X-Gm-Message-State: AFeK/H1Oh9zF3mBuojjolf+CgsfEusx+lG+I6uGMsSiDpm1QsJHmMlJajACDWbiLfpZxlg==
X-Received: by 10.84.139.195 with SMTP id 61mr37213677plr.109.1489972295615;
        Sun, 19 Mar 2017 18:11:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c16sm28880837pfl.7.2017.03.19.18.11.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 18:11:34 -0700 (PDT)
Date: Mon, 20 Mar 2017 06:41:31 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Match alignment with open parenthesis.
Message-ID: <20170320011131.GA22169@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c           | 2 +-
 drivers/staging/speakup/selection.c      | 2 +-
 drivers/staging/speakup/serialio.c       | 2 +-
 drivers/staging/speakup/speakup_acntpc.c | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 7568e8149613..55bf7af1d6ea 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1160,7 +1160,7 @@ static void spkup_write(const u16 *in_buf, int count)
 		if (last_type & CH_RPT) {
 			synth_printf(" ");
 			synth_printf(spk_msg_get(MSG_REPEAT_DESC2),
-					++rep_count);
+				     ++rep_count);
 			synth_printf(" ");
 		}
 		rep_count = 0;
diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
index 4417c00e68a7..08f68fc2864e 100644
--- a/drivers/staging/speakup/selection.c
+++ b/drivers/staging/speakup/selection.c
@@ -75,7 +75,7 @@ int speakup_set_selection(struct tty_struct *tty)
 		speakup_clear_selection();
 		spk_sel_cons = vc_cons[fg_console].d;
 		dev_warn(tty->dev,
-			"Selection: mark console not the same as cut\n");
+			 "Selection: mark console not the same as cut\n");
 		return -EINVAL;
 	}
 
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index e860e48818a4..5e31acac19de 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -125,7 +125,7 @@ static void start_serial_interrupt(int irq)
 		pr_err("Unable to request Speakup serial I R Q\n");
 	/* Set MCR */
 	outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
-			speakup_info.port_tts + UART_MCR);
+	     speakup_info.port_tts + UART_MCR);
 	/* Turn on Interrupts */
 	outb(UART_IER_MSI|UART_IER_RLSI|UART_IER_RDI,
 			speakup_info.port_tts + UART_IER);
diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index b4058bd82e42..ad72f8e883fc 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -261,9 +261,9 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -272,7 +272,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT)) {
+						 SYNTH_IO_EXTENT)) {
 				pr_warn
 				    ("request_region: failed with 0x%x, %d\n",
 				     synth_portlist[i], SYNTH_IO_EXTENT);
-- 
2.11.0


