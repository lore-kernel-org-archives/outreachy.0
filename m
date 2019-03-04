X-GM-THRID: 6664582752671629312
X-Received: by 2002:a9d:70cd:: with SMTP id w13mr11789293otj.18.1551719091534;
        Mon, 04 Mar 2019 09:04:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c05:: with SMTP id o5ls7895340otk.6.gmail; Mon, 04 Mar
 2019 09:04:51 -0800 (PST)
X-Received: by 2002:a9d:30c:: with SMTP id 12mr12189618otv.40.1551719091113;
        Mon, 04 Mar 2019 09:04:51 -0800 (PST)
Received: by 2002:aca:4ad3:0:0:0:0:0 with SMTP id x202msoia;
        Mon, 4 Mar 2019 08:42:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwrHZ1zN+p02x/uDBXyNt9nCSZzOKvOO7wstqihLwtMTM3oHmkYBGBAhXgRIl2mHjvKmA9x
X-Received: by 2002:a02:8a2f:: with SMTP id j44mr11648147jak.17.1551717758626;
        Mon, 04 Mar 2019 08:42:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551717758; cv=none;
        d=google.com; s=arc-20160816;
        b=1BC03sRvId2VDI/9XYon9H082JrAunkCCoR3heaQsLOyPie26GmAd4fBoUjIknAJnK
         Q+HjR/MQJ/t+wBQEJNHJj7NBSdmS/sSDD030+RYmreIurlvomo8ACuvhqSu9urmuAegf
         P7vebNbjV+wFL4iiF52ricHKqX5E2DIEu3x4AEI+Z+qGj//VMMy1ds17RKHVdwlT9f7x
         p5D0tERQON04ekc6pNZHITKcBAtGZwo9J4wdKHnne8CL1ZCilyzKuWgkVrPzkr9roTgC
         6Y/14OU7x82O1k0GnDQShZMlF4W4psQvjV4JVZbw0SkzWAyZDghk4eIsbN/JF9yudJYi
         cmpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eU9zuvdRjnZz677vjB1QjHzwRn3gJ5P+F7ROLfNsd34=;
        b=qzEYwzGeTC5zdCk5WDZIG1yfppqfHlUjLlBvLNzaOHwUvUIJ5YpPrBUZH4LzlXDZo0
         syYpjFPPH7OTKtVMyFMcp9tmwEGMK0dCEPSlvF+Fgo2lqq2jecyR75WLzjv+ltN9CMrz
         U6FxRMKdXIMSK9R7SW0202YINFvpHGdya+DGJ/k7imPRNDNQBcrSt4wX1hG9+P7eWdqk
         F9TKfZog8f/+uuxDYOKYz/pcmhn6QDEepr2DjBUqJ1sXVQ+Fl74jTSkdrW+hjvmHOoHa
         gJSd/ToFuQzwD9g2S5XtQzPM0eaGnWW1ww/RQCxnBYQyPhWWjDsDRgcHvbJ462DmIiMb
         fwmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ApideyAe;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id j6si447996itb.0.2019.03.04.08.42.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:42:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=ApideyAe;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551717755; bh=eU9zuvdRjnZz677vjB1QjHzwRn3gJ5P+F7ROLfNsd34=; h=From:To:Cc:Subject:Date:From:Subject; b=ApideyAetAfd7Wj+YstdrlitxcH8UuWohxrBo4cszFL523JW7Ju8cLP9TPpj2aOicDfx6UNjI8w72e/BpDnonkUGrErBpdforjtBXOIOZR8BuM5nMbWhRF0yTu++B/wGIf6jOiH/0IHold96sVMyUg4qz/iZHlH0wil3PH15wh3i6Bzpeh8QNiXKikmoBXJWYs83e8x0fOCmfNnXo9k0MwgCDXskpIIZQiYc5yDfSyUo0bEqi2woID2TztFFD4D4b8wbst8q6Rl90og5Rfle9yS0eba0J4tcw5bhiiUOHXg7+tB8uEQiHMPp8ObX+N3bCGDAjGe7hcX5L1UjC5xrhQ==
