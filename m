X-GM-THRID: 6392997475785900032
X-Received: by 10.107.146.215 with SMTP id u206mr4205955iod.29.1488489554689;
        Thu, 02 Mar 2017 13:19:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.6 with SMTP id q6ls1920430ioe.4.gmail; Thu, 02 Mar
 2017 13:19:13 -0800 (PST)
X-Received: by 10.99.110.1 with SMTP id j1mr5780963pgc.52.1488489553659;
        Thu, 02 Mar 2017 13:19:13 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si1783937pfk.0.2017.03.02.13.19.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:19:13 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so7816861pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=uYdUr+taZ2L5VUFEs7VBxZMJN52FAF73v8gjBqDcARkwMaFiqQwb5gJmpZ0j671JRe
         3iIbMuSZi/N+WI2vRgYx+0aHXj8S8DSLjK4tts+DPbuHnNDH8LmA6ImUvdFCX4ijVBWW
         KwZcy9JMgFIP6Ktd1UyoUZVYOoW+c99S7azMCYf7hVdjtXY+akSAKMwTdoO34GjWL1u0
         oRovO3d30rCTt5iYaWxqvwEPaZM1fJ7VkANP3aM02PL0VPXpvsMaxsJua1VJSM0ommzd
         H6U8deocwimhxKwcGaYXGc8XV+MDbJJlTJogPWclzMsb9IYuDZJdRYA5nz6QavFUQAZX
         5yWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hRDcKLqcQlGruaCoetldLID6JaNigB9rqxeQfkV3xps=;
        b=LE+lHaSVdb3QmR82O9nEJ9UyOK+E4Rg7z3gveXDtTOIdPZBLYxnDn6dRbEszzeHDKm
         2hiwSiYnJnuHBIdL6wcyT31Wsfd/5Xv3pO6L6XT3qNxFvvIUbd4zRD/ybdeEJRV3fgmF
         1vPXaad6bPZGNqvb2ElYzaGFYWscGNT124JceOzEH2LeNalZioAKbrVcfcQI/bXDnvDJ
         ZJVitfX0SfM8W8YVtItRo8zfX68MNPuNOyOI9irpJfgaksM6dWmNhZ3Jx1PHoq93+EUk
         ABJ6Jpo7SjON7QP4weudc22NDFicO/V9B9oj3Uz2oT0T5KdrPrFXEPJm0QNAHn6Q/ukQ
         HHvg==
X-Gm-Message-State: AMke39n3HYK+xHBRi4M4bHwYfo7VFbTBh9gvKxo658pfFoLeCCHPzY5mGrU65WpLJfLJmQ==
X-Received: by 10.99.167.9 with SMTP id d9mr8798303pgf.19.1488489553452;
        Thu, 02 Mar 2017 13:19:13 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o26sm18960223pgd.25.2017.03.02.13.19.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:19:12 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: lustre: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 02:49:01 +0530
Message-Id: <1488489544-25941-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|
- (T*)
  e
)

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 271e189..09b46924 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -640,7 +640,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 	int			remote_gf_size = 0;
 	int			rc;
 
-	gf = (struct getinfo_fid2path *)karg;
+	gf = karg;
 	tgt = lmv_find_target(lmv, &gf->gf_fid);
 	if (IS_ERR(tgt))
 		return PTR_ERR(tgt);
@@ -657,7 +657,7 @@ static int lmv_fid2path(struct obd_export *exp, int len, void *karg,
 		struct getinfo_fid2path *ori_gf;
 		char *ptr;
 
-		ori_gf = (struct getinfo_fid2path *)karg;
+		ori_gf = karg;
 		if (strlen(ori_gf->gf_path) +
 		    strlen(gf->gf_path) > ori_gf->gf_pathlen) {
 			rc = -EOVERFLOW;
-- 
2.7.4


