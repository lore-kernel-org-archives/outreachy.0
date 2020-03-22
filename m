X-GM-THRID: 6807027945867051008
X-Received: by 2002:a37:aec3:: with SMTP id x186mr16352487qke.419.1584884949336;
        Sun, 22 Mar 2020 06:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:56a:: with SMTP id p10ls6306928qkp.2.gmail; Sun, 22
 Mar 2020 06:49:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvFRtNVX0dwAg6BmC6huxkC72KCE3C5VN8r+g9aMkH5sEgF0K5KJC9+bVPewMFCq4dTkF0P
X-Received: by 2002:a37:9bcd:: with SMTP id d196mr16779176qke.212.1584884948098;
        Sun, 22 Mar 2020 06:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584884948; cv=none;
        d=google.com; s=arc-20160816;
        b=GH0Y1PLndVMeRZUTwPi96l4k80Js8zwUlA0joO/8USMKuk1limmw3uihVIs2TljhXh
         fj02o+twRQb2XbfAFyBnjXv/EOIhyp+fEwdmafqIgGCNogYoSOME7K3O9S3dxQcFwLY/
         R6KT7B8uqeipEDeZijL0jiUT+GfXXa5HGesYE14J6nQ9dWjXikrOjUBwWveO7X+lp0BH
         ZsWsQjFN1ovrAESvHG/Y5uPSbtYBZZ0qLWRBKaqAkBRLR3f04b1NWMBQHXz6RB2986/b
         qN0VXQZKIHF+wnAbJLQSs6HHaekGesTXhbYpxyeZK53/2Tef3PrepS9h1Jwrh0Ghkmx2
         nYQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=Ia/lncv9DfLDOyIdFQvqG6nHc2wi4LiwCX+9ngVIoHKWeOBwiZxYUANJ0mNLQXbTBY
         XxOx/K6SJ17DufqGp4404vde7VL8yGkxJrYf3CmiVFpVOhfVXtTFNM6igMBPtMzKDqjK
         sEAlSgRhr8dOBCJ3mUed57RdE09qFhROKWuWCptamj3APRTRxyDKc9840hg1Mog4RKDm
         k3fPw23KdrEKDNIEq2G2RAk6GsET2k9xp2rHEO11kjbqlTzKjZdXE0oVqoFnVWqTDEt/
         dACRKz4vNVXn0DQXSljveCOGMFozkdoduCibp9xOmy9oFZbT5mqFCEZ+sjG0hj/EAoWK
         T0qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjN00tZ+;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d34si758932qte.4.2020.03.22.06.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 06:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cjN00tZ+;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id o12so1030268pjs.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 06:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=cjN00tZ+wPwgcLeEeWJteVpTL1H853Hye1vTdJ8FU76GUw2XULbB/gIx3Gs3pPvL5E
         cdq2FZKt7ilVHwH8FknKbr4nowUzZ+mN3kL120IMWUElJbwO4bDFRbNf2dPJJjdGUUQv
         YxWgIQnIUJirl+bjwmN/T9r7emvDuQvgfVfvtACLG3NHGjkyKxRulI2sQIBaMLFhkij0
         w+/fiUDXKg4VJZYCfl2LVP1Mf7hQ6OI3GFjWK5cEFt5s1xZ1w9REejHCTUQhWlgtK3e+
         q5fKTrosO3Uojom1eLy87tn90aLrBYV8nBptg9nu0nrWHCTliBopNeb627hmP2CWCxqs
         iueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=giD+NiPmEzW9LBEIfXHYcLbtzRU5t7RdrF3Bf+j0pj4=;
        b=OM+NQua9FaP8dRfIU6BLyGaoO1AbFE0CBokF3RSEVyZNOgQF2t5BCvalTBd3gKObdj
         vLOj2XWcoj7kt+Bf+QMCnGITnKWYjLaK9hY/nbds2VorL+RQVjZJWaFowV6BTlzAzAeh
         vwaNumj5tOaJ3K/4djX50Lk8jaKtd3t8BGpsDYCA2PvN/7F6XAO/By+oJ68sNiWSzDDy
         03J8FbmqG2ye2PIdexO4gkM/uvv30I8LHcHQxivTLdkT1JqkgJ7uSQmQEAOJmv55Og1H
         xYHiUq+tQjoZmlqV3fL4SMxlNOX+aR0hYSHeIMhQHWrphZ7WFpYle3BJCzbB5e4Eo9gM
         C76g==
X-Gm-Message-State: ANhLgQ2DAmIX0s1nNQO6DMrmobYSfsKwQnDUuGoJ4b900vQUqKq+AD7F
	QgalJ8jKYWWs3V7rSpfSGU8TQ9fujk7WTg==
X-Received: by 2002:a17:90a:b014:: with SMTP id x20mr4086179pjq.139.1584884946505;
        Sun, 22 Mar 2020 06:49:06 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([47.29.231.191])
        by smtp.gmail.com with ESMTPSA id 71sm11059188pfv.8.2020.03.22.06.49.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 06:49:05 -0700 (PDT)
Date: Sun, 22 Mar 2020 19:18:59 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, perex@perex.cz
Subject: [PATCH] staging: hp100: Add space around + operator and remove space
 around pointers
Message-ID: <20200322134852.GA30778@ubuntu>
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


