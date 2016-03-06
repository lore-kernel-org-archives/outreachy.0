X-GM-THRID: 6257901855301435392
X-Received: by 10.31.9.78 with SMTP id 75mr13132164vkj.9.1457275405182;
        Sun, 06 Mar 2016 06:43:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls1559885qgy.63.gmail; Sun, 06 Mar
 2016 06:43:24 -0800 (PST)
X-Received: by 10.31.47.131 with SMTP id v125mr13127149vkv.11.1457275404439;
        Sun, 06 Mar 2016 06:43:24 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id y20si2508802pfa.2.2016.03.06.06.43.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id hj7so6138623pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zfPh20duycOGt9gmJXDNc4l1PxYaxvG33fFsktTGrLU=;
        b=Ys9gD569tRy/dzikHLKHpp5JtJDK7KpS1U/ZBWyyCr/67qcrjZlfLioSkj1fFfkV+D
         ooATfIb1gxBXcxMF6dk+UAO9479Q1SScgQFZPu2d6PBW978bZ3H0tFpdRfg/cwnMuwY8
         E9uDwQfrY0Aey5B/7pSymq8PqCcG8tgRF7m7Gt4p7sC6yzHrDCqzdVfmv/X6Y1aBKEsc
         innnz4Br03RT/oGaHOblvlYRVY//3MkWAo4wr5SkcNrdgWbCx0bF4lmVLtH2Yn4pHsQA
         k2wUjY0RyPaGWgW/F3F5LeD6rcLYaKJnS/tYexY59SsE54OJZEgNpFc9zaZEOqS7tv0h
         wKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zfPh20duycOGt9gmJXDNc4l1PxYaxvG33fFsktTGrLU=;
        b=FlswCj4EaFB2qvJNwITNbgxf1IFvoqg6LISb+/mCpGs4Jz0JvVY3fvl291cjLpDHJa
         wrOjyG/fmYB6O7PxK8UulHcvy7DfxFbABk9qAd1wJQMTpVJJ7+4QqYyMgSSNoIDbU5+y
         kv4PRR4zPb+5sz+v6/cvIFLAQ7nupA57pNgjYzY4RqqvJzGxPJ/hq8Cfismz/nM3ODMs
         jCs6sJP+xghibf4BrD4u4emz3r+try6CsasbU99q9pYjbNaKViS2TXCB0ATkyAgs49Mz
         nRnPeB1UiioLXKamDI104d41w3NIqFwPjCl2gnzgb5yoQuX1rT7+tc5um9wvB26FkyHU
         G1Hg==
X-Gm-Message-State: AD7BkJJyu4Up8BRMDr8YaqNqgTf2zzttecJ+Pw03Ba7+WSgTw+W6AH6ibymz9mvtHmOt+Q==
X-Received: by 10.66.167.145 with SMTP id zo17mr26678631pab.73.1457275401131;
        Sun, 06 Mar 2016 06:43:21 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id p8sm18193137pfi.34.2016.03.06.06.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:43:20 -0800 (PST)
Date: Sun, 6 Mar 2016 12:13:40 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: lustre: wiretest: Remove int typecast of
 offsetof().
Message-ID: <20160306064340.GA30470@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove int typecast of offsetof().

As per below coccinelle rule:
@@
type T;
expression E;
@@

- (int)(offsetof(T,E))
+ offsetof(T,E)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Fix Compilation error and warnings.

 drivers/staging/lustre/lustre/ptlrpc/wiretest.c | 2842 +++++++++++------------
 1 file changed, 1421 insertions(+), 1421 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/wiretest.c b/drivers/staging/lustre/lustre/ptlrpc/wiretest.c
index 3ffd2d9..b53edd5 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/wiretest.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/wiretest.c
@@ -383,20 +383,20 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lu_seq_range */
 	LASSERTF((int)sizeof(struct lu_seq_range) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct lu_seq_range));
-	LASSERTF((int)offsetof(struct lu_seq_range, lsr_start) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_seq_range, lsr_start));
+	LASSERTF(offsetof(struct lu_seq_range, lsr_start) == 0, "found %lld\n",
+		 (long long)offsetof(struct lu_seq_range, lsr_start));
 	LASSERTF((int)sizeof(((struct lu_seq_range *)0)->lsr_start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_seq_range *)0)->lsr_start));
-	LASSERTF((int)offsetof(struct lu_seq_range, lsr_end) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_seq_range, lsr_end));
+	LASSERTF(offsetof(struct lu_seq_range, lsr_end) == 8, "found %lld\n",
+		 (long long)offsetof(struct lu_seq_range, lsr_end));
 	LASSERTF((int)sizeof(((struct lu_seq_range *)0)->lsr_end) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_seq_range *)0)->lsr_end));
-	LASSERTF((int)offsetof(struct lu_seq_range, lsr_index) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_seq_range, lsr_index));
+	LASSERTF(offsetof(struct lu_seq_range, lsr_index) == 16, "found %lld\n",
+		 (long long)offsetof(struct lu_seq_range, lsr_index));
 	LASSERTF((int)sizeof(((struct lu_seq_range *)0)->lsr_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_seq_range *)0)->lsr_index));
-	LASSERTF((int)offsetof(struct lu_seq_range, lsr_flags) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_seq_range, lsr_flags));
+	LASSERTF(offsetof(struct lu_seq_range, lsr_flags) == 20, "found %lld\n",
+		 (long long)offsetof(struct lu_seq_range, lsr_flags));
 	LASSERTF((int)sizeof(((struct lu_seq_range *)0)->lsr_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_seq_range *)0)->lsr_flags));
 	LASSERTF(LU_SEQ_RANGE_MDT == 0, "found %lld\n",
@@ -407,16 +407,16 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lustre_mdt_attrs */
 	LASSERTF((int)sizeof(struct lustre_mdt_attrs) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct lustre_mdt_attrs));
-	LASSERTF((int)offsetof(struct lustre_mdt_attrs, lma_compat) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_mdt_attrs, lma_compat));
+	LASSERTF(offsetof(struct lustre_mdt_attrs, lma_compat) == 0, "found %lld\n",
+		 (long long)offsetof(struct lustre_mdt_attrs, lma_compat));
 	LASSERTF((int)sizeof(((struct lustre_mdt_attrs *)0)->lma_compat) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_mdt_attrs *)0)->lma_compat));
-	LASSERTF((int)offsetof(struct lustre_mdt_attrs, lma_incompat) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_mdt_attrs, lma_incompat));
+	LASSERTF(offsetof(struct lustre_mdt_attrs, lma_incompat) == 4, "found %lld\n",
+		 (long long)offsetof(struct lustre_mdt_attrs, lma_incompat));
 	LASSERTF((int)sizeof(((struct lustre_mdt_attrs *)0)->lma_incompat) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_mdt_attrs *)0)->lma_incompat));
-	LASSERTF((int)offsetof(struct lustre_mdt_attrs, lma_self_fid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_mdt_attrs, lma_self_fid));
+	LASSERTF(offsetof(struct lustre_mdt_attrs, lma_self_fid) == 8, "found %lld\n",
+		 (long long)offsetof(struct lustre_mdt_attrs, lma_self_fid));
 	LASSERTF((int)sizeof(((struct lustre_mdt_attrs *)0)->lma_self_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_mdt_attrs *)0)->lma_self_fid));
 	LASSERTF(LMAI_RELEASED == 0x00000001UL, "found 0x%.8xUL\n",
@@ -433,8 +433,8 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct ost_id */
 	LASSERTF((int)sizeof(struct ost_id) == 16, "found %lld\n",
 		 (long long)(int)sizeof(struct ost_id));
-	LASSERTF((int)offsetof(struct ost_id, oi) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_id, oi));
+	LASSERTF(offsetof(struct ost_id, oi) == 0, "found %lld\n",
+		 (long long)offsetof(struct ost_id, oi));
 	LASSERTF((int)sizeof(((struct ost_id *)0)->oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_id *)0)->oi));
 	LASSERTF(LUSTRE_FID_INIT_OID == 1, "found %lld\n",
@@ -487,28 +487,28 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lu_dirent */
 	LASSERTF((int)sizeof(struct lu_dirent) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct lu_dirent));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_fid));
+	LASSERTF(offsetof(struct lu_dirent, lde_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_fid));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_fid));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_hash) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_hash));
+	LASSERTF(offsetof(struct lu_dirent, lde_hash) == 16, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_hash));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_hash) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_hash));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_reclen) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_reclen));
+	LASSERTF(offsetof(struct lu_dirent, lde_reclen) == 24, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_reclen));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_reclen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_reclen));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_namelen) == 26, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_namelen));
+	LASSERTF(offsetof(struct lu_dirent, lde_namelen) == 26, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_namelen));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_namelen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_namelen));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_attrs) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_attrs));
+	LASSERTF(offsetof(struct lu_dirent, lde_attrs) == 28, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_attrs));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_attrs) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_attrs));
-	LASSERTF((int)offsetof(struct lu_dirent, lde_name[0]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirent, lde_name[0]));
+	LASSERTF(offsetof(struct lu_dirent, lde_name[0]) == 32, "found %lld\n",
+		 (long long)offsetof(struct lu_dirent, lde_name[0]));
 	LASSERTF((int)sizeof(((struct lu_dirent *)0)->lde_name[0]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirent *)0)->lde_name[0]));
 	LASSERTF(LUDA_FID == 0x00000001UL, "found 0x%.8xUL\n",
@@ -521,32 +521,32 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct luda_type */
 	LASSERTF((int)sizeof(struct luda_type) == 2, "found %lld\n",
 		 (long long)(int)sizeof(struct luda_type));
-	LASSERTF((int)offsetof(struct luda_type, lt_type) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct luda_type, lt_type));
+	LASSERTF(offsetof(struct luda_type, lt_type) == 0, "found %lld\n",
+		 (long long)offsetof(struct luda_type, lt_type));
 	LASSERTF((int)sizeof(((struct luda_type *)0)->lt_type) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct luda_type *)0)->lt_type));
 
 	/* Checks for struct lu_dirpage */
 	LASSERTF((int)sizeof(struct lu_dirpage) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct lu_dirpage));
-	LASSERTF((int)offsetof(struct lu_dirpage, ldp_hash_start) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirpage, ldp_hash_start));
+	LASSERTF(offsetof(struct lu_dirpage, ldp_hash_start) == 0, "found %lld\n",
+		 (long long)offsetof(struct lu_dirpage, ldp_hash_start));
 	LASSERTF((int)sizeof(((struct lu_dirpage *)0)->ldp_hash_start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirpage *)0)->ldp_hash_start));
-	LASSERTF((int)offsetof(struct lu_dirpage, ldp_hash_end) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirpage, ldp_hash_end));
+	LASSERTF(offsetof(struct lu_dirpage, ldp_hash_end) == 8, "found %lld\n",
+		 (long long)offsetof(struct lu_dirpage, ldp_hash_end));
 	LASSERTF((int)sizeof(((struct lu_dirpage *)0)->ldp_hash_end) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirpage *)0)->ldp_hash_end));
-	LASSERTF((int)offsetof(struct lu_dirpage, ldp_flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirpage, ldp_flags));
+	LASSERTF(offsetof(struct lu_dirpage, ldp_flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct lu_dirpage, ldp_flags));
 	LASSERTF((int)sizeof(((struct lu_dirpage *)0)->ldp_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirpage *)0)->ldp_flags));
-	LASSERTF((int)offsetof(struct lu_dirpage, ldp_pad0) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirpage, ldp_pad0));
+	LASSERTF(offsetof(struct lu_dirpage, ldp_pad0) == 20, "found %lld\n",
+		 (long long)offsetof(struct lu_dirpage, ldp_pad0));
 	LASSERTF((int)sizeof(((struct lu_dirpage *)0)->ldp_pad0) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirpage *)0)->ldp_pad0));
-	LASSERTF((int)offsetof(struct lu_dirpage, ldp_entries[0]) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lu_dirpage, ldp_entries[0]));
+	LASSERTF(offsetof(struct lu_dirpage, ldp_entries[0]) == 24, "found %lld\n",
+		 (long long)offsetof(struct lu_dirpage, ldp_entries[0]));
 	LASSERTF((int)sizeof(((struct lu_dirpage *)0)->ldp_entries[0]) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct lu_dirpage *)0)->ldp_entries[0]));
 	LASSERTF(LDF_EMPTY == 1, "found %lld\n",
@@ -559,48 +559,48 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lustre_handle */
 	LASSERTF((int)sizeof(struct lustre_handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(struct lustre_handle));
-	LASSERTF((int)offsetof(struct lustre_handle, cookie) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_handle, cookie));
+	LASSERTF(offsetof(struct lustre_handle, cookie) == 0, "found %lld\n",
+		 (long long)offsetof(struct lustre_handle, cookie));
 	LASSERTF((int)sizeof(((struct lustre_handle *)0)->cookie) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_handle *)0)->cookie));
 
 	/* Checks for struct lustre_msg_v2 */
 	LASSERTF((int)sizeof(struct lustre_msg_v2) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct lustre_msg_v2));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_bufcount) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_bufcount));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_bufcount) == 0, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_bufcount));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_bufcount) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_bufcount));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_secflvr) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_secflvr));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_secflvr) == 4, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_secflvr));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_secflvr) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_secflvr));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_magic) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_magic));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_magic) == 8, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_magic));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_magic) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_magic));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_repsize) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_repsize));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_repsize) == 12, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_repsize));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_repsize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_repsize));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_cksum) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_cksum));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_cksum) == 16, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_cksum));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_cksum) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_cksum));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_flags) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_flags));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_flags) == 20, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_flags));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_flags));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_padding_2) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_padding_2));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_padding_2) == 24, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_padding_2));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_padding_2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_padding_2));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_padding_3) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_padding_3));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_padding_3) == 28, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_padding_3));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_padding_3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_padding_3));
-	LASSERTF((int)offsetof(struct lustre_msg_v2, lm_buflens[0]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_msg_v2, lm_buflens[0]));
+	LASSERTF(offsetof(struct lustre_msg_v2, lm_buflens[0]) == 32, "found %lld\n",
+		 (long long)offsetof(struct lustre_msg_v2, lm_buflens[0]));
 	LASSERTF((int)sizeof(((struct lustre_msg_v2 *)0)->lm_buflens[0]) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_msg_v2 *)0)->lm_buflens[0]));
 	LASSERTF(LUSTRE_MSG_MAGIC_V2 == 0x0BD00BD3, "found 0x%.8x\n",
@@ -611,154 +611,154 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct ptlrpc_body */
 	LASSERTF((int)sizeof(struct ptlrpc_body_v3) == 184, "found %lld\n",
 		 (long long)(int)sizeof(struct ptlrpc_body_v3));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_handle) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_handle));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_handle) == 0, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_handle));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_handle));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_type) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_type));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_type) == 8, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_type));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_type));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_version) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_version));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_version) == 12, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_version));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_version) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_version));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_opc) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_opc));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_opc) == 16, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_opc));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_opc) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_opc));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_status) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_status));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_status) == 20, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_status));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_status) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_status));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_xid) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_last_xid));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_xid) == 24, "found %lld\n",
+		 (long long)(offsetof(struct ptlrpc_body_v3, pb_last_xid)));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_xid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_xid));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_seen) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_last_seen));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_seen) == 32, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_last_seen));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_seen) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_seen));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_committed) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_last_committed));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_committed) == 40, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_last_committed));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_committed) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_committed));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_transno) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_transno));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_transno) == 48, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_transno));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_transno) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_transno));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_flags) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_flags));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_flags) == 56, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_flags));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_flags));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_op_flags) == 60, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_op_flags));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_op_flags) == 60, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_op_flags));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_op_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_op_flags));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_conn_cnt) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_conn_cnt));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_conn_cnt) == 64, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_conn_cnt));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_conn_cnt) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_conn_cnt));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_timeout) == 68, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_timeout));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_timeout) == 68, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_timeout));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_timeout) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_timeout));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_service_time) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_service_time));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_service_time) == 72, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_service_time));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_service_time) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_service_time));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_limit) == 76, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_limit));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_limit) == 76, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_limit));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_limit) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_limit));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_slv) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_slv));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_slv) == 80, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_slv));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_slv) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_slv));
 	CLASSERT(PTLRPC_NUM_VERSIONS == 4);
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_pre_versions) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_pre_versions));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_pre_versions) == 88, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_pre_versions));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_pre_versions) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_pre_versions));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_padding) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_padding));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_padding) == 120, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_padding));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_padding) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_padding));
 	CLASSERT(JOBSTATS_JOBID_SIZE == 32);
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_jobid) == 152, "found %lld\n",
-		 (long long)(int)offsetof(struct ptlrpc_body_v3, pb_jobid));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_jobid) == 152, "found %lld\n",
+		 (long long)offsetof(struct ptlrpc_body_v3, pb_jobid));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_jobid) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_jobid));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_handle) == (int)offsetof(struct ptlrpc_body_v2, pb_handle), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_handle), (int)offsetof(struct ptlrpc_body_v2, pb_handle));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_handle) == offsetof(struct ptlrpc_body_v2, pb_handle), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_handle), offsetof(struct ptlrpc_body_v2, pb_handle));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_handle) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_handle), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_handle), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_handle));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_type) == (int)offsetof(struct ptlrpc_body_v2, pb_type), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_type), (int)offsetof(struct ptlrpc_body_v2, pb_type));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_type) == offsetof(struct ptlrpc_body_v2, pb_type), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_type), offsetof(struct ptlrpc_body_v2, pb_type));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_type) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_type), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_type), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_type));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_version) == (int)offsetof(struct ptlrpc_body_v2, pb_version), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_version), (int)offsetof(struct ptlrpc_body_v2, pb_version));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_version) == offsetof(struct ptlrpc_body_v2, pb_version), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_version), offsetof(struct ptlrpc_body_v2, pb_version));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_version) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_version), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_version), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_version));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_opc) == (int)offsetof(struct ptlrpc_body_v2, pb_opc), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_opc), (int)offsetof(struct ptlrpc_body_v2, pb_opc));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_opc) == offsetof(struct ptlrpc_body_v2, pb_opc), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_opc), offsetof(struct ptlrpc_body_v2, pb_opc));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_opc) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_opc), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_opc), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_opc));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_status) == (int)offsetof(struct ptlrpc_body_v2, pb_status), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_status), (int)offsetof(struct ptlrpc_body_v2, pb_status));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_status) == offsetof(struct ptlrpc_body_v2, pb_status), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_status), offsetof(struct ptlrpc_body_v2, pb_status));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_status) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_status), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_status), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_status));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_xid) == (int)offsetof(struct ptlrpc_body_v2, pb_last_xid), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_last_xid), (int)offsetof(struct ptlrpc_body_v2, pb_last_xid));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_xid) == offsetof(struct ptlrpc_body_v2, pb_last_xid), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_last_xid), offsetof(struct ptlrpc_body_v2, pb_last_xid));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_xid) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_xid), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_xid), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_xid));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_seen) == (int)offsetof(struct ptlrpc_body_v2, pb_last_seen), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_last_seen), (int)offsetof(struct ptlrpc_body_v2, pb_last_seen));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_seen) == offsetof(struct ptlrpc_body_v2, pb_last_seen), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_last_seen), offsetof(struct ptlrpc_body_v2, pb_last_seen));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_seen) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_seen), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_seen), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_seen));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_last_committed) == (int)offsetof(struct ptlrpc_body_v2, pb_last_committed), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_last_committed), (int)offsetof(struct ptlrpc_body_v2, pb_last_committed));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_last_committed) == offsetof(struct ptlrpc_body_v2, pb_last_committed), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_last_committed), offsetof(struct ptlrpc_body_v2, pb_last_committed));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_committed) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_committed), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_last_committed), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_last_committed));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_transno) == (int)offsetof(struct ptlrpc_body_v2, pb_transno), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_transno), (int)offsetof(struct ptlrpc_body_v2, pb_transno));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_transno) == offsetof(struct ptlrpc_body_v2, pb_transno), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_transno), offsetof(struct ptlrpc_body_v2, pb_transno));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_transno) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_transno), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_transno), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_transno));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_flags) == (int)offsetof(struct ptlrpc_body_v2, pb_flags), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_flags), (int)offsetof(struct ptlrpc_body_v2, pb_flags));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_flags) == offsetof(struct ptlrpc_body_v2, pb_flags), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_flags), offsetof(struct ptlrpc_body_v2, pb_flags));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_flags) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_flags), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_flags), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_flags));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_op_flags) == (int)offsetof(struct ptlrpc_body_v2, pb_op_flags), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_op_flags), (int)offsetof(struct ptlrpc_body_v2, pb_op_flags));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_op_flags) == offsetof(struct ptlrpc_body_v2, pb_op_flags), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_op_flags), offsetof(struct ptlrpc_body_v2, pb_op_flags));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_op_flags) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_op_flags), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_op_flags), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_op_flags));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_conn_cnt) == (int)offsetof(struct ptlrpc_body_v2, pb_conn_cnt), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_conn_cnt), (int)offsetof(struct ptlrpc_body_v2, pb_conn_cnt));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_conn_cnt) == offsetof(struct ptlrpc_body_v2, pb_conn_cnt), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_conn_cnt), offsetof(struct ptlrpc_body_v2, pb_conn_cnt));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_conn_cnt) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_conn_cnt), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_conn_cnt), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_conn_cnt));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_timeout) == (int)offsetof(struct ptlrpc_body_v2, pb_timeout), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_timeout), (int)offsetof(struct ptlrpc_body_v2, pb_timeout));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_timeout) == offsetof(struct ptlrpc_body_v2, pb_timeout), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_timeout), offsetof(struct ptlrpc_body_v2, pb_timeout));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_timeout) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_timeout), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_timeout), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_timeout));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_service_time) == (int)offsetof(struct ptlrpc_body_v2, pb_service_time), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_service_time), (int)offsetof(struct ptlrpc_body_v2, pb_service_time));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_service_time) == offsetof(struct ptlrpc_body_v2, pb_service_time), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_service_time), offsetof(struct ptlrpc_body_v2, pb_service_time));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_service_time) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_service_time), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_service_time), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_service_time));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_limit) == (int)offsetof(struct ptlrpc_body_v2, pb_limit), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_limit), (int)offsetof(struct ptlrpc_body_v2, pb_limit));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_limit) == offsetof(struct ptlrpc_body_v2, pb_limit), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_limit), offsetof(struct ptlrpc_body_v2, pb_limit));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_limit) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_limit), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_limit), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_limit));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_slv) == (int)offsetof(struct ptlrpc_body_v2, pb_slv), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_slv), (int)offsetof(struct ptlrpc_body_v2, pb_slv));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_slv) == offsetof(struct ptlrpc_body_v2, pb_slv), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_slv), offsetof(struct ptlrpc_body_v2, pb_slv));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_slv) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_slv), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_slv), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_slv));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_pre_versions) == (int)offsetof(struct ptlrpc_body_v2, pb_pre_versions), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_pre_versions), (int)offsetof(struct ptlrpc_body_v2, pb_pre_versions));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_pre_versions) == offsetof(struct ptlrpc_body_v2, pb_pre_versions), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_pre_versions), offsetof(struct ptlrpc_body_v2, pb_pre_versions));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_pre_versions) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_pre_versions), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_pre_versions), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_pre_versions));
-	LASSERTF((int)offsetof(struct ptlrpc_body_v3, pb_padding) == (int)offsetof(struct ptlrpc_body_v2, pb_padding), "%d != %d\n",
-		 (int)offsetof(struct ptlrpc_body_v3, pb_padding), (int)offsetof(struct ptlrpc_body_v2, pb_padding));
+	LASSERTF(offsetof(struct ptlrpc_body_v3, pb_padding) == offsetof(struct ptlrpc_body_v2, pb_padding), "%ld != %ld\n",
+		 offsetof(struct ptlrpc_body_v3, pb_padding), offsetof(struct ptlrpc_body_v2, pb_padding));
 	LASSERTF((int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_padding) == (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_padding), "%d != %d\n",
 		 (int)sizeof(((struct ptlrpc_body_v3 *)0)->pb_padding), (int)sizeof(((struct ptlrpc_body_v2 *)0)->pb_padding));
 	LASSERTF(MSG_PTLRPC_BODY_OFF == 0, "found %lld\n",
@@ -841,128 +841,128 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct obd_connect_data */
 	LASSERTF((int)sizeof(struct obd_connect_data) == 192, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_connect_data));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_connect_flags) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_connect_flags));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_connect_flags) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_connect_flags));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_connect_flags) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_connect_flags));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_version) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_version));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_version) == 8, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_version));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_version) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_version));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_grant) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_grant));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_grant) == 12, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_grant));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_grant) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_grant));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_index) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_index));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_index) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_index));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_index));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_brw_size) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_brw_size));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_brw_size) == 20, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_brw_size));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_brw_size) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_brw_size));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_ibits_known) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_ibits_known));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_ibits_known) == 24, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_ibits_known));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_ibits_known) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_ibits_known));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_blocksize) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_blocksize));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_blocksize) == 32, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_blocksize));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_blocksize) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_blocksize));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_inodespace) == 33, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_inodespace));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_inodespace) == 33, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_inodespace));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_inodespace) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_inodespace));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_grant_extent) == 34, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_grant_extent));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_grant_extent) == 34, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_grant_extent));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_grant_extent) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_grant_extent));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_unused) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_unused));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_unused) == 36, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_unused));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_unused) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_unused));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_transno) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_transno));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_transno) == 40, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_transno));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_transno) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_transno));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_group) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_group));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_group) == 48, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_group));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_group) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_group));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_cksum_types) == 52, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_cksum_types));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_cksum_types) == 52, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_cksum_types));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_cksum_types) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_cksum_types));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_max_easize) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_max_easize));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_max_easize) == 56, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_max_easize));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_max_easize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_max_easize));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_instance) == 60, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_instance));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_instance) == 60, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_instance));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_instance) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_instance));
