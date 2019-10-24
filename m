X-GM-THRID: 6751257049994100736
X-Received: by 2002:a81:70c3:: with SMTP id l186mr5433299ywc.306.1571899546919;
        Wed, 23 Oct 2019 23:45:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c04f:: with SMTP id c76ls783038ybf.10.gmail; Wed, 23 Oct
 2019 23:45:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8JWUIwgM1ICk01l7/45vi3F1f8s02bRaM0lIvjVEzPTiMD+4EUA9KhKN87PZ1MxWQ67wA
X-Received: by 2002:a25:5b45:: with SMTP id p66mr9323547ybb.449.1571899545337;
        Wed, 23 Oct 2019 23:45:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571899545; cv=none;
        d=google.com; s=arc-20160816;
        b=peh99PUfP1kx+rhFICpOMs2/J0b2QcEWQFu5+eKrvzvOyAHak8iOHEFEVX4LMbI6d/
         90Di07pNmmtRn1WdBGIOkDpH2DB1v0rwkugwOsiyt1E7ZFbAOkRCuISDN5MlO5dEknhe
         tH4gwGGcJiFkZdCfcTsu3c5J86RPHqedd9Lxy2dyBosRJ+ycSM4F6qabZxPsOwqHKGDB
         TTglsusVHSZSW7X0PdNyJsWj5cPMpEhv9aBb90/vEjjHMeh8+Er4zVgN+Ag7H+OnRO14
         rsoKQZjlnrMPu/8qg97eb8xvYEDrhYPKyFRqJbudRdA7k153Pb8sHAA3n4P0eXVUjXI+
         n5dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=HTmtF1bjGdyxNtX/Ai7qIqVxCDih6zWUo69Ek4GpeYM=;
        b=m7bR/gWhjRSJE2BQFk5kjDlV7E/bdL2UOcKtRNO9+iMwOaSncC1cAqNl44gZhpr23o
         NIfKSVuk+8WNM4wZR5g2K5cPtwtuZBL9qanI4jLB1P2p87ovCR2IrOSlxKbhpn8BWIw8
         wxWiZRL5zDHAyvTRcJeH2yuqT9AXQw8w0UQGFTyuyhnXDElKwCdyF77gpuophIokmCS8
         o32X+F8ynX42sIYdNl4xmiWQJ0+8wN5aa15LoDJOXTBWaGlbKV2n99swTByBoX1Ju1be
         aghMgZtu8vlj7TF1WwgNpMIz29IddeAjySKrUNgtdL3F+iQTAd0rzlxYlnWigUKUJMyr
         ki2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XcH/h2wL";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u8si150478ybc.2.2019.10.23.23.45.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 23:45:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XcH/h2wL";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id l3so165272pgr.8
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 23:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HTmtF1bjGdyxNtX/Ai7qIqVxCDih6zWUo69Ek4GpeYM=;
        b=XcH/h2wLMoA2NZHwoj3OQdttV9PALH+m6jH2oYGEh5AtpNw1ooFKa7I5asM19ryxC/
         KlH2zsIg5YR10HSjRwr58DBwlLdN/pElx2ASix3IZZ2+d9Y0ipo5M6gcgWRbBPSLX1Ap
         nkJqOSx1lI4FExWoMYtbdIbC/JB9u8qSkU+//SfQUWiM/CZJB5YL31+wgBiGGOICcBiK
         9jb7zypYYG9Kbe4dkd6YT8BueLwrDtXKHdAf4zzYaGNIZnUPwbIQeWvIEA82eixIbdR2
         dH35UujQa1Hae8Go8YaCZS5oTaJJgpk0haUnVpzvP6JRB3UFZUV41BXfd66xC/hajuaN
         UrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HTmtF1bjGdyxNtX/Ai7qIqVxCDih6zWUo69Ek4GpeYM=;
        b=amx04ElOD9xjK3cOglu78IjFPJuW6y1zmqTsZF6y0C+0Q4o4brFbNfac/Am5Vb4PoH
         gyYXjkA6EZG7WvW7qKpkE0y6XFzJgZsDyiHVg6z25hIBV5MHTg60ivNozwzbtRZQ4lPT
         7tHllidjMLks6XvtYmS3R9G5XrdPBoYRcie9XjATlyPrRgJ6loo2knjMBleRIRsUMIGM
         I4eT1318EndY4HydXp7YVowJwZza7eePBxpGA8lB5ne5BsiC6fkVfQB4KGTF0SSnNMPH
         2NEfoGrT5Ci+NbDsfejwhJ8wca7M6MakXPWmp004G5+x4t2zpkHehqMxw+kAAyKYgDny
         BttQ==
X-Gm-Message-State: APjAAAWZDANGZmFn9da7smAnQ4cfx9dV/yJ673b5/8OYT1S2uKmLB3Yc
	HTyBY/NXZEVu6WrNrYhOQU4=
X-Received: by 2002:aa7:8b16:: with SMTP id f22mr15459977pfd.17.1571899544591;
        Wed, 23 Oct 2019 23:45:44 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id v2sm1082301pjr.14.2019.10.23.23.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 23:45:44 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 2/2] staging: kpc2000: kpc_i2c: Remove commented code
Date: Wed, 23 Oct 2019 23:45:11 -0700
Message-Id: <29447ea8c991d6dfc146503ba2d0a1837117b34c.1571899299.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571899299.git.jamal.k.shareef@gmail.com>
References: <cover.1571899299.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571899299.git.jamal.k.shareef@gmail.com>
References: <cover.1571899299.git.jamal.k.shareef@gmail.com>

Remove some commented out code.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index d133b31d41e5..04ad5dc3864e 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -144,7 +144,6 @@ static int i801_check_pre(struct i2c_device *priv)
 
 	status &= STATUS_FLAGS;
 	if (status) {
-		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
 		outb_p(status, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
@@ -527,7 +526,6 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr,
 	}
 
 	if (block) {
-		//ret = 0;
 		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
 		ret = i801_block_transaction(priv, data, read_write, size,
 					     hwpec);
@@ -683,7 +681,6 @@ static int pi2c_probe(struct platform_device *pldev)
 	/* Retry up to 3 times on lost arbitration */
 	priv->adapter.retries = 3;
 
-	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
 	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
 		 "Fake SMBus I801 adapter");
 
-- 
2.17.1


