X-GM-THRID: 6807040840718876672
X-Received: by 2002:a25:6605:: with SMTP id a5mr29063282ybc.496.1584887700051;
        Sun, 22 Mar 2020 07:35:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls1222588ybl.3.gmail; Sun, 22
 Mar 2020 07:34:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs+SD7a66kztof7YJtW5Twplhcb4+iReNNqZ5Z14k2PHtSeVTV8gUOxeU+t1prgDatlK1mm
X-Received: by 2002:a25:74ce:: with SMTP id p197mr28700927ybc.483.1584887698770;
        Sun, 22 Mar 2020 07:34:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584887698; cv=none;
        d=google.com; s=arc-20160816;
        b=RwKdF073EPcGY9lFkjxwQsSBpPs2wIBv99WXsV0uvCU0fqO0SQ2gQ3IyLukDTJ15ip
         FUYGfYswosty5pz8kwg/gsowuf2Aib/m1XA7mA+Ppd/UxhrIZrNCwXUGxpwjmskuTHRA
         4MoQLc/6gpaIfq58bd+B59XxI3Yb6e7e/hq0foV/mpx2Yvncz6Dg09qZzP7DPjuk4GW9
         REPDxig8vzhKdPF3XikzjAooNgO4kSPE1HNS4qcWwHa0StDLwG7TLJ5fiWtY4W30DFgi
         5BonEmYzUWLgInfLzw0tjW14bH81h+t1cCB36R7tAZjLd7HDNzVa8g53GK76EIjTFPwg
         QyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=EcOdJbtkhlFBLGrVgrlwG8IzSe3Eph9xG29lK2TaoCnRBHVccORE6Y7Oc1Rz15vILy
         XT5iZVeV92Vvuj9FenE3UNxd69XYmoUAONSpUydgPjkBWRE5B9ZI7EeD2oAxYvYlqu2Q
         YlAvxZigNavvdjvQ20E5DPDDJA7nMCOJg6lLvgpJ9UfG0q+2RckXQ82uBhCeY8qomYcj
         vU6obxQSwr5yjT1QWWGXLeu8+TGPHmNiiN3We0pVlRK7tRN2S4nA80AHmkaHyVVN5YxE
         owl3vXEYPQc4DPXkVo/2KKIieslbMfLRUiCt9ysRvE8qwwzudKzh1eYHrXHKuATwk1pQ
         jL+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDztCKyi;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l1si620550ybt.2.2020.03.22.07.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:34:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DDztCKyi;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t3so4728806plz.9
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 07:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=DDztCKyiqTtmIanEuD0HDehTCBihpzcjQvwOve+VeUzORkCg+nRQQWJFQv0WZHYrTO
         lVS507soDOQ6mPmCODkt5DA71E6b2JG7v4uLHOkX9En8F+LAhF2C4BX7TN7cUBjZ5AKC
         izW2q8lA2e76TpIfuDJVpgcnSdI/bL0iVtANu8+KGFm+jI+cioJ6f4UhslDjKr+fvIqX
         ARTKmUmFl5J248gAn+4xhCCwm9RYQNDVBgfNosrLHXpVoa2rohxUTK/2RbH1PPfyjxQz
         Ky/KlDMlIKSJx7V0a63HMwQsk6Rgj3H5VwVHzAAGs2nDY8yEovVC1PaIsJ8dhZwekhK8
         fYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=o/U/yJl7NQX2QM0tidO1hR0MeB8WFLVjBrW/RZ3E0mbGw2tN05+c9wL3ipQFvlWwgH
         uGm3YHlHe2Tm516W18wej1Mf3sM2K9j0gvGEXFKxHJmi2vBa4EgVT7N7453CSjqUg1K2
         ha3FMdk2C7L5yPBb01kY6eethB+SInm/hutvxd79lWEHPVbU7xlRZA+DAJLqyJL3sRx5
         OuRaHryDBTk07ZKpA1pByC4FdZ3yd2yhh4x01NJSdKRpU9Bn5nvlBy3jdn1euq4WK41J
         x5eMkRu+IEgPHNhIxWfap5K1CHVqMSJpxnpesEUyg3BjDrFhPDj1PXFLdLD2Gg5msu/K
         pUfQ==
X-Gm-Message-State: ANhLgQ3oON0fgkUw74L2sZW+9vNeglspBhNVq4Wrp0KOEecnmj1lWrm8
	LTWIw2N4xkU4y2kgUA5O3pu6FM/qIpXM5g==
X-Received: by 2002:a17:90a:30a9:: with SMTP id h38mr18533097pjb.184.1584887697536;
        Sun, 22 Mar 2020 07:34:57 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([47.29.231.191])
        by smtp.gmail.com with ESMTPSA id l1sm9956173pje.9.2020.03.22.07.34.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 07:34:56 -0700 (PDT)
Date: Sun, 22 Mar 2020 20:04:49 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, perex@perex.cz
Subject: [PATCH] Remove space after * in pointer declarations
Message-ID: <20200322143442.GA32287@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove space after * in pointer declaration to improve code readability
and to adhere to the standard coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 00b3db8144c3..2cf1104cd2dd 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -246,11 +246,11 @@ static void hp100_BM_shutdown(struct net_device *dev);
 static void hp100_mmuinit(struct net_device *dev);
 static void hp100_init_pdls(struct net_device *dev);
 static int hp100_init_rxpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u_int * pdlptr);
+			    register hp100_ring_t *ringptr,
+			    register u_int *pdlptr);
 static int hp100_init_txpdl(struct net_device *dev,
-			    register hp100_ring_t * ringptr,
-			    register u_int * pdlptr);
+			    register hp100_ring_t *ringptr,
+			    register u_int *pdlptr);
 static void hp100_rxfill(struct net_device *dev);
 static void hp100_hwinit(struct net_device *dev);
 static void hp100_clean_txring(struct net_device *dev);
@@ -264,7 +264,7 @@ static void hp100_RegisterDump(struct net_device *dev);
  * because it was properly DMA allocated via pci_alloc_consistent(),
  * so we just need to "retrieve" the original mapping to bus/phys/dma
  * address - Jean II */
-static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 * ptr)
+static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)
 {
 	struct hp100_private *lp = netdev_priv(dev);
 	return ((u_long) ptr) + lp->whatever_offset;
-- 
2.17.1


