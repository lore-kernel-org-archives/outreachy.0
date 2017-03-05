X-GM-THRID: 6393950700363055104
X-Received: by 10.99.64.129 with SMTP id n123mr1478384pga.61.1488707657140;
        Sun, 05 Mar 2017 01:54:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls12579361otd.46.gmail; Sun, 05 Mar
 2017 01:54:16 -0800 (PST)
X-Received: by 10.237.33.104 with SMTP id 95mr3560894qtc.39.1488707656827;
        Sun, 05 Mar 2017 01:54:16 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r66si831771pfb.7.2017.03.05.01.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 01:54:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so3578678pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 01:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vWOt75jJD7Kz+eIStuRBiAJM/AsZIWOS/3dLWiPg6oU=;
        b=rFs789acEiBBGPTm274k/cnjuRwNm7YFgRBwfBvngGt6t0y2DhgUxm9BCcgGDoEBEI
         hdUbadiTFH4HzqG26ICS8K3H/gQyR2mBk+Ev8uqEVS0Y8qoWZ+ChR/XQ5E5ljlU0wy/2
         KmCNMNecOBHdQJOqogvnnThL9lYEwaeBjbwjz+sSYQsOevBozAkexZ9IQRbSN28fbXTg
         u46zwXH1kr5ykmX/IDCeUCIrWhoNmTb6bfkIvew+nQa9aYq0+nCET3np+jGlyqp/hDSF
         h4iErGkOLeHUiLU64MPdPIpSYS2QQu7fWPdNLh8bnKCu/y0MXvq+WeY9HmqNuULxThEN
         z8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vWOt75jJD7Kz+eIStuRBiAJM/AsZIWOS/3dLWiPg6oU=;
        b=EdWcySKXfdFLPtHP9W1E3qApRLZ0yljpf3iPYoEo70twk7IZZ+p5MoP8/NgJxR97aN
         RFS8WrQQ+ghRKTjZiv82xmBnhJCzl/ZOrTqb5WkoPv/PaxIXeJg7myWFeC0t2zinanRu
         Js9h+aIGpDXvkRRMrKbnpwsArm7Iww7FMgA/WjmyehxmM+rS3wiAAh+vLTX3GotEoZE3
         VvlMt0d7gYIQu7bAwHez/zOlt62M6Wm8PXQxIw4dSJ7RQ7NAa6XXmMkjTG/mmzcYjWil
         7J5nFuZy1CIfc0KuOdyq8UUAobi54/0slJnkHE7hRtExE4oc1Ipf54j/vLmLXCJlrxMB
         pfVg==
X-Gm-Message-State: AMke39mE/S22HvWAMVcYVeyoLg4UAnb3iOhCzTH5R2ADv4jH7tz1jeNl6Dm61d6KmTzaaA==
X-Received: by 10.99.171.75 with SMTP id k11mr13400492pgp.16.1488707656562;
        Sun, 05 Mar 2017 01:54:16 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h14sm14302926pgn.41.2017.03.05.01.54.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 01:54:15 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: lidza.louina@gmail.com,
	markh@compro.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: dgnc: Constify ktermios structure
Date: Sun,  5 Mar 2017 15:21:44 +0530
Message-Id: <1488707504-3120-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The ktermios structure is a local default termios struct. All ports
are initially created with this termios. Since, the structure is
never modified, it can be declared as const.

Coccinelle Script:
@r disable optional_qualifier@
identifier s,i;
position p;
@@
static struct ktermios i@p = { ... };

@ok1@
identifier r.i;
expression e;
position p;
@@
e = i@p

@bad@
position p != {r.p,ok1.p};
identifier r.i;
@@
e@i@p

@depends on !bad disable optional_qualifier@
identifier r.i;
@@
static
+const
struct ktermios i = { ... };

File Size before:

text	data   bss   dec    hex	  filename
25469	2048   256   27773  6c7d  drivers/staging/dgnc/dgnc_tty.o

File Size after:

text	data	bss	dec	hex	filename
25636	2016	256	27908	6d04	drivers/staging/dgnc/dgnc_tty.o

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index c63e591..d6f2ad0 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -58,7 +58,7 @@ static const struct digi_t dgnc_digi_init = {
  * This defines a raw port at 9600 baud, 8 data bits, no parity,
  * 1 stop bit.
  */
-static struct ktermios default_termios = {
+static const struct ktermios default_termios = {
 	.c_iflag =	(DEFAULT_IFLAGS),	/* iflags */
 	.c_oflag =	(DEFAULT_OFLAGS),	/* oflags */
 	.c_cflag =	(DEFAULT_CFLAGS),	/* cflags */
-- 
2.7.4


