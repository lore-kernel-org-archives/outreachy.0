X-GM-THRID: 6334501758545428480
X-Received: by 10.157.63.148 with SMTP id r20mr3826934otc.75.1474866159180;
        Sun, 25 Sep 2016 22:02:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.22.69 with SMTP id 66ls8269080iow.31.gmail; Sun, 25 Sep
 2016 22:02:36 -0700 (PDT)
X-Received: by 10.36.73.160 with SMTP id e32mr4000546itd.25.1474866156291;
        Sun, 25 Sep 2016 22:02:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3972858pab.2.2016.09.25.22.02.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 22:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so8225176pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 22:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uw1EOyXYsbr0OudUfQtG2x6N/pxlvWwKt4OGX0KoJ0k=;
        b=V4HnXNtOm49u05dSRph9AQSWysIVfV7fbEStZLECTReNk0xfBT21FzsCHT76nOSdzw
         fnFfKZbqksmUHAjgxwYowUJv2XhOddn0psaso7i2YczZuIdDBfUslIsJLuW6Pb3PjC2S
         7Tp+h8J6ZsRSezlCxNc6MfEow3lWs45V7F/aqIxFRa+CL/iKa8DvtMR5oOzPXerTYgO9
         fZpzsVgKLJ9Zn+RsuSHuEIhMi8pM1uTw56cAePKBvHzvKwVIDMcJ3J9f1V7qQC4AnEQK
         KSGaUQlUN1XIFJ/1Be6RIu9R+N/z0d10jeWSq4EPTWDm0Ebeo+rcFbwXhH/u1+vDyrIC
         HIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uw1EOyXYsbr0OudUfQtG2x6N/pxlvWwKt4OGX0KoJ0k=;
        b=PJLANZdNPbwrMZPWu9mx9PB991x8xxkO6q0yas4yJY5TAUEYJi9ypE9EXqgviiYMW4
         t8DZFd57bnbIiBPSMrHdu0lH2XG7dDI0sRDSJ2jTkvZEcKttuArsUEN12iExa2ENUekS
         8WqVYdK1myNrSl3Tk4MVJ7YnbaTw0ja3JGKbILB6bvZR+TXWEDwn0ihW98pJFA5ufx0j
         EnaWqXISxv6nEwjrWxPWDxPEDv3ZXFcgdLLRDQbbZTUKHeu61gvgaBSf3qXBW/z+6+0a
         hYZa/dtQ244Qu+oqA4nU0UqUf726QDerKYjAZEthvhQz7vmwOBaVchxAMg1kI1Szorm2
         Z1Ew==
X-Gm-Message-State: AE9vXwNyzDAysk7PcGMC69zSC/Kk48gClW3jfuRAVBeuaDbNp2pKfy0rWup8enJTbHfw0w==
X-Received: by 10.66.119.136 with SMTP id ku8mr35168909pab.6.1474866156119;
        Sun, 25 Sep 2016 22:02:36 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.164.95])
        by smtp.gmail.com with ESMTPSA id h123sm26903282pfe.87.2016.09.25.22.02.26
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Sep 2016 22:02:35 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 26 Sep 2016 10:32:21 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: iio: light: constify attribute_group structures
Date: Mon, 26 Sep 2016 10:31:39 +0530
Message-Id: <1474866099-12282-3-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>

Check for attribute_group structures that are only stored in the
attrs filed of iio_info structure. As the attrs field of iio_info
structures is constant, so these attribute_group structures can also be
declared constant.
Done using coccinelle

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
struct iio_info x;
@@
x.attrs=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

File size before: drivers/staging/iio/light/tsl2583.o
   text	   data	    bss	    dec	    hex	filename
   6529	   1052	      0	   7581	   1d9d
drivers/staging/iio/light/tsl2583.o

File size after: drivers/staging/iio/light/tsl2583.o
   text	   data	    bss	    dec	    hex	filename
   6593	    988	      0	   7581	   1d9d
drivers/staging/iio/light/tsl2583.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/light/tsl2583.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 05b4ad4..08f1583 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -803,7 +803,7 @@ static struct attribute *sysfs_attrs_ctrl[] = {
 	NULL
 };
 
-static struct attribute_group tsl2583_attribute_group = {
+static const struct attribute_group tsl2583_attribute_group = {
 	.attrs = sysfs_attrs_ctrl,
 };
 
-- 
1.9.1