-	LASSERTF((int)offsetof(struct obd_connect_data, ocd_maxbytes) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, ocd_maxbytes));
+	LASSERTF(offsetof(struct obd_connect_data, ocd_maxbytes) == 64, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, ocd_maxbytes));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->ocd_maxbytes) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->ocd_maxbytes));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding1) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding1));
+	LASSERTF(offsetof(struct obd_connect_data, padding1) == 72, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding1));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding1));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding2) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding2));
+	LASSERTF(offsetof(struct obd_connect_data, padding2) == 80, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding2));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding2));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding3) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding3));
+	LASSERTF(offsetof(struct obd_connect_data, padding3) == 88, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding3));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding3));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding4) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding4));
+	LASSERTF(offsetof(struct obd_connect_data, padding4) == 96, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding4));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding4) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding4));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding5) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding5));
+	LASSERTF(offsetof(struct obd_connect_data, padding5) == 104, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding5));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding5) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding5));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding6) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding6));
+	LASSERTF(offsetof(struct obd_connect_data, padding6) == 112, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding6));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding6) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding6));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding7) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding7));
+	LASSERTF(offsetof(struct obd_connect_data, padding7) == 120, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding7));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding7) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding7));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding8) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding8));
+	LASSERTF(offsetof(struct obd_connect_data, padding8) == 128, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding8));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding8) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding8));
-	LASSERTF((int)offsetof(struct obd_connect_data, padding9) == 136, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, padding9));
+	LASSERTF(offsetof(struct obd_connect_data, padding9) == 136, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, padding9));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->padding9) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->padding9));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingA) == 144, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingA));
+	LASSERTF(offsetof(struct obd_connect_data, paddingA) == 144, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingA));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingA) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingA));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingB) == 152, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingB));
+	LASSERTF(offsetof(struct obd_connect_data, paddingB) == 152, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingB));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingB) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingB));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingC) == 160, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingC));
+	LASSERTF(offsetof(struct obd_connect_data, paddingC) == 160, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingC));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingC) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingC));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingD) == 168, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingD));
+	LASSERTF(offsetof(struct obd_connect_data, paddingD) == 168, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingD));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingD) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingD));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingE) == 176, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingE));
+	LASSERTF(offsetof(struct obd_connect_data, paddingE) == 176, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingE));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingE) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingE));
-	LASSERTF((int)offsetof(struct obd_connect_data, paddingF) == 184, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_connect_data, paddingF));
+	LASSERTF(offsetof(struct obd_connect_data, paddingF) == 184, "found %lld\n",
+		 (long long)offsetof(struct obd_connect_data, paddingF));
 	LASSERTF((int)sizeof(((struct obd_connect_data *)0)->paddingF) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_connect_data *)0)->paddingF));
 	LASSERTF(OBD_CONNECT_RDONLY == 0x1ULL, "found 0x%.16llxULL\n",
@@ -1079,116 +1079,116 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct obdo */
 	LASSERTF((int)sizeof(struct obdo) == 208, "found %lld\n",
 		 (long long)(int)sizeof(struct obdo));
-	LASSERTF((int)offsetof(struct obdo, o_valid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_valid));
+	LASSERTF(offsetof(struct obdo, o_valid) == 0, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_valid));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_valid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_valid));
-	LASSERTF((int)offsetof(struct obdo, o_oi) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_oi));
+	LASSERTF(offsetof(struct obdo, o_oi) == 8, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_oi));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_oi));
-	LASSERTF((int)offsetof(struct obdo, o_parent_seq) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_parent_seq));
+	LASSERTF(offsetof(struct obdo, o_parent_seq) == 24, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_parent_seq));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_parent_seq) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_parent_seq));
-	LASSERTF((int)offsetof(struct obdo, o_size) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_size));
+	LASSERTF(offsetof(struct obdo, o_size) == 32, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_size));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_size));
-	LASSERTF((int)offsetof(struct obdo, o_mtime) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_mtime));
+	LASSERTF(offsetof(struct obdo, o_mtime) == 40, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_mtime));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_mtime));
-	LASSERTF((int)offsetof(struct obdo, o_atime) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_atime));
+	LASSERTF(offsetof(struct obdo, o_atime) == 48, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_atime));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_atime));
-	LASSERTF((int)offsetof(struct obdo, o_ctime) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_ctime));
+	LASSERTF(offsetof(struct obdo, o_ctime) == 56, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_ctime));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_ctime));
-	LASSERTF((int)offsetof(struct obdo, o_blocks) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_blocks));
+	LASSERTF(offsetof(struct obdo, o_blocks) == 64, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_blocks));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_blocks));
-	LASSERTF((int)offsetof(struct obdo, o_grant) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_grant));
+	LASSERTF(offsetof(struct obdo, o_grant) == 72, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_grant));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_grant) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_grant));
-	LASSERTF((int)offsetof(struct obdo, o_blksize) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_blksize));
+	LASSERTF(offsetof(struct obdo, o_blksize) == 80, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_blksize));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_blksize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_blksize));
-	LASSERTF((int)offsetof(struct obdo, o_mode) == 84, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_mode));
+	LASSERTF(offsetof(struct obdo, o_mode) == 84, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_mode));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_mode));
-	LASSERTF((int)offsetof(struct obdo, o_uid) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_uid));
+	LASSERTF(offsetof(struct obdo, o_uid) == 88, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_uid));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_uid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_uid));
-	LASSERTF((int)offsetof(struct obdo, o_gid) == 92, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_gid));
+	LASSERTF(offsetof(struct obdo, o_gid) == 92, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_gid));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_gid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_gid));
-	LASSERTF((int)offsetof(struct obdo, o_flags) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_flags));
+	LASSERTF(offsetof(struct obdo, o_flags) == 96, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_flags));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_flags));
-	LASSERTF((int)offsetof(struct obdo, o_nlink) == 100, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_nlink));
+	LASSERTF(offsetof(struct obdo, o_nlink) == 100, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_nlink));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_nlink) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_nlink));
-	LASSERTF((int)offsetof(struct obdo, o_parent_oid) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_parent_oid));
+	LASSERTF(offsetof(struct obdo, o_parent_oid) == 104, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_parent_oid));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_parent_oid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_parent_oid));
-	LASSERTF((int)offsetof(struct obdo, o_misc) == 108, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_misc));
+	LASSERTF(offsetof(struct obdo, o_misc) == 108, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_misc));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_misc) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_misc));
-	LASSERTF((int)offsetof(struct obdo, o_ioepoch) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_ioepoch));
+	LASSERTF(offsetof(struct obdo, o_ioepoch) == 112, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_ioepoch));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_ioepoch) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_ioepoch));
-	LASSERTF((int)offsetof(struct obdo, o_stripe_idx) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_stripe_idx));
+	LASSERTF(offsetof(struct obdo, o_stripe_idx) == 120, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_stripe_idx));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_stripe_idx) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_stripe_idx));
-	LASSERTF((int)offsetof(struct obdo, o_parent_ver) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_parent_ver));
+	LASSERTF(offsetof(struct obdo, o_parent_ver) == 124, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_parent_ver));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_parent_ver) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_parent_ver));
-	LASSERTF((int)offsetof(struct obdo, o_handle) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_handle));
+	LASSERTF(offsetof(struct obdo, o_handle) == 128, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_handle));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_handle));
-	LASSERTF((int)offsetof(struct obdo, o_lcookie) == 136, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_lcookie));
+	LASSERTF(offsetof(struct obdo, o_lcookie) == 136, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_lcookie));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_lcookie) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_lcookie));
-	LASSERTF((int)offsetof(struct obdo, o_uid_h) == 168, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_uid_h));
+	LASSERTF(offsetof(struct obdo, o_uid_h) == 168, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_uid_h));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_uid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_uid_h));
-	LASSERTF((int)offsetof(struct obdo, o_gid_h) == 172, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_gid_h));
+	LASSERTF(offsetof(struct obdo, o_gid_h) == 172, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_gid_h));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_gid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_gid_h));
-	LASSERTF((int)offsetof(struct obdo, o_data_version) == 176, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_data_version));
+	LASSERTF(offsetof(struct obdo, o_data_version) == 176, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_data_version));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_data_version) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_data_version));
-	LASSERTF((int)offsetof(struct obdo, o_padding_4) == 184, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_padding_4));
+	LASSERTF(offsetof(struct obdo, o_padding_4) == 184, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_padding_4));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_padding_4) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_padding_4));
-	LASSERTF((int)offsetof(struct obdo, o_padding_5) == 192, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_padding_5));
+	LASSERTF(offsetof(struct obdo, o_padding_5) == 192, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_padding_5));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_padding_5) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_padding_5));
-	LASSERTF((int)offsetof(struct obdo, o_padding_6) == 200, "found %lld\n",
-		 (long long)(int)offsetof(struct obdo, o_padding_6));
+	LASSERTF(offsetof(struct obdo, o_padding_6) == 200, "found %lld\n",
+		 (long long)offsetof(struct obdo, o_padding_6));
 	LASSERTF((int)sizeof(((struct obdo *)0)->o_padding_6) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obdo *)0)->o_padding_6));
 	LASSERTF(OBD_MD_FLID == (0x00000001ULL), "found 0x%.16llxULL\n",
@@ -1312,48 +1312,48 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lov_ost_data_v1 */
 	LASSERTF((int)sizeof(struct lov_ost_data_v1) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct lov_ost_data_v1));
-	LASSERTF((int)offsetof(struct lov_ost_data_v1, l_ost_oi) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_ost_data_v1, l_ost_oi));
+	LASSERTF(offsetof(struct lov_ost_data_v1, l_ost_oi) == 0, "found %lld\n",
+		 (long long)offsetof(struct lov_ost_data_v1, l_ost_oi));
 	LASSERTF((int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_oi));
-	LASSERTF((int)offsetof(struct lov_ost_data_v1, l_ost_gen) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_ost_data_v1, l_ost_gen));
+	LASSERTF(offsetof(struct lov_ost_data_v1, l_ost_gen) == 16, "found %lld\n",
+		 (long long)offsetof(struct lov_ost_data_v1, l_ost_gen));
 	LASSERTF((int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_gen) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_gen));
-	LASSERTF((int)offsetof(struct lov_ost_data_v1, l_ost_idx) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_ost_data_v1, l_ost_idx));
+	LASSERTF(offsetof(struct lov_ost_data_v1, l_ost_idx) == 20, "found %lld\n",
+		 (long long)offsetof(struct lov_ost_data_v1, l_ost_idx));
 	LASSERTF((int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_idx) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_ost_data_v1 *)0)->l_ost_idx));
 
 	/* Checks for struct lov_mds_md_v1 */
 	LASSERTF((int)sizeof(struct lov_mds_md_v1) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct lov_mds_md_v1));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_magic) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_magic));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_magic) == 0, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_magic));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_magic) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_magic));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_pattern) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_pattern));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_pattern) == 4, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_pattern));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_pattern) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_pattern));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_oi) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_oi));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_oi) == 8, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_oi));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_oi));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_stripe_size) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_stripe_size));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_stripe_size) == 24, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_stripe_size));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_stripe_size) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_stripe_size));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_stripe_count) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_stripe_count));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_stripe_count) == 28, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_stripe_count));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_stripe_count) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_stripe_count));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_layout_gen) == 30, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_layout_gen));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_layout_gen) == 30, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_layout_gen));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_layout_gen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_layout_gen));
-	LASSERTF((int)offsetof(struct lov_mds_md_v1, lmm_objects[0]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v1, lmm_objects[0]));
+	LASSERTF(offsetof(struct lov_mds_md_v1, lmm_objects[0]) == 32, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v1, lmm_objects[0]));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_objects[0]) == 24, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v1 *)0)->lmm_objects[0]));
 	CLASSERT(LOV_MAGIC_V1 == 0x0BD10BD0);
@@ -1361,37 +1361,37 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct lov_mds_md_v3 */
 	LASSERTF((int)sizeof(struct lov_mds_md_v3) == 48, "found %lld\n",
 		 (long long)(int)sizeof(struct lov_mds_md_v3));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_magic) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_magic));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_magic) == 0, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_magic));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_magic) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_magic));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_pattern) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_pattern));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_pattern) == 4, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_pattern));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_pattern) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_pattern));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_oi) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_oi));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_oi) == 8, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_oi));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_oi));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_stripe_size) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_stripe_size));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_stripe_size) == 24, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_stripe_size));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_stripe_size) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_stripe_size));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_stripe_count) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_stripe_count));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_stripe_count) == 28, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_stripe_count));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_stripe_count) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_stripe_count));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_layout_gen) == 30, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_layout_gen));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_layout_gen) == 30, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_layout_gen));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_layout_gen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_layout_gen));
 	CLASSERT(LOV_MAXPOOLNAME == 16);
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_pool_name[16]) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_pool_name[16]));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_pool_name[16]) == 48, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_pool_name[16]));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_pool_name[16]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_pool_name[16]));
-	LASSERTF((int)offsetof(struct lov_mds_md_v3, lmm_objects[0]) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_mds_md_v3, lmm_objects[0]));
+	LASSERTF(offsetof(struct lov_mds_md_v3, lmm_objects[0]) == 48, "found %lld\n",
+		 (long long)offsetof(struct lov_mds_md_v3, lmm_objects[0]));
 	LASSERTF((int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_objects[0]) == 24, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_mds_md_v3 *)0)->lmm_objects[0]));
 	CLASSERT(LOV_MAGIC_V3 == 0x0BD30BD0);
@@ -1407,92 +1407,92 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct obd_statfs */
 	LASSERTF((int)sizeof(struct obd_statfs) == 144, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_statfs));
-	LASSERTF((int)offsetof(struct obd_statfs, os_type) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_type));
+	LASSERTF(offsetof(struct obd_statfs, os_type) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_type));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_type) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_type));
-	LASSERTF((int)offsetof(struct obd_statfs, os_blocks) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_blocks));
+	LASSERTF(offsetof(struct obd_statfs, os_blocks) == 8, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_blocks));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_blocks));
-	LASSERTF((int)offsetof(struct obd_statfs, os_bfree) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_bfree));
+	LASSERTF(offsetof(struct obd_statfs, os_bfree) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_bfree));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_bfree) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_bfree));
-	LASSERTF((int)offsetof(struct obd_statfs, os_bavail) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_bavail));
+	LASSERTF(offsetof(struct obd_statfs, os_bavail) == 24, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_bavail));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_bavail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_bavail));
-	LASSERTF((int)offsetof(struct obd_statfs, os_ffree) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_ffree));
+	LASSERTF(offsetof(struct obd_statfs, os_ffree) == 40, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_ffree));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_ffree) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_ffree));
-	LASSERTF((int)offsetof(struct obd_statfs, os_fsid) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_fsid));
+	LASSERTF(offsetof(struct obd_statfs, os_fsid) == 48, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_fsid));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_fsid) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_fsid));
-	LASSERTF((int)offsetof(struct obd_statfs, os_bsize) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_bsize));
+	LASSERTF(offsetof(struct obd_statfs, os_bsize) == 88, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_bsize));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_bsize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_bsize));
-	LASSERTF((int)offsetof(struct obd_statfs, os_namelen) == 92, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_namelen));
+	LASSERTF(offsetof(struct obd_statfs, os_namelen) == 92, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_namelen));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_namelen) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_namelen));
-	LASSERTF((int)offsetof(struct obd_statfs, os_state) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_state));
+	LASSERTF(offsetof(struct obd_statfs, os_state) == 104, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_state));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_state) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_state));
-	LASSERTF((int)offsetof(struct obd_statfs, os_fprecreated) == 108, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_fprecreated));
+	LASSERTF(offsetof(struct obd_statfs, os_fprecreated) == 108, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_fprecreated));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_fprecreated) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_fprecreated));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare2) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare2));
+	LASSERTF(offsetof(struct obd_statfs, os_spare2) == 112, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare2));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare2));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare3) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare3));
+	LASSERTF(offsetof(struct obd_statfs, os_spare3) == 116, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare3));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare3));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare4) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare4));
+	LASSERTF(offsetof(struct obd_statfs, os_spare4) == 120, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare4));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare4) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare4));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare5) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare5));
+	LASSERTF(offsetof(struct obd_statfs, os_spare5) == 124, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare5));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare5) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare5));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare6) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare6));
+	LASSERTF(offsetof(struct obd_statfs, os_spare6) == 128, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare6));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare6) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare6));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare7) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare7));
+	LASSERTF(offsetof(struct obd_statfs, os_spare7) == 132, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare7));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare7) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare7));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare8) == 136, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare8));
+	LASSERTF(offsetof(struct obd_statfs, os_spare8) == 136, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare8));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare8) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare8));
-	LASSERTF((int)offsetof(struct obd_statfs, os_spare9) == 140, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_statfs, os_spare9));
+	LASSERTF(offsetof(struct obd_statfs, os_spare9) == 140, "found %lld\n",
+		 (long long)offsetof(struct obd_statfs, os_spare9));
 	LASSERTF((int)sizeof(((struct obd_statfs *)0)->os_spare9) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_statfs *)0)->os_spare9));
 
 	/* Checks for struct obd_ioobj */
 	LASSERTF((int)sizeof(struct obd_ioobj) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_ioobj));
