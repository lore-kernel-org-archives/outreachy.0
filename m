X-GM-THRID: 6252584121027002368
X-Received: by 10.140.246.3 with SMTP id r3mr6295608qhc.2.1455793194621;
        Thu, 18 Feb 2016 02:59:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.18 with SMTP id p18ls4768144qge.86.gmail; Thu, 18 Feb
 2016 02:59:53 -0800 (PST)
X-Received: by 10.31.151.21 with SMTP id z21mr6236142vkd.7.1455793193957;
        Thu, 18 Feb 2016 02:59:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si892682pfb.1.2016.02.18.02.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:53 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so1860777pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OTDIEV3NclzXVyYgtaEXXNCtFDymUnJrbDT6N6kZ3rk=;
        b=FowGnSK2QVFZxVvRfJhScSofD2xPhMgT1Nipjscut5bpaWizNe1md3TPS6UKABxLFW
         BbEhyKGhJi6quOecXZ4vtuXmXhTsb2PP2HX9M7+wPVNMmp29Fm++Y58S60X0NRyllsmd
         pHThYc/PgL+xIkOsW+osZROnCGDoA/gqBZLK6NDnfcCXeHlYlR7cIGzH9Wa+CbbiRR0H
         0CMGmbMKgZraWokrCy3W/w4MhtKtrw26yPk9cuaOr2KDHmf52lEfuyFg1T/LhXolvmuL
         IppJ2pZUz3qbHKlbbECMob50QLaB4omYrLEoDy9XKLPHKosT7Jdz6wGFSfZvgQXq6TE0
         AfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OTDIEV3NclzXVyYgtaEXXNCtFDymUnJrbDT6N6kZ3rk=;
        b=kokNo30lq121QbAyT+1XFPCEFKcVenKw7NFJJzr96nxWAdGXcHMWGxQij9Y+eMtOWA
         ID/B7kb2GDkqYy5l+jnZjyO4i7I2AsoAi0AKwyKYvbVFJxn2Aw8s4XH3QxPKa3JmJrsR
         mjot4hRxvDkWu5ozL+vjvwNZZiljUflmw9naKILqHG9fTdGHG0eqVa1aOrHWid4rJ95q
         c/TR3D+BiZ0eYkekkgqpYvCpPqGXVgVDjjtsxqRnVJZqXKgrMe82zhLhlQqy6QGKQhqI
         V5MNQSW2RLXn4pvDUay1LNKm76tbUxdCKnjpkGHcipzcMbhuX97Whvs0pKg/cjbLY0Rq
         +uGg==
X-Gm-Message-State: AG10YORdVxDw3Tp9BiUyaR0ezIecruXkHId872APtVXqw1Qw8d8IrPyb+nAbnHknoGYi8w==
X-Received: by 10.66.189.165 with SMTP id gj5mr9132521pac.157.1455793193825;
        Thu, 18 Feb 2016 02:59:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id s21sm9397445pfi.29.2016.02.18.02.59.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:53 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 3/7] staging: iio: resolver: use blank line after array declaration
Date: Thu, 18 Feb 2016 18:59:35 +0800
Message-Id: <1455793179-2674-4-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Add a blank line after array declaration. This clears the checkpatch
check:

CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index f2a3463..4cf5e41 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -98,6 +98,7 @@ static const int ad2s1210_mode_vals[4][2] = {
 	[MOD_VEL] = { 0, 1 },
 	[MOD_CONFIG] = { 1, 0 },
 };
+
 static inline void ad2s1210_set_mode(enum ad2s1210_mode mode,
 				     struct ad2s1210_state *st)
 {
-- 
1.9.1


