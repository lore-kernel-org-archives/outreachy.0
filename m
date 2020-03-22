X-GM-THRID: 6807027945867051008
X-Received: by 2002:a25:5f06:: with SMTP id t6mr24930009ybb.517.1584884698945;
        Sun, 22 Mar 2020 06:44:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls2875729ybp.10.gmail; Sun, 22 Mar
 2020 06:44:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtPjQ9gt92Qjyp1zbWDs2RG99BeKP/xbvBNW00ZK4lm1VAlJmvLpil6YdU1Ras+JnvvWAkI
X-Received: by 2002:a25:814a:: with SMTP id j10mr28348094ybm.262.1584884697621;
        Sun, 22 Mar 2020 06:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584884697; cv=none;
        d=google.com; s=arc-20160816;
        b=gvQ0kyPgaSoL4a1QpV4VtJzPsQavE2fvof4zfT3MplNNxsrWakNOrXZ8iOPG9s6pI0
         yOKWTtkUZ8gHKn+Yi5T4F6pDcNh10P9pmA0vVbtVCECalcI+oWzcm11snSTuHAO5Y8BP
         kfR0Els7Jl66GHHdQL2iyTCa0HqavPkTYtZcAmAHQqyM+pdrEfTZshWzbwRYO3VfW2sc
         rPncsOy+R4X75ulTnEee1PdM8U/OoHCMceghzYsE1LJ/xH7fxBCfMot9vBRGbXknntAu
         6/tzO+CEXHk04OPvaf7THB2T0fTgqj1aPHQBndS8C2VoGKVuW/YFjkR7VdMhPlSey3rN
         jV6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=A0uYQ4Ksq5J9OpZhZ66ulsOrXCPBdoxB5eaBceiMcDzVRLmzMvTgHCTuLbb3+3QXd9
         jMgWB85NjWS48caAXuIMWwxxRDDDw4C6583dzgR9fcQx0BfyyZKtbZ0vbAbrXsZsOzgd
         cpEzzFIOEXlgARJK76a+oAco//NAwl3dN3iKzxVq8LWK/nSMLi9EPiC7K4Pznrr5qrrO
         an8g5eiu0sy/Zefuoo9/M7IFf/j5pcp6ZBNtTaTsRnOa4akDwaBcAXERpEuP6Qu+FR29
         2mpdG8H7dOX24EfsBt40jX7DmAZ4AlAAJkn8tgv9ilCcoffUNX0XYymy5qxVnENJIqEW
         UAxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ePzkzDrp;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 207si589166ybe.5.2020.03.22.06.44.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ePzkzDrp;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b1so5739023pgm.8
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 06:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=ePzkzDrpTQscG+5tB8IFHyIXu5PZdrxBjo4CMBNYU6/wGca2GxMuUHjaMLYT+b/yMA
         0k5Bo5x+I7MOAtWzwMBv2oYuH7a/EUSt17wnwtkg4uXK0cF3kdzFIL3OKhkkmqmngU/V
         9gqnpsqlyV+k+MGxqnnlOBnNAEcsgWABkybJaW49M9pIcPQPpmCli01gC9qUsarpZTjA
         MRB6rH/bPru0GtfZlVGu79MYfe4B5Zit0D038fCsi6V6U4jftR6LAHXcxzocAKwNPfpj
         bj8xOTzahsu5sm3voqIb6LIvJNgr0vYV/mvjkU3tBiGiE2SQKk737v3Ko/SQ5XmdyZ2O
         YVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=roFQ+g7Gdcil4aE4U9WX+rDo93+jYCa9i4mbBRMfBY8pxH3roGkrOv4GTkU458lMv5
         8m7O2Fs1WymWSoLfgALJ6dRG6FakswmDHg22mBT4MSIx+9cMvjA38DbJjxjKyWvB3R66
         200XfyCqOzwIK5vpxYMnd5PovyLqzHWTWtt+7vByC18N+1RwKtgWPBp7HY66gREWvpbn
         47/jyTMOFlLT6WG2vygOKBk4qHDE6nIgpPubnNT2PrL6qs60ziIELi7Ejkc5gWytQ+em
         v4HtstZDQ2zwwcj9Zm7YMz4YQd/4yqy8JDjs+4hkzHlKTHwqwsdlIvkQe0ImLfPB3gCO
         Mx0A==
X-Gm-Message-State: ANhLgQ3BJffxl1v1g+/5NSPrDS6LtKEqN+AGrkblPqmz64Kz/+3sQiSt
	Vfl+iA9eQ6lIJ8ZafFkzmR0=
X-Received: by 2002:a62:3844:: with SMTP id f65mr20093266pfa.255.1584884696605;
        Sun, 22 Mar 2020 06:44:56 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([47.29.177.68])
        by smtp.gmail.com with ESMTPSA id v14sm10684030pff.30.2020.03.22.06.44.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 06:44:56 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:14:47 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: perex@perex.cz, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: hp100: Add space around + operator and remove space
 around pointers
Message-ID: <20200322134439.GA30399@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Add space around + operator and remove space after * in pointer
declaration to improve code readability
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..2cf1104cd2dd 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -119,7 +119,7 @@
 #define HP100_REGION_SIZE	0x20	/* for ioports */
 #define HP100_SIG_LEN		8	/* same as EISA_SIG_LEN */
 
-#define HP100_MAX_PACKET_SIZE	(1536+4)
+#define HP100_MAX_PACKET_SIZE	(1536 + 4)
 #define HP100_MIN_PACKET_SIZE	60
 
 #ifndef HP100_DEFAULT_RX_RATIO
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


