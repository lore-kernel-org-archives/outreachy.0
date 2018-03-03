X-GM-THRID: 6528628385749401600
X-Received: by 10.46.118.15 with SMTP id r15mr547938ljc.23.1520064757027;
        Sat, 03 Mar 2018 00:12:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.3 with SMTP id w3ls1297530lfd.3.gmail; Sat, 03 Mar 2018
 00:12:35 -0800 (PST)
X-Google-Smtp-Source: AG47ELsp83rbpFGoQuqeAQSFCAHsUIm4/JHNb7XwUJVfGmcxDogtenDPd3vy2P10+CPlQvvMVYoK
X-Received: by 10.25.0.140 with SMTP id 134mr633936lfa.9.1520064755561;
        Sat, 03 Mar 2018 00:12:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520064755; cv=none;
        d=google.com; s=arc-20160816;
        b=TbU2VAweHM00ZfIUwlIDA1+tyDyDkocmzpJCJtEkRxfjbBCFOBbcKrG0H5M1TbqTs9
         wtxPYjxdWmGKgv/CKnpsHfc6LWSB/Kf2+DQtcW6STJHzc9vkbSWqJG11YwNuOxETahuM
         B+3Mw2BqLyIKZsyiydEK1dCSYohoiJMb8kW24MT13hki2X5Ch4c4Po2gRrR5IeBRdiEM
         Z55U991Wo+XmEJmZAPQYuWuKW6aSWcgviOl3+LIDdqe7G20zqAMywzFbv7e1NN0I4dwJ
         ysGvMcvz9b9GaeoIxR/OI3l7drIzUaxIaLVykakhyK/swAqymW00JobvoAWuCLRijM48
         xAgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=PQENfIomvPXDwV9YVUMJaktZ0G9Z8qiPswUnFbq49Y4=;
        b=XQrlWnpMPC6TTJ0HnfXkM7l6VkdEhtZ9Jp9cP+5OpRs633MNAN/SFHB74ZsqcnaPWt
         1ahT3DUlY2ya7tigXtF6nY7XAPIdYRgdbio9vO+DfSfwNikvvDOnlx4+kykIdd57qOkp
         Iph/vjsDxlEOMWVMGulzpBGeJAwIHuC3PNJWOQZKuKRhN1M0GEm5LYJES3kqAMgzUGFN
         KVeRmZItSHPpo5tRrdvOXahZzKP02kKOXO5DSBsGeO8yFhYEECKRR5HHJFY7cVkTNmub
         4PoXtsorqRbGRVLFm0T6jBCMOb/nrYf1T+a8XdhgsBLeFdtx/et4ZRCqM4rkszCT7WPr
         GxrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvT2sJnw;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id s12si360561lje.3.2018.03.03.00.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 00:12:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NvT2sJnw;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id w77so12283265wrc.6
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 00:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PQENfIomvPXDwV9YVUMJaktZ0G9Z8qiPswUnFbq49Y4=;
        b=NvT2sJnwnj2uzK31wlIGV8/OeidKlVTTF1URGxGLfNW9r77fbM36gXHYy28wSdsYtS
         orz+ZesVDjjJrr+xk46fFmwGYRRGd5TydyKFBhy+g2MuT/NVr0ekmZhDgroL+UToVYdl
         qtapOuqmQkypGbbZRs7UhSKrOaL63FVsQtbJgP3Us41i7pFnj3xCp2B1wWnB98JJKtmC
         GGplF8vS3h6UytXgoGK2SqJmaXejPySPGrarm2avScoiRZWmWZ59gBJy3RxrKdHEuAkB
         1sDvYL0Au/wdsET5DfcgTrURQongbu7yazdDc/MP3Q/r81UyXIQEGb6Z2VuSbk0TgmlJ
         M+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=PQENfIomvPXDwV9YVUMJaktZ0G9Z8qiPswUnFbq49Y4=;
        b=gAmys49C+FqXOv52y4zk7bCKFWL6vkBlHqtLH5B9g3AiljfFV23VjwQ1aP4MQX9ebM
         5kDiYol0zYQ1IG4yPoEhY6fvNZUntDabu4kA2QZATtdS2ay1je47PYeOhcxNenvIC+uo
         s5Urxt7LJQVKLlxVqrO44m31K0WiTDIIm92C6Xk9sTUb092gy1ARchRYC4Fbcm9rmGiP
         IRutfFDGTG3KKjesAeItKe54y2Vauuk2+MfoVepEzSVjOlDj4S0YVUk+O3KGoQtE/sf4
         kZ8KKb9LfWh5beWvW29rfaVRLETrqN9XrsIYnUUu+5Nhu2roN+0qE8XpuRH6ltdH9jAs
         j1hA==
X-Gm-Message-State: APf1xPDJI9Q94NzRBjE1WHHXiYLFCSzyegpPROXjpOtg5QAeE4Yitsm8
	xlak/vhr7tHh+UqUT1wdUb0=
