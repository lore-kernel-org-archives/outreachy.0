X-GM-THRID: 6254513741412433920
X-Received: by 10.182.20.195 with SMTP id p3mr439049obe.47.1456481107627;
        Fri, 26 Feb 2016 02:05:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.37 with SMTP id c5ls477954igt.22.canary; Fri, 26 Feb
 2016 02:05:07 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr6105555iol.7.1456481107367;
        Fri, 26 Feb 2016 02:05:07 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si1842591pab.0.2016.02.26.02.05.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2016 02:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q63so1131573pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 02:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=F47GwlnWttZOnvlH3s3+lX5H2TopKRTVgrXiryHiNyI=;
        b=UGhua2s4HHxTtuSGz1BfIqvAV0CJHOwOgCFKQZRagPDYuCjuZWDnBodEqIT60zdQy0
         Ga/cIsrYAPhv7yNaNvB9d8IW2xAw8lnWlStEeLnB3lwtFE0iyehtuMq/ns31X+Qy31Pw
         Hu5LOZdSAWIK/A3IqUE07Fwo19+1pMsscZ3GpI1MnhJVwyORiIoFJg7yBa188gm3lRxh
         PHVAMu7YRUn6JJLn1TOfiS0j9zNjfq7Ox6iDdqzRKf9UwxL+lmYmTk42xVSc089p6/Gg
         xgGBVRPl1jW4R+inUJ9avkOIyoj3ljFZwPeoil3PUkwJaM3DLrI5Xur5QnsNqY1yKMlc
         /HTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=F47GwlnWttZOnvlH3s3+lX5H2TopKRTVgrXiryHiNyI=;
        b=Wber7NC7M9T0agxhkuU6GsnRhz6oRZWFgKVleUdhBM2NHsDhCKNQwKqckfjArb8W8Z
         80DILr00FqEPhjI7urfYudcu7xzWmxmNXPI6FWm/b6W57eVv7YTSFvsqyZZ0rM5svKZr
         Qjk7Xek6dQClHmAMU+fKyTxsi++RJoDWkHC1tfs264WvmvKbXLAWTg3WexDWKbtWR1zi
         tLiRvCh6AXQoeIwUBnDaWa53sxsIiazKKL5to3FC8BU5QFLrFGJqY8pFfPUhThqkvIgO
         2boFaryRxYsX7dzVJObJceT23ApVEN1waMHvBb6afnKx9jfChJkkv/pvyzGKKkTn1+/X
         Em6w==
X-Gm-Message-State: AD7BkJJ9DVIxURjKDREw39LB6Uy3aGKSc2PiSUulDUkh93MIvoiwmnz3UztVOIvJ8mBmkg==
X-Received: by 10.98.80.150 with SMTP id g22mr856565pfj.132.1456481107207;
        Fri, 26 Feb 2016 02:05:07 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.139.245])
        by smtp.gmail.com with ESMTPSA id 79sm18136524pfr.22.2016.02.26.02.05.02
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 26 Feb 2016 02:05:06 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 26 Feb 2016 15:34:57 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 2/5] Staging: rdma: Use min macro instead of ternary operator
Date: Fri, 26 Feb 2016 15:34:31 +0530
Message-Id: <1456481074-9898-3-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456481074-9898-1-git-send-email-bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
 <1456481074-9898-1-git-send-email-bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.

Changes in v3:
* No change.

 drivers/staging/rdma/hfi1/pio_copy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/pio_copy.c b/drivers/staging/rdma/hfi1/pio_copy.c
index ebb0baf..64bef6c2 100644
--- a/drivers/staging/rdma/hfi1/pio_copy.c
+++ b/drivers/staging/rdma/hfi1/pio_copy.c
@@ -235,7 +235,7 @@ static inline void read_extra_bytes(struct pio_buf *pbuf,
 	while (nbytes) {
 		/* find the number of bytes in this u64 */
 		room = 8 - off;	/* this u64 has room for this many bytes */
-		xbytes = nbytes > room ? room : nbytes;
+		xbytes = min(room, nbytes);
 
 		/*
 		 * shift down to zero lower bytes, shift up to zero upper
@@ -565,7 +565,7 @@ static void mid_copy_mix(struct pio_buf *pbuf, const void *from, size_t nbytes)
 		/* calculate the end of data or end of block, whichever
 		   comes first */
 		send = pbuf->start + PIO_BLOCK_SIZE;
-		xend = send < dend ? send : dend;
+		xend = min(send, dend);
 
 		/* shift up to SOP=1 space */
 		dest += SOP_DISTANCE;
@@ -659,7 +659,7 @@ static void mid_copy_straight(struct pio_buf *pbuf,
 		/* calculate the end of data or end of block, whichever
 		   comes first */
 		send = pbuf->start + PIO_BLOCK_SIZE;
-		xend = send < dend ? send : dend;
+		xend = min(send, dend);
 
 		/* shift up to SOP=1 space */
 		dest += SOP_DISTANCE;
-- 
1.9.1