-	LASSERTF((int)offsetof(struct obd_ioobj, ioo_oid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_ioobj, ioo_oid));
+	LASSERTF(offsetof(struct obd_ioobj, ioo_oid) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_ioobj, ioo_oid));
 	LASSERTF((int)sizeof(((struct obd_ioobj *)0)->ioo_oid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_ioobj *)0)->ioo_oid));
-	LASSERTF((int)offsetof(struct obd_ioobj, ioo_max_brw) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_ioobj, ioo_max_brw));
+	LASSERTF(offsetof(struct obd_ioobj, ioo_max_brw) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_ioobj, ioo_max_brw));
 	LASSERTF((int)sizeof(((struct obd_ioobj *)0)->ioo_max_brw) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_ioobj *)0)->ioo_max_brw));
-	LASSERTF((int)offsetof(struct obd_ioobj, ioo_bufcnt) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_ioobj, ioo_bufcnt));
+	LASSERTF(offsetof(struct obd_ioobj, ioo_bufcnt) == 20, "found %lld\n",
+		 (long long)offsetof(struct obd_ioobj, ioo_bufcnt));
 	LASSERTF((int)sizeof(((struct obd_ioobj *)0)->ioo_bufcnt) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_ioobj *)0)->ioo_bufcnt));
 
@@ -1503,92 +1503,92 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct obd_quotactl */
 	LASSERTF((int)sizeof(struct obd_quotactl) == 112, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_quotactl));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_cmd) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_cmd));
+	LASSERTF(offsetof(struct obd_quotactl, qc_cmd) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_cmd));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_cmd) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_cmd));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_type) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_type));
+	LASSERTF(offsetof(struct obd_quotactl, qc_type) == 4, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_type));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_type));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_id) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_id));
+	LASSERTF(offsetof(struct obd_quotactl, qc_id) == 8, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_id));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_id));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_stat) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_stat));
+	LASSERTF(offsetof(struct obd_quotactl, qc_stat) == 12, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_stat));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_stat) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_stat));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_dqinfo) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_dqinfo));
+	LASSERTF(offsetof(struct obd_quotactl, qc_dqinfo) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_dqinfo));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_dqinfo) == 24, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_dqinfo));
-	LASSERTF((int)offsetof(struct obd_quotactl, qc_dqblk) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_quotactl, qc_dqblk));
+	LASSERTF(offsetof(struct obd_quotactl, qc_dqblk) == 40, "found %lld\n",
+		 (long long)offsetof(struct obd_quotactl, qc_dqblk));
 	LASSERTF((int)sizeof(((struct obd_quotactl *)0)->qc_dqblk) == 72, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_quotactl *)0)->qc_dqblk));
 
 	/* Checks for struct obd_dqinfo */
 	LASSERTF((int)sizeof(struct obd_dqinfo) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_dqinfo));
-	LASSERTF((int)offsetof(struct obd_dqinfo, dqi_bgrace) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqinfo, dqi_bgrace));
+	LASSERTF(offsetof(struct obd_dqinfo, dqi_bgrace) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_dqinfo, dqi_bgrace));
 	LASSERTF((int)sizeof(((struct obd_dqinfo *)0)->dqi_bgrace) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqinfo *)0)->dqi_bgrace));
-	LASSERTF((int)offsetof(struct obd_dqinfo, dqi_igrace) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqinfo, dqi_igrace));
+	LASSERTF(offsetof(struct obd_dqinfo, dqi_igrace) == 8, "found %lld\n",
+		 (long long)offsetof(struct obd_dqinfo, dqi_igrace));
 	LASSERTF((int)sizeof(((struct obd_dqinfo *)0)->dqi_igrace) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqinfo *)0)->dqi_igrace));
-	LASSERTF((int)offsetof(struct obd_dqinfo, dqi_flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqinfo, dqi_flags));
+	LASSERTF(offsetof(struct obd_dqinfo, dqi_flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_dqinfo, dqi_flags));
 	LASSERTF((int)sizeof(((struct obd_dqinfo *)0)->dqi_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqinfo *)0)->dqi_flags));
-	LASSERTF((int)offsetof(struct obd_dqinfo, dqi_valid) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqinfo, dqi_valid));
+	LASSERTF(offsetof(struct obd_dqinfo, dqi_valid) == 20, "found %lld\n",
+		 (long long)offsetof(struct obd_dqinfo, dqi_valid));
 	LASSERTF((int)sizeof(((struct obd_dqinfo *)0)->dqi_valid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqinfo *)0)->dqi_valid));
 
 	/* Checks for struct obd_dqblk */
 	LASSERTF((int)sizeof(struct obd_dqblk) == 72, "found %lld\n",
 		 (long long)(int)sizeof(struct obd_dqblk));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_bhardlimit) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_bhardlimit));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_bhardlimit) == 0, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_bhardlimit));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_bhardlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_bhardlimit));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_bsoftlimit) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_bsoftlimit));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_bsoftlimit) == 8, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_bsoftlimit));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_bsoftlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_bsoftlimit));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_curspace) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_curspace));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_curspace) == 16, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_curspace));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_curspace) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_curspace));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_ihardlimit) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_ihardlimit));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_ihardlimit) == 24, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_ihardlimit));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_ihardlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_ihardlimit));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_isoftlimit) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_isoftlimit));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_isoftlimit) == 32, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_isoftlimit));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_isoftlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_isoftlimit));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_curinodes) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_curinodes));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_curinodes) == 40, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_curinodes));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_curinodes) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_curinodes));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_btime) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_btime));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_btime) == 48, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_btime));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_btime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_btime));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_itime) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_itime));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_itime) == 56, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_itime));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_itime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_itime));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_valid) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_valid));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_valid) == 64, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_valid));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_valid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_valid));
-	LASSERTF((int)offsetof(struct obd_dqblk, dqb_padding) == 68, "found %lld\n",
-		 (long long)(int)offsetof(struct obd_dqblk, dqb_padding));
+	LASSERTF(offsetof(struct obd_dqblk, dqb_padding) == 68, "found %lld\n",
+		 (long long)offsetof(struct obd_dqblk, dqb_padding));
 	LASSERTF((int)sizeof(((struct obd_dqblk *)0)->dqb_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct obd_dqblk *)0)->dqb_padding));
 	LASSERTF(Q_QUOTACHECK == 0x800100, "found 0x%.8x\n",
@@ -1605,16 +1605,16 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct niobuf_remote */
 	LASSERTF((int)sizeof(struct niobuf_remote) == 16, "found %lld\n",
 		 (long long)(int)sizeof(struct niobuf_remote));
-	LASSERTF((int)offsetof(struct niobuf_remote, offset) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct niobuf_remote, offset));
+	LASSERTF(offsetof(struct niobuf_remote, offset) == 0, "found %lld\n",
+		 (long long)offsetof(struct niobuf_remote, offset));
 	LASSERTF((int)sizeof(((struct niobuf_remote *)0)->offset) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct niobuf_remote *)0)->offset));
-	LASSERTF((int)offsetof(struct niobuf_remote, len) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct niobuf_remote, len));
+	LASSERTF(offsetof(struct niobuf_remote, len) == 8, "found %lld\n",
+		 (long long)offsetof(struct niobuf_remote, len));
 	LASSERTF((int)sizeof(((struct niobuf_remote *)0)->len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct niobuf_remote *)0)->len));
-	LASSERTF((int)offsetof(struct niobuf_remote, flags) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct niobuf_remote, flags));
+	LASSERTF(offsetof(struct niobuf_remote, flags) == 12, "found %lld\n",
+		 (long long)offsetof(struct niobuf_remote, flags));
 	LASSERTF((int)sizeof(((struct niobuf_remote *)0)->flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct niobuf_remote *)0)->flags));
 	LASSERTF(OBD_BRW_READ == 0x01, "found 0x%.8x\n",
@@ -1643,161 +1643,161 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct ost_body */
 	LASSERTF((int)sizeof(struct ost_body) == 208, "found %lld\n",
 		 (long long)(int)sizeof(struct ost_body));
-	LASSERTF((int)offsetof(struct ost_body, oa) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_body, oa));
+	LASSERTF(offsetof(struct ost_body, oa) == 0, "found %lld\n",
+		 (long long)offsetof(struct ost_body, oa));
 	LASSERTF((int)sizeof(((struct ost_body *)0)->oa) == 208, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_body *)0)->oa));
 
 	/* Checks for struct ll_fid */
 	LASSERTF((int)sizeof(struct ll_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(struct ll_fid));
-	LASSERTF((int)offsetof(struct ll_fid, id) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fid, id));
+	LASSERTF(offsetof(struct ll_fid, id) == 0, "found %lld\n",
+		 (long long)offsetof(struct ll_fid, id));
 	LASSERTF((int)sizeof(((struct ll_fid *)0)->id) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fid *)0)->id));
-	LASSERTF((int)offsetof(struct ll_fid, generation) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fid, generation));
+	LASSERTF(offsetof(struct ll_fid, generation) == 8, "found %lld\n",
+		 (long long)offsetof(struct ll_fid, generation));
 	LASSERTF((int)sizeof(((struct ll_fid *)0)->generation) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fid *)0)->generation));
-	LASSERTF((int)offsetof(struct ll_fid, f_type) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fid, f_type));
+	LASSERTF(offsetof(struct ll_fid, f_type) == 12, "found %lld\n",
+		 (long long)offsetof(struct ll_fid, f_type));
 	LASSERTF((int)sizeof(((struct ll_fid *)0)->f_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fid *)0)->f_type));
 
 	/* Checks for struct mdt_body */
 	LASSERTF((int)sizeof(struct mdt_body) == 216, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_body));
-	LASSERTF((int)offsetof(struct mdt_body, fid1) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, fid1));
+	LASSERTF(offsetof(struct mdt_body, fid1) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, fid1));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->fid1));
-	LASSERTF((int)offsetof(struct mdt_body, fid2) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, fid2));
+	LASSERTF(offsetof(struct mdt_body, fid2) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, fid2));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->fid2));
-	LASSERTF((int)offsetof(struct mdt_body, handle) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, handle));
+	LASSERTF(offsetof(struct mdt_body, handle) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, handle));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->handle));
-	LASSERTF((int)offsetof(struct mdt_body, valid) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, valid));
+	LASSERTF(offsetof(struct mdt_body, valid) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, valid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->valid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->valid));
-	LASSERTF((int)offsetof(struct mdt_body, size) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, size));
+	LASSERTF(offsetof(struct mdt_body, size) == 48, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, size));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->size));
-	LASSERTF((int)offsetof(struct mdt_body, mtime) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, mtime));
+	LASSERTF(offsetof(struct mdt_body, mtime) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, mtime));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->mtime));
-	LASSERTF((int)offsetof(struct mdt_body, atime) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, atime));
+	LASSERTF(offsetof(struct mdt_body, atime) == 64, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, atime));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->atime));
-	LASSERTF((int)offsetof(struct mdt_body, ctime) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, ctime));
+	LASSERTF(offsetof(struct mdt_body, ctime) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, ctime));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->ctime));
-	LASSERTF((int)offsetof(struct mdt_body, blocks) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, blocks));
+	LASSERTF(offsetof(struct mdt_body, blocks) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, blocks));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->blocks));
-	LASSERTF((int)offsetof(struct mdt_body, t_state) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, t_state));
+	LASSERTF(offsetof(struct mdt_body, t_state) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, t_state));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->t_state) == 8,
 		 "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->t_state));
-	LASSERTF((int)offsetof(struct mdt_body, fsuid) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, fsuid));
+	LASSERTF(offsetof(struct mdt_body, fsuid) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, fsuid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->fsuid));
-	LASSERTF((int)offsetof(struct mdt_body, fsgid) == 108, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, fsgid));
+	LASSERTF(offsetof(struct mdt_body, fsgid) == 108, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, fsgid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->fsgid));
-	LASSERTF((int)offsetof(struct mdt_body, capability) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, capability));
+	LASSERTF(offsetof(struct mdt_body, capability) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, capability));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->capability) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->capability));
-	LASSERTF((int)offsetof(struct mdt_body, mode) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, mode));
+	LASSERTF(offsetof(struct mdt_body, mode) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, mode));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->mode));
-	LASSERTF((int)offsetof(struct mdt_body, uid) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, uid));
+	LASSERTF(offsetof(struct mdt_body, uid) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, uid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->uid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->uid));
-	LASSERTF((int)offsetof(struct mdt_body, gid) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, gid));
+	LASSERTF(offsetof(struct mdt_body, gid) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, gid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->gid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->gid));
-	LASSERTF((int)offsetof(struct mdt_body, flags) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, flags));
+	LASSERTF(offsetof(struct mdt_body, flags) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, flags));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->flags));
-	LASSERTF((int)offsetof(struct mdt_body, rdev) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, rdev));
+	LASSERTF(offsetof(struct mdt_body, rdev) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, rdev));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->rdev) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->rdev));
-	LASSERTF((int)offsetof(struct mdt_body, nlink) == 136, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, nlink));
+	LASSERTF(offsetof(struct mdt_body, nlink) == 136, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, nlink));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->nlink) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->nlink));
-	LASSERTF((int)offsetof(struct mdt_body, unused2) == 140, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, unused2));
+	LASSERTF(offsetof(struct mdt_body, unused2) == 140, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, unused2));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->unused2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->unused2));
-	LASSERTF((int)offsetof(struct mdt_body, suppgid) == 144, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, suppgid));
+	LASSERTF(offsetof(struct mdt_body, suppgid) == 144, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, suppgid));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->suppgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->suppgid));
-	LASSERTF((int)offsetof(struct mdt_body, eadatasize) == 148, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, eadatasize));
+	LASSERTF(offsetof(struct mdt_body, eadatasize) == 148, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, eadatasize));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->eadatasize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->eadatasize));
-	LASSERTF((int)offsetof(struct mdt_body, aclsize) == 152, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, aclsize));
+	LASSERTF(offsetof(struct mdt_body, aclsize) == 152, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, aclsize));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->aclsize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->aclsize));
-	LASSERTF((int)offsetof(struct mdt_body, max_mdsize) == 156, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, max_mdsize));
+	LASSERTF(offsetof(struct mdt_body, max_mdsize) == 156, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, max_mdsize));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->max_mdsize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->max_mdsize));
-	LASSERTF((int)offsetof(struct mdt_body, max_cookiesize) == 160, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, max_cookiesize));
+	LASSERTF(offsetof(struct mdt_body, max_cookiesize) == 160, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, max_cookiesize));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->max_cookiesize) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->max_cookiesize));
-	LASSERTF((int)offsetof(struct mdt_body, uid_h) == 164, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, uid_h));
+	LASSERTF(offsetof(struct mdt_body, uid_h) == 164, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, uid_h));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->uid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->uid_h));
-	LASSERTF((int)offsetof(struct mdt_body, gid_h) == 168, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, gid_h));
+	LASSERTF(offsetof(struct mdt_body, gid_h) == 168, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, gid_h));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->gid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->gid_h));
-	LASSERTF((int)offsetof(struct mdt_body, padding_5) == 172, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_5));
+	LASSERTF(offsetof(struct mdt_body, padding_5) == 172, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_5));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_5) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_5));
-	LASSERTF((int)offsetof(struct mdt_body, padding_6) == 176, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_6));
+	LASSERTF(offsetof(struct mdt_body, padding_6) == 176, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_6));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_6) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_6));
-	LASSERTF((int)offsetof(struct mdt_body, padding_7) == 184, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_7));
+	LASSERTF(offsetof(struct mdt_body, padding_7) == 184, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_7));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_7) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_7));
-	LASSERTF((int)offsetof(struct mdt_body, padding_8) == 192, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_8));
+	LASSERTF(offsetof(struct mdt_body, padding_8) == 192, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_8));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_8) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_8));
-	LASSERTF((int)offsetof(struct mdt_body, padding_9) == 200, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_9));
+	LASSERTF(offsetof(struct mdt_body, padding_9) == 200, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_9));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_9) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_9));
-	LASSERTF((int)offsetof(struct mdt_body, padding_10) == 208, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_body, padding_10));
+	LASSERTF(offsetof(struct mdt_body, padding_10) == 208, "found %lld\n",
+		 (long long)offsetof(struct mdt_body, padding_10));
 	LASSERTF((int)sizeof(((struct mdt_body *)0)->padding_10) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_body *)0)->padding_10));
 	LASSERTF(MDS_FMODE_CLOSED == 000000000000UL, "found 0%.11oUL\n",
@@ -1868,48 +1868,48 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct mdt_ioepoch */
 	LASSERTF((int)sizeof(struct mdt_ioepoch) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_ioepoch));
-	LASSERTF((int)offsetof(struct mdt_ioepoch, handle) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_ioepoch, handle));
+	LASSERTF(offsetof(struct mdt_ioepoch, handle) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_ioepoch, handle));
 	LASSERTF((int)sizeof(((struct mdt_ioepoch *)0)->handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_ioepoch *)0)->handle));
-	LASSERTF((int)offsetof(struct mdt_ioepoch, ioepoch) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_ioepoch, ioepoch));
+	LASSERTF(offsetof(struct mdt_ioepoch, ioepoch) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_ioepoch, ioepoch));
 	LASSERTF((int)sizeof(((struct mdt_ioepoch *)0)->ioepoch) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_ioepoch *)0)->ioepoch));
-	LASSERTF((int)offsetof(struct mdt_ioepoch, flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_ioepoch, flags));
+	LASSERTF(offsetof(struct mdt_ioepoch, flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_ioepoch, flags));
 	LASSERTF((int)sizeof(((struct mdt_ioepoch *)0)->flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_ioepoch *)0)->flags));
-	LASSERTF((int)offsetof(struct mdt_ioepoch, padding) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_ioepoch, padding));
+	LASSERTF(offsetof(struct mdt_ioepoch, padding) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_ioepoch, padding));
 	LASSERTF((int)sizeof(((struct mdt_ioepoch *)0)->padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_ioepoch *)0)->padding));
 
 	/* Checks for struct mdt_remote_perm */
 	LASSERTF((int)sizeof(struct mdt_remote_perm) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_remote_perm));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_uid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_uid));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_uid) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_uid));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_uid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_uid));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_gid) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_gid));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_gid) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_gid));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_gid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_gid));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_fsuid));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_fsuid));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_fsgid));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_fsgid));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_access_perm) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_access_perm));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_access_perm) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_access_perm));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_access_perm) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_access_perm));
-	LASSERTF((int)offsetof(struct mdt_remote_perm, rp_padding) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_remote_perm, rp_padding));
+	LASSERTF(offsetof(struct mdt_remote_perm, rp_padding) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_remote_perm, rp_padding));
 	LASSERTF((int)sizeof(((struct mdt_remote_perm *)0)->rp_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_remote_perm *)0)->rp_padding));
 	LASSERTF(CFS_SETUID_PERM == 0x00000001UL, "found 0x%.8xUL\n",
@@ -1926,813 +1926,813 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct mdt_rec_setattr */
 	LASSERTF((int)sizeof(struct mdt_rec_setattr) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_setattr));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_opcode));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_cap));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_suppgid) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_suppgid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_suppgid) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_suppgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_suppgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_suppgid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_suppgid_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_suppgid_h));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_suppgid_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_suppgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_suppgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_suppgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_padding_1) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_padding_1));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_padding_1) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_padding_1));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_1));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_padding_1_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_padding_1_h));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_padding_1_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_padding_1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_fid) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_fid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_fid) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_fid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_fid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_valid) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_valid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_valid) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_valid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_valid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_valid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_uid) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_uid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_uid) == 64, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_uid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_uid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_uid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_gid) == 68, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_gid));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_gid) == 68, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_gid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_gid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_gid));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_size) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_size));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_size) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_size));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_size));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_blocks) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_blocks));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_blocks) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_blocks));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_blocks));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_mtime) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_mtime));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_mtime) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_mtime));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_mtime));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_atime) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_atime));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_atime) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_atime));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_atime));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_ctime) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_ctime));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_ctime) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_ctime));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_ctime));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_attr_flags) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_attr_flags));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_attr_flags) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_attr_flags));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_attr_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_attr_flags));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_mode) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_mode));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_mode) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_mode));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_mode));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_bias) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_bias));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_bias) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_padding_3) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_padding_3));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_padding_3) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_padding_3));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_3));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_padding_4) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_padding_4) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_4) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_4));
