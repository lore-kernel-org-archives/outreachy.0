X-GM-THRID: 6397085894366461952
X-Received: by 10.99.127.86 with SMTP id p22mr17706345pgn.107.1489437632865;
        Mon, 13 Mar 2017 13:40:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.9 with SMTP id h9ls4429742iod.49.gmail; Mon, 13 Mar
 2017 13:40:32 -0700 (PDT)
X-Received: by 10.99.51.206 with SMTP id z197mr18535128pgz.88.1489437632073;
        Mon, 13 Mar 2017 13:40:32 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si3256116pfb.7.2017.03.13.13.40.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so19461928pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=qYKM4EVIG8HD2HljH7OGNhL/mWhHy3iWMNH0EhFQ9oY=;
        b=ByPLz9voGATDAi2qH902pjj1PkHfbVHq2LYXu7Ue8vVYV2o6cj1e0QaKCMJBLc0jK+
         wiyFeShNxrDx98jYR0B9jIQuQzKYSsLAGMSUyu6m31/O150PONcQWLHxXpha5NEIRzB4
         G0ov9vQzVDvd96QwlTNZUQxPsMihiHaLk0/ZEbtI9wvSpTvhYJRdjehNabOJN8gKa8Zx
         8VsN7vjmhm4jHZQ79iqDX92fi6+u9ew5zdlAxkF3Mf28Eub3KpW4NbWJ7qyq2DULaCrA
         sFysKp9wQy6MltSFOu4q/QBi52B8oy2LKHH4lFpG+MiZr3IFkhiu5T/0Ag9SiGyP7I1K
         Gg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=qYKM4EVIG8HD2HljH7OGNhL/mWhHy3iWMNH0EhFQ9oY=;
        b=XThf8HxkEhOV7hVKzeQF1OP26OdeBdHqPRXER7RBQK639gECYflN1KvwzpP8u5ldQA
         ibTmvkpXMUhM0teh60a994DgQhFURao/QPYv8MIOelHmDyub0IQt89vI39rT5pg0Czx9
         brrNpfoo/N+nVJvLNh51wPsJ9Y/pVO6uZXVIF067DflUV/7xpA3zSYoNWSGllmqi77rX
         uu0JHBai1OD6ua+aPsrP8SKeKwsDJ4u7JIOoyGwLgYaU1eqn+IXFKH1P9tefzDfG8Dnd
         jQ0hanoMSaCt5coRHh2IJ1WN0MkSr/CNmE/wcTohT4tgRus95rERfKmXnHJnPPU76a0j
         SFTg==
X-Gm-Message-State: AMke39mKF5uAdFO9RJ4mqL8yKBA+HOkLnBXNyZrgOj0d4dRvuIDDIfKJXn9yRYI9RyJupg==
X-Received: by 10.84.232.131 with SMTP id i3mr51346458plk.172.1489437631902;
        Mon, 13 Mar 2017 13:40:31 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 80sm34268121pfy.67.2017.03.13.13.40.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:40:30 -0700 (PDT)
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
Subject: [PATCH v2 1/2] staging: speakup: Added blank line after function/struct/union/enum declarations
Date: Tue, 14 Mar 2017 02:10:17 +0530
Message-Id: <20170313204018.24601-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204018.24601-1-arushisinghal19971997@gmail.com>
References: <20170313204018.24601-1-arushisinghal19971997@gmail.com>

This patch fixes the warnings reported by checkpatch.pl
for please use a blank line after function/struct/union/enum
declarations.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - change the subject to make it more relevant.

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


