X-GM-THRID: 6669274004087373824
X-Received: by 2002:a24:da44:: with SMTP id z65mr7144066itg.26.1552811359849;
        Sun, 17 Mar 2019 01:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls5245844iof.0.gmail; Sun, 17
 Mar 2019 01:29:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHAsDIAvdsFvMhRPnou8TXGifxQilzUh0sUOhWQljh9s1sQy6gEbclyAg5TVj5cIrhPh5e
X-Received: by 2002:a5e:8f0d:: with SMTP id c13mr7746723iok.37.1552811359006;
        Sun, 17 Mar 2019 01:29:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552811359; cv=none;
        d=google.com; s=arc-20160816;
        b=HauJGiujo9d3cVfigLz7keFb46ObnbJlBrOvWnbdAewukaolRU6IAEFNs6L/UoP/qV
         qXhlnpupNG7KkLKs2uKJwGm7yqs/6kcG6QKPbqWMSUWdt6KRdPcK3gymPK4AcG6zkGQH
         L9VTYYxveIvPEWF6g+PTT050jWL1DWQlPZAEmv/aKVGhbALvSgszfwEPakukNfjzow6W
         hLHBdCLmwZgDq12Hl68RPuxaa9eBriDw6cBw6b/WFfYr+/4/nPXjCSBLDz0x1qdpkNUD
         VxzZMGwlRb88y4w4CtftOSrpNajmiT5WKfcRx7By35LCQ7UyXY2zDb8P2tRa8Aw0K3LM
         9rMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xeNu/l3UMoW/OdQmWqnmK76GbjcneRW8HepZkH2JK5o=;
        b=ilqMtyk2anUvlLa6llX8okxWvFV6/lcoCFrhD7LjHK6yQmeFJoWTXyzF8ES+Rue3/f
         1C/Ti+FhJtqV+fkTwSqnJwYLyY8kXm7yZbwPxUC5F5ztwwowXlN7uIqQKeT+424sbvRn
         3XulOXb8gaiKv9erKVxFjMRpprFMP/ugrzAjmkEpTZa5YuDkXRj3lVn7a4djIfDtrSGD
         uk9ZnFELzMu2Hditi9FwHBq70yCcMvsOPpC7IxcfsWMjKH/4dsN8H5V4EybvnztSZDnJ
         MA/xwa3/9kdqy6Xi+v+G1HABfkWfunVYHY3sw80/1wHYBV7JmBR10yG0BiBREMaw0PAa
         uKVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l6rGH1ai;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f13si354704iok.3.2019.03.17.01.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l6rGH1ai;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id p10so2387380pff.3
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 01:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xeNu/l3UMoW/OdQmWqnmK76GbjcneRW8HepZkH2JK5o=;
        b=l6rGH1airpMmVoxTHxtevrvBHdta3P9YRexHmfewIKVYo5zg1g5i4Vnla8qECIW42R
         blVLoVeMdXsDoZW0IVVDOWhQQAQh1Vanaq7OWlQP/sSSZjU7c852lX8bhLgNM2E0ayVP
         vK77VbnM04Z6hQN0lGdgiVZHSLNKTmad7lDzIiaAAlEhGf4+zOaRGxQs/htUlATENYCz
         +Iq2wehosPd2kFCJgTNHMc7nxwrXU6Vv+tbemPJP4v7vDgejO0xAASSn1NOrPwOqGCqT
         h8SeC1NjU5ve6V0mlQP+FAq+szrgudNo7YMVnAoqOVVYhUmUSX3HE/3JP0CYQLTCnf/R
         7w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xeNu/l3UMoW/OdQmWqnmK76GbjcneRW8HepZkH2JK5o=;
        b=NdbQW/0yO85UgP3MHm+sXLyHO+QaAvGqJFbBk2vygwmLqmx8DB2gXVxnQH0Y0e4mmu
         WrDs24quViNr545HAbZ00blTNtQwQ0pi0GPQ8GxXCkPpwJ+S2cXQ0ggmW43/C70/4R3T
         70jiKrNjuxd4/vBEn+DbM5fbHhUQZxuZfXwkRNehwREYftjABS3/4DNlTZjJSkmJcfaC
         jqZTRIczOwObGzEY9u+iidJfJUzrfdzFmS9NeU5rBLchLDPB8aL6KWs6EgGOjzXZc8uJ
         j4RtIKQEXSru0sFapRgf5APjgPSymsTqVFreVHLn1iTc3avJgj2yJHnOj6tMGl5wHroR
         GC6A==
X-Gm-Message-State: APjAAAU11Q/wBJZyF/Fv13beGWtiv/lae476WgN5Gvig9h4w5gy6G8Ik
	WnAJ1e0ouWxQTUiBvyrDJm8e17yB7ss=
X-Received: by 2002:a62:e11a:: with SMTP id q26mr12976921pfh.187.1552811358437;
        Sun, 17 Mar 2019 01:29:18 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.60])
        by smtp.googlemail.com with ESMTPSA id z6sm29060304pgo.31.2019.03.17.01.29.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:29:17 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sound: drivers: aloop.c: fix usage of '=' in 'if' condition.
Date: Sun, 17 Mar 2019 13:59:08 +0530
Message-Id: <20190317082908.3246-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

fix usage of assignment operator '=' in if condition. Converted it into
'=='. Issue found by checkpatch.pl semantic patch results for
aloop.c.

ERROR: Dont use assignment operator in if condition.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 sound/drivers/mtpav.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/drivers/mtpav.c b/sound/drivers/mtpav.c
index 547662e02fcc..6e490ba50e83 100644
--- a/sound/drivers/mtpav.c
+++ b/sound/drivers/mtpav.c
@@ -583,7 +583,7 @@ static irqreturn_t snd_mtpav_irqh(int irq, void *dev_id)
  */
 static int snd_mtpav_get_ISA(struct mtpav *mcard)
 {
-	if ((mcard->res_port = request_region(port, 3, "MotuMTPAV MIDI")) == NULL) {
+	if ((mcard->res_port == request_region(port, 3, "MotuMTPAV MIDI")) == NULL) {
 		snd_printk(KERN_ERR "MTVAP port 0x%lx is busy\n", port);
 		return -EBUSY;
 	}
@@ -645,7 +645,7 @@ static int snd_mtpav_get_RAWMIDI(struct mtpav *mcard)
 		hwports = 8;
 	mcard->num_ports = hwports;
 
-	if ((rval = snd_rawmidi_new(mcard->card, "MotuMIDI", 0,
+	if ((rval == snd_rawmidi_new(mcard->card, "MotuMIDI", 0,
 				    mcard->num_ports * 2 + MTPAV_PIDX_BROADCAST + 1,
 				    mcard->num_ports * 2 + MTPAV_PIDX_BROADCAST + 1,
 				    &mcard->rmidi)) < 0)
-- 
2.17.1