-	LASSERTF((int)offsetof(struct mdt_rec_setattr, sa_padding_5) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setattr, sa_padding_5));
+	LASSERTF(offsetof(struct mdt_rec_setattr, sa_padding_5) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setattr, sa_padding_5));
 	LASSERTF((int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_5) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setattr *)0)->sa_padding_5));
 
 	/* Checks for struct mdt_rec_create */
 	LASSERTF((int)sizeof(struct mdt_rec_create) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_create));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_opcode));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_cap));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fid1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fid1));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fid1) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fid1));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_fid2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_fid2));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_fid2) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_fid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_fid2));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_old_handle) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_old_handle));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_old_handle) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_old_handle));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_old_handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_old_handle));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_time) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_time));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_time) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_time));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_time));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_rdev) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_rdev));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_rdev) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_rdev));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_rdev) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_rdev));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_ioepoch) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_ioepoch));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_ioepoch) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_ioepoch));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_ioepoch) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_ioepoch));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_padding_1) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_padding_1));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_padding_1) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_padding_1));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_padding_1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_padding_1));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_mode) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_mode));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_mode) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_mode));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_mode));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_bias) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_bias));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_bias) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_flags_l) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_flags_l));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_flags_l) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_flags_l));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_flags_l) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_flags_l));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_flags_h) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_flags_h));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_flags_h) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_flags_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_flags_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_flags_h));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_umask) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_umask));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_umask) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_umask));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_umask) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_umask));
-	LASSERTF((int)offsetof(struct mdt_rec_create, cr_padding_4) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_create, cr_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_create, cr_padding_4) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_create, cr_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_create *)0)->cr_padding_4) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_create *)0)->cr_padding_4));
 
 	/* Checks for struct mdt_rec_link */
 	LASSERTF((int)sizeof(struct mdt_rec_link) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_link));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_opcode));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_cap));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fid1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fid1));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fid1) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fid1));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_fid2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_fid2));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_fid2) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_fid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_fid2));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_time) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_time));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_time) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_time));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_time));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_1) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_1));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_1) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_1));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_1));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_2) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_2));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_2) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_2));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_2));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_3) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_3));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_3) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_3));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_3));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_4) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_4) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_4) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_4));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_bias) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_bias));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_bias) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_5) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_5));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_5) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_5));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_5) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_5));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_6) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_6));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_6) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_6));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_6) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_6));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_7) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_7));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_7) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_7));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_7) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_7));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_8) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_8));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_8) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_8));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_8) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_8));
-	LASSERTF((int)offsetof(struct mdt_rec_link, lk_padding_9) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_link, lk_padding_9));
+	LASSERTF(offsetof(struct mdt_rec_link, lk_padding_9) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_link, lk_padding_9));
 	LASSERTF((int)sizeof(((struct mdt_rec_link *)0)->lk_padding_9) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_link *)0)->lk_padding_9));
 
 	/* Checks for struct mdt_rec_unlink */
 	LASSERTF((int)sizeof(struct mdt_rec_unlink) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_unlink));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_opcode));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_cap));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fid1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fid1));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fid1) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fid1));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_fid2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_fid2));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_fid2) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_fid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_fid2));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_time) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_time));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_time) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_time));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_time));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_2) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_2));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_2) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_2));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_2));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_3) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_3));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_3) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_3));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_3));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_4) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_4) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_4) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_4));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_5) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_5));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_5) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_5));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_5) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_5));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_bias) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_bias));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_bias) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_mode) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_mode));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_mode) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_mode));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_mode));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_6) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_6));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_6) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_6));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_6) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_6));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_7) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_7));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_7) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_7));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_7) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_7));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_8) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_8));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_8) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_8));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_8) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_8));
-	LASSERTF((int)offsetof(struct mdt_rec_unlink, ul_padding_9) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_unlink, ul_padding_9));
+	LASSERTF(offsetof(struct mdt_rec_unlink, ul_padding_9) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_unlink, ul_padding_9));
 	LASSERTF((int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_9) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_unlink *)0)->ul_padding_9));
 
 	/* Checks for struct mdt_rec_rename */
 	LASSERTF((int)sizeof(struct mdt_rec_rename) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_rename));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_opcode));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_cap));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fid1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fid1));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fid1) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fid1));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_fid2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_fid2));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_fid2) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_fid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_fid2));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_time) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_time));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_time) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_time));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_time));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_1) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_1));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_1) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_1));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_1));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_2) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_2));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_2) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_2));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_2));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_3) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_3));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_3) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_3));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_3));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_4) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_4) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_4) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_4));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_bias) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_bias));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_bias) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_mode) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_mode));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_mode) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_mode));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_mode));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_5) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_5));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_5) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_5));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_5) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_5));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_6) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_6));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_6) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_6));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_6) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_6));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_7) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_7));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_7) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_7));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_7) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_7));
-	LASSERTF((int)offsetof(struct mdt_rec_rename, rn_padding_8) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_rename, rn_padding_8));
+	LASSERTF(offsetof(struct mdt_rec_rename, rn_padding_8) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_rename, rn_padding_8));
 	LASSERTF((int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_8) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_rename *)0)->rn_padding_8));
 
 	/* Checks for struct mdt_rec_setxattr */
 	LASSERTF((int)sizeof(struct mdt_rec_setxattr) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_setxattr));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_opcode));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_cap));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_fid) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_fid));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_fid) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_fid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_fid));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_1) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_1));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_1) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_1));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_1));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_2) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_2));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_2) == 64, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_2));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_2));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_3) == 68, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_3));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_3) == 68, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_3));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_3));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_valid) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_valid));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_valid) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_valid));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_valid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_valid));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_time) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_time));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_time) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_time));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_time));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_5) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_5));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_5) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_5));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_5) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_5));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_6) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_6));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_6) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_6));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_6) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_6));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_7) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_7));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_7) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_7));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_7) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_7));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_size) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_size));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_size) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_size));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_size) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_size));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_flags) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_flags));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_flags) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_flags));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_flags));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_8) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_8));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_8) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_8));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_8) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_8));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_9) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_9));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_9) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_9));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_9) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_9));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_10) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_10));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_10) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_10));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_10) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_10));
-	LASSERTF((int)offsetof(struct mdt_rec_setxattr, sx_padding_11) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_setxattr, sx_padding_11));
+	LASSERTF(offsetof(struct mdt_rec_setxattr, sx_padding_11) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_setxattr, sx_padding_11));
 	LASSERTF((int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_11) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_setxattr *)0)->sx_padding_11));
 
 	/* Checks for struct mdt_rec_reint */
 	LASSERTF((int)sizeof(struct mdt_rec_reint) == 136, "found %lld\n",
 		 (long long)(int)sizeof(struct mdt_rec_reint));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_opcode) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_opcode));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_opcode) == 0, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_opcode));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_opcode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_opcode));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_cap) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_cap));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_cap) == 4, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_cap));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_cap) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_cap));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fsuid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fsuid));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fsuid) == 8, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fsuid));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fsuid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fsuid));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fsuid_h) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fsuid_h));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fsuid_h) == 12, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fsuid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fsuid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fsuid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fsgid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fsgid));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fsgid) == 16, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fsgid));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fsgid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fsgid));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fsgid_h) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fsgid_h));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fsgid_h) == 20, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fsgid_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fsgid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fsgid_h));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_suppgid1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_suppgid1));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_suppgid1) == 24, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_suppgid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid1));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_suppgid1_h) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_suppgid1_h));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_suppgid1_h) == 28, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_suppgid1_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid1_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid1_h));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_suppgid2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_suppgid2));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_suppgid2) == 32, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_suppgid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid2));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_suppgid2_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_suppgid2_h));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_suppgid2_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_suppgid2_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid2_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_suppgid2_h));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fid1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fid1));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fid1) == 40, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fid1));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fid1) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fid1));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_fid2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_fid2));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_fid2) == 56, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_fid2));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_fid2) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_fid2));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_mtime) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_mtime));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_mtime) == 72, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_mtime));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_mtime));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_atime) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_atime));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_atime) == 80, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_atime));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_atime));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_ctime) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_ctime));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_ctime) == 88, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_ctime));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_ctime));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_size) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_size));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_size) == 96, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_size));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_size));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_blocks) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_blocks));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_blocks) == 104, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_blocks));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_blocks));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_bias) == 112, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_bias));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_bias) == 112, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_bias));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_bias) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_bias));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_mode) == 116, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_mode));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_mode) == 116, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_mode));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_mode));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_flags) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_flags));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_flags) == 120, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_flags));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_flags));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_flags_h) == 124, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_flags_h));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_flags_h) == 124, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_flags_h));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_flags_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_flags_h));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_umask) == 128, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_umask));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_umask) == 128, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_umask));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_umask) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_umask));
-	LASSERTF((int)offsetof(struct mdt_rec_reint, rr_padding_4) == 132, "found %lld\n",
-		 (long long)(int)offsetof(struct mdt_rec_reint, rr_padding_4));
+	LASSERTF(offsetof(struct mdt_rec_reint, rr_padding_4) == 132, "found %lld\n",
+		 (long long)offsetof(struct mdt_rec_reint, rr_padding_4));
 	LASSERTF((int)sizeof(((struct mdt_rec_reint *)0)->rr_padding_4) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mdt_rec_reint *)0)->rr_padding_4));
 
 	/* Checks for struct lmv_desc */
 	LASSERTF((int)sizeof(struct lmv_desc) == 88, "found %lld\n",
 		 (long long)(int)sizeof(struct lmv_desc));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_tgt_count) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_tgt_count));
+	LASSERTF(offsetof(struct lmv_desc, ld_tgt_count) == 0, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_tgt_count));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_tgt_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_tgt_count));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_active_tgt_count) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_active_tgt_count));
+	LASSERTF(offsetof(struct lmv_desc, ld_active_tgt_count) == 4, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_active_tgt_count));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_active_tgt_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_active_tgt_count));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_default_stripe_count) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_default_stripe_count));
+	LASSERTF(offsetof(struct lmv_desc, ld_default_stripe_count) == 8, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_default_stripe_count));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_default_stripe_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_default_stripe_count));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_pattern) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_pattern));
+	LASSERTF(offsetof(struct lmv_desc, ld_pattern) == 12, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_pattern));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_pattern) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_pattern));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_default_hash_size) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_default_hash_size));
+	LASSERTF(offsetof(struct lmv_desc, ld_default_hash_size) == 16, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_default_hash_size));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_default_hash_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_default_hash_size));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_padding_1) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_padding_1));
+	LASSERTF(offsetof(struct lmv_desc, ld_padding_1) == 24, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_padding_1));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_padding_1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_padding_1));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_padding_2) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_padding_2));
+	LASSERTF(offsetof(struct lmv_desc, ld_padding_2) == 32, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_padding_2));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_padding_2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_padding_2));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_qos_maxage) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_qos_maxage));
+	LASSERTF(offsetof(struct lmv_desc, ld_qos_maxage) == 36, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_qos_maxage));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_qos_maxage) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_qos_maxage));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_padding_3) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_padding_3));
+	LASSERTF(offsetof(struct lmv_desc, ld_padding_3) == 40, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_padding_3));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_padding_3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_padding_3));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_padding_4) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_padding_4));
+	LASSERTF(offsetof(struct lmv_desc, ld_padding_4) == 44, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_padding_4));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_padding_4) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_padding_4));
-	LASSERTF((int)offsetof(struct lmv_desc, ld_uuid) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_desc, ld_uuid));
+	LASSERTF(offsetof(struct lmv_desc, ld_uuid) == 48, "found %lld\n",
+		 (long long)offsetof(struct lmv_desc, ld_uuid));
 	LASSERTF((int)sizeof(((struct lmv_desc *)0)->ld_uuid) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_desc *)0)->ld_uuid));
 
 	/* Checks for struct lmv_stripe_md */
 	LASSERTF((int)sizeof(struct lmv_stripe_md) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct lmv_stripe_md));
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_magic) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_magic));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_magic) == 0, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_magic));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_magic) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_magic));
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_count) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_count));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_count) == 4, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_count));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_count));
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_master) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_master));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_master) == 8, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_master));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_master) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_master));
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_padding) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_padding));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_padding) == 12, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_padding));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_padding));
 	CLASSERT(LOV_MAXPOOLNAME == 16);
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_pool_name[16]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_pool_name[16]));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_pool_name[16]) == 32, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_pool_name[16]));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_pool_name[16]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_pool_name[16]));
-	LASSERTF((int)offsetof(struct lmv_stripe_md, mea_ids[0]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lmv_stripe_md, mea_ids[0]));
+	LASSERTF(offsetof(struct lmv_stripe_md, mea_ids[0]) == 32, "found %lld\n",
+		 (long long)offsetof(struct lmv_stripe_md, mea_ids[0]));
 	LASSERTF((int)sizeof(((struct lmv_stripe_md *)0)->mea_ids[0]) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lmv_stripe_md *)0)->mea_ids[0]));
 
 	/* Checks for struct lov_desc */
 	LASSERTF((int)sizeof(struct lov_desc) == 88, "found %lld\n",
 		 (long long)(int)sizeof(struct lov_desc));
-	LASSERTF((int)offsetof(struct lov_desc, ld_tgt_count) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_tgt_count));
+	LASSERTF(offsetof(struct lov_desc, ld_tgt_count) == 0, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_tgt_count));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_tgt_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_tgt_count));
-	LASSERTF((int)offsetof(struct lov_desc, ld_active_tgt_count) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_active_tgt_count));
+	LASSERTF(offsetof(struct lov_desc, ld_active_tgt_count) == 4, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_active_tgt_count));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_active_tgt_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_active_tgt_count));
-	LASSERTF((int)offsetof(struct lov_desc, ld_default_stripe_count) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_default_stripe_count));
+	LASSERTF(offsetof(struct lov_desc, ld_default_stripe_count) == 8, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_default_stripe_count));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_default_stripe_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_default_stripe_count));
-	LASSERTF((int)offsetof(struct lov_desc, ld_pattern) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_pattern));
+	LASSERTF(offsetof(struct lov_desc, ld_pattern) == 12, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_pattern));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_pattern) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_pattern));
-	LASSERTF((int)offsetof(struct lov_desc, ld_default_stripe_size) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_default_stripe_size));
+	LASSERTF(offsetof(struct lov_desc, ld_default_stripe_size) == 16, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_default_stripe_size));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_default_stripe_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_default_stripe_size));
-	LASSERTF((int)offsetof(struct lov_desc, ld_default_stripe_offset) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_default_stripe_offset));
+	LASSERTF(offsetof(struct lov_desc, ld_default_stripe_offset) == 24, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_default_stripe_offset));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_default_stripe_offset) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_default_stripe_offset));
-	LASSERTF((int)offsetof(struct lov_desc, ld_padding_0) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_padding_0));
+	LASSERTF(offsetof(struct lov_desc, ld_padding_0) == 32, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_padding_0));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_padding_0) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_padding_0));
-	LASSERTF((int)offsetof(struct lov_desc, ld_qos_maxage) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_qos_maxage));
+	LASSERTF(offsetof(struct lov_desc, ld_qos_maxage) == 36, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_qos_maxage));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_qos_maxage) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_qos_maxage));
-	LASSERTF((int)offsetof(struct lov_desc, ld_padding_1) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_padding_1));
+	LASSERTF(offsetof(struct lov_desc, ld_padding_1) == 40, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_padding_1));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_padding_1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_padding_1));
-	LASSERTF((int)offsetof(struct lov_desc, ld_padding_2) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_padding_2));
+	LASSERTF(offsetof(struct lov_desc, ld_padding_2) == 44, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_padding_2));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_padding_2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_padding_2));
-	LASSERTF((int)offsetof(struct lov_desc, ld_uuid) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct lov_desc, ld_uuid));
+	LASSERTF(offsetof(struct lov_desc, ld_uuid) == 48, "found %lld\n",
+		 (long long)offsetof(struct lov_desc, ld_uuid));
 	LASSERTF((int)sizeof(((struct lov_desc *)0)->ld_uuid) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct lov_desc *)0)->ld_uuid));
 	CLASSERT(LOV_DESC_MAGIC == 0xB0CCDE5C);
@@ -2741,236 +2741,236 @@ void lustre_assert_wire_constants(void)
 	LASSERTF((int)sizeof(struct ldlm_res_id) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_res_id));
 	CLASSERT(RES_NAME_SIZE == 4);
-	LASSERTF((int)offsetof(struct ldlm_res_id, name[4]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_res_id, name[4]));
+	LASSERTF(offsetof(struct ldlm_res_id, name[4]) == 32, "found %lld\n",
+		 (long long)offsetof(struct ldlm_res_id, name[4]));
 	LASSERTF((int)sizeof(((struct ldlm_res_id *)0)->name[4]) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_res_id *)0)->name[4]));
 
 	/* Checks for struct ldlm_extent */
 	LASSERTF((int)sizeof(struct ldlm_extent) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_extent));
-	LASSERTF((int)offsetof(struct ldlm_extent, start) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_extent, start));
+	LASSERTF(offsetof(struct ldlm_extent, start) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_extent, start));
 	LASSERTF((int)sizeof(((struct ldlm_extent *)0)->start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_extent *)0)->start));
-	LASSERTF((int)offsetof(struct ldlm_extent, end) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_extent, end));
+	LASSERTF(offsetof(struct ldlm_extent, end) == 8, "found %lld\n",
+		 (long long)offsetof(struct ldlm_extent, end));
 	LASSERTF((int)sizeof(((struct ldlm_extent *)0)->end) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_extent *)0)->end));
-	LASSERTF((int)offsetof(struct ldlm_extent, gid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_extent, gid));
+	LASSERTF(offsetof(struct ldlm_extent, gid) == 16, "found %lld\n",
+		 (long long)offsetof(struct ldlm_extent, gid));
 	LASSERTF((int)sizeof(((struct ldlm_extent *)0)->gid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_extent *)0)->gid));
 
 	/* Checks for struct ldlm_inodebits */
 	LASSERTF((int)sizeof(struct ldlm_inodebits) == 8, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_inodebits));
-	LASSERTF((int)offsetof(struct ldlm_inodebits, bits) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_inodebits, bits));
+	LASSERTF(offsetof(struct ldlm_inodebits, bits) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_inodebits, bits));
 	LASSERTF((int)sizeof(((struct ldlm_inodebits *)0)->bits) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_inodebits *)0)->bits));
 
 	/* Checks for struct ldlm_flock_wire */
 	LASSERTF((int)sizeof(struct ldlm_flock_wire) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_flock_wire));
-	LASSERTF((int)offsetof(struct ldlm_flock_wire, lfw_start) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_flock_wire, lfw_start));
+	LASSERTF(offsetof(struct ldlm_flock_wire, lfw_start) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_flock_wire, lfw_start));
 	LASSERTF((int)sizeof(((struct ldlm_flock_wire *)0)->lfw_start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_flock_wire *)0)->lfw_start));
-	LASSERTF((int)offsetof(struct ldlm_flock_wire, lfw_end) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_flock_wire, lfw_end));
+	LASSERTF(offsetof(struct ldlm_flock_wire, lfw_end) == 8, "found %lld\n",
+		 (long long)offsetof(struct ldlm_flock_wire, lfw_end));
 	LASSERTF((int)sizeof(((struct ldlm_flock_wire *)0)->lfw_end) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_flock_wire *)0)->lfw_end));
-	LASSERTF((int)offsetof(struct ldlm_flock_wire, lfw_owner) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_flock_wire, lfw_owner));
+	LASSERTF(offsetof(struct ldlm_flock_wire, lfw_owner) == 16, "found %lld\n",
+		 (long long)offsetof(struct ldlm_flock_wire, lfw_owner));
 	LASSERTF((int)sizeof(((struct ldlm_flock_wire *)0)->lfw_owner) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_flock_wire *)0)->lfw_owner));
-	LASSERTF((int)offsetof(struct ldlm_flock_wire, lfw_padding) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_flock_wire, lfw_padding));
+	LASSERTF(offsetof(struct ldlm_flock_wire, lfw_padding) == 24, "found %lld\n",
+		 (long long)offsetof(struct ldlm_flock_wire, lfw_padding));
 	LASSERTF((int)sizeof(((struct ldlm_flock_wire *)0)->lfw_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_flock_wire *)0)->lfw_padding));
-	LASSERTF((int)offsetof(struct ldlm_flock_wire, lfw_pid) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_flock_wire, lfw_pid));
+	LASSERTF(offsetof(struct ldlm_flock_wire, lfw_pid) == 28, "found %lld\n",
+		 (long long)offsetof(struct ldlm_flock_wire, lfw_pid));
 	LASSERTF((int)sizeof(((struct ldlm_flock_wire *)0)->lfw_pid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_flock_wire *)0)->lfw_pid));
 
 	/* Checks for struct ldlm_intent */
 	LASSERTF((int)sizeof(struct ldlm_intent) == 8, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_intent));
