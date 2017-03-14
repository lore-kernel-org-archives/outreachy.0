X-GM-THRID: 6397218994574589952
X-Received: by 10.157.67.145 with SMTP id t17mr15944438ote.35.1489468622218;
        Mon, 13 Mar 2017 22:17:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.143.75 with SMTP id r72ls4563077iod.30.gmail; Mon, 13 Mar
 2017 22:17:01 -0700 (PDT)
X-Received: by 10.99.66.6 with SMTP id p6mr17579864pga.20.1489468621359;
        Mon, 13 Mar 2017 22:17:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y203si3036790pfb.0.2017.03.13.22.17.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 22:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so21855481pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 22:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3A5qZk0zicaWBGeWOy5gw0fuRGasDi3mAmAP1KpZln8=;
        b=j/+uTBoDQ/3NSqIoizmszccQvvkoKLR8QKS0rCKfCpym32yXy2N7MW/ADRN08zG/GR
         E3pidz4aGSWMOLrfsjy5EUAK0ae4sTOoPR5cAXAHp4QCoD8iJC2yZuUhVbSucyuuusIv
         6SFFZ/bXSGGdFD9MqoQEtK/XDfHPhqDQUTQokuhUigsahbV9JrMMgXKDkgZ4a3+3Viv4
         JzkEdqhLsJX1G7b2l2h6/c/j5/qtpSmUL4YTLH7fd6h9sa7TiYbLlQQkaWpMOc2UYHTR
         d0FhNs+B+aBHrYon2X4kwNoozkbmgYYJJyA3USBugTJre3trQtrRU1t4AIV01dZbPvfa
         Bxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3A5qZk0zicaWBGeWOy5gw0fuRGasDi3mAmAP1KpZln8=;
        b=O9wVSz9ghX3CTvariGChjKjr4f8hPGIgbFOa36K2yvjxEVwQIQsOcK1DHXSBY4q7Ps
         o6k9csCsrOPkNOUkTs10bWDmSF5qI1DgLQC0pILoZaZsGOt4wcwUc+jzAvqRwixX7qIB
         BojpazZ6jxYis1Q/Kmu4V1BU40gNkB7hmuwsTtA6CRHNegh1MYEzIwMBW83GsJq/OUUb
         kOYzs3iyxqjCWE0QjrEoWUIweK+1MTzizAS7vmdbjX54NrFfoc5egliRkgFoX4jV4WI7
         I0hFocA8YfGaDS5CsF2nW6UhXidCTWPqKIYEdKXJDH1U0PzmjeIzhv0oE2a+Lw6n9lM3
         uuWw==
X-Gm-Message-State: AMke39looFhrxQql+89FFYjNu2Wedx+ex0xWhUx4+H7IfmOwRxTCA+2w01dxfhFS6vB+uA==
X-Received: by 10.99.149.66 with SMTP id t2mr41618945pgn.152.1489468621171;
        Mon, 13 Mar 2017 22:17:01 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id q64sm35804130pga.0.2017.03.13.22.16.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 22:16:59 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3 1/2] staging: speakup: Add blank line after declarations
Date: Tue, 14 Mar 2017 10:46:42 +0530
Message-Id: <20170314051643.28085-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170314051643.28085-1-arushisinghal19971997@gmail.com>
References: <20170314051643.28085-1-arushisinghal19971997@gmail.com>

Patch fixes the warnings reported by checkpatch.pl
for please use a blank line after function/struct/union/enum
declarations.
Add a blank line after enum and struct declarations.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
 - change the subject and commit message to make it more relevant.

 drivers/staging/speakup/main.c         | 1 +
 drivers/staging/speakup/serialio.c     | 1 +
 drivers/staging/speakup/speakup_dtlk.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 6786cfab7460..4b750ec8cd59 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -108,6 +108,7 @@ enum {
 	CT_Window,
 	CT_Max
 };
+
 #define read_all_mode CT_Max
 
 static struct tty_struct *tty;
diff --git a/drivers/staging/speakup/serialio.c b/drivers/staging/speakup/serialio.c
index aade52ee15a0..d51e382cb835 100644
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -21,6 +21,7 @@ static void start_serial_interrupt(int irq);
 static const struct old_serial_port rs_table[] = {
 	SERIAL_PORT_DFNS
 };
+
 static const struct old_serial_port *serstate;
 static int timeouts;
 
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index eede2d82183a..c0b2208aa8a7 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -43,6 +43,7 @@ static int port_forced;
 static unsigned int synth_portlist[] = {
 		 0x25e, 0x29e, 0x2de, 0x31e, 0x35e, 0x39e, 0
 };
+
 static u_char synth_status;
 
 static struct var_t vars[] = {
-- 
2.11.0


