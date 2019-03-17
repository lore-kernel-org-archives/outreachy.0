X-GM-THRID: 6669330275448651776
X-Received: by 2002:a81:2ecf:: with SMTP id u198mr6423811ywu.10.1552824460944;
        Sun, 17 Mar 2019 05:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls3013082yba.2.gmail; Sun, 17 Mar
 2019 05:07:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxhnFs0VudbMQeg/dwTVOFQUKsGhQRyh/Om0y+D2fuArJIUQY03ajiooBC3TA52m5A5IVpx
X-Received: by 2002:a25:bf92:: with SMTP id l18mr6269833ybk.103.1552824460280;
        Sun, 17 Mar 2019 05:07:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552824460; cv=none;
        d=google.com; s=arc-20160816;
        b=VfGlOqsy3LRlLXfGST2WVGRr6oIfbP4slgAOaOQy9t4E5jHK5PHNFYZQlmbyAj5HVS
         vI3umgvWhFLxXW26Tu98vmmZB98S3HoDwtAw9Nei2DkSvGSL+763XHnuxMqe7fVHr0j/
         RGBcUuuJxMlP+6g1yT31fUssSTTB0K53uACd7fuyWf3B6+BYST8sIV9iBgupspnBp9S+
         Apls/X7NvSUNx7aGix2cscNS2PmeubXJVxB6LZkmpX6PQS3FNC+aa6sjKPg9eX79h/0O
         jOb41EuPO94F9YOkixw5TNo8nw1IMjn1WflufdDvjQ7FmXSUbCRAbbra0lIlK5ZmOYyY
         C5fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2XZHoQUGM6F8+sSh+QFUason3iahyappEVyXuHCyEjc=;
        b=LqvlQAvEF3CV0A34VIvq/S4cUcg9YHALn4usoptGE9uO6AvJNU2GTNSb+FIvUnnSMc
         IoBuhpfuhDdRydNPA/rJRHg4EwnYU5YQxDjjZ3pULUMugsO7cH89TdmLsLbz4YIocnYl
         Kl046gYqsipOV0sD0Nttld8f5XyYEIDD9lXaqLbQ+3pyX4m8wf+878Yao0fIK/IBMdWe
         AzVP4a54h1TM4GRQ0OVJY0aRg7C5XnddYJ8lh2N2ZSD73CTtKH0ZkcmBQPBZs8dPw5ll
         52x11d0SUdjiV+ltkhG4xanQBxNTUjY3zQl+1ss7hAsVbVCO4akxXp2g2SOB8bDRaaOk
         COUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IE/TniBy";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t128si333331ywa.4.2019.03.17.05.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IE/TniBy";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id a22so9437165pgg.13
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 05:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2XZHoQUGM6F8+sSh+QFUason3iahyappEVyXuHCyEjc=;
        b=IE/TniByNsw2LiqOr6F+zGIkjH4IshFe3ds9zOjuosYRirE9+lBydS3FCLjjL1LcJk
         n5umkzr8i1OLqKgzyUtc1lOcuVzQ3thCZbQzUI915HKbIRJ72YKeyAVj/u4QEQp+0n4h
         MJXDCpcEL9mVI3JNPvsnbC7st8GugvVGMoHCd9f0UVioCbQJpdFRvpOZMSStwPdBvpCR
         DThG0fo6th21m0deWKqBSOJdI9uDhcbdeAh8wsqGM91ptJgwQvmFE9hmaX7535VVK64Q
         Wjvg4AAGaHqUNBySZl28+cYFOYh0ePngqmolKCH5P4byW+4R7vCrzznxPhVqTJQegFq7
         i8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2XZHoQUGM6F8+sSh+QFUason3iahyappEVyXuHCyEjc=;
        b=uEiWBsC7E2q8nTVYVuqOFvL7RTnQTjCpstTVJhivrvSNeCUcDBZQ9kSYrNQRYAuC5Y
         ubOK0UsDELi2/sh4qZSCkS3UYrLSoiHdq8fQwFU7NgD71ph5/OR2xfWzoSVHFRy629+T
         op+dx9Ecu7eAiq2HTc19yT/trPG8SiKk2JTu7nsZgM12GqlcFmvDGbmUeLdbczy2cetE
         Weq1r1ax0Ck0nEqdy978jdbxJQ30rjK/+H3PLHAq3ZDJ4EKIJ8lQegFCDeFlh3RTgyXH
         xYjOgZmTLS/raOF2YyGsgiG9UV3zBZvvj3/1g1gCYQfflnWL6CCHJE6yLTqFDA1PkeN4
         SMAQ==
X-Gm-Message-State: APjAAAWJRKi/ok37mviiFQByr2Ib35g3/X+5BKvaGqvsNB9uG75mNEhU
	osfuCWfDXefOEqA15UGDPesVmh/G2JY=
X-Received: by 2002:a63:5149:: with SMTP id r9mr12762516pgl.142.1552824459542;
        Sun, 17 Mar 2019 05:07:39 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.100])
        by smtp.googlemail.com with ESMTPSA id j6sm7339477pgq.72.2019.03.17.05.07.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:07:38 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: core: rtw_ap.c: Fix multiple blank lines
Date: Sun, 17 Mar 2019 17:37:29 +0530
Message-Id: <20190317120729.4811-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove multiple blank lines.
Issue found by checkpatch.pl semantic patch results for rtw_ap.c

CHECK: Please dont use multiple blank lines.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index fc500da2d71f..fa3ba5643629 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -367,10 +367,7 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		sta_band |= WIRELESS_11G | WIRELESS_11B;
 	else
 		sta_band |= WIRELESS_11B;
-
-
 	psta->wireless_mode = sta_band;
-
 	raid = networktype_to_raid(sta_band);
 	init_rate = get_highest_rate_idx(tx_ra_bitmap & 0x0fffffff) & 0x3f;
 
-- 
2.17.1


