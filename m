X-GM-THRID: 6807378568444641280
X-Received: by 2002:a37:7d2:: with SMTP id 201mr21287063qkh.146.1584966375233;
        Mon, 23 Mar 2020 05:26:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2521:: with SMTP id v30ls6079986qtc.6.gmail; Mon, 23 Mar
 2020 05:26:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vswbMybQDUJDYdeF3tc+CxJoKUo33CLBIzCTjes4jaNaXL9pVxvqjSjgmZa3VaLg1QdRHmd
X-Received: by 2002:ac8:312e:: with SMTP id g43mr21451347qtb.360.1584966374153;
        Mon, 23 Mar 2020 05:26:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584966374; cv=none;
        d=google.com; s=arc-20160816;
        b=tc2oAedvJHBeujuXOW/9zopXrhrEB/0FWKJ8QX0DepcPJtVTE6qx2mHxJb37VgFIJp
         wUV3z/ABg615vM22djM5M8jyHN7vJqwTkob5iPaqd4ZUvOAL02Rk93o7E1Arii5/RD+P
         wdv4fA7zsheGI8UgHjPKVMu/lBLkrzIILk1p2bdNyEAHJF9HSy+PjvmB1lvFShKuRLrS
         MtBVPRmhSnHwSjm4yTuBmDlDEj1HHOHytseaIVZM1JnSaLMMwQUjFdisC8gbn/NC07Xc
         1owcexjs4xy7LQOYMXBYC0/ckDgyL8W5r3JPEb1iZk/oW/kxih7IsSQYM93e3bzFu0Mg
         p6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=w0Yz4abvDwaBv8tpSSj6kFGtoqdwqR3e3Q/+mEpLie6bokHTaSOL399fGAeEh5dN3K
         H1G6b6boUlC2OA9EkRnq0yM71nwBUq16rUKTChtum+KEU3lB7FMYwxJINZfw2Q9v5ujG
         kg/fT4lBXVFhUOeF5DEdm5aud5IHA49oPLByGSaMwPin7YJlrZx0WUkLnviqFj6GUAjZ
         2RSgnda1KZM4Xe1nBRmMSqr79G5IPu7/qIbB+SgjIp0Q4wPZSCLYqu0rvTzKQIlO4IyY
         4J9zRmS8aRPDkOHPOsrw11uj1YJM6zLvR07HQtLzwgVzvHTt8B8nunHt4UMI7k8DRqiR
         WQvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RtnBlZPo;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c194si787832qkb.0.2020.03.23.05.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RtnBlZPo;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id d17so6550268pgo.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 05:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=RtnBlZPo4hdnDnaGaFQDQUg2beNwBLXp8p3CMaCTNveliaiH7lMtfdPX1w3/28eKGY
         ACnmnP/LySYQmV1kdq3gd4MbWhW5R5V35/C2qY+xEOzoFQvX7MdaHWSNAflbqA5p5NEn
         eo9m+n40QsVboM9iIqSX8eSPv6/HC16vVDI7mc2LoxRYsSaUxFW3AQKjvbhDyF7JVVZp
         5bycbDnQXnSyH0RofB5Zi+6PDff6ITPd5D5a9CAAkGbVQBiTmFuwAXfPob64ovmf238s
         jjCEeIBhltSNVvOwWUYjOhrBdDGt7+jVMzttDXHbIfBT1iWjDXT/YfHB9/+glacUCAQ5
         n8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PVVRwWPArR6g3TOckqFzLY7mwGhA6bwaXqptdlTRg70=;
        b=MFaa8m4nWyQEi+i9+tnmrdABFhEv6Un3cRlR++kr48pSU983ozyR2t4Jpyu7oqwFJ9
         A+iTsb8jfbzWSaQNMVfBBlvLGX+v1gKRIKmPHjchEdK61bcs1Itd4iCVnfrHp4GxgdNs
         LXThHhg3b3gehTxplFJaDt9vo4N6w66RSh/CI2DCEzYwlvp4lXxLO79GTRuAA5rcZ9TY
         v5zx2WymC/j2F8vvmq5Ev2DtP0lIbSOYEw3n4Erzce6IW13g6/0yPieBPVj/pZmqiv4J
         gKFg5KkxDVMZMKMdK1TR6KpghMyGnPAGVQFpVFcog9rGMI+PSX3bCIveWtSo5gQ0NQyr
         Kh8A==
X-Gm-Message-State: ANhLgQ1PbRjc6c84dXVACyC9Y52K/olj1lK9aPYzF9jjGWPGFWTWPcw4
	axCwdBn1oBcwfVwjSuzW/i6HeggA1vM=
X-Received: by 2002:a63:5124:: with SMTP id f36mr20479271pgb.288.1584966372921;
        Mon, 23 Mar 2020 05:26:12 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.207.88])
        by smtp.googlemail.com with ESMTPSA id o15sm6796602pjp.41.2020.03.23.05.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 05:26:12 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v1 2/3] staging: hp100: Remove space after * in pointer declarations
Date: Mon, 23 Mar 2020 17:54:25 +0530
Message-Id: <20200323122426.60340-3-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323122426.60340-1-debsoumyajit100@gmail.com>
References: <20200323122426.60340-1-debsoumyajit100@gmail.com>

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


