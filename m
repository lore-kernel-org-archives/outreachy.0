X-GM-THRID: 6947963118205009920
X-Received: by 2002:a1c:7fcd:: with SMTP id a196mr3086008wmd.180.1617698730993;
        Tue, 06 Apr 2021 01:45:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls910365wmk.0.canary-gmail; Tue,
 06 Apr 2021 01:45:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbCVDtSIz6gdl7aWJXjRj/SD/fxz3wL8hpD2lNg7li4oCi9E2Yh/QF56UAF/K9lQc0SeLn
X-Received: by 2002:a1c:3581:: with SMTP id c123mr3078516wma.118.1617698729286;
        Tue, 06 Apr 2021 01:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617698729; cv=none;
        d=google.com; s=arc-20160816;
        b=c0FZGj3jQOt6nDyDx4t2j31xJ76gLG/pduY7M1U5qBTxEo9yYXPDZtjARRtocAU4jG
         bbLw1vcaWveWoVn8rLpXOaZADZwxD+Z3R5wWkOvbjl0ca+Z364Myi/JkB+/U4tCGZR3W
         L6lyAtFHyjHvGHXdg3pQJWx/SnSrNtr/KJlnyCRbxSNCm4JPRrNyZ5oR/SQq6vz6NK+/
         wF7v8ZTUCE/AY2pja52CV6+L7RHAuNLAPD0z87nGCv6VdZ9EJDHdVXtUD5jFKDPyzbzQ
         Ys2CZq6z9IZIPmotPTG3pBc6I+PfpVYJh9GehFmCg8es1Iikq0QVF730npiDEoJfptKK
         u6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eG9N6vd8YdDNhKc5wiTz2FLA+NZ0laeofe06nyKfMT4=;
        b=Pi8tPaKTVlRmj96BZjE6PBu3Wmt6hvfzGUFZFwKEuOIceX7rSeKt3+WA/tklxOLufX
         q6LkpPtyCUpQ2QK9XKrBmuvNu+BjPXmTEOHdu6aC8HHtYY9xso1ch3sO4818BL98yANc
         pMxsGKahw00763+dqa8eS4V+VNYlrH47WUCXstW7ojb/rxfdn1j5yn6YdtP85Vz+wuR8
         U4Jp9cZHA1RGneO4lZLL315VQB5vay29hsHirFxczv9d7dOrFfI3K2EwXMbet5e+VFeq
         DRBZMf7hNQGtNwg3sPXCXwsw7Cg4gn7NnWjY6jr0bZaD4oDMUnWYmlp+NLAJdgCRFzEP
         cBVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1ZUq+7r;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id l8si1248909wrz.4.2021.04.06.01.45.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P1ZUq+7r;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x12b.google.com with SMTP id n8so2701646lfh.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 01:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=eG9N6vd8YdDNhKc5wiTz2FLA+NZ0laeofe06nyKfMT4=;
        b=P1ZUq+7rme2Dwp/A+Ir77qzfzAFu6XaEThogNqcuRwmo4v29fGtj2qeWUd77BSSncO
         6QMLaOcuw71L2VmIpzIG7JM9TcNQYHNZ6wdvR7KYWpOs4LEBsSyRDnr+4dqsUdc3FVpH
         9sSZsBUzRl0y3HVvpZFaWei/ubPo2d6Y4R8+CmeAYBXu8ZPY6Jdk4UbrbvgpAgIXByZ4
         exFDLwHaTsQhNT8fFcyE7ZZ5FFrmA+Z7Pdak+6BOX7PCAs0boKFFUGeQP7RUYvZLXCy8
         TCrqV/zaobEwEAbuGBRIjfGAYiwuWhafb8zu10mr+kDiT8hPxejTy+BlhETQvCXDyW3R
         pszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=eG9N6vd8YdDNhKc5wiTz2FLA+NZ0laeofe06nyKfMT4=;
        b=qbiNKPwoWMythB5vV/yRwDstkC/CneL1U+l5lfmu13CcwJwQFxf6qZ7G70cNYbEtyi
         JEw7ByTVOquxEfehKdVyuiUPYOrwH/IJdK+zfQPUEyiSXSoLtAcOTCKy8EKoLF174/Gl
         04Bt9TnBWFqMbNtYUA3UteBbuxzb5YzTYZHFOFoo6SiA5F8fOik+abiw/qiuS5netvx7
         DKXMbUik9980BNWwZhFNoeQY/4T6HuMYD1+J+BuhHEt/6ShAWPvqfj+4MaB4cAMcKLwX
         43ubpR3oyDSTW0Iume/xzF5hDCvaj/pu3JNHw23xhKgT8Bd1qOa1ItdVosSmdA0Gpn5A
         kutw==
X-Gm-Message-State: AOAM532zZPQ/jmCa4entcWC3I6V6U3R/vboUKVXg/p3PamCvZBmyVQMh
	7MTlkixz9ccTHw7P0NwgpmVZdjtYts+9lw==
X-Received: by 2002:a19:ae07:: with SMTP id f7mr20754373lfc.551.1617698728861;
        Tue, 06 Apr 2021 01:45:28 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id p25sm2081605ljn.61.2021.04.06.01.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:45:28 -0700 (PDT)
Date: Tue, 6 Apr 2021 14:45:27 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: rtl8712: Remove spaces after a cast
Message-ID: <f8932bfa35eb7480b69a9c8296bb10fac5a28540.1617697237.git.zhansayabagdaulet@gmail.com>
References: <cover.1617697237.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617697237.git.zhansayabagdaulet@gmail.com>

Remove extra spaces after a cast to conform with Linux kernel coding
style. 
Reported by checkpatch.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 5000c87752d3..b0cc3c922842 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -259,7 +259,7 @@ static void secmicputuint32(u8 *p, u32 val)
 	long i;
 
 	for (i = 0; i < 4; i++) {
-		*p++ = (u8) (val & 0xff);
+		*p++ = (u8)(val & 0xff);
 		val >>= 8;
 	}
 }
@@ -907,8 +907,8 @@ static void construct_mic_iv(u8 *mic_iv, sint qc_exists, sint a4_exists,
 		mic_iv[i] = mpdu[i + 8];
 	for (i = 8; i < 14; i++)
 		mic_iv[i] = pn_vector[13 - i]; /* mic_iv[8:13] = PN[5:0] */
-	mic_iv[14] = (unsigned char) (payload_length / 256);
-	mic_iv[15] = (unsigned char) (payload_length % 256);
+	mic_iv[14] = (unsigned char)(payload_length / 256);
+	mic_iv[15] = (unsigned char)(payload_length % 256);
 }
 
 /************************************************/
@@ -995,8 +995,8 @@ static void construct_ctr_preload(u8 *ctr_preload,
 		ctr_preload[i] = mpdu[i + 8];
 	for (i = 8; i < 14; i++)
 		ctr_preload[i] = pn_vector[13 - i];
-	ctr_preload[14] = (unsigned char) (c / 256); /* Ctr */
-	ctr_preload[15] = (unsigned char) (c % 256);
+	ctr_preload[14] = (unsigned char)(c / 256); /* Ctr */
+	ctr_preload[15] = (unsigned char)(c % 256);
 }
 
 /************************************/
-- 
2.25.1


