X-GM-THRID: 6610529510960922624
X-Received: by 2002:a0c:aee6:: with SMTP id n38-v6mr23211677qvd.17.1539133840271;
        Tue, 09 Oct 2018 18:10:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:bfef:: with SMTP id u44ls2092025qvj.2.gmail; Tue, 09 Oct
 2018 18:10:39 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63FHR4hbffvD1+0EY7tkyShr41zIFbma/rMS1pjOlV/czboVZn5fwv3rmBZiKJ3ikMb+Sw7
X-Received: by 2002:a0c:9478:: with SMTP id i53mr4557137qvi.32.1539133839740;
        Tue, 09 Oct 2018 18:10:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539133839; cv=none;
        d=google.com; s=arc-20160816;
        b=RluqFdPSxBHn5+/BQCbaWrnuf9/y/FS8EZ6NqUkhvFVoBEKWZWR7Zi0nMlF1ytEoOa
         UwQrlj71TO31jhgvyLQyRDvYw4EGljyIaiurhpqvcYSfSbplogXejhc+/NERK5daOXRp
         xng7YNX7ETfQ7GiU+TRvrE8yS2rHSe89iRDbaktnsFLhq6rdeDnnat2Qn+i1M8ipncnF
         2WR8xHklsYcGTSmIEXhR8fNUl7PcPDNLMK3ZML0QS+GjVPVaAM0D3A0mGrEj6B920WCo
         pR2uXbR6oIumU2dGIwVqILPRrgPiZBnBm272b+w3mpeaAg36YdEP+XbtRX8QZQmhcaB7
         GMFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2uzGJA4n3P6l/h+H0xTOvkQLieDYf0vLs3eMvVoPLbo=;
        b=RLOL4l5ZKjOp01NQtxirZTJvztknrgIdMBDScSNgTCQ8Yn1wWV1FuEnVMnekMjOODY
         qiC6s7dyowepeZtgUJgODWF6kGJ+e8iICahkcxO937heFvrwSBwJQndUuvT6X5MKKsSu
         /ehCqmyechaHoGLzaU+AsSR7E1B3Lx5ih9b3Pwcg5pG3sg4bPe/v16HWn9MckOERr4rv
         CTPiUHACagSjhcTT1uVgCIgM6xbo0/xMR2qaW3rebKlkEs6zZ287eCTpvHvmxQpxsq5m
         wgmH5rD3yMDvdbxaHOhoEcGQy669kZiQH/xcjn6Y1FgUTpfd+7h4ii0HGmjAEtUuLgOS
         /1vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="L4A/JRsA";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p9-v6si1061741qte.4.2018.10.09.18.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Oct 2018 18:10:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="L4A/JRsA";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id c10-v6so1673823pgq.4
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Oct 2018 18:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2uzGJA4n3P6l/h+H0xTOvkQLieDYf0vLs3eMvVoPLbo=;
        b=L4A/JRsAaYG98+eY7yMpBmcNEImuKZB50OukvcSDquER040Kz+P8MPRRLLl+TnPrzH
         KFoQlrj/jfMgCJNR38NOEUMsFih9TMotZCrLr1vqiZZ8jxhhjL1V2yCC10VnH9Wul3CJ
         lqZm+I5ueKC9pGiLdBTZMLhEDyEVi3qxe/axcj87FCVt4mH4QPjJRZnTVfF+OxdNbbey
         2e9xWdL/ddvfFKa83sA8Up/T2dzof5FpXa6KrE1cvcUlabS3y8VsNb4MkulrGBqQJwGG
         JHYZsh39h/78Ts7xbEsdoAepVOuTvamRBzZNJ3lemVjpyHz1FQuF31hI3afhS6sbbOwH
         W3/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2uzGJA4n3P6l/h+H0xTOvkQLieDYf0vLs3eMvVoPLbo=;
        b=UULJslv7Lh5qtQX21lGFYbtUFV1iRVs+cKtnQuN4lYD7LXuNe409LCoC16x5WUVg/h
         oPr+PrMpbW6U9/I/ZoTySB8B2qXkRPq6ZTQ7O+DnfRezxF/0In+8ShSnzqsSd6Tx7OhV
         qx5fVg8pSg0L94HWdaaWxTuAzNxkv7TOFCRlAyK8ojNfi0uYd/uCMGx0c0Fs9gTW5ISv
         d72dLm0lA9IcgQ/+tOsDZYSpheHtr0N22rZDvOElW2mi8bG3Ko8CfumSxrOiiaab77cJ
         k0kkcAowDRyCGiZaXSQi/nGYjZFEJT+dQD8UOcBMpYoocAwipAJGP8V+t3ALKd4n7OHy
         PJmA==
X-Gm-Message-State: ABuFfoiCdFPHWfJ33k+zqqo2y4GqKj+CoiCCxx8lcUkivG0qtbXjckOU
	uIXRSOaXcx/bVeLAJw5+MHDgjHx2VNQ=
X-Received: by 2002:a63:cf0e:: with SMTP id j14-v6mr27621678pgg.195.1539133838776;
        Tue, 09 Oct 2018 18:10:38 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id n63-v6sm20615930pfn.9.2018.10.09.18.10.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Oct 2018 18:10:38 -0700 (PDT)
Date: Wed, 10 Oct 2018 06:40:35 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com
Subject: [Outreachy Kernel][Patch v4] staging: mt7621-dma: Delete unused
 define
Message-ID: <20181010011035.GA13421@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

delete unused '#define GDMA_REG_CTRL1_CONTINOUS BIT(14)'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
Change log:

v4:
-added change log

v3:
-modified subject line
-modified commit message
-delete unused #defne

v2:
-Fixed Comitt message in place

 drivers/staging/mt7621-dma/ralink-gdma.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
index 6d9fe175ea52..73dbc7fe38a2 100644
--- a/drivers/staging/mt7621-dma/ralink-gdma.c
+++ b/drivers/staging/mt7621-dma/ralink-gdma.c
@@ -47,7 +47,6 @@
 #define GDMA_REG_CTRL1_REQ_MASK		0x3f
 #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
 #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
-#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
 #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
 #define GDMA_REG_CTRL1_NEXT_SHIFT	3
 #define GDMA_REG_CTRL1_COHERENT		BIT(2)
-- 
2.17.1


