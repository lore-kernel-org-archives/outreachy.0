X-GM-THRID: 6250422711327129600
X-Received: by 10.50.56.19 with SMTP id w19mr3862363igp.13.1455289971274;
        Fri, 12 Feb 2016 07:12:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.37 with SMTP id j37ls939100iod.32.gmail; Fri, 12 Feb
 2016 07:12:50 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr1851926pfa.2.1455289970915;
        Fri, 12 Feb 2016 07:12:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 12si1394174pfb.1.2016.02.12.07.12.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:12:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id c10so4102765pfc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/qtQGL7Y8by2IE7zRXi92BrFxvexNFmmY5bS387x9uU=;
        b=LsuCqVJgNH5krNoY4hgcqsn0f/u5VUeROnMDqybJ6E7xfSQzv3ggZ2el4LD7+7oNvr
         2QzfdiTW5BAUnFvqG/CKGjwOCxzqTgBS6xijsBb5OUZ1n7zRpTYuFKpd8BWzkAmNy9qy
         h48r3adTSa8O2aIaDQyc70haMUqRCjauEiIWC5bViScxdHeGnKVPbuAy1mtM4ZYBP2Lm
         A81HDWE6PrgINDVZvjHocRdXl8c3/vGait3SRJP9AP1ZBeXB0coMwExEmZOwzNiurqUi
         xD27hmeH6k6VgYI6tExuBEltPG3KWJH778ZPBkDKW2p5qoYWhd+52LD4pBosoaNNYFaD
         nELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/qtQGL7Y8by2IE7zRXi92BrFxvexNFmmY5bS387x9uU=;
        b=VdEtkM0V5vT7/w4thVKc2UMGVCySBx66vtefyvuLm/BELBCJFkMljY+NH0RokRr6uQ
         RZXVwlNb6oqW2HOvID9vchmhBNR/8L4GDepDUsjR+3mbSfdrGqHcrzbX93d7j/q8RTxi
         3iB6Xj5ILFDD4PWPgRGfLrgEp+tH7OQ2zobPhtna3uEVehAGjSE4ej0JrYTUJlr50B2U
         RSsnmxdG/ZdEbT3XPSwlv17l/N2wfTO8Vzg3FJDjWK1mNpJpWCEc9l/CJC5aOHAiVzNi
         xuoaRR01KypttBKifBf1AdtpidERvZsmh9CkKvtGz5+gsHbkZVr0vpLu7NzM/aTnMQ60
         toag==
X-Gm-Message-State: AG10YOR7FvZlz4v2dVfU0gLtjnPgcPi1mn/DkUCom70K9aGRSQVDFXJq7wM5DEvhNU3Gnw==
X-Received: by 10.98.67.67 with SMTP id q64mr2948682pfa.44.1455289970818;
        Fri, 12 Feb 2016 07:12:50 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.165.202])
        by smtp.gmail.com with ESMTPSA id 76sm20174962pft.44.2016.02.12.07.12.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 07:12:50 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 20:42:41 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/3] Staging: iio: light: remove exceptional & on function name
Date: Fri, 12 Feb 2016 20:40:28 +0530
Message-Id: <023904d49df853fab390b7175c9bd372b0b1fa26.1455289270.git.bhumirks@gmail.com>
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
 drivers/staging/iio/light/isl29028.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/light/isl29028.c b/drivers/staging/iio/light/isl29028.c
index 32ae112..e1bca9c 100644
--- a/drivers/staging/iio/light/isl29028.c
+++ b/drivers/staging/iio/light/isl29028.c
@@ -406,8 +406,8 @@ static const struct iio_chan_spec isl29028_channels[] = {
 static const struct iio_info isl29028_info = {
 	.attrs = &isl29108_group,
 	.driver_module = THIS_MODULE,
-	.read_raw = &isl29028_read_raw,
-	.write_raw = &isl29028_write_raw,
+	.read_raw = isl29028_read_raw,
+	.write_raw = isl29028_write_raw,
 };
 
 static int isl29028_chip_init(struct isl29028_chip *chip)
-- 
1.9.1