-	LASSERTF((int)offsetof(struct ldlm_intent, opc) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_intent, opc));
+	LASSERTF(offsetof(struct ldlm_intent, opc) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_intent, opc));
 	LASSERTF((int)sizeof(((struct ldlm_intent *)0)->opc) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_intent *)0)->opc));
 
 	/* Checks for struct ldlm_resource_desc */
 	LASSERTF((int)sizeof(struct ldlm_resource_desc) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_resource_desc));
-	LASSERTF((int)offsetof(struct ldlm_resource_desc, lr_type) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_resource_desc, lr_type));
+	LASSERTF(offsetof(struct ldlm_resource_desc, lr_type) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_resource_desc, lr_type));
 	LASSERTF((int)sizeof(((struct ldlm_resource_desc *)0)->lr_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_resource_desc *)0)->lr_type));
-	LASSERTF((int)offsetof(struct ldlm_resource_desc, lr_padding) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_resource_desc, lr_padding));
+	LASSERTF(offsetof(struct ldlm_resource_desc, lr_padding) == 4, "found %lld\n",
+		 (long long)offsetof(struct ldlm_resource_desc, lr_padding));
 	LASSERTF((int)sizeof(((struct ldlm_resource_desc *)0)->lr_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_resource_desc *)0)->lr_padding));
-	LASSERTF((int)offsetof(struct ldlm_resource_desc, lr_name) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_resource_desc, lr_name));
+	LASSERTF(offsetof(struct ldlm_resource_desc, lr_name) == 8, "found %lld\n",
+		 (long long)offsetof(struct ldlm_resource_desc, lr_name));
 	LASSERTF((int)sizeof(((struct ldlm_resource_desc *)0)->lr_name) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_resource_desc *)0)->lr_name));
 
 	/* Checks for struct ldlm_lock_desc */
 	LASSERTF((int)sizeof(struct ldlm_lock_desc) == 80, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_lock_desc));
-	LASSERTF((int)offsetof(struct ldlm_lock_desc, l_resource) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_lock_desc, l_resource));
+	LASSERTF(offsetof(struct ldlm_lock_desc, l_resource) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_lock_desc, l_resource));
 	LASSERTF((int)sizeof(((struct ldlm_lock_desc *)0)->l_resource) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_lock_desc *)0)->l_resource));
-	LASSERTF((int)offsetof(struct ldlm_lock_desc, l_req_mode) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_lock_desc, l_req_mode));
+	LASSERTF(offsetof(struct ldlm_lock_desc, l_req_mode) == 40, "found %lld\n",
+		 (long long)offsetof(struct ldlm_lock_desc, l_req_mode));
 	LASSERTF((int)sizeof(((struct ldlm_lock_desc *)0)->l_req_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_lock_desc *)0)->l_req_mode));
-	LASSERTF((int)offsetof(struct ldlm_lock_desc, l_granted_mode) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_lock_desc, l_granted_mode));
+	LASSERTF(offsetof(struct ldlm_lock_desc, l_granted_mode) == 44, "found %lld\n",
+		 (long long)offsetof(struct ldlm_lock_desc, l_granted_mode));
 	LASSERTF((int)sizeof(((struct ldlm_lock_desc *)0)->l_granted_mode) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_lock_desc *)0)->l_granted_mode));
-	LASSERTF((int)offsetof(struct ldlm_lock_desc, l_policy_data) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_lock_desc, l_policy_data));
+	LASSERTF(offsetof(struct ldlm_lock_desc, l_policy_data) == 48, "found %lld\n",
+		 (long long)offsetof(struct ldlm_lock_desc, l_policy_data));
 	LASSERTF((int)sizeof(((struct ldlm_lock_desc *)0)->l_policy_data) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_lock_desc *)0)->l_policy_data));
 
 	/* Checks for struct ldlm_request */
 	LASSERTF((int)sizeof(struct ldlm_request) == 104, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_request));
-	LASSERTF((int)offsetof(struct ldlm_request, lock_flags) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_request, lock_flags));
+	LASSERTF(offsetof(struct ldlm_request, lock_flags) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_request, lock_flags));
 	LASSERTF((int)sizeof(((struct ldlm_request *)0)->lock_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_request *)0)->lock_flags));
-	LASSERTF((int)offsetof(struct ldlm_request, lock_count) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_request, lock_count));
+	LASSERTF(offsetof(struct ldlm_request, lock_count) == 4, "found %lld\n",
+		 (long long)offsetof(struct ldlm_request, lock_count));
 	LASSERTF((int)sizeof(((struct ldlm_request *)0)->lock_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_request *)0)->lock_count));
-	LASSERTF((int)offsetof(struct ldlm_request, lock_desc) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_request, lock_desc));
+	LASSERTF(offsetof(struct ldlm_request, lock_desc) == 8, "found %lld\n",
+		 (long long)offsetof(struct ldlm_request, lock_desc));
 	LASSERTF((int)sizeof(((struct ldlm_request *)0)->lock_desc) == 80, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_request *)0)->lock_desc));
-	LASSERTF((int)offsetof(struct ldlm_request, lock_handle) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_request, lock_handle));
+	LASSERTF(offsetof(struct ldlm_request, lock_handle) == 88, "found %lld\n",
+		 (long long)offsetof(struct ldlm_request, lock_handle));
 	LASSERTF((int)sizeof(((struct ldlm_request *)0)->lock_handle) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_request *)0)->lock_handle));
 
 	/* Checks for struct ldlm_reply */
 	LASSERTF((int)sizeof(struct ldlm_reply) == 112, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_reply));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_flags) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_flags));
+	LASSERTF(offsetof(struct ldlm_reply, lock_flags) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_flags));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_flags));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_padding) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_padding));
+	LASSERTF(offsetof(struct ldlm_reply, lock_padding) == 4, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_padding));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_padding));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_desc) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_desc));
+	LASSERTF(offsetof(struct ldlm_reply, lock_desc) == 8, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_desc));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_desc) == 80, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_desc));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_handle) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_handle));
+	LASSERTF(offsetof(struct ldlm_reply, lock_handle) == 88, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_handle));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_handle) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_handle));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_policy_res1) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_policy_res1));
+	LASSERTF(offsetof(struct ldlm_reply, lock_policy_res1) == 96, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_policy_res1));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_policy_res1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_policy_res1));
-	LASSERTF((int)offsetof(struct ldlm_reply, lock_policy_res2) == 104, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_reply, lock_policy_res2));
+	LASSERTF(offsetof(struct ldlm_reply, lock_policy_res2) == 104, "found %lld\n",
+		 (long long)offsetof(struct ldlm_reply, lock_policy_res2));
 	LASSERTF((int)sizeof(((struct ldlm_reply *)0)->lock_policy_res2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_reply *)0)->lock_policy_res2));
 
 	/* Checks for struct ost_lvb_v1 */
 	LASSERTF((int)sizeof(struct ost_lvb_v1) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct ost_lvb_v1));
-	LASSERTF((int)offsetof(struct ost_lvb_v1, lvb_size) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb_v1, lvb_size));
+	LASSERTF(offsetof(struct ost_lvb_v1, lvb_size) == 0, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb_v1, lvb_size));
 	LASSERTF((int)sizeof(((struct ost_lvb_v1 *)0)->lvb_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb_v1 *)0)->lvb_size));
-	LASSERTF((int)offsetof(struct ost_lvb_v1, lvb_mtime) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb_v1, lvb_mtime));
+	LASSERTF(offsetof(struct ost_lvb_v1, lvb_mtime) == 8, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb_v1, lvb_mtime));
 	LASSERTF((int)sizeof(((struct ost_lvb_v1 *)0)->lvb_mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb_v1 *)0)->lvb_mtime));
-	LASSERTF((int)offsetof(struct ost_lvb_v1, lvb_atime) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb_v1, lvb_atime));
+	LASSERTF(offsetof(struct ost_lvb_v1, lvb_atime) == 16, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb_v1, lvb_atime));
 	LASSERTF((int)sizeof(((struct ost_lvb_v1 *)0)->lvb_atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb_v1 *)0)->lvb_atime));
-	LASSERTF((int)offsetof(struct ost_lvb_v1, lvb_ctime) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb_v1, lvb_ctime));
+	LASSERTF(offsetof(struct ost_lvb_v1, lvb_ctime) == 24, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb_v1, lvb_ctime));
 	LASSERTF((int)sizeof(((struct ost_lvb_v1 *)0)->lvb_ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb_v1 *)0)->lvb_ctime));
-	LASSERTF((int)offsetof(struct ost_lvb_v1, lvb_blocks) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb_v1, lvb_blocks));
+	LASSERTF(offsetof(struct ost_lvb_v1, lvb_blocks) == 32, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb_v1, lvb_blocks));
 	LASSERTF((int)sizeof(((struct ost_lvb_v1 *)0)->lvb_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb_v1 *)0)->lvb_blocks));
 
 	/* Checks for struct ost_lvb */
 	LASSERTF((int)sizeof(struct ost_lvb) == 56, "found %lld\n",
 		 (long long)(int)sizeof(struct ost_lvb));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_size) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_size));
+	LASSERTF(offsetof(struct ost_lvb, lvb_size) == 0, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_size));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_size) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_size));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_mtime) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_mtime));
+	LASSERTF(offsetof(struct ost_lvb, lvb_mtime) == 8, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_mtime));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_mtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_mtime));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_atime) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_atime));
+	LASSERTF(offsetof(struct ost_lvb, lvb_atime) == 16, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_atime));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_atime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_atime));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_ctime) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_ctime));
+	LASSERTF(offsetof(struct ost_lvb, lvb_ctime) == 24, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_ctime));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_ctime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_ctime));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_blocks) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_blocks));
+	LASSERTF(offsetof(struct ost_lvb, lvb_blocks) == 32, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_blocks));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_blocks) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_blocks));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_mtime_ns) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_mtime_ns));
+	LASSERTF(offsetof(struct ost_lvb, lvb_mtime_ns) == 40, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_mtime_ns));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_mtime_ns) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_mtime_ns));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_atime_ns) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_atime_ns));
+	LASSERTF(offsetof(struct ost_lvb, lvb_atime_ns) == 44, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_atime_ns));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_atime_ns) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_atime_ns));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_ctime_ns) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_ctime_ns));
+	LASSERTF(offsetof(struct ost_lvb, lvb_ctime_ns) == 48, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_ctime_ns));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_ctime_ns) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_ctime_ns));
-	LASSERTF((int)offsetof(struct ost_lvb, lvb_padding) == 52, "found %lld\n",
-		 (long long)(int)offsetof(struct ost_lvb, lvb_padding));
+	LASSERTF(offsetof(struct ost_lvb, lvb_padding) == 52, "found %lld\n",
+		 (long long)offsetof(struct ost_lvb, lvb_padding));
 	LASSERTF((int)sizeof(((struct ost_lvb *)0)->lvb_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ost_lvb *)0)->lvb_padding));
 
 	/* Checks for struct lquota_lvb */
 	LASSERTF((int)sizeof(struct lquota_lvb) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct lquota_lvb));
-	LASSERTF((int)offsetof(struct lquota_lvb, lvb_flags) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lquota_lvb, lvb_flags));
+	LASSERTF(offsetof(struct lquota_lvb, lvb_flags) == 0, "found %lld\n",
+		 (long long)offsetof(struct lquota_lvb, lvb_flags));
 	LASSERTF((int)sizeof(((struct lquota_lvb *)0)->lvb_flags) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lquota_lvb *)0)->lvb_flags));
-	LASSERTF((int)offsetof(struct lquota_lvb, lvb_id_may_rel) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lquota_lvb, lvb_id_may_rel));
+	LASSERTF(offsetof(struct lquota_lvb, lvb_id_may_rel) == 8, "found %lld\n",
+		 (long long)offsetof(struct lquota_lvb, lvb_id_may_rel));
 	LASSERTF((int)sizeof(((struct lquota_lvb *)0)->lvb_id_may_rel) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lquota_lvb *)0)->lvb_id_may_rel));
-	LASSERTF((int)offsetof(struct lquota_lvb, lvb_id_rel) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lquota_lvb, lvb_id_rel));
+	LASSERTF(offsetof(struct lquota_lvb, lvb_id_rel) == 16, "found %lld\n",
+		 (long long)offsetof(struct lquota_lvb, lvb_id_rel));
 	LASSERTF((int)sizeof(((struct lquota_lvb *)0)->lvb_id_rel) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lquota_lvb *)0)->lvb_id_rel));
-	LASSERTF((int)offsetof(struct lquota_lvb, lvb_id_qunit) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lquota_lvb, lvb_id_qunit));
+	LASSERTF(offsetof(struct lquota_lvb, lvb_id_qunit) == 24, "found %lld\n",
+		 (long long)offsetof(struct lquota_lvb, lvb_id_qunit));
 	LASSERTF((int)sizeof(((struct lquota_lvb *)0)->lvb_id_qunit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lquota_lvb *)0)->lvb_id_qunit));
-	LASSERTF((int)offsetof(struct lquota_lvb, lvb_pad1) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lquota_lvb, lvb_pad1));
+	LASSERTF(offsetof(struct lquota_lvb, lvb_pad1) == 32, "found %lld\n",
+		 (long long)offsetof(struct lquota_lvb, lvb_pad1));
 	LASSERTF((int)sizeof(((struct lquota_lvb *)0)->lvb_pad1) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lquota_lvb *)0)->lvb_pad1));
 	LASSERTF(LQUOTA_FL_EDQUOT == 1, "found %lld\n",
@@ -2979,32 +2979,32 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct ldlm_gl_lquota_desc */
 	LASSERTF((int)sizeof(struct ldlm_gl_lquota_desc) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct ldlm_gl_lquota_desc));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_id) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_id));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_id) == 0, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_id));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_id) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_id));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_flags));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_flags));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_flags) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_flags));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_ver) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_ver));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_ver) == 24, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_ver));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_ver) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_ver));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_hardlimit) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_hardlimit));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_hardlimit) == 32, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_hardlimit));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_hardlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_hardlimit));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_softlimit) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_softlimit));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_softlimit) == 40, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_softlimit));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_softlimit) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_softlimit));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_time) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_time));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_time) == 48, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_time));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_time));
-	LASSERTF((int)offsetof(struct ldlm_gl_lquota_desc, gl_pad2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct ldlm_gl_lquota_desc, gl_pad2));
+	LASSERTF(offsetof(struct ldlm_gl_lquota_desc, gl_pad2) == 56, "found %lld\n",
+		 (long long)offsetof(struct ldlm_gl_lquota_desc, gl_pad2));
 	LASSERTF((int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_pad2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ldlm_gl_lquota_desc *)0)->gl_pad2));
 
@@ -3012,56 +3012,56 @@ void lustre_assert_wire_constants(void)
 	LASSERTF((int)sizeof(struct mgs_send_param) == 1024, "found %lld\n",
 		 (long long)(int)sizeof(struct mgs_send_param));
 	CLASSERT(MGS_PARAM_MAXLEN == 1024);
-	LASSERTF((int)offsetof(struct mgs_send_param, mgs_param[1024]) == 1024, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_send_param, mgs_param[1024]));
+	LASSERTF(offsetof(struct mgs_send_param, mgs_param[1024]) == 1024, "found %lld\n",
+		 (long long)offsetof(struct mgs_send_param, mgs_param[1024]));
 	LASSERTF((int)sizeof(((struct mgs_send_param *)0)->mgs_param[1024]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_send_param *)0)->mgs_param[1024]));
 
 	/* Checks for struct cfg_marker */
 	LASSERTF((int)sizeof(struct cfg_marker) == 160, "found %lld\n",
 		 (long long)(int)sizeof(struct cfg_marker));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_step) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_step));
+	LASSERTF(offsetof(struct cfg_marker, cm_step) == 0, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_step));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_step) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_step));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_flags) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_flags));
+	LASSERTF(offsetof(struct cfg_marker, cm_flags) == 4, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_flags));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_flags));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_vers) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_vers));
+	LASSERTF(offsetof(struct cfg_marker, cm_vers) == 8, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_vers));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_vers) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_vers));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_padding) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_padding));
+	LASSERTF(offsetof(struct cfg_marker, cm_padding) == 12, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_padding));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_padding));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_createtime) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_createtime));
+	LASSERTF(offsetof(struct cfg_marker, cm_createtime) == 16, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_createtime));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_createtime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_createtime));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_canceltime) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_canceltime));
+	LASSERTF(offsetof(struct cfg_marker, cm_canceltime) == 24, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_canceltime));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_canceltime) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_canceltime));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_tgtname) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_tgtname));
+	LASSERTF(offsetof(struct cfg_marker, cm_tgtname) == 32, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_tgtname));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_tgtname) == 64, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_tgtname));
-	LASSERTF((int)offsetof(struct cfg_marker, cm_comment) == 96, "found %lld\n",
-		 (long long)(int)offsetof(struct cfg_marker, cm_comment));
+	LASSERTF(offsetof(struct cfg_marker, cm_comment) == 96, "found %lld\n",
+		 (long long)offsetof(struct cfg_marker, cm_comment));
 	LASSERTF((int)sizeof(((struct cfg_marker *)0)->cm_comment) == 64, "found %lld\n",
 		 (long long)(int)sizeof(((struct cfg_marker *)0)->cm_comment));
 
 	/* Checks for struct llog_logid */
 	LASSERTF((int)sizeof(struct llog_logid) == 20, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_logid));
-	LASSERTF((int)offsetof(struct llog_logid, lgl_oi) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid, lgl_oi));
+	LASSERTF(offsetof(struct llog_logid, lgl_oi) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_logid, lgl_oi));
 	LASSERTF((int)sizeof(((struct llog_logid *)0)->lgl_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid *)0)->lgl_oi));
-	LASSERTF((int)offsetof(struct llog_logid, lgl_ogen) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid, lgl_ogen));
+	LASSERTF(offsetof(struct llog_logid, lgl_ogen) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_logid, lgl_ogen));
 	LASSERTF((int)sizeof(((struct llog_logid *)0)->lgl_ogen) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid *)0)->lgl_ogen));
 	CLASSERT(OST_SZ_REC == 274730752);
@@ -3078,463 +3078,463 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct llog_catid */
 	LASSERTF((int)sizeof(struct llog_catid) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_catid));
-	LASSERTF((int)offsetof(struct llog_catid, lci_logid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_catid, lci_logid));
+	LASSERTF(offsetof(struct llog_catid, lci_logid) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_catid, lci_logid));
 	LASSERTF((int)sizeof(((struct llog_catid *)0)->lci_logid) == 20, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_catid *)0)->lci_logid));
-	LASSERTF((int)offsetof(struct llog_catid, lci_padding1) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_catid, lci_padding1));
+	LASSERTF(offsetof(struct llog_catid, lci_padding1) == 20, "found %lld\n",
+		 (long long)offsetof(struct llog_catid, lci_padding1));
 	LASSERTF((int)sizeof(((struct llog_catid *)0)->lci_padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_catid *)0)->lci_padding1));
-	LASSERTF((int)offsetof(struct llog_catid, lci_padding2) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_catid, lci_padding2));
+	LASSERTF(offsetof(struct llog_catid, lci_padding2) == 24, "found %lld\n",
+		 (long long)offsetof(struct llog_catid, lci_padding2));
 	LASSERTF((int)sizeof(((struct llog_catid *)0)->lci_padding2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_catid *)0)->lci_padding2));
-	LASSERTF((int)offsetof(struct llog_catid, lci_padding3) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_catid, lci_padding3));
+	LASSERTF(offsetof(struct llog_catid, lci_padding3) == 28, "found %lld\n",
+		 (long long)offsetof(struct llog_catid, lci_padding3));
 	LASSERTF((int)sizeof(((struct llog_catid *)0)->lci_padding3) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_catid *)0)->lci_padding3));
 
 	/* Checks for struct llog_rec_hdr */
 	LASSERTF((int)sizeof(struct llog_rec_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_rec_hdr));
-	LASSERTF((int)offsetof(struct llog_rec_hdr, lrh_len) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_hdr, lrh_len));
+	LASSERTF(offsetof(struct llog_rec_hdr, lrh_len) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_hdr, lrh_len));
 	LASSERTF((int)sizeof(((struct llog_rec_hdr *)0)->lrh_len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_hdr *)0)->lrh_len));
-	LASSERTF((int)offsetof(struct llog_rec_hdr, lrh_index) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_hdr, lrh_index));
+	LASSERTF(offsetof(struct llog_rec_hdr, lrh_index) == 4, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_hdr, lrh_index));
 	LASSERTF((int)sizeof(((struct llog_rec_hdr *)0)->lrh_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_hdr *)0)->lrh_index));
-	LASSERTF((int)offsetof(struct llog_rec_hdr, lrh_type) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_hdr, lrh_type));
+	LASSERTF(offsetof(struct llog_rec_hdr, lrh_type) == 8, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_hdr, lrh_type));
 	LASSERTF((int)sizeof(((struct llog_rec_hdr *)0)->lrh_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_hdr *)0)->lrh_type));
-	LASSERTF((int)offsetof(struct llog_rec_hdr, lrh_id) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_hdr, lrh_id));
+	LASSERTF(offsetof(struct llog_rec_hdr, lrh_id) == 12, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_hdr, lrh_id));
 	LASSERTF((int)sizeof(((struct llog_rec_hdr *)0)->lrh_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_hdr *)0)->lrh_id));
 
 	/* Checks for struct llog_rec_tail */
 	LASSERTF((int)sizeof(struct llog_rec_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_rec_tail));