X-YMail-OSG: cctVEpYVM1lUoLjKAAjpLki.j0lbkJ2Z444zTQU4QcKOvADudQnCERw0P8DavIE
 HvJwk41Rlug3JtO8UFLUvQilUEGmN5_UE.6McMLjGaAdZ.POq0gZHk29aoZRRZf3MfbKIk.StZsR
 9tAKd5COcAfgVRZjzVqfsAo9dUEoeVz1f1sVX5rZjnJ3iRENR8GPmlbeQh7al.UzpueKeaBobPc8
 Ne7ORV_Ko.9SeWaRavg51Kxb3ZSvcVnnRLK9RcA.aUHH2oybtDw4xm3HBeQE3DU3Meh89MClwTbf
 .JUrXIhlU_RzMzO7GARMOIxmuQWXwJbkN9xuzyM8lPT2UXPC3frqAkOpexJyePPmMEVXItqLyamN
 6crBOTZ0W5liFR.kRlVHDXw_xJ4neQIfqqtoKXDODhWd1kK059_JjQda2YjkAhrdx1r3ESLa0qz6
 l7zmiDndIevYrPcMDldkWrNXsD1i0LPed8eGe4kfflFXixJ7QWidFVy.lSv6SgrqoJDwrPto3tUd
 78CRzNm8JC6S3bGLTQ4XGbUeOMfH0As.h91cVn6ZA3ewabCLmCV2o2pGLOma6jYW4uxEpreDewNH
 Squ9lsQHEOqJbJwSPuQFFyLEGm7fRVzYDJY1mGyk8Zb4FmTaULrRy388jho0r7XZ7Nbukhj_Xbr1
 TjCUAtGMYJaaBAuq1SOF29sDX3KvUgtqV2rR0OJw8fCwzaA01k5TiHrM0kDeCFu4ahlYTTs4A5XU
 R7modEC1UwPEwOaYeQB7b5M5qlUlqnILDfmOnK45rDrcOmS0GvbJp_x.KzpAzcA6OahPt8kh5XHt
 DINlHDPn27egmwU9wGoG.HjsOD59x1pSrlS.1dEjrlg_mQL6YRwKT88ell5vAZGMn2TBEpy8gsHh
 y0aGiyq8zfIN.0FS34yAfFggxhxAkCMP7Q08aqnycnPv8RGWFQGLgkYtmDqYOf8W.itGb6AkkwR9
 52Jv4i6KH1V6OXrmhtgLiRPBRacRREKC4bEc_8x3VjijdxmHeKCFOa_vtUe54itxeWxNRqhUMzqv
 0JulrKune.eBn1G4TA6lPqwUuNLQ9ogKqwxMaivPmVq6gss32XfnJga4iqB5nIlz1406y4g--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 16:42:35 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 66b3b37a5bef5065c94694021a517342;
          Mon, 04 Mar 2019 16:42:30 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] Add brackets around parameter
Date: Mon,  4 Mar 2019 22:11:49 +0530
Message-Id: <20190304164150.24466-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brackets around macro parameter gdm to avoid confusion. Issue
detected by Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/gdm724x/gdm_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
index 6e813693a766..eab5c75ee5b1 100644
--- a/drivers/staging/gdm724x/gdm_tty.c
+++ b/drivers/staging/gdm724x/gdm_tty.c
@@ -27,7 +27,7 @@
 
 #define MUX_TX_MAX_SIZE 2048
 
-#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
+#define GDM_TTY_READY(gdm) ((gdm) && (gdm)->tty_dev && (gdm)->port.count)
 
 static struct tty_driver *gdm_driver[TTY_MAX_COUNT];
 static struct gdm *gdm_table[TTY_MAX_COUNT][GDM_TTY_MINOR];
-- 
2.19.1


