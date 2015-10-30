X-GM-THRID: 6211463142533234688
X-Received: by 10.182.28.70 with SMTP id z6mr6416801obg.41.1446218973562;
        Fri, 30 Oct 2015 08:29:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.41 with SMTP id t38ls1057785qge.1.gmail; Fri, 30 Oct
 2015 08:29:33 -0700 (PDT)
X-Received: by 10.129.101.196 with SMTP id z187mr6438522ywb.41.1446218973044;
        Fri, 30 Oct 2015 08:29:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id vy6si781696pbc.1.2015.10.30.08.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so80557380pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=KMMW5enW0u3UxNwzQSiwDhNfZY4r8+yzciSwN1MP8aU=;
        b=FuM14waB3He/37W+gE55rt3VSZgCg1ly/etYyr3Dnwb/mxTB6hxaL9WsCRjW/3BpkH
         ELY87BbswTCXZuIHTEXc4GzlLm7vy8V/MXLVIOZrPuDQ6LSB3Bjiqc7JGQ7FHsjVsRHa
         1iLzSidmQkWd9oNLGpb3mfWwlfCLVDhcuolPgkyT+brFoeBlrFlNMUysBY4OVs2WY3//
         c+P5PX3NA81qZa9RiS4YdIy1xfodbh5jLw4sl4uNjDixX5dsm+oRT98CacBzwFN6fBjt
         fmKqBAwbZgEAEsu04UIlLkl/G80QuEAm2ObdFXZhVAMRYgfBzMJ2DCmKk3+Ud69BV6a7
         mZlA==
X-Received: by 10.66.124.161 with SMTP id mj1mr9368201pab.43.1446218972918;
        Fri, 30 Oct 2015 08:29:32 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:32 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/7] Staging: lustre: fld: Remove unused functions
Date: Fri, 30 Oct 2015 20:59:07 +0530
Message-Id: <1446218949-8599-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CDB.00D8,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove functions fld_cache_delete and fld_cache_delete_nolock
since they are defined but not used.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/fld/fld_cache.c    | 26 ------------------------
 drivers/staging/lustre/lustre/fld/fld_internal.h |  4 ----
 2 files changed, 30 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fld/fld_cache.c b/drivers/staging/lustre/lustre/fld/fld_cache.c
index c4db390..baa0407 100644
--- a/drivers/staging/lustre/lustre/fld/fld_cache.c
+++ b/drivers/staging/lustre/lustre/fld/fld_cache.c
@@ -444,36 +444,10 @@ int fld_cache_insert(struct fld_cache *cache,
 	return rc;
 }
 
-void fld_cache_delete_nolock(struct fld_cache *cache,
-		      const struct lu_seq_range *range)
-{
-	struct fld_cache_entry *flde;
-	struct fld_cache_entry *tmp;
-	struct list_head *head;
-
-	head = &cache->fci_entries_head;
-	list_for_each_entry_safe(flde, tmp, head, fce_list) {
-		/* add list if next is end of list */
-		if (range->lsr_start == flde->fce_range.lsr_start ||
-		   (range->lsr_end == flde->fce_range.lsr_end &&
-		    range->lsr_flags == flde->fce_range.lsr_flags)) {
-			fld_cache_entry_delete(cache, flde);
-			break;
-		}
-	}
-}
-
 /**
  * Delete FLD entry in FLD cache.
  *
  */
-void fld_cache_delete(struct fld_cache *cache,
-		      const struct lu_seq_range *range)
-{
-	write_lock(&cache->fci_lock);
-	fld_cache_delete_nolock(cache, range);
-	write_unlock(&cache->fci_lock);
-}
 
 struct fld_cache_entry
 *fld_cache_entry_lookup_nolock(struct fld_cache *cache,
diff --git a/drivers/staging/lustre/lustre/fld/fld_internal.h b/drivers/staging/lustre/lustre/fld/fld_internal.h
index ab184a6..88ec7b1 100644
--- a/drivers/staging/lustre/lustre/fld/fld_internal.h
+++ b/drivers/staging/lustre/lustre/fld/fld_internal.h
@@ -156,10 +156,6 @@ int fld_cache_insert(struct fld_cache *cache,
 struct fld_cache_entry
 *fld_cache_entry_create(const struct lu_seq_range *range);
 
-void fld_cache_delete(struct fld_cache *cache,
-		      const struct lu_seq_range *range);
-void fld_cache_delete_nolock(struct fld_cache *cache,
-			     const struct lu_seq_range *range);
 int fld_cache_lookup(struct fld_cache *cache,
 		     const u64 seq, struct lu_seq_range *range);
 
-- 
2.1.4


