X-GM-THRID: 6659803062561931264
X-Received: by 2002:a24:78c:: with SMTP id f134mr4481012itf.30.1550638667608;
        Tue, 19 Feb 2019 20:57:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:820d:: with SMTP id o13ls6299791jag.0.gmail; Tue, 19 Feb
 2019 20:57:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZNiJ7/TvDAK9towF0m/UZqNTnuRUNsTF/Nmn5nf3PQBH/Ffc2wqJ9ekxhqJ7k7rUtg8sE5
X-Received: by 2002:a02:9c16:: with SMTP id q22mr19167355jak.13.1550638666791;
        Tue, 19 Feb 2019 20:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550638666; cv=none;
        d=google.com; s=arc-20160816;
        b=bQfUCBllOLDdjHtX79QeRWZotQ6aADzqKlP+AWyLwlwbJNEuDS7N1HhMR3oVQLC1CR
         Xp8jyIBrgrNqcIN9cd7IgeJxJANxWTQtMDlCup1JzuZAkdriEtM/1mi21HIDoDeUjntz
         smWDYOnKeAUDbf+KZyY2scZ58EevC3MqgFPWAQLWA8AhbkZoQg+5htne4b8bvAnNfJXq
         P81+Okt6LGmsCWYLeMthLsX1n7cIl6oIuC+HFnjt82Q4tc86akuJKTWE++sBlllwuX7B
         EBcdfv3wEUv6FaJ4L22ImlTkZxV+s4B4KCeEyFHBcW3MXrD9eL3ylZIDG6j2qA6QqO4x
         u6DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nDMu6OK0MInrkae0hycnYcQnEJFnV8QwXJMu7OfVILA=;
        b=Hp9ujtARCeRGj/H7XwJyN8qPy7zfTkA4Mkf2kFWxpOf/SRfYlLZOPnawhaWfH+S2t9
         KuCpK7KShhzHyZmOcry77DIqNT71rsyMqduwcRMZucoG0KMfGHGp7RbfrxcIS8evu5XT
         YXCYcfYEGmCUGdc2T3Ai9YTnL2Z3Ncn0JOKn6i95YZBvAHQ5WqB9ChBQOvLuwjRpF52N
         oLH6H7Jl4iQiow23T0J4e9L0tjBz6OMvVHSAwNxYSLcfGpsaCE21SFWL+ydbQ3LVOHz2
         FeX1JhIrT9wSDtqGsKRWFxt2YAZPTy8+hajtwBxxgc7CKPB9js6Jpfwhx2CsXw1lnY53
         vnMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9NnXByN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d127si1045225iof.1.2019.02.19.20.57.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 20:57:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9NnXByN;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c123so11317142pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 20:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nDMu6OK0MInrkae0hycnYcQnEJFnV8QwXJMu7OfVILA=;
        b=N9NnXByN577mz5oiHYHvUcMNE+6KW8kqtEZXDgD4qDxNgs4sWAAOO/9SjPP0sunlOZ
         KVjuC8AG1Eo8Q0reiliGD1ZkxphOq+JTmtvMr8Wu1yom14NYYjXpi8V1k8lachjzO1Jf
         n87ffqnoyle9pSVpsTXp5NzEWYpyUNzQgGEXceouGjMXpieyuizPt6i4qvDoYPeLzJRQ
         ewLWv9ItIxzA9MhmQGM74PIPkeU7uKdKfv3sAXyakQ9QRzztZRlzBcUOkUEf3n35ZQA/
         tAH2XxnPLiacCykIBvnW1rGcP4YV09ReZyN0mbO1q2uMZ2eBtfu1vqGZJlkjR/CNh1ip
         E9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nDMu6OK0MInrkae0hycnYcQnEJFnV8QwXJMu7OfVILA=;
        b=cfAlM9KQcB00UuWA4b8OPAXA4GpYIPGvDbkbYl60CZxmyApZZGeqRmoqfD7FxlUCNv
         9I5u03e6wg6sAuKfcyaVtA1YfbKqx176kJ2klIUEdHWRIH6POI69Fyr419S0gwHt6nxc
         /7h9+K455K+R4WYxT28FZsRLmZOxiNB3rFySNG8QwrwKUMkP+oHtQbHNPaAbhZdzbqS/
         a80E4+ZJLEti602e0VwiVW8XxbArv42B7iVVk/6kV2eVUNFOReSWb7iF1m7MG0BJATvd
         XvV9u4mNiPvPaMS5K/9kaeCI83//S5v7z02BAt4eBqLRxulGOC+VAWtvUQl7JykdY5nM
         FDTw==
X-Gm-Message-State: AHQUAuYvDmVuk4+Z1f2Rj4ftnz4/L4N49sYVDAewuDjeNnYyAQYsjTp3
	rVZexGNyaYPEqtIXNT7+QVc=
X-Received: by 2002:a63:f553:: with SMTP id e19mr26886426pgk.87.1550638666084;
        Tue, 19 Feb 2019 20:57:46 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id j6sm19630634pgq.33.2019.02.19.20.57.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 20:57:45 -0800 (PST)
Date: Wed, 20 Feb 2019 10:27:42 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] Staging: rts5208: Fix Avoid Camel Case - style
Message-ID: <20190220045742.GA19927@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fixes Avoid Camel Case for various Macros to maintain the style.
Issue found with checkpatch.pl
All the occurances of the macros are modified.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index c5ee04ecd1c9..1187c75d764a 100644
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
2.17.1


