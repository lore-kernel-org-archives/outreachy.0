X-GM-THRID: 6393234614676094976
X-Received: by 10.107.170.158 with SMTP id g30mr934734ioj.20.1488540947395;
        Fri, 03 Mar 2017 03:35:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.137 with SMTP id f131ls592849ita.7.gmail; Fri, 03 Mar
 2017 03:35:46 -0800 (PST)
X-Received: by 10.99.114.70 with SMTP id c6mr893518pgn.17.1488540946807;
        Fri, 03 Mar 2017 03:35:46 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si4455pfb.5.2017.03.03.03.35.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 03:35:46 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x66so9672634pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 03:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=txsinOm6c7pH80VW6CcQgnNoS/cYggh2WeNTkPu1f0DPP8yt2VnJZIppbg8M3ctbv6
         7CjyrLquDWm+WS5xI49RsCbBrYJ80wOo1wyjtxwcqbLs6ogkYKeyNkNEM/S5xjTQBRD7
         4rbnEsJZ4jW681o9z6usdXDl6Me4myz8Fuit7R+tDCpAPdrFWVedSNDywerpya2pL64X
         Z5vb+YRPy1xpjCuawJZPqhYXr1O1D2GoFzc1IxGpxsq16bopwfn03ie39EjPCFUxBSqc
         3LNgnYxTWBKRJCBObAhUPtnA5Q8acMVqqzIorjyjVIPhyrJJvXK55gEOZRG/ldvZzx/M
         Q2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nn29nFhRrbirkrlHjwbMvOI/OPgEZMOnOXZF5dYuePE=;
        b=PoImkaeENkuX6OqcCBPiXoohsYigOXdO9TTuxm9e8JWwXCsXXF3jEAv5ZYLiwBX1po
         sMUSzlSdD7cPdNBPipl58+EN5hQYsaA8v5vpYrq07u9pq+L036CVkYSVc/wEe2ndz0t7
         0tUKj422A3cSYgDbEsQZD1fr9Ya7RN/FIMGTX4CVAc92bwO5H0HsHFfaN6UqTttY3C+Q
         g0+Dn9phEX0+qCq8L6BYIH+XpwO9V5S2jzCTyKTuAv6foWr86DuHu6nPkcJkfgKrL5F5
         0FdKEM+fASasuhh+R0HV7I9ykpcBH++lkJVVVtf9q+Kg9iZvlKUbTZgpSWsb/ZjXQU9G
         B77g==
X-Gm-Message-State: AMke39lgki1FcBz0bl9V6QEAGcwLxSvsqU6C3ls+QktuBOS3sH8+tAGnjq65fsPHlCi5Qw==
X-Received: by 10.84.171.195 with SMTP id l61mr3628877plb.84.1488540946621;
        Fri, 03 Mar 2017 03:35:46 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s64sm16933786pfe.10.2017.03.03.03.35.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 03:35:45 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 4/5] staging: rts5208: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 17:05:24 +0530
Message-Id: <1488540925-16898-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>
References: <1488540925-16898-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 2379901..8b57e17 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -766,8 +766,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
 		return -EIO;
 
 	if (use_sg) {
-		err = rtsx_transfer_sglist_adma(chip, card,
-						(struct scatterlist *)buf,
+		err = rtsx_transfer_sglist_adma(chip, card, buf,
 						use_sg, dma_dir, timeout);
 	} else {
 		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
-- 
2.7.4


