X-GM-THRID: 6254064858167246848
X-Received: by 10.66.148.69 with SMTP id tq5mr26760871pab.28.1456137994942;
        Mon, 22 Feb 2016 02:46:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.42.138 with SMTP id o10ls689056obl.42.gmail; Mon, 22 Feb
 2016 02:46:34 -0800 (PST)
X-Received: by 10.182.246.130 with SMTP id xw2mr27174494obc.29.1456137994619;
        Mon, 22 Feb 2016 02:46:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id 12si3028336pfb.1.2016.02.22.02.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:46:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id c10so93930672pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bWdZwiqATFal1scbIh8sJvY7p5eFka8Ows81MHd1Auk=;
        b=K7AESdjIL3an4ljHOKHIJWVMf8DfAolen3VBofyGTSy4LZJVa3OD+IDFRrIRuh4msp
         EosYfMdUBD3o8x2USVPEXpj0UGtMellzpfMH/QfJ9n/vrM+oJd2kz89+3cooBusmcK8t
         n/0kN/+szBXysrBYB7ayeoR7ayoyT7hrDXmrh+my7RXeqh66t7yDItqId7j2pDoryqP0
         TPivl/KOaFtlisXrEKNRhosZ+HNW0s4eIVW0rbLzuIwCtYsQx8daMJvDACqRoKvfGsfD
         Ey/7UWCDVO/nPdygfWGa/JfXiUZ+72AexCwHNFOs6aUks50kW7LsWKPC09Dd6ccilXw/
         mEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bWdZwiqATFal1scbIh8sJvY7p5eFka8Ows81MHd1Auk=;
        b=OF9Zvp0PyZJvQdGqjku5sovQXZQFI6AaZ93ysAfQXuUh5BYfeBEuvk+AW0+79LuZSe
         VetjT5bWtxdkJTwDPXW+9kFB5O6hgOtColeaz7sjAut5iO4M0r+aNMJwiPc7FwdLFbxE
         BSrjincXHBdCy+Tta/QQAnTN4E8PlATg0dOT2ZooGsFciJlzgQk1uCWM74eZBiF7FAJc
         fxnGO/L7Tvao22Q8T4+Ir9LTrq1MUdtpQq5ewHP0vUKU97Fk9chD/UO/bF7GOohTd7FE
         DvbSPR05YKoso3bghda7Z6rU6W9o8h/ojhbSSA6SYQo3tc95Hl//oWALcKSBstU27OjH
         Qu+g==
X-Gm-Message-State: AG10YOTDqAX4BSiGkAyPN0KkO7xC1L9lSAfoVgZP8wE5igiKaD6bAhG1uJDhDM5//QijWw==
X-Received: by 10.98.75.10 with SMTP id y10mr37241438pfa.32.1456137994500;
        Mon, 22 Feb 2016 02:46:34 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id ko9sm1621244pab.37.2016.02.22.02.46.30
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:46:33 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:16:25 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/5] Staging: rdma: Use macro min_t instead of ternary operator
Date: Mon, 22 Feb 2016 16:15:31 +0530
Message-Id: <eb48a324849c5f48c3c433892d503d56862d210c.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min_t as it shorter and
thus increases code readability. Macro min_t return the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rdma/hfi1/pio_copy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/pio_copy.c b/drivers/staging/rdma/hfi1/pio_copy.c
index ebb0baf..cd5b439 100644
--- a/drivers/staging/rdma/hfi1/pio_copy.c
+++ b/drivers/staging/rdma/hfi1/pio_copy.c
@@ -235,7 +235,7 @@ static inline void read_extra_bytes(struct pio_buf *pbuf,
 	while (nbytes) {
 		/* find the number of bytes in this u64 */
 		room = 8 - off;	/* this u64 has room for this many bytes */
-		xbytes = nbytes > room ? room : nbytes;
+		xbytes = min_t(unsigned int, room, nbytes);
 
 		/*
 		 * shift down to zero lower bytes, shift up to zero upper
@@ -565,7 +565,7 @@ static void mid_copy_mix(struct pio_buf *pbuf, const void *from, size_t nbytes)
 		/* calculate the end of data or end of block, whichever
 		   comes first */
 		send = pbuf->start + PIO_BLOCK_SIZE;
-		xend = send < dend ? send : dend;
+		xend = min_t(void __iomem *, send, dend);
 
 		/* shift up to SOP=1 space */
 		dest += SOP_DISTANCE;
@@ -659,7 +659,7 @@ static void mid_copy_straight(struct pio_buf *pbuf,
 		/* calculate the end of data or end of block, whichever
 		   comes first */
 		send = pbuf->start + PIO_BLOCK_SIZE;
-		xend = send < dend ? send : dend;
+		xend = min_t(void __iomem *, send, dend);
 
 		/* shift up to SOP=1 space */
 		dest += SOP_DISTANCE;
-- 
1.9.1


