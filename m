X-GM-THRID: 6473326624929480704
X-Received: by 10.99.60.17 with SMTP id j17mr66095pga.127.1507188804244;
        Thu, 05 Oct 2017 00:33:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.216.152 with SMTP id s24ls6386082plp.5.gmail; Thu, 05 Oct
 2017 00:33:23 -0700 (PDT)
X-Received: by 10.99.108.72 with SMTP id h69mr2440863pgc.31.1507188803276;
        Thu, 05 Oct 2017 00:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507188803; cv=none;
        d=google.com; s=arc-20160816;
        b=YUQsiV8tEEGftbIdxC2moHNnTsV7tDMdV1bCRlN4U0vZwBdTlHLlr/T88ZO2WAw6cI
         ktcid3gZAp2G9T/YOUOiP9xgSfn/zwiyVf5oU3cXwgqiyw5G+aniluUkqYmwFztstr7a
         Q2UsKkC6Jyxg89i5H5ErIPM4bhtNVmjxeDZX5LA9DhUIaQXWhk1c4YN6a/7Vwjw9SPMz
         MGT/FWB5TKX/4P8RT84cKS1IjZRqKDUsfqhSq2TuoRT81xwzlzNgR6ctCYkWohAnyUGX
         074P9wl5Lj8GunFs8Rk4wZwG3+QW8FHGnTAV06hW6jvdT7ZNnLt4Xm+GRhqbjhQI2C/m
         VH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=RbtMO48bkX8BEHknocpRbt7iSt+KB35qzlkvP6jJKAY=;
        b=ja/OLNoA7B4EDs2Ls2FMsvx8rgZCrtjFzJ2y+s944c2Shbb0PvmMan9qjbzQIOFLgF
         Wg7AhfuV4RJMX/yRLb9czGoJQVi6M6uIiHckwfAK5V6qcFvdASilY/YQh5YuJAqAswP2
         WT1VA8IZKdfq6YWFWhY6EtvT4H2ZzIsjHmhtMIfRPhZD/4WYAijdSTp6C9WdN2AZ6ZL0
         v3UUED5tHgD9mknLCO32ohNh1pvr7PejpkHQoavlmVifjVWtErsTlRdjhCL8tMbjGtDR
         wLZnZ1w70pN7o0HpxP+Zv2WdJgZ63a/ycoCrKEuPXqnOtU5QDHzrfGlMMJxg2hcht8w/
         GDNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iOZtPcy/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a28si1149064pfe.24.2017.10.05.00.33.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 00:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iOZtPcy/;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y192so15174493pgd.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 00:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=RbtMO48bkX8BEHknocpRbt7iSt+KB35qzlkvP6jJKAY=;
        b=iOZtPcy/JkFEZ8RtQT9wjyrEpJomeSUpBv35fQdPZchezbz3NTr9dQ73mZcyuL9kNX
         p8FPHfYn9bDNfamvPFoNw7vlTWgG0Tz6pjPcBUsneOK5d4YZoAqmUyRs3G0hLXuy14Z6
         ZqBP3qVUWqQuRr6Mhd9sKvRCcHD0URbVcy9lGD1u9UOo5NtlLPPofOLcWvxDbEX/ZhPO
         KCI5UYAO1pPYxliFGKJXNa1jESlfWrAaenno2F7Vyrb1n1Zrsq/lw17mC7ZTQM81ZUa0
         /ERig0yuexDcef//qBSmtUWeA6eanpy9z0AEm+diNM9OwXB8qZ5EnPAKgyJrm79UA3yF
         lMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=RbtMO48bkX8BEHknocpRbt7iSt+KB35qzlkvP6jJKAY=;
        b=ibavqZC6LL8EuWU6X1lA69KwZ7TRiMVpsMae2xq378IyeS0Kt6Yeo8KXWPTGTitnXH
         khOoZI5r0GvPTYy04W2lOGA3AnchSgaO7HZbm/xHO9LysY4gDhKJWlOwtckj2WCS3wU5
         XxEZ3iePhDFxPuJHjjVJJj2wjcf9fr3ax6STtaL8AdPBHDrzjAPkvEdq+DrS/oDk5C1t
         +Tzj20Wr+PV2Vd8M/ieNfxeQEkIl0mg0VY6f1w7VDfuK0vnrBbeiHHR5RpD/kkyw7Ttd
         LbVGuOu1f+XN/PK3c1e3D6URCGyJeMUb9s9G2nSiLCyHEqKjy+oEQ82kQIa2liw/LBNF
         bI7A==
X-Gm-Message-State: AMCzsaUp0XJukR27sLtW7aepI6SRUYAU8ZLKnFqzXishRrWyDPLluVOj
	PkJvEWXOnLcNJA7I1WAQwo8=
X-Google-Smtp-Source: AOwi7QBW1XO01xEVe6cjYdV60sRrEb3vetxAj+u3/Y1hTTtkNtBJ/BDQBBMSVTZMCOj0ES/s526wOw==
X-Received: by 10.84.169.67 with SMTP id g61mr9109959plb.107.1507188803062;
        Thu, 05 Oct 2017 00:33:23 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id w27sm18910540pfi.18.2017.10.05.00.33.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 00:33:22 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] INSTALL: Update dependency list and configure with libxtables support
Date: Thu,  5 Oct 2017 13:01:09 +0530
Message-Id: <20171005073109.19874-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Add configure with lixtables in INSTALL and required dependencies for
the same

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 INSTALL | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/INSTALL b/INSTALL
index 3e9a6ad..04981f1 100644
--- a/INSTALL
+++ b/INSTALL
@@ -18,6 +18,12 @@ Installation instructions for nftables
 
   - libreadline
 
+  - pkg-config
+
+  - libtool
+
+  - optional: libxtables: required for libxtables support
+
   - optional: docbook2x: required for building man-page
 
   - optional: docbook-utils: required for building PDF man-page
@@ -51,6 +57,11 @@ Installation instructions for nftables
 	having no other use for libgmp.
 	Note: This decreases the debugging verbosity in some files.
 
+ --with-xtables
+
+	For libxtables support which allow input of tables with -f
+ 	option in nft.
+
  Suggested configuration options: --prefix=/ --datarootdir=/usr/share
 
  Run "make" to compile nftables, "make install" to install it in the
-- 
2.11.0


