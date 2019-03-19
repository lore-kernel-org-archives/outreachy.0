X-GM-THRID: 6667786089217916928
X-Received: by 2002:a6b:6f0e:: with SMTP id k14mr1448375ioc.11.1552993251890;
        Tue, 19 Mar 2019 04:00:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cd39:: with SMTP id h25ls1589039jaq.1.gmail; Tue, 19 Mar
 2019 04:00:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGX9Br45miVqmv5+/t7TI1MqPRy7McWBUM05i8i62xoFmlA13aSaStN4maLuolTJU0CrYE
X-Received: by 2002:a02:449:: with SMTP id 70mr12992551jab.15.1552993251125;
        Tue, 19 Mar 2019 04:00:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552993251; cv=none;
        d=google.com; s=arc-20160816;
        b=fil/7H/iYElKt9H6duwp2M390OJFnaDMtzXcK7E7XCcOt56peKK/Xovg3dllPfbcAU
         qYJxt2Q4kvpvtjYYh3ZjDShP9caigtKxyXVNppXAdoDlws+Z4h89gx30jvY5HPhh5P0a
         64+7dOmeKzUEJMm2Ip8QB2qUWOvEipax2wE/SiMeg9laKaQiht7s2Ad4L0AXUt6m2NAF
         7MDimeR/Z6kRQbmB/PJ10QRmIbWdxOIFSoQM41pLRRJ7KU2ZkcZLRSI5HlSmwLm4BnTa
         E9TAOxeF2Q3B/IVRybRWYPyqJj/tWfRISaE5SqU8SwI29/KWpS2xNxPoE2FA3e0xW1/3
         qEJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8nh47vAJunaE0QXo38cRlvtoJiD/5uG0tZ9qk6WjCkI=;
        b=0ePkNjaTvHZKqfdxHJlOu1fQXa5vfnJoA/MSFmwA/e7le9qeTSQVTrREYnC8y1dPf3
         H+ZE86UZgd9K4lqOmk4OFzaDIggyzKZq4Qk7wgkbH3DSq1ZZEvLS9vLS22GlJlRQaub5
         Z/BiKQRvHC9eTkwvMSG1LYpbCESKWqsI4Kby7Nj4zM17HmSuH/j2xteNmQC+kJJrFarW
         Zc260fqg5uUAeUm16cPP+aoJQGrQ167kCVPePfVYGZC9M53EEiEtlcHmxjcixe8CdMNF
         8G/tqPaZ0MSioRL4OXd8msFElYxLT9WXLk3uakSjQVYCn/XzH/81PxA/8TSdw4MsbAK0
         P8Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KhHsQ4HN;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id f13si704119iok.3.2019.03.19.04.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 04:00:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KhHsQ4HN;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x531.google.com with SMTP id q206so13595352pgq.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 04:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8nh47vAJunaE0QXo38cRlvtoJiD/5uG0tZ9qk6WjCkI=;
        b=KhHsQ4HNjC/ZoiB8yxlyQbNDYWcqVjFTd73T6ww2GfJ8+skosYGt93W/3FVYGO+ow4
         1t/BaRJAGTIrgphMy6OUwqXug8kZouaFpBmQRsRAh5HpuLW9KzQVOeZd3qv+Ek7CIYia
         aJqz5NkkwPqiDAKMYdCgGo/bErBwQpwvHPIS2mDGDU+0Dgm4Y6D1i0YG7Bh3laB8trV6
         IpJFLaipT8vnSqG26bgEv1EFR/NoszlobFHEQqO3r/LUDs309XWcF9B1BFvhEoR+OQiR
         NzlIbUxaPOwXIwgdMQdfZSiFwl09f3Rc+K6w2QrCjTwnXB8UWOsrmO84q3QLrHxlkxfI
         uMyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8nh47vAJunaE0QXo38cRlvtoJiD/5uG0tZ9qk6WjCkI=;
        b=I7vVJ3F/qgS4gSuw+f4K7Jz4H/OL6hTS3sakMVpaKSEKTYn4jZ3uqYHMiBg++LlkI+
         LfgG+5WbMkctHaIo1m6STaEjfVG+PxDfbGbm4S6wGKD2J8wg2+JF9ib3XzwZeh1xNcrk
         Y0R2NFQRVRaiSmS9mP/FoP/P+r3C+m9ARen2GhguRCp+FaKPbgAriSaUH1fZ+AzMJ9au
         LeZT0nL4qQxp1REWZ1ergbqvC0IhtmT5ejd6/Hw/yBBvjRg3ICHdW1k2vLGkb23T9KEy
         JHC4ZYRNW8GyurzgZAFnX2jOYZa5x9J/F+1OmKzJZI3Sz7oJjaDCG78R+x50niq0wds0
         vKEA==
X-Gm-Message-State: APjAAAUf7SMhlC2vJkA+9yMmXpUypj3jbaMSUbE/+jFe5aKjGKOZgwC1
	q7X9dilAa7HpzUoJ64VPicAIsGBbAZ4=
X-Received: by 2002:a63:4247:: with SMTP id p68mr1256130pga.30.1552993250763;
        Tue, 19 Mar 2019 04:00:50 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2487:6a1:cc39:aeea:69fa:1946])
        by smtp.googlemail.com with ESMTPSA id k83sm20826502pfj.178.2019.03.19.04.00.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Mar 2019 04:00:50 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v7 2/2] staging: fbtft: ternary statement to if statement.
Date: Tue, 19 Mar 2019 16:30:37 +0530
Message-Id: <1552993237-4231-2-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1552993237-4231-1-git-send-email-digholebhagyashri@gmail.com>
References: <1552993237-4231-1-git-send-email-digholebhagyashri@gmail.com>

Convert a ternary statement into a if statement which is detected while
resolving "WARNING: line over 80 characters". Use BIT() macro instead
manually left shifting.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v7:
  - Use BIT() macro for left shifting.

Changes in v6:
  - Drop some invalid changes.

Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1306.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..6cf9df5 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				if (vmem16[(y * 8 + i) * xres + x])
+					*buf |= BIT(i);
 			buf++;
 		}
 	}
-- 
2.7.4