-	LASSERTF((int)offsetof(struct llog_rec_tail, lrt_len) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_tail, lrt_len));
+	LASSERTF(offsetof(struct llog_rec_tail, lrt_len) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_tail, lrt_len));
 	LASSERTF((int)sizeof(((struct llog_rec_tail *)0)->lrt_len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_tail *)0)->lrt_len));
-	LASSERTF((int)offsetof(struct llog_rec_tail, lrt_index) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_rec_tail, lrt_index));
+	LASSERTF(offsetof(struct llog_rec_tail, lrt_index) == 4, "found %lld\n",
+		 (long long)offsetof(struct llog_rec_tail, lrt_index));
 	LASSERTF((int)sizeof(((struct llog_rec_tail *)0)->lrt_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_rec_tail *)0)->lrt_index));
 
 	/* Checks for struct llog_logid_rec */
 	LASSERTF((int)sizeof(struct llog_logid_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_logid_rec));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_hdr));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_hdr));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_hdr));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_id) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_id));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_id) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_id));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_id) == 20, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_id));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_padding1) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_padding1));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_padding1) == 36, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_padding1));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_padding1));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_padding2) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_padding2));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_padding2) == 40, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_padding2));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_padding2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_padding2));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_padding3) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_padding3));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_padding3) == 48, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_padding3));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_padding3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_padding3));
-	LASSERTF((int)offsetof(struct llog_logid_rec, lid_tail) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_logid_rec, lid_tail));
+	LASSERTF(offsetof(struct llog_logid_rec, lid_tail) == 56, "found %lld\n",
+		 (long long)offsetof(struct llog_logid_rec, lid_tail));
 	LASSERTF((int)sizeof(((struct llog_logid_rec *)0)->lid_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_logid_rec *)0)->lid_tail));
 
 	/* Checks for struct llog_unlink_rec */
 	LASSERTF((int)sizeof(struct llog_unlink_rec) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_unlink_rec));
-	LASSERTF((int)offsetof(struct llog_unlink_rec, lur_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink_rec, lur_hdr));
+	LASSERTF(offsetof(struct llog_unlink_rec, lur_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink_rec, lur_hdr));
 	LASSERTF((int)sizeof(((struct llog_unlink_rec *)0)->lur_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink_rec *)0)->lur_hdr));
-	LASSERTF((int)offsetof(struct llog_unlink_rec, lur_oid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink_rec, lur_oid));
+	LASSERTF(offsetof(struct llog_unlink_rec, lur_oid) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink_rec, lur_oid));
 	LASSERTF((int)sizeof(((struct llog_unlink_rec *)0)->lur_oid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink_rec *)0)->lur_oid));
-	LASSERTF((int)offsetof(struct llog_unlink_rec, lur_oseq) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink_rec, lur_oseq));
+	LASSERTF(offsetof(struct llog_unlink_rec, lur_oseq) == 24, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink_rec, lur_oseq));
 	LASSERTF((int)sizeof(((struct llog_unlink_rec *)0)->lur_oseq) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink_rec *)0)->lur_oseq));
-	LASSERTF((int)offsetof(struct llog_unlink_rec, lur_count) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink_rec, lur_count));
+	LASSERTF(offsetof(struct llog_unlink_rec, lur_count) == 28, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink_rec, lur_count));
 	LASSERTF((int)sizeof(((struct llog_unlink_rec *)0)->lur_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink_rec *)0)->lur_count));
-	LASSERTF((int)offsetof(struct llog_unlink_rec, lur_tail) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink_rec, lur_tail));
+	LASSERTF(offsetof(struct llog_unlink_rec, lur_tail) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink_rec, lur_tail));
 	LASSERTF((int)sizeof(((struct llog_unlink_rec *)0)->lur_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink_rec *)0)->lur_tail));
 	/* Checks for struct llog_unlink64_rec */
 	LASSERTF((int)sizeof(struct llog_unlink64_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_unlink64_rec));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_hdr));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_hdr));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_hdr));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_fid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_fid));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_fid) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_fid));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_fid));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_count) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_count));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_count) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_count));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_count));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_tail) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_tail));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_tail) == 56, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_tail));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_tail));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_padding1) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_padding1));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_padding1) == 36, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_padding1));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding1));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_padding2) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_padding2));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_padding2) == 40, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_padding2));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding2));
-	LASSERTF((int)offsetof(struct llog_unlink64_rec, lur_padding3) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_unlink64_rec, lur_padding3));
+	LASSERTF(offsetof(struct llog_unlink64_rec, lur_padding3) == 48, "found %lld\n",
+		 (long long)offsetof(struct llog_unlink64_rec, lur_padding3));
 	LASSERTF((int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_unlink64_rec *)0)->lur_padding3));
 
 	/* Checks for struct llog_setattr64_rec */
 	LASSERTF((int)sizeof(struct llog_setattr64_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_setattr64_rec));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_hdr));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_hdr));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_hdr));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_oi) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_oi));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_oi) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_oi));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_oi) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_oi));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_uid) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_uid));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_uid) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_uid));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_uid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_uid));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_uid_h) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_uid_h));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_uid_h) == 36, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_uid_h));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_uid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_uid_h));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_gid) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_gid));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_gid) == 40, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_gid));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_gid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_gid));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_gid_h) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_gid_h));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_gid_h) == 44, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_gid_h));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_gid_h) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_gid_h));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_padding) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_padding));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_padding) == 48, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_padding));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_padding) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_padding));
-	LASSERTF((int)offsetof(struct llog_setattr64_rec, lsr_tail) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_setattr64_rec, lsr_tail));
+	LASSERTF(offsetof(struct llog_setattr64_rec, lsr_tail) == 56, "found %lld\n",
+		 (long long)offsetof(struct llog_setattr64_rec, lsr_tail));
 	LASSERTF((int)sizeof(((struct llog_setattr64_rec *)0)->lsr_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_setattr64_rec *)0)->lsr_tail));
 
 	/* Checks for struct llog_size_change_rec */
 	LASSERTF((int)sizeof(struct llog_size_change_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_size_change_rec));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_hdr));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_hdr));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_hdr));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_fid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_fid));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_fid) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_fid));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_fid));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_ioepoch) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_ioepoch));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_ioepoch) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_ioepoch));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_ioepoch) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_ioepoch));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_padding1) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_padding1));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_padding1) == 36, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_padding1));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding1));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_padding2) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_padding2));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_padding2) == 40, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_padding2));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding2));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_padding3) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_padding3));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_padding3) == 48, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_padding3));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding3) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_padding3));
-	LASSERTF((int)offsetof(struct llog_size_change_rec, lsc_tail) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_size_change_rec, lsc_tail));
+	LASSERTF(offsetof(struct llog_size_change_rec, lsc_tail) == 56, "found %lld\n",
+		 (long long)offsetof(struct llog_size_change_rec, lsc_tail));
 	LASSERTF((int)sizeof(((struct llog_size_change_rec *)0)->lsc_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_size_change_rec *)0)->lsc_tail));
 
 	/* Checks for struct changelog_rec */
 	LASSERTF((int)sizeof(struct changelog_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct changelog_rec));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_namelen) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_namelen));
+	LASSERTF(offsetof(struct changelog_rec, cr_namelen) == 0, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_namelen));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_namelen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_namelen));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_flags) == 2, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_flags));
+	LASSERTF(offsetof(struct changelog_rec, cr_flags) == 2, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_flags));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_flags) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_flags));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_type) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_type));
+	LASSERTF(offsetof(struct changelog_rec, cr_type) == 4, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_type));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_type));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_index) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_index));
+	LASSERTF(offsetof(struct changelog_rec, cr_index) == 8, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_index));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_index) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_index));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_prev) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_prev));
+	LASSERTF(offsetof(struct changelog_rec, cr_prev) == 16, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_prev));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_prev) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_prev));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_time) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_time));
+	LASSERTF(offsetof(struct changelog_rec, cr_time) == 24, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_time));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_time));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_tfid) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_tfid));
+	LASSERTF(offsetof(struct changelog_rec, cr_tfid) == 32, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_tfid));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_tfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_tfid));
-	LASSERTF((int)offsetof(struct changelog_rec, cr_pfid) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_rec, cr_pfid));
+	LASSERTF(offsetof(struct changelog_rec, cr_pfid) == 48, "found %lld\n",
+		 (long long)offsetof(struct changelog_rec, cr_pfid));
 	LASSERTF((int)sizeof(((struct changelog_rec *)0)->cr_pfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_rec *)0)->cr_pfid));
 
 	/* Checks for struct changelog_ext_rec */
 	LASSERTF((int)sizeof(struct changelog_ext_rec) == 96, "found %lld\n",
 		 (long long)(int)sizeof(struct changelog_ext_rec));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_namelen) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_namelen));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_namelen) == 0, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_namelen));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_namelen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_namelen));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_flags) == 2, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_flags));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_flags) == 2, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_flags));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_flags) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_flags));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_type) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_type));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_type) == 4, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_type));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_type) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_type));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_index) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_index));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_index) == 8, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_index));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_index) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_index));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_prev) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_prev));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_prev) == 16, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_prev));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_prev) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_prev));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_time) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_time));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_time) == 24, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_time));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_time) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_time));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_tfid) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_tfid));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_tfid) == 32, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_tfid));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_tfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_tfid));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_pfid) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_pfid));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_pfid) == 48, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_pfid));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_pfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_pfid));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_sfid) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_sfid));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_sfid) == 64, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_sfid));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_sfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_sfid));
-	LASSERTF((int)offsetof(struct changelog_ext_rec, cr_spfid) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_ext_rec, cr_spfid));
+	LASSERTF(offsetof(struct changelog_ext_rec, cr_spfid) == 80, "found %lld\n",
+		 (long long)offsetof(struct changelog_ext_rec, cr_spfid));
 	LASSERTF((int)sizeof(((struct changelog_ext_rec *)0)->cr_spfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_ext_rec *)0)->cr_spfid));
 
 	/* Checks for struct changelog_setinfo */
 	LASSERTF((int)sizeof(struct changelog_setinfo) == 12, "found %lld\n",
 		 (long long)(int)sizeof(struct changelog_setinfo));
-	LASSERTF((int)offsetof(struct changelog_setinfo, cs_recno) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_setinfo, cs_recno));
+	LASSERTF(offsetof(struct changelog_setinfo, cs_recno) == 0, "found %lld\n",
+		 (long long)offsetof(struct changelog_setinfo, cs_recno));
 	LASSERTF((int)sizeof(((struct changelog_setinfo *)0)->cs_recno) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_setinfo *)0)->cs_recno));
-	LASSERTF((int)offsetof(struct changelog_setinfo, cs_id) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct changelog_setinfo, cs_id));
+	LASSERTF(offsetof(struct changelog_setinfo, cs_id) == 8, "found %lld\n",
+		 (long long)offsetof(struct changelog_setinfo, cs_id));
 	LASSERTF((int)sizeof(((struct changelog_setinfo *)0)->cs_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct changelog_setinfo *)0)->cs_id));
 
 	/* Checks for struct llog_changelog_rec */
 	LASSERTF((int)sizeof(struct llog_changelog_rec) == 88, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_changelog_rec));
-	LASSERTF((int)offsetof(struct llog_changelog_rec, cr_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_rec, cr_hdr));
+	LASSERTF(offsetof(struct llog_changelog_rec, cr_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_rec, cr_hdr));
 	LASSERTF((int)sizeof(((struct llog_changelog_rec *)0)->cr_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_rec *)0)->cr_hdr));
-	LASSERTF((int)offsetof(struct llog_changelog_rec, cr) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_rec, cr));
+	LASSERTF(offsetof(struct llog_changelog_rec, cr) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_rec, cr));
 	LASSERTF((int)sizeof(((struct llog_changelog_rec *)0)->cr) == 64, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_rec *)0)->cr));
-	LASSERTF((int)offsetof(struct llog_changelog_rec, cr_tail) == 80, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_rec, cr_tail));
+	LASSERTF(offsetof(struct llog_changelog_rec, cr_tail) == 80, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_rec, cr_tail));
 	LASSERTF((int)sizeof(((struct llog_changelog_rec *)0)->cr_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_rec *)0)->cr_tail));
 
 	/* Checks for struct llog_changelog_user_rec */
 	LASSERTF((int)sizeof(struct llog_changelog_user_rec) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_changelog_user_rec));
-	LASSERTF((int)offsetof(struct llog_changelog_user_rec, cur_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_user_rec, cur_hdr));
+	LASSERTF(offsetof(struct llog_changelog_user_rec, cur_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_user_rec, cur_hdr));
 	LASSERTF((int)sizeof(((struct llog_changelog_user_rec *)0)->cur_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_user_rec *)0)->cur_hdr));
-	LASSERTF((int)offsetof(struct llog_changelog_user_rec, cur_id) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_user_rec, cur_id));
+	LASSERTF(offsetof(struct llog_changelog_user_rec, cur_id) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_user_rec, cur_id));
 	LASSERTF((int)sizeof(((struct llog_changelog_user_rec *)0)->cur_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_user_rec *)0)->cur_id));
-	LASSERTF((int)offsetof(struct llog_changelog_user_rec, cur_padding) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_user_rec, cur_padding));
+	LASSERTF(offsetof(struct llog_changelog_user_rec, cur_padding) == 20, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_user_rec, cur_padding));
 	LASSERTF((int)sizeof(((struct llog_changelog_user_rec *)0)->cur_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_user_rec *)0)->cur_padding));
-	LASSERTF((int)offsetof(struct llog_changelog_user_rec, cur_endrec) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_user_rec, cur_endrec));
+	LASSERTF(offsetof(struct llog_changelog_user_rec, cur_endrec) == 24, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_user_rec, cur_endrec));
 	LASSERTF((int)sizeof(((struct llog_changelog_user_rec *)0)->cur_endrec) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_user_rec *)0)->cur_endrec));
-	LASSERTF((int)offsetof(struct llog_changelog_user_rec, cur_tail) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_changelog_user_rec, cur_tail));
+	LASSERTF(offsetof(struct llog_changelog_user_rec, cur_tail) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_changelog_user_rec, cur_tail));
 	LASSERTF((int)sizeof(((struct llog_changelog_user_rec *)0)->cur_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_changelog_user_rec *)0)->cur_tail));
 
 	/* Checks for struct llog_gen */
 	LASSERTF((int)sizeof(struct llog_gen) == 16, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_gen));
-	LASSERTF((int)offsetof(struct llog_gen, mnt_cnt) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_gen, mnt_cnt));
+	LASSERTF(offsetof(struct llog_gen, mnt_cnt) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_gen, mnt_cnt));
 	LASSERTF((int)sizeof(((struct llog_gen *)0)->mnt_cnt) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_gen *)0)->mnt_cnt));
-	LASSERTF((int)offsetof(struct llog_gen, conn_cnt) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_gen, conn_cnt));
+	LASSERTF(offsetof(struct llog_gen, conn_cnt) == 8, "found %lld\n",
+		 (long long)offsetof(struct llog_gen, conn_cnt));
 	LASSERTF((int)sizeof(((struct llog_gen *)0)->conn_cnt) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_gen *)0)->conn_cnt));
 
 	/* Checks for struct llog_gen_rec */
 	LASSERTF((int)sizeof(struct llog_gen_rec) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_gen_rec));
-	LASSERTF((int)offsetof(struct llog_gen_rec, lgr_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_gen_rec, lgr_hdr));
+	LASSERTF(offsetof(struct llog_gen_rec, lgr_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_gen_rec, lgr_hdr));
 	LASSERTF((int)sizeof(((struct llog_gen_rec *)0)->lgr_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_gen_rec *)0)->lgr_hdr));
-	LASSERTF((int)offsetof(struct llog_gen_rec, lgr_gen) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_gen_rec, lgr_gen));
+	LASSERTF(offsetof(struct llog_gen_rec, lgr_gen) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_gen_rec, lgr_gen));
 	LASSERTF((int)sizeof(((struct llog_gen_rec *)0)->lgr_gen) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_gen_rec *)0)->lgr_gen));
-	LASSERTF((int)offsetof(struct llog_gen_rec, lgr_tail) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_gen_rec, lgr_tail));
+	LASSERTF(offsetof(struct llog_gen_rec, lgr_tail) == 56, "found %lld\n",
+		 (long long)offsetof(struct llog_gen_rec, lgr_tail));
 	LASSERTF((int)sizeof(((struct llog_gen_rec *)0)->lgr_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_gen_rec *)0)->lgr_tail));
 
 	/* Checks for struct llog_log_hdr */
 	LASSERTF((int)sizeof(struct llog_log_hdr) == 8192, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_log_hdr));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_hdr) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_hdr));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_hdr) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_hdr));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_hdr) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_hdr));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_timestamp) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_timestamp));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_timestamp) == 16, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_timestamp));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_timestamp) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_timestamp));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_count) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_count));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_count) == 24, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_count));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_count));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_bitmap_offset) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_bitmap_offset));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_bitmap_offset) == 28, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_bitmap_offset));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_bitmap_offset) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_bitmap_offset));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_size) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_size));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_size) == 32, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_size));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_size) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_size));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_flags) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_flags));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_flags) == 36, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_flags));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_flags));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_cat_idx) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_cat_idx));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_cat_idx) == 40, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_cat_idx));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_cat_idx) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_cat_idx));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_tgtuuid) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_tgtuuid));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_tgtuuid) == 44, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_tgtuuid));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_tgtuuid) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_tgtuuid));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_reserved) == 84, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_reserved));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_reserved) == 84, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_reserved));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_reserved) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_reserved));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_bitmap) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_bitmap));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_bitmap) == 88, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_bitmap));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_bitmap) == 8096, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_bitmap));
-	LASSERTF((int)offsetof(struct llog_log_hdr, llh_tail) == 8184, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_log_hdr, llh_tail));
+	LASSERTF(offsetof(struct llog_log_hdr, llh_tail) == 8184, "found %lld\n",
+		 (long long)offsetof(struct llog_log_hdr, llh_tail));
 	LASSERTF((int)sizeof(((struct llog_log_hdr *)0)->llh_tail) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_log_hdr *)0)->llh_tail));
 
 	/* Checks for struct llog_cookie */
 	LASSERTF((int)sizeof(struct llog_cookie) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct llog_cookie));
-	LASSERTF((int)offsetof(struct llog_cookie, lgc_lgl) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_cookie, lgc_lgl));
+	LASSERTF(offsetof(struct llog_cookie, lgc_lgl) == 0, "found %lld\n",
+		 (long long)offsetof(struct llog_cookie, lgc_lgl));
 	LASSERTF((int)sizeof(((struct llog_cookie *)0)->lgc_lgl) == 20, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_cookie *)0)->lgc_lgl));
-	LASSERTF((int)offsetof(struct llog_cookie, lgc_subsys) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_cookie, lgc_subsys));
+	LASSERTF(offsetof(struct llog_cookie, lgc_subsys) == 20, "found %lld\n",
+		 (long long)offsetof(struct llog_cookie, lgc_subsys));
 	LASSERTF((int)sizeof(((struct llog_cookie *)0)->lgc_subsys) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_cookie *)0)->lgc_subsys));
-	LASSERTF((int)offsetof(struct llog_cookie, lgc_index) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_cookie, lgc_index));
+	LASSERTF(offsetof(struct llog_cookie, lgc_index) == 24, "found %lld\n",
+		 (long long)offsetof(struct llog_cookie, lgc_index));
 	LASSERTF((int)sizeof(((struct llog_cookie *)0)->lgc_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_cookie *)0)->lgc_index));
-	LASSERTF((int)offsetof(struct llog_cookie, lgc_padding) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct llog_cookie, lgc_padding));
+	LASSERTF(offsetof(struct llog_cookie, lgc_padding) == 28, "found %lld\n",
+		 (long long)offsetof(struct llog_cookie, lgc_padding));
 	LASSERTF((int)sizeof(((struct llog_cookie *)0)->lgc_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llog_cookie *)0)->lgc_padding));
 
 	/* Checks for struct llogd_body */
 	LASSERTF((int)sizeof(struct llogd_body) == 48, "found %lld\n",
 		 (long long)(int)sizeof(struct llogd_body));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_logid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_logid));
