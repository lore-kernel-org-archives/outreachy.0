X-GM-THRID: 6886889197397868544
X-Received: by 2002:a05:6402:1a52:: with SMTP id bf18mr12613532edb.125.1603648488068;
        Sun, 25 Oct 2020 10:54:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2319:: with SMTP id l25ls3414512eja.5.gmail; Sun, 25
 Oct 2020 10:54:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzU72eN5Fx6yC5UyzYpQyVXPYSWtZ8KGPjkdRWGFKHEOVCnlJUBEQsTLy1oculr3N0EVvWa
X-Received: by 2002:a17:906:fc10:: with SMTP id ov16mr12734842ejb.417.1603648486120;
        Sun, 25 Oct 2020 10:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603648486; cv=none;
        d=google.com; s=arc-20160816;
        b=Bqcppi7sIb+azaMNwbTKeoojWQx9SQDRvAqu1aGgVVCFNmAYcodImMGQDJ0zIyb5r2
         ZRUGDzgLpIbCl0Li91GpKr0OfcBNp12dogEvI8//HAfvO78xz5hvofEIXEHsQGja4Xwc
         wfyLRiNxD17NvxzrSUqg4S8dvPwl8O0OPfpfi9rv/qLbaDchM0K1Jme9vEQW7JS8BMCV
         UG7c5ziGjFqOCPZIifn44uGi3yaVjHpY0nyTIbm3O45ZH4J3wRfdwY0IvhKw4PpsOrg3
         WnkkviMHj1ULMrL+UuPnK0JHO01LIhqvvbNEIz44RXgSiB5SeYp1ldfmmxYGgT3ZFVqp
         2pCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=Ia5mKQW6kRwT+5DPNWXNNRRRvEqWXjifJg3gF7jPs7k=;
        b=GQUDkkA6uClkwuKoNgJ+FjVZ3p+8ZhcXVU5iesug2cihKIknwawxWvyYAikwiSJf/4
         2W+FvYtm6acGtjzZqBRaRv/ZfhPHpXiBm0uZEcny6gFEO4YsCN5xTuJ4uvmADbP/EO15
         rUzEgGC3aqQsRp+0lVB+I7HwOzPnfMHpmyE7XCWPbhb9ye149cre0gOGrUtYnHM+8/XO
         8ChNZiBj4wSiJaLQKct6cwZ+iYPQnujizHCSnHDqbbmZAGzJhoUq6gsBn3sgpBHkFXSb
         1nTAHwMPDsHZq1FTe6Mdi/k3O8HfSmjfEyQ7qtclSdZ4BwfWI0ur//aK4OK1ZXPE67Av
         xSAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CFwlA2uC;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id lf25si282499ejb.0.2020.10.25.10.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 10:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CFwlA2uC;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id a7so8913352lfk.9
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=Ia5mKQW6kRwT+5DPNWXNNRRRvEqWXjifJg3gF7jPs7k=;
        b=CFwlA2uCYi47hpHH4+kCTfsEcqMtjBssTPqoHAwjH9KlhhUqzxrnogltTbexUHZlbG
         w0+CzgacqBrZG61q0bZNkaeUHWRGwXBueS7Fu7+/JH8UArjd359GrFUrv643OKH9d39D
         NPyRgXeAxl3J2tW6FTxPSPqAcqe8ad+WsgQ/hRxeZbtC9PmufgRxAiuuHSrZpI25zfZX
         ilgM8s1MZp7A7Sx5wxjdDWdpa5Ecrxs46c9I+Ac8+2GN2jucW7yL4LIlTlL0DFl1c3zp
         fThqnk48ajWZgNQMn/fmcnA61j2jBp+2xw20Hkdnl1vNcL/pn2NcaLLPUkjc53jx/Sdk
         mA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=Ia5mKQW6kRwT+5DPNWXNNRRRvEqWXjifJg3gF7jPs7k=;
        b=e6Ji4HQ/kyiW8k3+KO66lf/nLX+nTHn23JOsM/CQ0un8FjIVBoDEIC5ChC7Lp1Qq0W
         Wv8psxGX9dA7AqAOPO6cyjGbHc0n3S6X9/iOcyAQ/SnQFUJk/7rOAf2OgQvut/PxwOXY
         grjqLlPG7IL66zbE0D2ZntgFGywhqjk7DgVNFi2Jfm+SbO4wVZtS/0jQUZDchf67Fah3
         CepbFJP8toO0UYRohp3+or5XyvgWGhuRAj1tjPeUEQsGvfQusTfoHGN9aHu48bz6zTp0
         mIAzCmoBbGsh9XhIcforB9aTCY5pzUrkpu/yb3PEYwK4/xqcpnFgoKtIElDrF41gQYlT
         B9qw==
X-Gm-Message-State: AOAM5308I2R8dKElJ3OBxnFPDK1RhUbTUPqx7NpaaibiyXp7C75p5yxY
	OW1DWgMmxXqHnuGOeGo9No7guq62LSNzGg==
X-Received: by 2002:a19:589:: with SMTP id 131mr3972541lff.229.1603648485573;
        Sun, 25 Oct 2020 10:54:45 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id t10sm208469lfc.258.2020.10.25.10.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 10:54:44 -0700 (PDT)
Message-ID: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
Subject: [PATCH v3] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Date: Sun, 25 Oct 2020 10:54:31 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v3:
        - use array_size()
Changes in v2:
        - correct the subject line
        - correct the commit message

 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..53ce97aae206 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + array_size(sizeof(u8 *), nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = __cpu_to_le16(txb_size);
 
-- 
2.25.1



