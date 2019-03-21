X-GM-THRID: 6670775463760101376
X-Received: by 2002:a62:2542:: with SMTP id l63mr117825pfl.20.1553160944566;
        Thu, 21 Mar 2019 02:35:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7b89:: with SMTP id w9ls2775987pll.5.gmail; Thu, 21
 Mar 2019 02:35:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwP9F308fyM3O61kVIYd69cZbP4D338IzL/tWhkc1k/7k5qrw9BmzPhPPINhrEpdxou/0hl
X-Received: by 2002:a17:902:8c96:: with SMTP id t22mr200368plo.95.1553160943937;
        Thu, 21 Mar 2019 02:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553160943; cv=none;
        d=google.com; s=arc-20160816;
        b=KJ8KRcjBqYzW5OWsa9XBkzgopyIPSl4PtIF6otHCSLhOMTypEl3O0I8Ch53IcFJFFE
         oU6964H6kBVR2hH055i9jRwCo0WJnMdABj/qx3uwZjPSRY2TbDrYHH5Yu20ILMXB4scf
         RDtu1usMe41Mh08Mp7fJIui4Fgaz3ayNNdpjw94ekcuRECf/XJ5yrapCCTWiuXqINPTS
         RN0/Lgl3dUCYtFl8VdqIz8huquMmlVkPYPaGWNLCC8wjR9nL9NtwDbNy8StEQVuc5Jcn
         n/hdVh2QhrU5oAcd9jklOPtq0TcrPxkqvqqNWukSa82DPruHs4SgTH9E3yEupx22ejZl
         2Yjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uujv9JfYSUVYGd7aSYr/FUKcwFeTU4Yvv6Q8v7sdOxc=;
        b=V301uyFruKHMchUYmKdi543871fWsyTfYqrV1bG5sx5WAu8IWCxXq+8bavXGxULSPx
         iclm+RaOEmJ9iytqZwP1ChdCv7aCbh2I3axjJUCWAQI8PXArF7gla6GVwnwcxt62Z/0x
         oc7+/QtcN+/WXzHoXL1V9zRJbR5AuAApfzQy9AfqSYSwin02P6xv9CO9BXKkaG/9/pnF
         AEKBZ4dn+xSgnCrlxwJT8eqTVX2S4qJZqkZ8fKdQ5gb40MMnWCiCUvh2i8BcU61dccIj
         VtYy4Nqfb1qM21+DjDn2o9UZOqOVTB2SYSFQjIWqpEGm2Pgwi7tO68nSCwivpDoGXJpn
         n7sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNxhWgGa;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b38si175058plb.1.2019.03.21.02.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNxhWgGa;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v64so3951066pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uujv9JfYSUVYGd7aSYr/FUKcwFeTU4Yvv6Q8v7sdOxc=;
        b=DNxhWgGaHAoNk+aTLEAmIQGWLC15r24EffIQCIH4rl97GbJn+a9iGEwgY8kYZbaWY7
         J4Q+O/8WGlcKjaXuqDU2721wNrhhtdGQQZD9IZeT75MyUs6K+ZABNAnq8ZsyN8D4g+sw
         Afo/l7vX1xxrQk5fZaTAjeKi+NOBpy0FAN59v27QzYLVTk4yviJ9hHpAmJoq2SmXm7oq
         cFKPTDFhvV6Sksx0aZ0GiljgNRY5cr7dhiRL6z3JW6gHWDl88Y+30lQjLrqeFKuPgXAi
         HqVXteNgvk+blAyWXBL7I7mWEXY3/Y6AyAmsd/Qw39lSjOu3PAdYiOPE/BgBFEeF9pOR
         70GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uujv9JfYSUVYGd7aSYr/FUKcwFeTU4Yvv6Q8v7sdOxc=;
        b=WTxljxj727QwUALfOczRPb2aG2HjpRoLKX5g7sCC2o+9ZLXryN5VbP2lEhnSFhzCKP
         G+ml57tW19vUi6Pf3N9O0d9WNScy3zhMTs/RTv+GROqhb8LeaU7XVORq+lPIiXQLLlwA
         ILqKmc0d5a9eFhkEN0kh3FnVtGD68v0oX6CxIuhMOmZdLiB2HvzB3LYT6+3Cx65frKzg
         KRKZWkREPFL5qAhNYf+RgJqyHyuYF1ovSda09gHiZSTvcy0UesH5GTK16hlRWOh0Cy7y
         iNorWCkNwow3pzVEU7Yl7TqOQsh024bqEADMSXNmmO7+XFaITVJOklEHbnxd3E28Sigy
         zBFQ==
X-Gm-Message-State: APjAAAWGO8bpgggqXJ5eHebX60WucRiLCJ1VmCM/pcYMslvmGFU0Ay/T
	8aErgxN+2hpeK9iZNaoX7xjHI+LDvCQ=
X-Received: by 2002:a65:4104:: with SMTP id w4mr2380261pgp.415.1553160943431;
        Thu, 21 Mar 2019 02:35:43 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id a4sm7385501pga.52.2019.03.21.02.35.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:35:42 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] Staging: media: Use !x in place of NULL comparision
Date: Thu, 21 Mar 2019 15:05:27 +0530
Message-Id: <20190321093527.8167-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Test for NULL as !x instead of NULL comparisions for
functions that return NULL on failure.
Issue found using coccinelle
Semantic patch used to solve the problem is as follows

// <smpl>
@@
expression x;
statement S;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

-if(x==NULL)
+if(!x)
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 04f88f9d6bb4..0a99e16e5bd5 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -332,7 +332,7 @@ static int jpg_fbuffer_alloc(struct zoran_fh *fh)
 
 		if (fh->buffers.need_contiguous) {
 			mem = kmalloc(fh->buffers.buffer_size, GFP_KERNEL);
-			if (mem == NULL) {
+			if (!mem) {
 				dprintk(1,
 					KERN_ERR
 					"%s: %s - kmalloc failed for buffer %d\n",
-- 
2.17.1