+	LASSERTF(offsetof(struct llogd_body, lgd_logid) == 0, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_logid));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_logid) == 20, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_logid));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_ctxt_idx) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_ctxt_idx));
+	LASSERTF(offsetof(struct llogd_body, lgd_ctxt_idx) == 20, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_ctxt_idx));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_ctxt_idx) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_ctxt_idx));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_llh_flags) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_llh_flags));
+	LASSERTF(offsetof(struct llogd_body, lgd_llh_flags) == 24, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_llh_flags));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_llh_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_llh_flags));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_index) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_index));
+	LASSERTF(offsetof(struct llogd_body, lgd_index) == 28, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_index));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_index));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_saved_index) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_saved_index));
+	LASSERTF(offsetof(struct llogd_body, lgd_saved_index) == 32, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_saved_index));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_saved_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_saved_index));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_len) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_len));
+	LASSERTF(offsetof(struct llogd_body, lgd_len) == 36, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_len));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_len));
-	LASSERTF((int)offsetof(struct llogd_body, lgd_cur_offset) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_body, lgd_cur_offset));
+	LASSERTF(offsetof(struct llogd_body, lgd_cur_offset) == 40, "found %lld\n",
+		 (long long)offsetof(struct llogd_body, lgd_cur_offset));
 	LASSERTF((int)sizeof(((struct llogd_body *)0)->lgd_cur_offset) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_body *)0)->lgd_cur_offset));
 	CLASSERT(LLOG_ORIGIN_HANDLE_CREATE == 501);
@@ -3552,198 +3552,198 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct llogd_conn_body */
 	LASSERTF((int)sizeof(struct llogd_conn_body) == 40, "found %lld\n",
 		 (long long)(int)sizeof(struct llogd_conn_body));
-	LASSERTF((int)offsetof(struct llogd_conn_body, lgdc_gen) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_conn_body, lgdc_gen));
+	LASSERTF(offsetof(struct llogd_conn_body, lgdc_gen) == 0, "found %lld\n",
+		 (long long)offsetof(struct llogd_conn_body, lgdc_gen));
 	LASSERTF((int)sizeof(((struct llogd_conn_body *)0)->lgdc_gen) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_conn_body *)0)->lgdc_gen));
-	LASSERTF((int)offsetof(struct llogd_conn_body, lgdc_logid) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_conn_body, lgdc_logid));
+	LASSERTF(offsetof(struct llogd_conn_body, lgdc_logid) == 16, "found %lld\n",
+		 (long long)offsetof(struct llogd_conn_body, lgdc_logid));
 	LASSERTF((int)sizeof(((struct llogd_conn_body *)0)->lgdc_logid) == 20, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_conn_body *)0)->lgdc_logid));
-	LASSERTF((int)offsetof(struct llogd_conn_body, lgdc_ctxt_idx) == 36, "found %lld\n",
-		 (long long)(int)offsetof(struct llogd_conn_body, lgdc_ctxt_idx));
+	LASSERTF(offsetof(struct llogd_conn_body, lgdc_ctxt_idx) == 36, "found %lld\n",
+		 (long long)offsetof(struct llogd_conn_body, lgdc_ctxt_idx));
 	LASSERTF((int)sizeof(((struct llogd_conn_body *)0)->lgdc_ctxt_idx) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct llogd_conn_body *)0)->lgdc_ctxt_idx));
 
 	/* Checks for struct ll_fiemap_info_key */
 	LASSERTF((int)sizeof(struct ll_fiemap_info_key) == 248, "found %lld\n",
 		 (long long)(int)sizeof(struct ll_fiemap_info_key));
-	LASSERTF((int)offsetof(struct ll_fiemap_info_key, name[8]) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_info_key, name[8]));
+	LASSERTF(offsetof(struct ll_fiemap_info_key, name[8]) == 8, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_info_key, name[8]));
 	LASSERTF((int)sizeof(((struct ll_fiemap_info_key *)0)->name[8]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_info_key *)0)->name[8]));
-	LASSERTF((int)offsetof(struct ll_fiemap_info_key, oa) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_info_key, oa));
+	LASSERTF(offsetof(struct ll_fiemap_info_key, oa) == 8, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_info_key, oa));
 	LASSERTF((int)sizeof(((struct ll_fiemap_info_key *)0)->oa) == 208, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_info_key *)0)->oa));
-	LASSERTF((int)offsetof(struct ll_fiemap_info_key, fiemap) == 216, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_info_key, fiemap));
+	LASSERTF(offsetof(struct ll_fiemap_info_key, fiemap) == 216, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_info_key, fiemap));
 	LASSERTF((int)sizeof(((struct ll_fiemap_info_key *)0)->fiemap) == 32, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_info_key *)0)->fiemap));
 
 	/* Checks for struct mgs_target_info */
 	LASSERTF((int)sizeof(struct mgs_target_info) == 4544, "found %lld\n",
 		 (long long)(int)sizeof(struct mgs_target_info));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_lustre_ver) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_lustre_ver));
+	LASSERTF(offsetof(struct mgs_target_info, mti_lustre_ver) == 0, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_lustre_ver));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_lustre_ver) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_lustre_ver));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_stripe_index) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_stripe_index));
+	LASSERTF(offsetof(struct mgs_target_info, mti_stripe_index) == 4, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_stripe_index));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_stripe_index) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_stripe_index));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_config_ver) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_config_ver));
+	LASSERTF(offsetof(struct mgs_target_info, mti_config_ver) == 8, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_config_ver));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_config_ver) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_config_ver));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_flags) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_flags));
+	LASSERTF(offsetof(struct mgs_target_info, mti_flags) == 12, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_flags));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_flags));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_nid_count) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_nid_count));
+	LASSERTF(offsetof(struct mgs_target_info, mti_nid_count) == 16, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_nid_count));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_nid_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_nid_count));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_instance) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_instance));
+	LASSERTF(offsetof(struct mgs_target_info, mti_instance) == 20, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_instance));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_instance) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_instance));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_fsname) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_fsname));
+	LASSERTF(offsetof(struct mgs_target_info, mti_fsname) == 24, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_fsname));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_fsname) == 64, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_fsname));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_svname) == 88, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_svname));
+	LASSERTF(offsetof(struct mgs_target_info, mti_svname) == 88, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_svname));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_svname) == 64, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_svname));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_uuid) == 152, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_uuid));
+	LASSERTF(offsetof(struct mgs_target_info, mti_uuid) == 152, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_uuid));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_uuid) == 40, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_uuid));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_nids) == 192, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_nids));
+	LASSERTF(offsetof(struct mgs_target_info, mti_nids) == 192, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_nids));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_nids) == 256, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_nids));
-	LASSERTF((int)offsetof(struct mgs_target_info, mti_params) == 448, "found %lld\n",
-		 (long long)(int)offsetof(struct mgs_target_info, mti_params));
+	LASSERTF(offsetof(struct mgs_target_info, mti_params) == 448, "found %lld\n",
+		 (long long)offsetof(struct mgs_target_info, mti_params));
 	LASSERTF((int)sizeof(((struct mgs_target_info *)0)->mti_params) == 4096, "found %lld\n",
 		 (long long)(int)sizeof(((struct mgs_target_info *)0)->mti_params));
 
 	/* Checks for struct lustre_capa */
 	LASSERTF((int)sizeof(struct lustre_capa) == 120, "found %lld\n",
 		 (long long)(int)sizeof(struct lustre_capa));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_fid));
+	LASSERTF(offsetof(struct lustre_capa, lc_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_fid));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_fid));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_opc) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_opc));
+	LASSERTF(offsetof(struct lustre_capa, lc_opc) == 16, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_opc));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_opc) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_opc));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_uid) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_uid));
+	LASSERTF(offsetof(struct lustre_capa, lc_uid) == 24, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_uid));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_uid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_uid));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_gid) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_gid));
+	LASSERTF(offsetof(struct lustre_capa, lc_gid) == 32, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_gid));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_gid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_gid));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_flags) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_flags));
+	LASSERTF(offsetof(struct lustre_capa, lc_flags) == 40, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_flags));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_flags));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_keyid) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_keyid));
+	LASSERTF(offsetof(struct lustre_capa, lc_keyid) == 44, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_keyid));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_keyid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_keyid));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_timeout) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_timeout));
+	LASSERTF(offsetof(struct lustre_capa, lc_timeout) == 48, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_timeout));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_timeout) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_timeout));
-	LASSERTF((int)offsetof(struct lustre_capa, lc_expiry) == 52, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_expiry));
+	LASSERTF(offsetof(struct lustre_capa, lc_expiry) == 52, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_expiry));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_expiry) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_expiry));
 	CLASSERT(CAPA_HMAC_MAX_LEN == 64);
-	LASSERTF((int)offsetof(struct lustre_capa, lc_hmac[64]) == 120, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa, lc_hmac[64]));
+	LASSERTF(offsetof(struct lustre_capa, lc_hmac[64]) == 120, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa, lc_hmac[64]));
 	LASSERTF((int)sizeof(((struct lustre_capa *)0)->lc_hmac[64]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa *)0)->lc_hmac[64]));
 
 	/* Checks for struct lustre_capa_key */
 	LASSERTF((int)sizeof(struct lustre_capa_key) == 72, "found %lld\n",
 		 (long long)(int)sizeof(struct lustre_capa_key));
-	LASSERTF((int)offsetof(struct lustre_capa_key, lk_seq) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa_key, lk_seq));
+	LASSERTF(offsetof(struct lustre_capa_key, lk_seq) == 0, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa_key, lk_seq));
 	LASSERTF((int)sizeof(((struct lustre_capa_key *)0)->lk_seq) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa_key *)0)->lk_seq));
-	LASSERTF((int)offsetof(struct lustre_capa_key, lk_keyid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa_key, lk_keyid));
+	LASSERTF(offsetof(struct lustre_capa_key, lk_keyid) == 8, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa_key, lk_keyid));
 	LASSERTF((int)sizeof(((struct lustre_capa_key *)0)->lk_keyid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa_key *)0)->lk_keyid));
-	LASSERTF((int)offsetof(struct lustre_capa_key, lk_padding) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa_key, lk_padding));
+	LASSERTF(offsetof(struct lustre_capa_key, lk_padding) == 12, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa_key, lk_padding));
 	LASSERTF((int)sizeof(((struct lustre_capa_key *)0)->lk_padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa_key *)0)->lk_padding));
 	CLASSERT(CAPA_HMAC_KEY_MAX_LEN == 56);
-	LASSERTF((int)offsetof(struct lustre_capa_key, lk_key[56]) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct lustre_capa_key, lk_key[56]));
+	LASSERTF(offsetof(struct lustre_capa_key, lk_key[56]) == 72, "found %lld\n",
+		 (long long)offsetof(struct lustre_capa_key, lk_key[56]));
 	LASSERTF((int)sizeof(((struct lustre_capa_key *)0)->lk_key[56]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct lustre_capa_key *)0)->lk_key[56]));
 
 	/* Checks for struct getinfo_fid2path */
 	LASSERTF((int)sizeof(struct getinfo_fid2path) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct getinfo_fid2path));
-	LASSERTF((int)offsetof(struct getinfo_fid2path, gf_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct getinfo_fid2path, gf_fid));
+	LASSERTF(offsetof(struct getinfo_fid2path, gf_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct getinfo_fid2path, gf_fid));
 	LASSERTF((int)sizeof(((struct getinfo_fid2path *)0)->gf_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct getinfo_fid2path *)0)->gf_fid));
-	LASSERTF((int)offsetof(struct getinfo_fid2path, gf_recno) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct getinfo_fid2path, gf_recno));
+	LASSERTF(offsetof(struct getinfo_fid2path, gf_recno) == 16, "found %lld\n",
+		 (long long)offsetof(struct getinfo_fid2path, gf_recno));
 	LASSERTF((int)sizeof(((struct getinfo_fid2path *)0)->gf_recno) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct getinfo_fid2path *)0)->gf_recno));
-	LASSERTF((int)offsetof(struct getinfo_fid2path, gf_linkno) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct getinfo_fid2path, gf_linkno));
+	LASSERTF(offsetof(struct getinfo_fid2path, gf_linkno) == 24, "found %lld\n",
+		 (long long)offsetof(struct getinfo_fid2path, gf_linkno));
 	LASSERTF((int)sizeof(((struct getinfo_fid2path *)0)->gf_linkno) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct getinfo_fid2path *)0)->gf_linkno));
-	LASSERTF((int)offsetof(struct getinfo_fid2path, gf_pathlen) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct getinfo_fid2path, gf_pathlen));
+	LASSERTF(offsetof(struct getinfo_fid2path, gf_pathlen) == 28, "found %lld\n",
+		 (long long)offsetof(struct getinfo_fid2path, gf_pathlen));
 	LASSERTF((int)sizeof(((struct getinfo_fid2path *)0)->gf_pathlen) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct getinfo_fid2path *)0)->gf_pathlen));
-	LASSERTF((int)offsetof(struct getinfo_fid2path, gf_path[0]) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct getinfo_fid2path, gf_path[0]));
+	LASSERTF(offsetof(struct getinfo_fid2path, gf_path[0]) == 32, "found %lld\n",
+		 (long long)offsetof(struct getinfo_fid2path, gf_path[0]));
 	LASSERTF((int)sizeof(((struct getinfo_fid2path *)0)->gf_path[0]) == 1, "found %lld\n",
 		 (long long)(int)sizeof(((struct getinfo_fid2path *)0)->gf_path[0]));
 
 	/* Checks for struct ll_user_fiemap */
 	LASSERTF((int)sizeof(struct ll_user_fiemap) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct ll_user_fiemap));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_start) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_start));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_start) == 0, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_start));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_start));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_length) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_length));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_length) == 8, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_length));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_length) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_length));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_flags));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_flags));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_flags));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_mapped_extents) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_mapped_extents));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_mapped_extents) == 20, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_mapped_extents));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_mapped_extents) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_mapped_extents));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_extent_count) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_extent_count));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_extent_count) == 24, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_extent_count));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_extent_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_extent_count));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_reserved) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_reserved));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_reserved) == 28, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_reserved));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_reserved) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_reserved));
-	LASSERTF((int)offsetof(struct ll_user_fiemap, fm_extents) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_user_fiemap, fm_extents));
+	LASSERTF(offsetof(struct ll_user_fiemap, fm_extents) == 32, "found %lld\n",
+		 (long long)offsetof(struct ll_user_fiemap, fm_extents));
 	LASSERTF((int)sizeof(((struct ll_user_fiemap *)0)->fm_extents) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_user_fiemap *)0)->fm_extents));
 	CLASSERT(FIEMAP_FLAG_SYNC == 0x00000001);
@@ -3753,24 +3753,24 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct ll_fiemap_extent */
 	LASSERTF((int)sizeof(struct ll_fiemap_extent) == 56, "found %lld\n",
 		 (long long)(int)sizeof(struct ll_fiemap_extent));
-	LASSERTF((int)offsetof(struct ll_fiemap_extent, fe_logical) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_extent, fe_logical));
+	LASSERTF(offsetof(struct ll_fiemap_extent, fe_logical) == 0, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_extent, fe_logical));
 	LASSERTF((int)sizeof(((struct ll_fiemap_extent *)0)->fe_logical) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_extent *)0)->fe_logical));
-	LASSERTF((int)offsetof(struct ll_fiemap_extent, fe_physical) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_extent, fe_physical));
+	LASSERTF(offsetof(struct ll_fiemap_extent, fe_physical) == 8, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_extent, fe_physical));
 	LASSERTF((int)sizeof(((struct ll_fiemap_extent *)0)->fe_physical) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_extent *)0)->fe_physical));
-	LASSERTF((int)offsetof(struct ll_fiemap_extent, fe_length) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_extent, fe_length));
+	LASSERTF(offsetof(struct ll_fiemap_extent, fe_length) == 16, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_extent, fe_length));
 	LASSERTF((int)sizeof(((struct ll_fiemap_extent *)0)->fe_length) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_extent *)0)->fe_length));
-	LASSERTF((int)offsetof(struct ll_fiemap_extent, fe_flags) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_extent, fe_flags));
+	LASSERTF(offsetof(struct ll_fiemap_extent, fe_flags) == 40, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_extent, fe_flags));
 	LASSERTF((int)sizeof(((struct ll_fiemap_extent *)0)->fe_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_extent *)0)->fe_flags));
-	LASSERTF((int)offsetof(struct ll_fiemap_extent, fe_device) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct ll_fiemap_extent, fe_device));
+	LASSERTF(offsetof(struct ll_fiemap_extent, fe_device) == 44, "found %lld\n",
+		 (long long)offsetof(struct ll_fiemap_extent, fe_device));
 	LASSERTF((int)sizeof(((struct ll_fiemap_extent *)0)->fe_device) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct ll_fiemap_extent *)0)->fe_device));
 	CLASSERT(FIEMAP_EXTENT_LAST == 0x00000001);
@@ -3789,52 +3789,52 @@ void lustre_assert_wire_constants(void)
 	/* Checks for type posix_acl_xattr_entry */
 	LASSERTF((int)sizeof(posix_acl_xattr_entry) == 8, "found %lld\n",
 		 (long long)(int)sizeof(posix_acl_xattr_entry));
-	LASSERTF((int)offsetof(posix_acl_xattr_entry, e_tag) == 0, "found %lld\n",
-		 (long long)(int)offsetof(posix_acl_xattr_entry, e_tag));
+	LASSERTF(offsetof(posix_acl_xattr_entry, e_tag) == 0, "found %lld\n",
+		 (long long)offsetof(posix_acl_xattr_entry, e_tag));
 	LASSERTF((int)sizeof(((posix_acl_xattr_entry *)0)->e_tag) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((posix_acl_xattr_entry *)0)->e_tag));
-	LASSERTF((int)offsetof(posix_acl_xattr_entry, e_perm) == 2, "found %lld\n",
-		 (long long)(int)offsetof(posix_acl_xattr_entry, e_perm));
+	LASSERTF(offsetof(posix_acl_xattr_entry, e_perm) == 2, "found %lld\n",
+		 (long long)offsetof(posix_acl_xattr_entry, e_perm));
 	LASSERTF((int)sizeof(((posix_acl_xattr_entry *)0)->e_perm) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((posix_acl_xattr_entry *)0)->e_perm));
-	LASSERTF((int)offsetof(posix_acl_xattr_entry, e_id) == 4, "found %lld\n",
-		 (long long)(int)offsetof(posix_acl_xattr_entry, e_id));
+	LASSERTF(offsetof(posix_acl_xattr_entry, e_id) == 4, "found %lld\n",
+		 (long long)offsetof(posix_acl_xattr_entry, e_id));
 	LASSERTF((int)sizeof(((posix_acl_xattr_entry *)0)->e_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((posix_acl_xattr_entry *)0)->e_id));
 
 	/* Checks for type posix_acl_xattr_header */
 	LASSERTF((int)sizeof(posix_acl_xattr_header) == 4, "found %lld\n",
 		 (long long)(int)sizeof(posix_acl_xattr_header));
-	LASSERTF((int)offsetof(posix_acl_xattr_header, a_version) == 0, "found %lld\n",
-		 (long long)(int)offsetof(posix_acl_xattr_header, a_version));
+	LASSERTF(offsetof(posix_acl_xattr_header, a_version) == 0, "found %lld\n",
+		 (long long)offsetof(posix_acl_xattr_header, a_version));
 	LASSERTF((int)sizeof(((posix_acl_xattr_header *)0)->a_version) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((posix_acl_xattr_header *)0)->a_version));
-	LASSERTF((int)offsetof(posix_acl_xattr_header, a_entries) == 4, "found %lld\n",
-		 (long long)(int)offsetof(posix_acl_xattr_header, a_entries));
+	LASSERTF(offsetof(posix_acl_xattr_header, a_entries) == 4, "found %lld\n",
+		 (long long)offsetof(posix_acl_xattr_header, a_entries));
 	LASSERTF((int)sizeof(((posix_acl_xattr_header *)0)->a_entries) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((posix_acl_xattr_header *)0)->a_entries));
 
 	/* Checks for struct link_ea_header */
 	LASSERTF((int)sizeof(struct link_ea_header) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct link_ea_header));
-	LASSERTF((int)offsetof(struct link_ea_header, leh_magic) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_header, leh_magic));
+	LASSERTF(offsetof(struct link_ea_header, leh_magic) == 0, "found %lld\n",
+		 (long long)offsetof(struct link_ea_header, leh_magic));
 	LASSERTF((int)sizeof(((struct link_ea_header *)0)->leh_magic) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_header *)0)->leh_magic));
-	LASSERTF((int)offsetof(struct link_ea_header, leh_reccount) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_header, leh_reccount));
+	LASSERTF(offsetof(struct link_ea_header, leh_reccount) == 4, "found %lld\n",
+		 (long long)offsetof(struct link_ea_header, leh_reccount));
 	LASSERTF((int)sizeof(((struct link_ea_header *)0)->leh_reccount) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_header *)0)->leh_reccount));
-	LASSERTF((int)offsetof(struct link_ea_header, leh_len) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_header, leh_len));
+	LASSERTF(offsetof(struct link_ea_header, leh_len) == 8, "found %lld\n",
+		 (long long)offsetof(struct link_ea_header, leh_len));
 	LASSERTF((int)sizeof(((struct link_ea_header *)0)->leh_len) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_header *)0)->leh_len));
-	LASSERTF((int)offsetof(struct link_ea_header, padding1) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_header, padding1));
+	LASSERTF(offsetof(struct link_ea_header, padding1) == 16, "found %lld\n",
+		 (long long)offsetof(struct link_ea_header, padding1));
 	LASSERTF((int)sizeof(((struct link_ea_header *)0)->padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_header *)0)->padding1));
