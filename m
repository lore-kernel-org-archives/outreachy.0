X-GM-THRID: 6466090633212723200
X-Received: by 10.84.248.3 with SMTP id p3mr15841419pll.56.1505504044028;
        Fri, 15 Sep 2017 12:34:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.220 with SMTP id e89ls1706825itd.8.gmail; Fri, 15 Sep
 2017 12:34:03 -0700 (PDT)
X-Received: by 10.202.213.3 with SMTP id m3mr14314308oig.19.1505504043029;
        Fri, 15 Sep 2017 12:34:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504042; cv=none;
        d=google.com; s=arc-20160816;
        b=iMpoaHIHs56KdoiikczEva6RU7AsSkDtTioC1TEocI+uNjoEtkdHOsSd/lmrBwFeDg
         f1pdTrQ5pW92DpUg8zES8dDAB9VXVuwoiucL8zBoH50ZDUulJF/t9gmO7ImoP/+D4604
         hcZ3L+67YmrRG1yFTc5ZFhYecqbktWskUnkNAY0Jfe4UC2pU7x1AMiCnIU4c6caHB2/z
         pajy5oHxmupiuNrctUfLMK7/bWnKgKb9m+Eq1E3UYMw4IVcpeEkq/IzgVHPJBPxDnC9V
         a1G/1xc5ClJjQmsUwo1FpLLd3GGM59/2eTj2nfQgaqWIP1lzvOx/bFzqz7J4C1ZSWUhn
         CtpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=BpSoycgiiJQ2ixMNL0qNlgI2HYn4zYHhtHOMW5qX7Fo=;
        b=CPMgHeEmwsxq64G0U7Pv6HImIcZBIddsbfKVPB3ZIk4RS1F2pAahYC3F+71JylSVpX
         NZ/MnqEQH8nG4wxXeyGDFw+IhzII8I9iREokf6KmMdCtegv4GPozelqzuetjaHqofLQD
         B5qyVMbxYmcIzUiJrs+10urTaXeKB0l8Sm03nD2fXVgbdz9acApglc9WQli1UOzGPE24
         pPLAHFs+gfmYiMJ+rRWSll6HtpKEfXk5eqXfDC9kYiy8UGPZaKu/iNBf9N7kcukGyCIg
         oVHNtu23olWzqftR/6Kv9VZgXGSr02XT7laQKEm8BZRRobDcmgCOFBZmldQ1MjrXNTOd
         QD1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9JdTfuh;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id q15si175382pfi.7.2017.09.15.12.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9JdTfuh;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v82so1787008pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 12:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BpSoycgiiJQ2ixMNL0qNlgI2HYn4zYHhtHOMW5qX7Fo=;
        b=S9JdTfuhVXWO6P9y6zRxFvqAr/+d3Z/shV5mu4PwDRkO9WElUxIYfAAOhrtaXjOw9l
         ppRBhr04+jR+zdvLkgridjSB8SBET69nKz1cNjC1Nckakt4eGdVjHpCfp8bqGnvhWT5Z
         wfTxgRq3yLw2jQY345TMnkba99MCwIFp/TnD/mRalA1LqTzroRry5wWlsGdfqXlAOGXl
         L7Lzpw9upz9PLwMH07LzcXXNTmyM+pRXI6jW1HNN+FbowmCcGcla/mlwfRp9Pa8cl+Aq
         Znv3U7y5luwikBBynGpjP/rrXIQzweEhbViwT6k/coZgoRlli6/sFzRoFNuQdTbQk5mg
         h0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BpSoycgiiJQ2ixMNL0qNlgI2HYn4zYHhtHOMW5qX7Fo=;
        b=TQrBojyknbRSwClQMyXzWsn7ERlxgBwoPshVhf9NBquAG+RRXrtFWRJOx7dDLzv28Z
         BkUxxvKseTPAEBY/04lQCWej+MPa5RZAoHXXPZ2GiKtFrSe2WKR0s6cwJkEEm+u5gnU0
         kZ9fYT3pAXM1vaY0Dd61EWU4WWwVrPJX1/e6VffgYX4iuoSkr7V8ZFElgdv+tHJBGrAW
         inQGKHvqbGiI+DON5cdClfJDOfDP06XIZnzNtMAfcdMHAyzZMpfgMy8KXCRbF9hYs4zd
         pnZ5sEYu8rtu/p3toXiHz7TTEqyKSznWA1aylzxk5HLrk3MY9AGk1E8cjRxXtiewS37d
         BRQg==
X-Gm-Message-State: AHPjjUj7trARSFwn1KMbf9KpOFnfFyyAOl3nOGKdnyZFoMKvuqcXRbIh
	8JWqiAHwmWsQMQ==
X-Google-Smtp-Source: AOwi7QAf0L4Zy/+T8RGDVCGzesXFjS2GBhhi/Bfy64r4VZT+sUTxh5Y4Rbaz5ac7qF93kSuViq/iEQ==
X-Received: by 10.98.135.73 with SMTP id i70mr738785pfe.226.1505504042746;
        Fri, 15 Sep 2017 12:34:02 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id z30sm3701846pfg.54.2017.09.15.12.34.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 12:34:02 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: samuel@sortiz.org
Cc: gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: irda: Don't use assignment inside if statement
Date: Sat, 16 Sep 2017 01:03:56 +0530
Message-Id: <1505504036-21807-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Write assignment statement outside the if statement. Done using
the following semantic patch by coccinelle.

@@
identifier E;
expression F;
statement S;
@@

-if((E = F))
+E = F
+if(E)
  S

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/irda/drivers/irda-usb.c | 4 ++--
 drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
 drivers/staging/irda/net/irqueue.c      | 3 ++-
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
index 723e49b..82bfc05 100644
--- a/drivers/staging/irda/drivers/irda-usb.c
+++ b/drivers/staging/irda/drivers/irda-usb.c
@@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
 	urb->transfer_flags = 0;
 
 	/* Irq disabled -> GFP_ATOMIC */
-	if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
+	ret = usb_submit_urb(urb, GFP_ATOMIC);
+	if (ret)
 		net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
-	}
 }
 
 /*------------------------------------------------------------------*/
diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
index c3f0b25..2b674d5 100644
--- a/drivers/staging/irda/drivers/mcs7780.c
+++ b/drivers/staging/irda/drivers/mcs7780.c
@@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
 	if (mcs->new_speed <= 115200) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = (mcs->speed > 115200)))
+		rst = (mcs->speed > 115200);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
 
 	} else if (mcs->new_speed <= 1152000) {
 		rval &= ~MCS_FIR;
 
-		if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
+		rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	} else {
 		rval |= MCS_FIR;
 
-		if ((rst = (mcs->speed != 4000000)))
+		rst = (mcs->speed != 4000000);
+		if (rst)
 			mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
 
 	}
diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
index 160dc89..5aab072 100644
--- a/drivers/staging/irda/net/irqueue.c
+++ b/drivers/staging/irda/net/irqueue.c
@@ -217,7 +217,8 @@ static __u32 hash( const char* name)
 
 	while(*name) {
 		h = (h<<4) + *name++;
-		if ((g = (h & 0xf0000000)))
+		g = (h & 0xf0000000);
+		if (g)
 			h ^=g>>24;
 		h &=~g;
 	}
-- 
2.7.4


