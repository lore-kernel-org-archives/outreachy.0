X-GM-THRID: 6211463142533234688
X-Received: by 10.66.161.104 with SMTP id xr8mr5617420pab.26.1446218976018;
        Fri, 30 Oct 2015 08:29:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.24.6 with SMTP id q6ls411556obf.41.gmail; Fri, 30 Oct 2015
 08:29:35 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr6666341obs.14.1446218975715;
        Fri, 30 Oct 2015 08:29:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iz5si673691pbc.2.2015.10.30.08.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy1so71391735pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=iKzNDNRk1Wez6FjhLu29kzqis4eYHxAzfiNNVgoXJ8Q=;
        b=yQVHMHbVpD6MMgtwQaPQRLBaLnbB1CKj50W7MaPhfuSAGoxucMGbpWxDGMNunqEcsl
         pPM3Mvz4H3pGkshlKkEcN9fnneijjXG6q7uARzJX6KGM92Ids5Yz3+H/cPvalg7Bk6T0
         2ENrvq8elcCkD9eqRKNVB3611yH+1vhYBxiIfCZcUSy2FGdvGN/rVynnsQAYmJse3yhx
         Ol8HtTJy6Aj49ywRL/IYQRixi6wIPMALkCR4nwGsDjfczS6a37f61iHmKT8xng/rF2Fa
         RDKJgvsuR3+OA5VFxAGCMg2zvQXI0JskLKZ8vZiIf2GZqIrkMmPyQlcI+0FFxY+x9XvJ
         7L0g==
X-Received: by 10.68.173.133 with SMTP id bk5mr9461863pbc.133.1446218975581;
        Fri, 30 Oct 2015 08:29:35 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:35 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 6/7] Staging: lustre: fld: Remove unused declaration
Date: Fri, 30 Oct 2015 20:59:08 +0530
Message-Id: <1446218949-8599-7-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CDE.007A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function fld_dump_cache_entries is declared in header file but not used.
Hence remove the declaration.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_internal.h b/drivers/staging/lustre/lustre/fld/fld_internal.h
index 88ec7b1..959b8e6 100644
--- a/drivers/staging/lustre/lustre/fld/fld_internal.h
+++ b/drivers/staging/lustre/lustre/fld/fld_internal.h
@@ -161,7 +161,6 @@ int fld_cache_lookup(struct fld_cache *cache,
 
 struct fld_cache_entry*
 fld_cache_entry_lookup(struct fld_cache *cache, struct lu_seq_range *range);
-void fld_dump_cache_entries(struct fld_cache *cache);
 
 struct fld_cache_entry
 *fld_cache_entry_lookup_nolock(struct fld_cache *cache,
-- 
2.1.4