-	LASSERTF((int)offsetof(struct link_ea_header, padding2) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_header, padding2));
+	LASSERTF(offsetof(struct link_ea_header, padding2) == 20, "found %lld\n",
+		 (long long)offsetof(struct link_ea_header, padding2));
 	LASSERTF((int)sizeof(((struct link_ea_header *)0)->padding2) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_header *)0)->padding2));
 	CLASSERT(LINK_EA_MAGIC == 0x11EAF1DFUL);
@@ -3842,36 +3842,36 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct link_ea_entry */
 	LASSERTF((int)sizeof(struct link_ea_entry) == 18, "found %lld\n",
 		 (long long)(int)sizeof(struct link_ea_entry));
-	LASSERTF((int)offsetof(struct link_ea_entry, lee_reclen) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_entry, lee_reclen));
+	LASSERTF(offsetof(struct link_ea_entry, lee_reclen) == 0, "found %lld\n",
+		 (long long)offsetof(struct link_ea_entry, lee_reclen));
 	LASSERTF((int)sizeof(((struct link_ea_entry *)0)->lee_reclen) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_entry *)0)->lee_reclen));
-	LASSERTF((int)offsetof(struct link_ea_entry, lee_parent_fid) == 2, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_entry, lee_parent_fid));
+	LASSERTF(offsetof(struct link_ea_entry, lee_parent_fid) == 2, "found %lld\n",
+		 (long long)offsetof(struct link_ea_entry, lee_parent_fid));
 	LASSERTF((int)sizeof(((struct link_ea_entry *)0)->lee_parent_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_entry *)0)->lee_parent_fid));
-	LASSERTF((int)offsetof(struct link_ea_entry, lee_name) == 18, "found %lld\n",
-		 (long long)(int)offsetof(struct link_ea_entry, lee_name));
+	LASSERTF(offsetof(struct link_ea_entry, lee_name) == 18, "found %lld\n",
+		 (long long)offsetof(struct link_ea_entry, lee_name));
 	LASSERTF((int)sizeof(((struct link_ea_entry *)0)->lee_name) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((struct link_ea_entry *)0)->lee_name));
 
 	/* Checks for struct layout_intent */
 	LASSERTF((int)sizeof(struct layout_intent) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct layout_intent));
-	LASSERTF((int)offsetof(struct layout_intent, li_opc) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct layout_intent, li_opc));
+	LASSERTF(offsetof(struct layout_intent, li_opc) == 0, "found %lld\n",
+		 (long long)offsetof(struct layout_intent, li_opc));
 	LASSERTF((int)sizeof(((struct layout_intent *)0)->li_opc) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct layout_intent *)0)->li_opc));
-	LASSERTF((int)offsetof(struct layout_intent, li_flags) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct layout_intent, li_flags));
+	LASSERTF(offsetof(struct layout_intent, li_flags) == 4, "found %lld\n",
+		 (long long)offsetof(struct layout_intent, li_flags));
 	LASSERTF((int)sizeof(((struct layout_intent *)0)->li_flags) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct layout_intent *)0)->li_flags));
-	LASSERTF((int)offsetof(struct layout_intent, li_start) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct layout_intent, li_start));
+	LASSERTF(offsetof(struct layout_intent, li_start) == 8, "found %lld\n",
+		 (long long)offsetof(struct layout_intent, li_start));
 	LASSERTF((int)sizeof(((struct layout_intent *)0)->li_start) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct layout_intent *)0)->li_start));
-	LASSERTF((int)offsetof(struct layout_intent, li_end) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct layout_intent, li_end));
+	LASSERTF(offsetof(struct layout_intent, li_end) == 16, "found %lld\n",
+		 (long long)offsetof(struct layout_intent, li_end));
 	LASSERTF((int)sizeof(((struct layout_intent *)0)->li_end) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct layout_intent *)0)->li_end));
 	LASSERTF(LAYOUT_INTENT_ACCESS == 0, "found %lld\n",
@@ -3892,96 +3892,96 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct hsm_action_item */
 	LASSERTF((int)sizeof(struct hsm_action_item) == 72, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_action_item));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_len) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_len));
+	LASSERTF(offsetof(struct hsm_action_item, hai_len) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_len));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_len));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_action) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_action));
+	LASSERTF(offsetof(struct hsm_action_item, hai_action) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_action));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_action) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_action));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_fid) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_fid));
+	LASSERTF(offsetof(struct hsm_action_item, hai_fid) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_fid));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_fid));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_dfid) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_dfid));
+	LASSERTF(offsetof(struct hsm_action_item, hai_dfid) == 24, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_dfid));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_dfid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_dfid));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_extent) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_extent));
+	LASSERTF(offsetof(struct hsm_action_item, hai_extent) == 40, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_extent));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_extent) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_extent));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_cookie) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_cookie));
+	LASSERTF(offsetof(struct hsm_action_item, hai_cookie) == 56, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_cookie));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_cookie) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_cookie));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_gid) == 64, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_gid));
+	LASSERTF(offsetof(struct hsm_action_item, hai_gid) == 64, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_gid));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_gid) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_gid));
-	LASSERTF((int)offsetof(struct hsm_action_item, hai_data) == 72, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_item, hai_data));
+	LASSERTF(offsetof(struct hsm_action_item, hai_data) == 72, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_item, hai_data));
 	LASSERTF((int)sizeof(((struct hsm_action_item *)0)->hai_data) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_item *)0)->hai_data));
 
 	/* Checks for struct hsm_action_list */
 	LASSERTF((int)sizeof(struct hsm_action_list) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_action_list));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_version) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_version));
+	LASSERTF(offsetof(struct hsm_action_list, hal_version) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_version));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_version) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_version));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_count) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_count));
+	LASSERTF(offsetof(struct hsm_action_list, hal_count) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_count));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_count) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_count));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_compound_id) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_compound_id));
+	LASSERTF(offsetof(struct hsm_action_list, hal_compound_id) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_compound_id));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_compound_id) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_compound_id));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_flags) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_flags));
+	LASSERTF(offsetof(struct hsm_action_list, hal_flags) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_flags));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_flags) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_flags));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_archive_id) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_archive_id));
+	LASSERTF(offsetof(struct hsm_action_list, hal_archive_id) == 24, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_archive_id));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_archive_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_archive_id));
-	LASSERTF((int)offsetof(struct hsm_action_list, padding1) == 28, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, padding1));
+	LASSERTF(offsetof(struct hsm_action_list, padding1) == 28, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, padding1));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->padding1));
-	LASSERTF((int)offsetof(struct hsm_action_list, hal_fsname) == 32, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_action_list, hal_fsname));
+	LASSERTF(offsetof(struct hsm_action_list, hal_fsname) == 32, "found %lld\n",
+		 (long long)offsetof(struct hsm_action_list, hal_fsname));
 	LASSERTF((int)sizeof(((struct hsm_action_list *)0)->hal_fsname) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_action_list *)0)->hal_fsname));
 
 	/* Checks for struct hsm_progress */
 	LASSERTF((int)sizeof(struct hsm_progress) == 48, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_progress));
-	LASSERTF((int)offsetof(struct hsm_progress, hp_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, hp_fid));
+	LASSERTF(offsetof(struct hsm_progress, hp_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, hp_fid));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->hp_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->hp_fid));
-	LASSERTF((int)offsetof(struct hsm_progress, hp_cookie) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, hp_cookie));
+	LASSERTF(offsetof(struct hsm_progress, hp_cookie) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, hp_cookie));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->hp_cookie) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->hp_cookie));
-	LASSERTF((int)offsetof(struct hsm_progress, hp_extent) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, hp_extent));
+	LASSERTF(offsetof(struct hsm_progress, hp_extent) == 24, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, hp_extent));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->hp_extent) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->hp_extent));
-	LASSERTF((int)offsetof(struct hsm_progress, hp_flags) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, hp_flags));
+	LASSERTF(offsetof(struct hsm_progress, hp_flags) == 40, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, hp_flags));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->hp_flags) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->hp_flags));
-	LASSERTF((int)offsetof(struct hsm_progress, hp_errval) == 42, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, hp_errval));
+	LASSERTF(offsetof(struct hsm_progress, hp_errval) == 42, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, hp_errval));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->hp_errval) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->hp_errval));
-	LASSERTF((int)offsetof(struct hsm_progress, padding) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress, padding));
+	LASSERTF(offsetof(struct hsm_progress, padding) == 44, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress, padding));
 	LASSERTF((int)sizeof(((struct hsm_progress *)0)->padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress *)0)->padding));
 	LASSERTF(HP_FLAG_COMPLETED == 0x01, "found 0x%.8x\n",
@@ -3989,156 +3989,156 @@ void lustre_assert_wire_constants(void)
 	LASSERTF(HP_FLAG_RETRY == 0x02, "found 0x%.8x\n",
 		HP_FLAG_RETRY);
 
-	LASSERTF((int)offsetof(struct hsm_copy, hc_data_version) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_copy, hc_data_version));
+	LASSERTF(offsetof(struct hsm_copy, hc_data_version) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_copy, hc_data_version));
 	LASSERTF((int)sizeof(((struct hsm_copy *)0)->hc_data_version) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_copy *)0)->hc_data_version));
-	LASSERTF((int)offsetof(struct hsm_copy, hc_flags) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_copy, hc_flags));
+	LASSERTF(offsetof(struct hsm_copy, hc_flags) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_copy, hc_flags));
 	LASSERTF((int)sizeof(((struct hsm_copy *)0)->hc_flags) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_copy *)0)->hc_flags));
-	LASSERTF((int)offsetof(struct hsm_copy, hc_errval) == 10, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_copy, hc_errval));
+	LASSERTF(offsetof(struct hsm_copy, hc_errval) == 10, "found %lld\n",
+		 (long long)offsetof(struct hsm_copy, hc_errval));
 	LASSERTF((int)sizeof(((struct hsm_copy *)0)->hc_errval) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_copy *)0)->hc_errval));
-	LASSERTF((int)offsetof(struct hsm_copy, padding) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_copy, padding));
+	LASSERTF(offsetof(struct hsm_copy, padding) == 12, "found %lld\n",
+		 (long long)offsetof(struct hsm_copy, padding));
 	LASSERTF((int)sizeof(((struct hsm_copy *)0)->padding) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_copy *)0)->padding));
-	LASSERTF((int)offsetof(struct hsm_copy, hc_hai) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_copy, hc_hai));
+	LASSERTF(offsetof(struct hsm_copy, hc_hai) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_copy, hc_hai));
 	LASSERTF((int)sizeof(((struct hsm_copy *)0)->hc_hai) == 72, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_copy *)0)->hc_hai));
 
 	/* Checks for struct hsm_progress_kernel */
 	LASSERTF((int)sizeof(struct hsm_progress_kernel) == 64, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_progress_kernel));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_fid));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_fid));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_fid));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_cookie) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_cookie));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_cookie) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_cookie));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_cookie) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_cookie));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_extent) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_extent));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_extent) == 24, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_extent));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_extent) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_extent));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_flags) == 40, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_flags));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_flags) == 40, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_flags));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_flags) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_flags));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_errval) == 42, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_errval));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_errval) == 42, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_errval));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_errval) == 2, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_errval));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_padding1) == 44, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_padding1));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_padding1) == 44, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_padding1));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_padding1) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_padding1));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_data_version) == 48, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_data_version));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_data_version) == 48, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_data_version));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_data_version) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_data_version));
-	LASSERTF((int)offsetof(struct hsm_progress_kernel, hpk_padding2) == 56, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_progress_kernel, hpk_padding2));
+	LASSERTF(offsetof(struct hsm_progress_kernel, hpk_padding2) == 56, "found %lld\n",
+		 (long long)offsetof(struct hsm_progress_kernel, hpk_padding2));
 	LASSERTF((int)sizeof(((struct hsm_progress_kernel *)0)->hpk_padding2) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_progress_kernel *)0)->hpk_padding2));
 
 	/* Checks for struct hsm_user_item */
 	LASSERTF((int)sizeof(struct hsm_user_item) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_user_item));
-	LASSERTF((int)offsetof(struct hsm_user_item, hui_fid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_item, hui_fid));
+	LASSERTF(offsetof(struct hsm_user_item, hui_fid) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_item, hui_fid));
 	LASSERTF((int)sizeof(((struct hsm_user_item *)0)->hui_fid) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_item *)0)->hui_fid));
-	LASSERTF((int)offsetof(struct hsm_user_item, hui_extent) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_item, hui_extent));
+	LASSERTF(offsetof(struct hsm_user_item, hui_extent) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_item, hui_extent));
 	LASSERTF((int)sizeof(((struct hsm_user_item *)0)->hui_extent) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_item *)0)->hui_extent));
 
 	/* Checks for struct hsm_user_state */
 	LASSERTF((int)sizeof(struct hsm_user_state) == 32, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_user_state));
-	LASSERTF((int)offsetof(struct hsm_user_state, hus_states) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_state, hus_states));
+	LASSERTF(offsetof(struct hsm_user_state, hus_states) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_state, hus_states));
 	LASSERTF((int)sizeof(((struct hsm_user_state *)0)->hus_states) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_state *)0)->hus_states));
-	LASSERTF((int)offsetof(struct hsm_user_state, hus_archive_id) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_state, hus_archive_id));
+	LASSERTF(offsetof(struct hsm_user_state, hus_archive_id) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_state, hus_archive_id));
 	LASSERTF((int)sizeof(((struct hsm_user_state *)0)->hus_archive_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_state *)0)->hus_archive_id));
-	LASSERTF((int)offsetof(struct hsm_user_state, hus_in_progress_state) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_state, hus_in_progress_state));
+	LASSERTF(offsetof(struct hsm_user_state, hus_in_progress_state) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_state, hus_in_progress_state));
 	LASSERTF((int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_state) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_state));
-	LASSERTF((int)offsetof(struct hsm_user_state, hus_in_progress_action) == 12, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_state, hus_in_progress_action));
+	LASSERTF(offsetof(struct hsm_user_state, hus_in_progress_action) == 12, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_state, hus_in_progress_action));
 	LASSERTF((int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_action) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_action));
-	LASSERTF((int)offsetof(struct hsm_user_state, hus_in_progress_location) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_state, hus_in_progress_location));
+	LASSERTF(offsetof(struct hsm_user_state, hus_in_progress_location) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_state, hus_in_progress_location));
 	LASSERTF((int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_location) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_state *)0)->hus_in_progress_location));
 
 	/* Checks for struct hsm_state_set */
 	LASSERTF((int)sizeof(struct hsm_state_set) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_state_set));
-	LASSERTF((int)offsetof(struct hsm_state_set, hss_valid) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_state_set, hss_valid));
+	LASSERTF(offsetof(struct hsm_state_set, hss_valid) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_state_set, hss_valid));
 	LASSERTF((int)sizeof(((struct hsm_state_set *)0)->hss_valid) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_state_set *)0)->hss_valid));
-	LASSERTF((int)offsetof(struct hsm_state_set, hss_archive_id) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_state_set, hss_archive_id));
+	LASSERTF(offsetof(struct hsm_state_set, hss_archive_id) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_state_set, hss_archive_id));
 	LASSERTF((int)sizeof(((struct hsm_state_set *)0)->hss_archive_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_state_set *)0)->hss_archive_id));
-	LASSERTF((int)offsetof(struct hsm_state_set, hss_setmask) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_state_set, hss_setmask));
+	LASSERTF(offsetof(struct hsm_state_set, hss_setmask) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_state_set, hss_setmask));
 	LASSERTF((int)sizeof(((struct hsm_state_set *)0)->hss_setmask) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_state_set *)0)->hss_setmask));
-	LASSERTF((int)offsetof(struct hsm_state_set, hss_clearmask) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_state_set, hss_clearmask));
+	LASSERTF(offsetof(struct hsm_state_set, hss_clearmask) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_state_set, hss_clearmask));
 	LASSERTF((int)sizeof(((struct hsm_state_set *)0)->hss_clearmask) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_state_set *)0)->hss_clearmask));
 
 	/* Checks for struct hsm_current_action */
 	LASSERTF((int)sizeof(struct hsm_current_action) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_current_action));
-	LASSERTF((int)offsetof(struct hsm_current_action, hca_state) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_current_action, hca_state));
+	LASSERTF(offsetof(struct hsm_current_action, hca_state) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_current_action, hca_state));
 	LASSERTF((int)sizeof(((struct hsm_current_action *)0)->hca_state) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_current_action *)0)->hca_state));
-	LASSERTF((int)offsetof(struct hsm_current_action, hca_action) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_current_action, hca_action));
+	LASSERTF(offsetof(struct hsm_current_action, hca_action) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_current_action, hca_action));
 	LASSERTF((int)sizeof(((struct hsm_current_action *)0)->hca_action) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_current_action *)0)->hca_action));
-	LASSERTF((int)offsetof(struct hsm_current_action, hca_location) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_current_action, hca_location));
+	LASSERTF(offsetof(struct hsm_current_action, hca_location) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_current_action, hca_location));
 	LASSERTF((int)sizeof(((struct hsm_current_action *)0)->hca_location) == 16, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_current_action *)0)->hca_location));
 
 	/* Checks for struct hsm_request */
 	LASSERTF((int)sizeof(struct hsm_request) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_request));
-	LASSERTF((int)offsetof(struct hsm_request, hr_action) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_request, hr_action));
+	LASSERTF(offsetof(struct hsm_request, hr_action) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_request, hr_action));
 	LASSERTF((int)sizeof(((struct hsm_request *)0)->hr_action) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_request *)0)->hr_action));
-	LASSERTF((int)offsetof(struct hsm_request, hr_archive_id) == 4, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_request, hr_archive_id));
+	LASSERTF(offsetof(struct hsm_request, hr_archive_id) == 4, "found %lld\n",
+		 (long long)offsetof(struct hsm_request, hr_archive_id));
 	LASSERTF((int)sizeof(((struct hsm_request *)0)->hr_archive_id) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_request *)0)->hr_archive_id));
-	LASSERTF((int)offsetof(struct hsm_request, hr_flags) == 8, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_request, hr_flags));
+	LASSERTF(offsetof(struct hsm_request, hr_flags) == 8, "found %lld\n",
+		 (long long)offsetof(struct hsm_request, hr_flags));
 	LASSERTF((int)sizeof(((struct hsm_request *)0)->hr_flags) == 8, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_request *)0)->hr_flags));
-	LASSERTF((int)offsetof(struct hsm_request, hr_itemcount) == 16, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_request, hr_itemcount));
+	LASSERTF(offsetof(struct hsm_request, hr_itemcount) == 16, "found %lld\n",
+		 (long long)offsetof(struct hsm_request, hr_itemcount));
 	LASSERTF((int)sizeof(((struct hsm_request *)0)->hr_itemcount) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_request *)0)->hr_itemcount));
-	LASSERTF((int)offsetof(struct hsm_request, hr_data_len) == 20, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_request, hr_data_len));
+	LASSERTF(offsetof(struct hsm_request, hr_data_len) == 20, "found %lld\n",
+		 (long long)offsetof(struct hsm_request, hr_data_len));
 	LASSERTF((int)sizeof(((struct hsm_request *)0)->hr_data_len) == 4, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_request *)0)->hr_data_len));
 	LASSERTF(HSM_FORCE_ACTION == 0x00000001UL, "found 0x%.8xUL\n",
@@ -4149,12 +4149,12 @@ void lustre_assert_wire_constants(void)
 	/* Checks for struct hsm_user_request */
 	LASSERTF((int)sizeof(struct hsm_user_request) == 24, "found %lld\n",
 		 (long long)(int)sizeof(struct hsm_user_request));
-	LASSERTF((int)offsetof(struct hsm_user_request, hur_request) == 0, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_request, hur_request));
+	LASSERTF(offsetof(struct hsm_user_request, hur_request) == 0, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_request, hur_request));
 	LASSERTF((int)sizeof(((struct hsm_user_request *)0)->hur_request) == 24, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_request *)0)->hur_request));
-	LASSERTF((int)offsetof(struct hsm_user_request, hur_user_item) == 24, "found %lld\n",
-		 (long long)(int)offsetof(struct hsm_user_request, hur_user_item));
+	LASSERTF(offsetof(struct hsm_user_request, hur_user_item) == 24, "found %lld\n",
+		 (long long)offsetof(struct hsm_user_request, hur_user_item));
 	LASSERTF((int)sizeof(((struct hsm_user_request *)0)->hur_user_item) == 0, "found %lld\n",
 		 (long long)(int)sizeof(((struct hsm_user_request *)0)->hur_user_item));
 
@@ -4193,7 +4193,7 @@ void lustre_assert_wire_constants(void)
 		 (long long)sizeof(((struct hsm_user_import *)0)->hui_atime));
 	LASSERTF(offsetof(struct hsm_user_import, hui_atime_ns) == 24,
 		 "found %lld\n",
-		(long long)(int)offsetof(struct hsm_user_import, hui_atime_ns));
+		(long long)offsetof(struct hsm_user_import, hui_atime_ns));
 	LASSERTF(sizeof(((struct hsm_user_import *)0)->hui_atime_ns) == 4,
 		 "found %lld\n",
 		(long long)sizeof(((struct hsm_user_import *)0)->hui_atime_ns));
-- 
1.8.3.4


