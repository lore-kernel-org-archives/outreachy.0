X-GM-THRID: 6751257049994100736
X-Received: by 2002:a92:104a:: with SMTP id y71mr22967420ill.242.1572294260480;
        Mon, 28 Oct 2019 13:24:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:b104:: with SMTP id t4ls3211710ilh.1.gmail; Mon, 28 Oct
 2019 13:24:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwRxwCummdBb8heCuQ+29T+8jSLBRiMfHF9RMwdSCVaiQ1arL+NZRwTSCH601nwAu4KQHF0
X-Received: by 2002:a92:91d3:: with SMTP id e80mr23459400ill.77.1572294259193;
        Mon, 28 Oct 2019 13:24:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572294259; cv=none;
        d=google.com; s=arc-20160816;
        b=lBzeEW/Zfhpwz2736vtoVicYl5KFsr6VVc5abyfq3ejvFoODms+fd8faDRXaGFA/Ek
         E80RQePo98EjBsFtj+TEonXHvzsVv8GqI5ziH3aekhhETu1VPS2upMGEWaL25bDiG9Bn
         QasGnKSonEyD/5PiaeTdWj0CaniV1k7S2DtZca47oJrC4ckzPSI8oDdcSeMC7W1eAM2C
         ob+STnQGNCk+eme3WKyoY9UNDriFeGHyXrw+maBNeCLe6p26P8B+HJmlFr79xSjvIRiK
         khxwy90Fro4YyKGHHxYMHxCnh+SHoTLKDh7piiAhTMd4kC0pj9Sm2yonc0zUUWynDfms
         jFmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=A0DQXD9x+eV6q6hRZVxxcF+XxUJKYLAsfMVZV2gCE4M=;
        b=RBBM2A9JpKZV0/i/PHUE/JVvK9gdGW9J+QvwWeuvvigALGBsHl79HACr9HLqRZcPqN
         DDI5gXd2x7TaUJM/3SMRGXCVkhUqCsBRv7h1Y0nlcW86nOIu6EogflHzOCPykIRZl08s
         YkTTPPi6rQWD0eHm9qSb0WDxVEqal3ONMrLmPQhkRZW5LcQYpW8Lk6uRGfyi0Oiyvc2f
         OAPl1vRR3vkFJsqXLJ9ZzD3nLjQQvE2XXdJ3JDQO/dMTPEkjSETZrK9FiC0CTUm4fHBZ
         86dEBQ37w0o5gJo01PkuTTJkt8xr6y+juzAlCHlRZ621w81MT8AoVcAEpRERB9hSJBdH
         pZ7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CmI4yWFY;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h14si69301ilc.0.2019.10.28.13.24.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CmI4yWFY;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l24so7684883pgh.10
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 13:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=A0DQXD9x+eV6q6hRZVxxcF+XxUJKYLAsfMVZV2gCE4M=;
        b=CmI4yWFYOJFWeXEPQ5gwN0qpO3E3KUSBGpOn1q4OdhxC7jno0bbheuR3xap2WwaU7Q
         Pqw1BF8cgCEDujcwnVPk+6Ay9YZmpJSb2Fzy8Es/kyyZEAm2CPkD3Hljkkq3qo6TAkRz
         TZoVuo9kGBz/oNAM5rliu06fuCcFTVzZLv7Nb49zLbx7BpO+RVeb7zzIE56S92kcyzGL
         zZdD1R6giBYYUyHv6qzBQ/iNtYvcULSCA7gVnDG+Ni8NtD2DaXYhzL6iUCyyK2rPCl/z
         CRwICLnoRxHCcCkyXCFV2tPeD8T6B//keHS3FJojmCRkowbA838t9f5AGXTdpbBXVMUI
         roEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=A0DQXD9x+eV6q6hRZVxxcF+XxUJKYLAsfMVZV2gCE4M=;
        b=JDt/6alxxX52c8HtYA7TXcklplplLkqMENz5OGywbIrKn4ig0OR5vXU/9JyHB/vltH
         HmGIh1z0XqsLlZ/9ekE4kqO49n/jcCMZ1SpzXTiFrp+2Bwz94u64wkXlzrZrA+f2Rn6t
         J+GTnzTogHe33YNvE7rXSf56b27onYQ5bOsZDms/TL4Lcrj77AwBKXrIsO7WcfaYHgWU
         D7+yMe7VdM2utuMH0j/baCHV3O2t6chLTvKlBQsErZ5oIS8u4CSJ3KRhRzXFjD/Y6rRK
         D566y+X2w0uGwEx3p5HNFQN65lcnkfMU3P1C4BF0RTsTtpQahMPXq8vzROR3drZrT2pq
         AVcw==
X-Gm-Message-State: APjAAAVXKzwOt9bParYkEo7Ox0UuDfaGzTSGlHipe8/Ode4P2rq4Z7tl
	VJ9ZW0eokMP1myghL/OU2X4=
X-Received: by 2002:a63:d802:: with SMTP id b2mr22985990pgh.414.1572294258608;
        Mon, 28 Oct 2019 13:24:18 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id g187sm11715539pgc.12.2019.10.28.13.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 13:24:18 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 2/2] staging: kpc2000: kpc_i2c: Remove commented code
Date: Mon, 28 Oct 2019 13:24:04 -0700
Message-Id: <c101a2ff94b3d5dcd467407bfa083679f3bbc612.1572293975.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572293975.git.jamal.k.shareef@gmail.com>
References: <cover.1572293975.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572293975.git.jamal.k.shareef@gmail.com>
References: <cover.1572293975.git.jamal.k.shareef@gmail.com>

Remove some commented out code.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 0412dab68670..5460bf973c9c 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -144,7 +144,6 @@ static int i801_check_pre(struct i2c_device *priv)
 
 	status &= STATUS_FLAGS;
 	if (status) {
-		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
 		outb_p(status, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
@@ -526,7 +525,6 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr,
 	}
 
 	if (block) {
-		//ret = 0;
 		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
 		ret = i801_block_transaction(priv, data, read_write, size,
 					     hwpec);
@@ -682,7 +680,6 @@ static int pi2c_probe(struct platform_device *pldev)
 	/* Retry up to 3 times on lost arbitration */
 	priv->adapter.retries = 3;
 
-	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
 	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
 		 "Fake SMBus I801 adapter");
 
-- 
2.17.1


