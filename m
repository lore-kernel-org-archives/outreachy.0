X-GM-THRID: 6886754983149043712
X-Received: by 2002:a50:aa84:: with SMTP id q4mr1412102edc.331.1603447595365;
        Fri, 23 Oct 2020 03:06:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:43c6:: with SMTP id i6ls581406ejs.6.gmail; Fri, 23
 Oct 2020 03:06:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHEUhW25kkFOOwrK/6k8pIWFEnm4dIUKfpdvtdS3ceHWOoyjI63vN0dgwdZuu+xPl70c/j
X-Received: by 2002:a17:906:7157:: with SMTP id z23mr1231328ejj.474.1603447593374;
        Fri, 23 Oct 2020 03:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603447593; cv=none;
        d=google.com; s=arc-20160816;
        b=03jAIRrfltKl7AWJ0NdNFtQgcqEfixjtZm30z55qLU8CIeW/EJzUPadTwfELRqVOQt
         oTpqjxyczv2wmfEkrrauhZU5gCAh+IAfETODRw8bE7oAoMDnNnt9I0o72bpW0C/fkcPe
         07jVem+Wx2LLNo5YxAPJ3QoL4husOC4Lov1ci80801gNOavLXs8ZnVq64XyXA3tGqUlT
         djKDfVCceRBECS04rAAiHNqlP04YsYf57Q4EzgAx99nZ7V7UScI6dCQxQpQUyRbwEriX
         +3EAUeSQP0Xy/m0s2Vt2xvalHRFscGUPFXXlvxNzgsQ3IJipj7eIwH8UOrRpdiry9tQL
         StAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a7qotuzDXU7tRMHMYUcGj25j4MwPZ2+w83VIsxxur88=;
        b=oJ0dGcz32IPU3elpbdXpitwGn6dZ5RnIi3qTPO3qW169xGf1Pt2LASWq+EfxkX/8Cq
         Un0RzLirN3O/I6Z64kLPTtgCnwRlY1rrmXEo6Sbxc1O5/A2ySebEV08xKr7rmHE6y9Za
         /DKRB/4WMdZX+HlHkoY64HTfiOLtLrhkVMWiRNm0u7X8zYIm22rW0v5bnD2CXXi0ZhzN
         jD756MX+QVWkOcqSqfS5l1vThAmJLPiTsnTdPhL10BnqN5A93Fuf3SmTjNf+otI/PB1J
         gcFZ+9jb7R2evfRXwM2mJJAQX71/CByJm4Hc2vXuxyUEFQoS80pol2AD8TZSeXhARyXT
         DOkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jj2Wz9MZ;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id ba3si38524edb.2.2020.10.23.03.06.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jj2Wz9MZ;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id h20so936562lji.9
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 03:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a7qotuzDXU7tRMHMYUcGj25j4MwPZ2+w83VIsxxur88=;
        b=jj2Wz9MZCN35uW7UEHokTpH8YggAOHwjxRm0AgjDpJpizpzVWlkqOATU4xTOU28fW2
         FQwHaj2638uSdGqelsBISZB3p/wmUGdvDC5WQ1OBO2i2aiCL3+ZsQ40n8ZnY41uY/k3y
         NFUTF59QrMoxtgNfWAmCyh+G8dls98oD6AbdTWmbVa6qfwEohrP4r5iLZ1TgU5kGeqdx
         2R9fV0jwbWPSMAsKGFW7Mju9JAjcxmF15swUtCQdGd6lsAcksOxnGMT7UiqOTXbYkRpY
         M/RLaeMLpC4+dTG7hC6bbcryp01RSHGg8+RKlMY2HOgGG9Ne2cOTQZpcaRQjTZhFUK+3
         VbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a7qotuzDXU7tRMHMYUcGj25j4MwPZ2+w83VIsxxur88=;
        b=mzlYHfnBt1E5kUGN+8FCFXzCLqhSqooV4qXptAq2vJIN7DrcniJNAFPAF+5bfk0gF+
         St0oFwQM7uJTt/6a8QmQxtV9XhO9Wo/np6Id/D1tFEj7icZXoXtST/x2DnlrqNWiq4IL
         v6Q828X46EzLUaHZull5lOJH9aK4tJW8adwKtKlAAIADuzlOt0QIwRZ7jRUpPVftYsmS
         3vIgWmr684j5N4HKYQzC5exbuat043GD43lnhCFIuMvgDsqSiL6H2LvtVqGnVPt9/ZBr
         jqtsshw+kby3pP6ITfJpkiT4TGlLX6m7eETKlCFGuBvMMI95tbcOQbJ29qcomY+nQFMJ
         juiw==
X-Gm-Message-State: AOAM531Hid7Rr6FGgqCk5/VfEIMyhdQ1GhbDTHVZ+z/C9kH5ocnZyhQR
	bXVRJ2lPtB/n9vtJno+GwYE=
X-Received: by 2002:a2e:8799:: with SMTP id n25mr593384lji.348.1603447592851;
        Fri, 23 Oct 2020 03:06:32 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id w18sm93381lfc.5.2020.10.23.03.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 03:06:32 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8192u/ieee80211: replace kmalloc with kzalloc
Date: Fri, 23 Oct 2020 03:05:07 -0700
Message-Id: <20201023100507.4569-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kmalloc() and memset() calls can be replaced with kzalloc().
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..fb8483c499b3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = __cpu_to_le16(txb_size);
 
-- 
2.25.1


