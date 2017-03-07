X-GM-THRID: 6394738986789634048
X-Received: by 10.13.234.5 with SMTP id t5mr34749ywe.166.1488891194087;
        Tue, 07 Mar 2017 04:53:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.23 with SMTP id 23ls163487ioh.50.gmail; Tue, 07 Mar 2017
 04:53:13 -0800 (PST)
X-Received: by 10.99.56.30 with SMTP id f30mr31374pga.121.1488891193070;
        Tue, 07 Mar 2017 04:53:13 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si617377pfb.5.2017.03.07.04.53.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 04:53:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so79677pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 04:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=bjRlM3hWS6Cwqz++3m6FJFpqRm+t8Ufxyjgd7MZp8Ec=;
        b=isuFOCvDKufwOf6UKqgTQ0HxsDNTqckfCW/uzfYDG8KIUK213L31FskwMYIYqjgrT3
         /0bGyct5/uVTHSjgDDi4+7/IAwZfgcvrzEnTeW8p2rKLAqK5q9Jt2RiqAnG1PYGiy03q
         PerzaAJ3hUTaTgNIVwaGFNu9NiiogdB+mMdIadNcvyE1ER4DeZcOFEwCFuQ1HvZ6s8V7
         WPpoWOeAOxzAcE+PpTV7QYkTMqYmJtWa2B7+XcFGH8P8PLnIF7ArtNbFTZDrN0Zbjub2
         DwZYnz5do+mLUiTSFpS2onjbooIE3zYX1XycZ+JUS2dGwMNojwUZcp2DR1GKN5khZbZQ
         MHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bjRlM3hWS6Cwqz++3m6FJFpqRm+t8Ufxyjgd7MZp8Ec=;
        b=ewEtwMZBMxpluUKo5+CkgAwqQjqBEgztFTfPpsQ6KcHVkc5UvwwVMAQYCzxiL81VNl
         Qi82y8aABm+6awMsIgYWH336eX4D1D7I7OWUTw+U7vtFcJlndUKz3RVGwKTYMk6j8KgI
         jPR4yuCjHuy7s5nUN5zps+QKfOH/eVAai0n+6YwrsEEdxNO7/4MuYjNDOM3OWQOmiWHM
         sBNkCjxdygduOXfo68blMfUuQM4AamfMQLnwEPCTq/fPBFq0Up3wQH6Sm0vMuypMmgX9
         dyqhBuDQga1/zIW45OUWJkDnwI6wRu2WZ3griWbdLETD3VdR70TiHNwfm3PbZ19a1fWR
         faTA==
X-Gm-Message-State: AMke39kcAAj0AQaDwB8Oa3cBouBvuIMf1mW+ugbZfzVRWMOIYdktA/aImT9ff7elX3//lQ==
X-Received: by 10.84.231.200 with SMTP id g8mr178095pln.100.1488891192866;
        Tue, 07 Mar 2017 04:53:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 23sm21867545pfz.127.2017.03.07.04.53.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 04:53:12 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Marc Dietrich <marvin24@gmx.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: nvec: Replace udelay by usleep_range
Date: Tue,  7 Mar 2017 18:22:56 +0530
Message-Id: <20170307125256.3998-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Replace udelay by usleep_range.
Fixes the checkpatch issue:
usleep_range is preferred over udelay

In Documentation/timers/timers-howto.txt,
it is mentioned that udelay should be used
for a few microseconds(less than 10), and
usleep_range should be preferred for 10
microseconds to 20 milliseconds.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/nvec/nvec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index c1feccf..5fab241 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -631,7 +631,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		break;
 	case 2:		/* first byte after command */
 		if (status == (I2C_SL_IRQ | RNW | RCVD)) {
-			udelay(33);
+			usleep_range(33, 43);
 			if (nvec->rx->data[0] != 0x01) {
 				dev_err(nvec->dev,
 					"Read without prior read command\n");
@@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 	 * We experience less incomplete messages with this delay than without
 	 * it, but we don't know why. Help is appreciated.
 	 */
-	udelay(100);
+	usleep_range(100,200);
 
 	return IRQ_HANDLED;
 }
-- 
2.9.3


