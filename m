X-GM-THRID: 6250422711327129600
X-Received: by 10.67.1.205 with SMTP id bi13mr1714299pad.39.1455289956378;
        Fri, 12 Feb 2016 07:12:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.205 with SMTP id p74ls818595ioi.11.gmail; Fri, 12 Feb
 2016 07:12:36 -0800 (PST)
X-Received: by 10.66.193.131 with SMTP id ho3mr1834933pac.42.1455289956036;
        Fri, 12 Feb 2016 07:12:36 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id u66si1636807pfa.2.2016.02.12.07.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:12:36 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so3931920pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+Kx62HdEPOkjKSETxpL3ChtylkgWnfHioAt2Yk6HlPA=;
        b=JxJUHAKSvXpM2saEpBxMSoHoF3oT7XjGfWD9PnD7R4qWXBtl90cxGZ8yz6juHYh84g
         dWgR5tXFqtBxYKos+Nwu4ut0zmF/vX408NaXvAjoLPkl17QLybGPgI3xWP4lf+xmq7Mc
         vZ2MhKdzo5mio5keKbAysmO92N5H427k+4DqH5zdCMAVILH+TZqUFklcS+F4yPAAY+gQ
         awq53cO2uznplGMZUFMLegKD84JwZSy27xQvSuz8/lMHaWp/CY+D7DO2fICHVmNEqiaE
         7ypC8Q1E+N3OnW0QUEdFk2OcxEZStFe2xTJ7VkwN1mkCAL6ePJ0vrxGEzeRNWutDNGHN
         bFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+Kx62HdEPOkjKSETxpL3ChtylkgWnfHioAt2Yk6HlPA=;
        b=ZvXmuY+TO10w8BUHzcbpe6BrgugDNMaUAhZaaXlzK2lL2xSRKjaYmj54GJLKZkQg6N
         +cihi8SD2FAjnumUfp1E4eT3l3bCTCkaIO1/9JBQ/BT4nkroYWFVmbZSBZ88rsfXO9id
         2QdTA711Cqc/9TlwyOmJZPsy3x3rRckABv8XC50pgwaDi7Z9jDQNjvdpXqNANMAdjSEm
         IP2ECALOAJZ9qptExhu/dJ+WXzXte3u3arZ5/RvayAqMcTPMXbh3GYvzU/vaz3nhkKWp
         6koEfCovseQMBYjvs1inU69j4UcWQeU75jwmMeF+X8+Ya1jffZUNo0PGvtKlU/L1OlA2
         ONfA==
X-Gm-Message-State: AG10YOTlMiXsl4jpS0xVvW1er/ejlDuc95gmnAbRs/Jy7jkp7k3z1LkdIUHNa3q3YkSJ+Q==
X-Received: by 10.67.3.132 with SMTP id bw4mr2803389pad.85.1455289955929;
        Fri, 12 Feb 2016 07:12:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.165.202])
        by smtp.gmail.com with ESMTPSA id u64sm20169472pfa.86.2016.02.12.07.12.32
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 07:12:35 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 20:42:26 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/3] Staging: iio: light: remove exceptional & on function name
Date: Fri, 12 Feb 2016 20:40:27 +0530
Message-Id: <85ba7d534ea2ec24dccd49cda3814a6a7677cfff.1455289270.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455289270.git.bhumirks@gmail.com>
References: <cover.1455289270.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455289270.git.bhumirks@gmail.com>
References: <cover.1455289270.git.bhumirks@gmail.com>

In this file,function names are otherwise used as pointers without &.
Found using coccinelle.
// <smpl>
@r@
identifier f;
@@

f(...) { ... }
@@
identifier r.f;
@@

- &f
+ f
// </smpl>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/light/isl29018.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/light/isl29018.c b/drivers/staging/iio/light/isl29018.c
index bbf7e35..756057c 100644
--- a/drivers/staging/iio/light/isl29018.c
+++ b/drivers/staging/iio/light/isl29018.c
@@ -614,15 +614,15 @@ static int isl29018_chip_init(struct isl29018_chip *chip)
 static const struct iio_info isl29018_info = {
 	.attrs = &isl29018_group,
 	.driver_module = THIS_MODULE,
-	.read_raw = &isl29018_read_raw,
-	.write_raw = &isl29018_write_raw,
+	.read_raw = isl29018_read_raw,
+	.write_raw = isl29018_write_raw,
 };
 
 static const struct iio_info isl29023_info = {
 	.attrs = &isl29023_group,
 	.driver_module = THIS_MODULE,
-	.read_raw = &isl29018_read_raw,
-	.write_raw = &isl29018_write_raw,
+	.read_raw = isl29018_read_raw,
+	.write_raw = isl29018_write_raw,
 };
 
 static bool is_volatile_reg(struct device *dev, unsigned int reg)
-- 
1.9.1


