X-GM-THRID: 6339155824535928832
X-Received: by 10.25.33.208 with SMTP id h199mr865088lfh.31.1475949730296;
        Sat, 08 Oct 2016 11:02:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.197 with SMTP id 188ls1295418wmx.0.canary; Sat, 08 Oct
 2016 11:02:09 -0700 (PDT)
X-Received: by 10.28.54.23 with SMTP id d23mr188784wma.23.1475949729767;
        Sat, 08 Oct 2016 11:02:09 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id 185si480913wmr.2.2016.10.08.11.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id i130so7700717wmg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o9MZnubLFNSR0gIHJPUi6EaMVfUM1RzjvKZpu9Fe39U=;
        b=EXUKIshh3+VMne/FkxRIrR7eGHFxsjrBW+KY5j7MDq/n7MlW5dX+bxjbfIO9UazNvo
         f5JN2A8kjU0wRpFCfDMRyJYdMZE46AGJefYbT/wBP1OOqt5kNRA6laI82vyLxTsjk195
         0ugyYLC6UFfsJb+0WU344DV5Z+PYt6ZkWI+fLNO4ae8OiDeLVVmUC7ikXcZ2Rwl5J3hh
         jQJNx+/oE9ujnGeJhHK3cztUDeCDBmMMbVGKAVeRxLezWSXdCqEPmUYmhM2tcfQD/0T6
         iZYic+6ASce/iGzJRVWEV44HujQoFaeLbToJC2mkPRV1Xk3c4/MlnEZBQbreY0wLmhNx
         HMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o9MZnubLFNSR0gIHJPUi6EaMVfUM1RzjvKZpu9Fe39U=;
        b=QJnYZX3N6S2pUjKxRQyodqsYHJ2bC27NCM8XaALNyHUCy6Mvi2xECAxq0amsWwFXrM
         lwlGYiSlDD0KVha95TJr4ysZZdEjenncHnr8eGgOAG3IyJJfQDS9chFmZ8t9dtEYiWLp
         xf1CPubCjhjSL5B8h/e96C3VvFQ/tr+SXZc31s0foJ96Ddbffld2vT1O6vBhDhomQWcm
         J2oEus//9M+AhkokBwnbM3tsGIdCxanRkySDALYCxBGq3VyAgcqyWFY+5iAtsqZi03Mf
         hu1hY54moEhyPTXUqKB+EbbVhjtOTX7d/uGSyDP2O1/CawAK4tjYKX3W9Qyhph2LKFEv
         7TuA==
X-Gm-Message-State: AA6/9RlaCVknFGqIri18aSH3rQg7WgxwlmKBzrvah/ODl8Fgr7/UbDQ1FxGdRZIqbn9t7g==
X-Received: by 10.194.142.116 with SMTP id rv20mr21568322wjb.184.1475949729574;
        Sat, 08 Oct 2016 11:02:09 -0700 (PDT)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([95.15.158.39])
        by smtp.gmail.com with ESMTPSA id g9sm26110277wjk.25.2016.10.08.11.02.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 11:02:08 -0700 (PDT)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: dgnc: Add space around '|'
Date: Sat,  8 Oct 2016 21:02:05 +0300
Message-Id: <1475949725-21669-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '|'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 953d931..9032135 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -2621,7 +2621,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 					wake_up_interruptible(&ch->ch_tun.un_flags_wait);
 				}
 
-				if (ch->ch_pun.un_flags & (UN_LOW|UN_EMPTY)) {
+				if (ch->ch_pun.un_flags & (UN_LOW | UN_EMPTY)) {
 					ch->ch_pun.un_flags &=
 						~(UN_LOW | UN_EMPTY);
 					wake_up_interruptible(&ch->ch_pun.un_flags_wait);
-- 
1.9.1


