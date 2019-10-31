X-GM-THRID: 6753034664415330304
X-Received: by 2002:a05:6830:20d2:: with SMTP id z18mr1240356otq.297.1572563003417;
        Thu, 31 Oct 2019 16:03:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d5d6:: with SMTP id m205ls919255oig.6.gmail; Thu, 31 Oct
 2019 16:03:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUJoOJVIsLfFXTWh+4L1kK+Iax9dL5HTVQKGIyqzTIz/WoZnKMasNs7UidtGXRpwzdqicn
X-Received: by 2002:aca:ecd0:: with SMTP id k199mr6303926oih.166.1572563002737;
        Thu, 31 Oct 2019 16:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572563002; cv=none;
        d=google.com; s=arc-20160816;
        b=x84r94xzMtbzkoMQ6fA7c+j/6QlzuWbX925RjQCvk8Yzr7/nV0HdAgOReEpqJvNra1
         hbgLZvN9Hv9C9/S77z21PQkjj8bY2s0uZR9aopxaC3MhyVLvLXxk21wyA8iFgZ6FXyYs
         izsRRBnCjVkexLqLDHa71F9G6e0Vn1neD6m2J+PhMXaQs32dx/nmmCSZwGAihqkvlO1u
         7kNL3yYhrkQLaTF9LVqNwp9tWZF5BzUe+QiGsKO3huLKYw9/E6UNwqF5tvCDBi/XVOas
         EiBrnbltKi4SL6mPq5lPUw5msQ2pG4tWiNKOFYWvITA25OdTKJFCau3Dny7+s4LdRG/N
         uWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QzRITthHa6LggIeQu+O+FQbDuXS83uUpJUnnNNtWNV8=;
        b=03BjHaKH0s8YPXtH75EZJMOwVl0MFbD5MHoFTzFtAaSaGqjqRG3vW72/fJkdJAitDX
         qWLE32l2Jdo/OwKVotDGFg5xw8YIA5+6HEx9UeBVGXUpu55suqlXG97O2tn4cTy45Gvi
         8meCHaHXRRTXllKS5pILHEaXfrRboW2IWRgnm/V1eBwPByD7Hb5bjC6wt+3i8JwpsJMq
         G/7pTjwhfMu4f7EUUea+1x6CXvdQAokG4CTTnd2TYfksREf1pQlm8WE+blsqICxmTYf2
         G/BX5EjacdS+DOPr+TNxG0KvXU0HMVcVaFbFKitMzJVkZ5wGUyUeYd0/09TUaZ/7U5DZ
         dc/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7uWKCWt;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id c19si336357oto.3.2019.10.31.16.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 16:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7uWKCWt;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id t26so10764568qtr.5
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 16:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QzRITthHa6LggIeQu+O+FQbDuXS83uUpJUnnNNtWNV8=;
        b=e7uWKCWtFxcM7BHBQtZ+C7zNpjqfWuED1f0/XihIOgQbRJ8a6+hmIt87t7F82xbYMM
         P1x4YKmbiGDtetWjr9tkjVkRAqOgFLFAeoMnCIuqoAd08ztnCzaGmQwPFAMZ+qzdPUg3
         rRHwBZuHaqqZHxiUWRWXm8lPqON3rOVYnCsHOW+0A4vR2K5vUks8DXTg8NSRXUM8TtdH
         up3epXh0ydw5RbxhG4Fj+afpz3AU0P/JBOPLxNgm+Sm55C+5dlnxCJmXqEMr+II/ICrj
         E7/ab0Mlj0NLmUeeTWHEtQeBaeuVQPfhAls/n7EE7fQHp1X7onExFSItS5lU+Waaxt/5
         N8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QzRITthHa6LggIeQu+O+FQbDuXS83uUpJUnnNNtWNV8=;
        b=Oqe+FL4RDis/1w3j/lVYdDJ5Azm28nRCMhN0+pUzoEmEQtIwr2mW/aQm0Q2eCvceLz
         5oQQ7B6edo98ubc9wacJe6mGFpE2tSNp5Qd7rTiR37p5kxbPbV1YYwZr56VHgrbVZbdr
         X5DeQEjVy4P+V+2CngsufoEz+rz8G4Vr/7YN5VIqfuByZR/kaao+bgemrQ4dxfziIzPp
         ht4uTsm1nfQdgSwrqFKTPKRfOcQPQ5ldC5GZJPCVdsPg+cEEBLS+IOq807gVsuOQgTYH
         WfYCkTVKDWxJdlXnge/izV/NqL/Iwv+hhvdTDsHnOb310gqpKnKrpKbf8+hDm31uuUhx
         7d7Q==
X-Gm-Message-State: APjAAAVwvSyaLkIoM4C/lsVf+cFlsYD2OgQbSFRP0QCn5tIIOoR35zkB
	51YjLn58yWAd85OnxnpN3ZJvBcEbWRk=
X-Received: by 2002:ad4:5447:: with SMTP id h7mr7201009qvt.188.1572563002063;
        Thu, 31 Oct 2019 16:03:22 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id s67sm2633875qkh.70.2019.10.31.16.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 16:03:21 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: [PATCH v4 2/3] staging: rts5208: Eliminate the use of Camel Case in files xd.{h,c}
Date: Thu, 31 Oct 2019 20:02:42 -0300
Message-Id: <20191031230243.3462-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
References: <20191031230243.3462-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in files xd.{h,c}

Acked-by: Julia Lawall <julia.lawall@lip6.fr>
Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a4c59d..0f369935fb6c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 57b94129b26f..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
-- 
2.20.1


