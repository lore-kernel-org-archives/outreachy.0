X-GM-THRID: 6254513741412433920
X-Received: by 10.66.193.131 with SMTP id ho3mr32477070pac.42.1456242493220;
        Tue, 23 Feb 2016 07:48:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.12 with SMTP id su12ls1083480obc.49.gmail; Tue, 23 Feb
 2016 07:48:12 -0800 (PST)
X-Received: by 10.182.65.135 with SMTP id x7mr33936882obs.13.1456242492858;
        Tue, 23 Feb 2016 07:48:12 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id 12si3876122pfb.1.2016.02.23.07.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:48:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id e127so114438163pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=UbuD7+opIdOQfrluuKk8Ub+uh8UHQhgbSHyV5bcWpDg=;
        b=XJeGQ+pt14ecwMrK+GZmnmRDuj8elecVRJUF5UY0Fwg2nlGw1RKoLU7zNKt6AYyXly
         6n3eRneTaiDfcWcmQXuCxQQsgeS5Zx4TBB96zOmOApMW9fmpY1W18/LrfUSr6C1VT7gS
         rk6ggyUiCq1XZZNxdPCwk6ceb99H6e79m6W26EtIrivy54eUFLsSAa6JcVlleD8itGYh
         uGleElz0nc07vqeX36UfZDhlzwkU5bnzJujnKewyRQ/gaMd2WUdm5ULCF8JXkxMLU4id
         MHXR4sWGkeJWixxj+Wqhpn2vk+Te7aMMjd0ehfKX91QjZRZlzRLv33NI5d532Mu8Cqjs
         RUbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=UbuD7+opIdOQfrluuKk8Ub+uh8UHQhgbSHyV5bcWpDg=;
        b=GvpEER2Y+ApC3urdenMvjRE3Ner9vBAIlUfgOe2z3WXmYsUI49NvIyvbrKO5ulAsk5
         Fl5mRHl0kpGRx4ch0Fu6m9MCedQqY3EsMHLPOGzprE/bcsQFXjnbAGhZLnZ3Zcu6ne1O
         /WSi5iZudmwDACtEAzX8DPsO8B2lDG9QHPo+V/DRbb2J8P3zHzmcZKDE1tn+Rn02fKur
         NATIhANApgldYU4CIgNx/1+Opq0AxTzae+PxE6yQ3DEt5MO7iBZQEZZV1zlAts1C+2GI
         9tgp9VpB+1L+G8TK+czakQuI8AgM29JurvpovAHIYwPvvFS9M9uKOytBh/bhcU0MfIjq
         9heQ==
X-Gm-Message-State: AG10YORr+/46cs5hfPKCz7FWWEnpe+UYnBy+UGnigT+/zJVeZOJaVo9gNkNT3w7A4m/U5w==
X-Received: by 10.98.80.80 with SMTP id e77mr47170568pfb.126.1456242492723;
        Tue, 23 Feb 2016 07:48:12 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id dz8sm45362362pab.19.2016.02.23.07.48.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:48:12 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:18:01 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 2/5] Staging: rdma: Use min macro instead of ternary operator
Date: Tue, 23 Feb 2016 21:17:17 +0530
Message-Id: <6b27b6c91da052f6476cadd60a4587b694bc016b.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

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