X-Received: by 10.223.163.136 with SMTP id l8mr7579648wrb.270.1520064755242;
        Sat, 03 Mar 2018 00:12:35 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id r98sm18712986wrb.70.2018.03.03.00.12.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 00:12:34 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: lustre: obdclass: Fix Comparison issues.
Date: Sat,  3 Mar 2018 10:12:04 +0200
Message-Id: <d54195335419311b40f159ee1d5c89a625937899.1520014706.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>

Replace comparison to NULL with 'not' operator.
Move constants to the right side of a comparison.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_io.c            | 6 +++---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c          | 2 +-
 drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c | 4 ++--
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c   | 2 +-
 drivers/staging/lustre/lustre/obdclass/lu_object.c        | 4 ++--
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_io.c b/drivers/staging/lustre/lustre/obdclass/cl_io.c
index ab84e01..fa4d870 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_io.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_io.c
@@ -59,7 +59,7 @@
 
 static inline int cl_io_type_is_valid(enum cl_io_type type)
 {
-	return CIT_READ <= type && type < CIT_OP_NR;
+	return type >= CIT_READ && type < CIT_OP_NR;
 }
 
 static inline int cl_io_is_loopable(const struct cl_io *io)
@@ -72,7 +72,7 @@ static inline int cl_io_is_loopable(const struct cl_io *io)
  */
 int cl_io_is_going(const struct lu_env *env)
 {
-	return cl_env_info(env)->clt_current_io != NULL;
+	return !!cl_env_info(env)->clt_current_io;
 }
 
 /**
@@ -390,7 +390,7 @@ void cl_io_unlock(const struct lu_env *env, struct cl_io *io)
 	const struct cl_io_slice *scan;
 
 	LASSERT(cl_io_is_loopable(io));
-	LASSERT(CIS_IT_STARTED <= io->ci_state && io->ci_state < CIS_UNLOCKED);
+	LASSERT(io->ci_state >= CIS_IT_STARTED && io->ci_state < CIS_UNLOCKED);
 	LINVRNT(cl_io_invariant(io));
 
 	set = &io->ci_lockset;
diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 3b683b7..3aae332 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -229,7 +229,7 @@ const char *cl_lock_mode_name(const enum cl_lock_mode mode)
 		[CLM_WRITE]   = "W",
 		[CLM_GROUP]   = "G"
 	};
-	if (0 <= mode && mode < ARRAY_SIZE(names))
+	if (mode >= 0 && mode < ARRAY_SIZE(names))
 		return names[mode];
 	else
 		return "U";
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
index c83b7d7..46322d2 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_counters.c
@@ -52,7 +52,7 @@ void lprocfs_counter_add(struct lprocfs_stats *stats, int idx, long amount)
 	if (!stats)
 		return;
 
-	LASSERTF(0 <= idx && idx < stats->ls_num,
+	LASSERTF(idx >= 0 && idx < stats->ls_num,
 		 "idx %d, ls_num %hu\n", idx, stats->ls_num);
 
 	/* With per-client stats, statistics are allocated only for
@@ -101,7 +101,7 @@ void lprocfs_counter_sub(struct lprocfs_stats *stats, int idx, long amount)
 	if (!stats)
 		return;
 
-	LASSERTF(0 <= idx && idx < stats->ls_num,
+	LASSERTF(idx >= 0 && idx < stats->ls_num,
 		 "idx %d, ls_num %hu\n", idx, stats->ls_num);
 
 	/* With per-client stats, statistics are allocated only for
diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index e1f4ef2..64cc746 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1585,7 +1585,7 @@ int ldebugfs_seq_create(struct dentry *parent, const char *name,
 	struct dentry *entry;
 
 	/* Disallow secretly (un)writable entries. */
-	LASSERT((seq_fops->write == NULL) == ((mode & 0222) == 0));
+	LASSERT((!seq_fops->write) == ((mode & 0222) == 0));
 
 	entry = debugfs_create_file(name, mode, parent, data, seq_fops);
 	if (IS_ERR_OR_NULL(entry))
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index cca6881..a97b2fe 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1396,7 +1396,7 @@ static void key_fini(struct lu_context *ctx, int index)
 void lu_context_key_degister(struct lu_context_key *key)
 {
 	LASSERT(atomic_read(&key->lct_used) >= 1);
-	LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
+	LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
 
 	lu_context_key_quiesce(key);
 
@@ -1516,7 +1516,7 @@ void *lu_context_key_get(const struct lu_context *ctx,
 			 const struct lu_context_key *key)
 {
 	LINVRNT(ctx->lc_state == LCS_ENTERED);
-	LINVRNT(0 <= key->lct_index && key->lct_index < ARRAY_SIZE(lu_keys));
+	LINVRNT(key->lct_index >= 0 && key->lct_index < ARRAY_SIZE(lu_keys));
 	LASSERT(lu_keys[key->lct_index] == key);
 	return ctx->lc_value[key->lct_index];
 }
-- 
2.7.4


