X-GM-THRID: 6473122698379657216
X-Received: by 10.101.88.207 with SMTP id e15mr610823pgu.118.1507141324109;
        Wed, 04 Oct 2017 11:22:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.120.78 with SMTP id t75ls3277681pgc.15.gmail; Wed, 04 Oct
 2017 11:22:02 -0700 (PDT)
X-Received: by 10.99.114.29 with SMTP id n29mr946013pgc.15.1507141322842;
        Wed, 04 Oct 2017 11:22:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507141322; cv=none;
        d=google.com; s=arc-20160816;
        b=FHuhO2k0XDc+wpqHio9pXgseNYFlgnrg5NYExVShAyWs0PPp+i8UGluPlb8R0yELuz
         yyTw13yJi1khp5nyGiT7sgr2mN2sgGtkfBLVTOcevM3Npem2P8/qllSAE7rEwrEfm/AD
         O6U5tAMjzKd74/JAg/zingNT+481rCYsYMtqSfhTsIxJj5K/fQbEedszj8+7qW0MFG0b
         KfgNuD9lnuSdFBmi3ftMMy1lMaazUvPffVHVgMloGuSilxSLR2+dW2rvNhkM2OHZ/gHi
         w1v6a2kvModl/01J+eXgXkeJDKPP1RnRBxJCM7Hl2ZCBMYXfWUaysKnDNVsiJyfgkj8h
         stnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=PpTr1YnDR0/WH6To2Jbulyvf6+dsqdCmcQkmUDx6Nv0=;
        b=M+L5cYDMwfLcP9S4m4OjMYIgrZ6LxRzjxALNfZraTK08gRDlyaMmVsFuv3Oogq0VDc
         Z5i4+6HC9XIuZWOKqI5VSOdv0XQS3n3wqhCNYtRAgfTO/gTmvF6Qik0tb6I/sQ7pr8s8
         I7ieQgBPYD+miKqOwSdHYo11jqFBEtA79Ju4KrzZ2IO52oYg5LJ2Elwcr4fq3wtQUor4
         9S1qKEg0vMuxRrunp6ZrkT+xTb+g1DrGfVCOzkP8tj5lQAKKJL4L0/URRpE7D3dT2MLb
         IVDouhv8mSrhnSe1eZJJvMNPod+UgFxhkHuSDBBsTDzssBGO6O5NTYVXQgq7r7FCI9Rw
         Z2LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hrPUUc2S;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y12si1791400pfe.23.2017.10.04.11.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 11:22:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hrPUUc2S;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id u27so13754733pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 11:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PpTr1YnDR0/WH6To2Jbulyvf6+dsqdCmcQkmUDx6Nv0=;
        b=hrPUUc2SgCY2NZdp2ZxeFoYWXvgsvsfOH8s2AtcvNheKe7QYDubdXORvFJ2DtFBEif
         KFmjMgoUNtv5ASVkcilpWY1Z+wY13wRPuZ9+LA7ZsLnRJ+d60goQ+QJwMo3ocsR14/jU
         gGrJDmBWHPOCjbyrwhLuMb9W3Dkl/S4OrVloIkUwOw9FqTJOYfDD0b8dP2uxRfnuQJ1U
         rxUfFmideUeQC9DjoxGEp1Wu2ff+nLajr00soMKkUvX4m6Vnfy/aEyUrV9wObPC/XOUz
         0zO+8d7BoSAoOpotfdUSfX+OTQDcY2EmiCL8wAnO9KmsTl3HPbKExjA5PRydzN7Kts8A
         zTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PpTr1YnDR0/WH6To2Jbulyvf6+dsqdCmcQkmUDx6Nv0=;
        b=USNqxz8pbyXYEIokaoJ7RTsXVCIe88YBy0L7IQIu9VyPTIbYBABE5ggWnROQfrmM39
         EqdTE+1o41WeFl3WAeVDxMsNxURxBx4gPzBb5fpLbuiwyrut/VCN6Ns8WPefsiEASFSk
         Pps92uDlhn5ZemwAJ8E6VefzU3mK0v8kP1duaCe2J8uQ10BnQN6RXz8ae43NVEn9eQj0
         tZP7Eg7srzNv9QxvjBk8VkOsCWy6YBeqIauXwsgz/5sZVWcOLM/yF/Af4S5GYOQclyY9
         PFNnQgzk3+6anp+vif5bTVGmUOG9uDZK2f6SUNpkO3GTF0BnkQWD9FT8qC853f0Kmttx
         4yDA==
X-Gm-Message-State: AMCzsaUbITkmnaOgssc6pY8CerJk5MgperM+82UquYRIlKfNDDo7V+xy
	tVKhUY8b2Zb8QuF7GRil96c7HA==
X-Google-Smtp-Source: AOwi7QBuMkr4UwUZRt9cw4LyDVx9WF6tL57OgY/JSF2TALF4Zg4snw3Nwb3Pj+zO+jB+ykUyvlrToA==
X-Received: by 10.84.244.2 with SMTP id g2mr7400979pll.400.1507141322308;
        Wed, 04 Oct 2017 11:22:02 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([111.93.157.115])
        by smtp.gmail.com with ESMTPSA id 84sm3957501pfh.28.2017.10.04.11.21.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 11:22:00 -0700 (PDT)
Date: Wed, 4 Oct 2017 23:51:51 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: pablo@netfilter.org, outreachy-kernel@googlegroups.com,
	netfilter-dev@vger.kernel.org
Subject: [PATCH] nftables: Change size_t len to size_t size
Message-ID: <20171004182138.GA24970@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Change the variable name from size_t len to
size_t size in the sprintf functions for
consistency.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 src/expr/counter.c   | 12 ++++++------
 src/expr/ct.c        |  8 ++++----
 src/expr/dup.c       | 16 ++++++++--------
 src/expr/exthdr.c    | 14 +++++++-------
 src/expr/fib.c       |  8 ++++----
 src/expr/fwd.c       | 12 ++++++------
 src/expr/hash.c      |  8 ++++----
 src/expr/immediate.c | 12 ++++++------
 src/expr/limit.c     | 12 ++++++------
 src/expr/log.c       |  8 ++++----
 src/expr/masq.c      | 14 +++++++-------
 src/expr/match.c     |  8 ++++----
 src/expr/meta.c      | 14 +++++++-------
 src/expr/numgen.c    |  8 ++++----
 src/expr/objref.c    | 14 +++++++-------
 src/expr/payload.c   | 10 +++++-----
 src/expr/queue.c     | 24 ++++++++++++------------
 src/expr/quota.c     | 12 ++++++------
 src/expr/redir.c     | 18 +++++++++---------
 src/expr/reject.c    | 12 ++++++------
 src/expr/rt.c        | 12 ++++++------
 src/expr/target.c    |  8 ++++----
 22 files changed, 132 insertions(+), 132 deletions(-)

diff --git a/src/expr/counter.c b/src/expr/counter.c
index 5c196d4..4de6b92 100644
--- a/src/expr/counter.c
+++ b/src/expr/counter.c
@@ -151,28 +151,28 @@ static int nftnl_expr_counter_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_counter_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_counter_snprintf_default(char *buf, size_t size,
 					       const struct nftnl_expr *e)
 {
 	struct nftnl_expr_counter *ctr = nftnl_expr_data(e);
 
-	return snprintf(buf, len, "pkts %"PRIu64" bytes %"PRIu64" ",
+	return snprintf(buf, size, "pkts %"PRIu64" bytes %"PRIu64" ",
 			ctr->pkts, ctr->bytes);
 }
 
-static int nftnl_expr_counter_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_counter_snprintf(char *buf, size_t size, uint32_t type,
 				       uint32_t flags,
 				       const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_counter_snprintf_default(buf, len, e);
+		return nftnl_expr_counter_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_counter_export(buf, len, e, type);
+		return nftnl_expr_counter_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/ct.c b/src/expr/ct.c
index 021a277..396bee0 100644
--- a/src/expr/ct.c
+++ b/src/expr/ct.c
@@ -314,18 +314,18 @@ nftnl_expr_ct_snprintf_default(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_ct_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_ct_snprintf(char *buf, size_t size, uint32_t type,
 		       uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_ct_snprintf_default(buf, len, e);
+		return nftnl_expr_ct_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_ct_export(buf, len, e, type);
+		return nftnl_expr_ct_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/dup.c b/src/expr/dup.c
index e2171f4..f67331b 100644
--- a/src/expr/dup.c
+++ b/src/expr/dup.c
@@ -147,38 +147,38 @@ static int nftnl_expr_dup_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_dup_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_dup_snprintf_default(char *buf, size_t size,
 					   const struct nftnl_expr *e,
 					   uint32_t flags)
 {
-	int remain = len, offset = 0, ret;
+	int remain = size, offset = 0, ret;
 	struct nftnl_expr_dup *dup = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_DUP_SREG_ADDR)) {
-		ret = snprintf(buf + offset, len, "sreg_addr %u ", dup->sreg_addr);
+		ret = snprintf(buf + offset, size, "sreg_addr %u ", dup->sreg_addr);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	if (e->flags & (1 << NFTNL_EXPR_DUP_SREG_DEV)) {
-		ret = snprintf(buf + offset, len, "sreg_dev %u ", dup->sreg_dev);
+		ret = snprintf(buf + offset, size, "sreg_dev %u ", dup->sreg_dev);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	return offset;
 }
 
-static int nftnl_expr_dup_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_dup_snprintf(char *buf, size_t size, uint32_t type,
 				   uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_dup_snprintf_default(buf, len, e, flags);
+		return nftnl_expr_dup_snprintf_default(buf, size, e, flags);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_dup_export(buf, len, e, type);
+		return nftnl_expr_dup_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/exthdr.c b/src/expr/exthdr.c
index 11766fa..12f49d8 100644
--- a/src/expr/exthdr.c
+++ b/src/expr/exthdr.c
@@ -317,37 +317,37 @@ static int nftnl_expr_exthdr_export(char *buf, size_t len,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_exthdr_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_exthdr_snprintf_default(char *buf, size_t size,
 					      const struct nftnl_expr *e)
 {
 	struct nftnl_expr_exthdr *exthdr = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_EXTHDR_DREG))
-		return snprintf(buf, len, "load%s %ub @ %u + %u%s => reg %u ",
+		return snprintf(buf, size, "load%s %ub @ %u + %u%s => reg %u ",
 				op2str(exthdr->op), exthdr->len, exthdr->type,
 				exthdr->offset,
 				exthdr->flags & NFT_EXTHDR_F_PRESENT ? " present" : "",
 				exthdr->dreg);
 	else
-		return snprintf(buf, len, "write%s reg %u => %ub @ %u + %u ",
+		return snprintf(buf, size, "write%s reg %u => %ub @ %u + %u ",
 				op2str(exthdr->op), exthdr->sreg, exthdr->len, exthdr->type,
 				exthdr->offset);
 
 }
 
 static int
-nftnl_expr_exthdr_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_exthdr_snprintf(char *buf, size_t size, uint32_t type,
 			   uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_exthdr_snprintf_default(buf, len, e);
+		return nftnl_expr_exthdr_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_exthdr_export(buf, len, e, type);
+		return nftnl_expr_exthdr_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/fib.c b/src/expr/fib.c
index cbadeef..cb62020 100644
--- a/src/expr/fib.c
+++ b/src/expr/fib.c
@@ -233,18 +233,18 @@ static int nftnl_expr_fib_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_fib_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_fib_snprintf(char *buf, size_t size, uint32_t type,
 			 uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_fib_snprintf_default(buf, len, e);
+		return nftnl_expr_fib_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_fib_export(buf, len, e, type);
+		return nftnl_expr_fib_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/fwd.c b/src/expr/fwd.c
index 38923df..9b5e555 100644
--- a/src/expr/fwd.c
+++ b/src/expr/fwd.c
@@ -128,11 +128,11 @@ static int nftnl_expr_fwd_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_fwd_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_fwd_snprintf_default(char *buf, size_t size,
 					   const struct nftnl_expr *e,
 					   uint32_t flags)
 {
-	int remain = len, offset = 0, ret;
+	int remain = size, offset = 0, ret;
 	struct nftnl_expr_fwd *fwd = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_FWD_SREG_DEV)) {
@@ -144,18 +144,18 @@ static int nftnl_expr_fwd_snprintf_default(char *buf, size_t len,
 	return offset;
 }
 
-static int nftnl_expr_fwd_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_fwd_snprintf(char *buf, size_t size, uint32_t type,
 				   uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_fwd_snprintf_default(buf, len, e, flags);
+		return nftnl_expr_fwd_snprintf_default(buf, size, e, flags);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_fwd_export(buf, len, e, type);
+		return nftnl_expr_fwd_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/hash.c b/src/expr/hash.c
index 066c790..6a52308 100644
--- a/src/expr/hash.c
+++ b/src/expr/hash.c
@@ -285,18 +285,18 @@ static int nftnl_expr_hash_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_hash_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_hash_snprintf(char *buf, size_t size, uint32_t type,
 			 uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_hash_snprintf_default(buf, len, e);
+		return nftnl_expr_hash_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_hash_export(buf, len, e, type);
+		return nftnl_expr_hash_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/immediate.c b/src/expr/immediate.c
index aba84ea..5cdad03 100644
--- a/src/expr/immediate.c
+++ b/src/expr/immediate.c
@@ -229,11 +229,11 @@ nftnl_expr_immediate_export(char *buf, size_t size, const struct nftnl_expr *e,
 }
 
 static int
-nftnl_expr_immediate_snprintf_default(char *buf, size_t len,
+nftnl_expr_immediate_snprintf_default(char *buf, size_t size,
 				      const struct nftnl_expr *e,
 				      uint32_t flags)
 {
-	int remain = len, offset = 0, ret;
+	int remain = size, offset = 0, ret;
 	struct nftnl_expr_immediate *imm = nftnl_expr_data(e);
 
 	ret = snprintf(buf, remain, "reg %u ", imm->dreg);
@@ -259,18 +259,18 @@ nftnl_expr_immediate_snprintf_default(char *buf, size_t len,
 }
 
 static int
-nftnl_expr_immediate_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_immediate_snprintf(char *buf, size_t size, uint32_t type,
 			      uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch(type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_immediate_snprintf_default(buf, len, e, flags);
+		return nftnl_expr_immediate_snprintf_default(buf, size, e, flags);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_immediate_export(buf, len, e, type);
+		return nftnl_expr_immediate_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/limit.c b/src/expr/limit.c
index 8e1f02a..3927dbf 100644
--- a/src/expr/limit.c
+++ b/src/expr/limit.c
@@ -229,29 +229,29 @@ static const char *limit_to_type(enum nft_limit_type type)
 	}
 }
 
-static int nftnl_expr_limit_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_limit_snprintf_default(char *buf, size_t size,
 					     const struct nftnl_expr *e)
 {
 	struct nftnl_expr_limit *limit = nftnl_expr_data(e);
 
-	return snprintf(buf, len, "rate %"PRIu64"/%s burst %u type %s flags 0x%x ",
+	return snprintf(buf, size, "rate %"PRIu64"/%s burst %u type %s flags 0x%x ",
 			limit->rate, get_unit(limit->unit), limit->burst,
 			limit_to_type(limit->type), limit->flags);
 }
 
 static int
-nftnl_expr_limit_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_limit_snprintf(char *buf, size_t size, uint32_t type,
 			  uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch(type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_limit_snprintf_default(buf, len, e);
+		return nftnl_expr_limit_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_limit_export(buf, len, e, type);
+		return nftnl_expr_limit_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/log.c b/src/expr/log.c
index 161327b..48abc9c 100644
--- a/src/expr/log.c
+++ b/src/expr/log.c
@@ -298,18 +298,18 @@ static int nftnl_expr_log_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_log_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_log_snprintf(char *buf, size_t size, uint32_t type,
 			uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch(type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_log_snprintf_default(buf, len, e);
+		return nftnl_expr_log_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_log_export(buf, len, e, type);
+		return nftnl_expr_log_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/masq.c b/src/expr/masq.c
index 1c75ee9..76d3eea 100644
--- a/src/expr/masq.c
+++ b/src/expr/masq.c
@@ -171,15 +171,15 @@ static int nftnl_expr_masq_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_masq_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_masq_snprintf_default(char *buf, size_t size,
 					    const struct nftnl_expr *e)
 {
 	struct nftnl_expr_masq *masq = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_MASQ_FLAGS))
-		return snprintf(buf, len, "flags 0x%x ", masq->flags);
+		return snprintf(buf, size, "flags 0x%x ", masq->flags);
 	if (e->flags & (1 << NFTNL_EXPR_MASQ_REG_PROTO_MIN)) {
-		return snprintf(buf, len,
+		return snprintf(buf, size,
 				"proto_min reg %u proto_max reg %u ",
 				masq->sreg_proto_min, masq->sreg_proto_max);
 	}
@@ -187,18 +187,18 @@ static int nftnl_expr_masq_snprintf_default(char *buf, size_t len,
 	return 0;
 }
 
-static int nftnl_expr_masq_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_masq_snprintf(char *buf, size_t size, uint32_t type,
 				    uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_masq_snprintf_default(buf, len, e);
+		return nftnl_expr_masq_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_masq_export(buf, len, e, type);
+		return nftnl_expr_masq_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/match.c b/src/expr/match.c
index af659b3..431c339 100644
--- a/src/expr/match.c
+++ b/src/expr/match.c
@@ -195,21 +195,21 @@ static int nftnl_expr_match_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_match_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_match_snprintf(char *buf, size_t size, uint32_t type,
 			  uint32_t flags, const struct nftnl_expr *e)
 {
 	struct nftnl_expr_match *match = nftnl_expr_data(e);
 
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return snprintf(buf, len, "name %s rev %u ",
+		return snprintf(buf, size, "name %s rev %u ",
 				match->name, match->rev);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_match_export(buf, len, e, type);
+		return nftnl_expr_match_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/meta.c b/src/expr/meta.c
index b5c27e6..95e84ad 100644
--- a/src/expr/meta.c
+++ b/src/expr/meta.c
@@ -216,17 +216,17 @@ static int nftnl_expr_meta_json_parse(struct nftnl_expr *e, json_t *root,
 }
 
 static int
-nftnl_expr_meta_snprintf_default(char *buf, size_t len,
+nftnl_expr_meta_snprintf_default(char *buf, size_t size,
 				 const struct nftnl_expr *e)
 {
 	struct nftnl_expr_meta *meta = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_META_SREG)) {
-		return snprintf(buf, len, "set %s with reg %u ",
+		return snprintf(buf, size, "set %s with reg %u ",
 				meta_key2str(meta->key), meta->sreg);
 	}
 	if (e->flags & (1 << NFTNL_EXPR_META_DREG)) {
-		return snprintf(buf, len, "load %s => reg %u ",
+		return snprintf(buf, size, "load %s => reg %u ",
 				meta_key2str(meta->key), meta->dreg);
 	}
 	return 0;
@@ -249,18 +249,18 @@ static int nftnl_expr_meta_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_meta_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_meta_snprintf(char *buf, size_t size, uint32_t type,
 			 uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_meta_snprintf_default(buf, len, e);
+		return nftnl_expr_meta_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_meta_export(buf, len, e, type);
+		return nftnl_expr_meta_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/numgen.c b/src/expr/numgen.c
index 9b5b1b7..83c493a 100644
--- a/src/expr/numgen.c
+++ b/src/expr/numgen.c
@@ -221,18 +221,18 @@ static int nftnl_expr_ng_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_ng_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_ng_snprintf(char *buf, size_t size, uint32_t type,
 		       uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_ng_snprintf_default(buf, len, e);
+		return nftnl_expr_ng_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_ng_export(buf, len, e, type);
+		return nftnl_expr_ng_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/objref.c b/src/expr/objref.c
index b4b3383..340dc67 100644
--- a/src/expr/objref.c
+++ b/src/expr/objref.c
@@ -219,32 +219,32 @@ static int nftnl_expr_objref_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_objref_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_objref_snprintf_default(char *buf, size_t size,
 					      const struct nftnl_expr *e)
 {
 	struct nftnl_expr_objref *objref = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_OBJREF_SET_SREG))
-		return snprintf(buf, len, "sreg %u set %s id %u ",
+		return snprintf(buf, size, "sreg %u set %s id %u ",
 				objref->set.sreg, objref->set.name, objref->set.id);
 	else
-		return snprintf(buf, len, "type %u name %s ",
+		return snprintf(buf, size, "type %u name %s ",
 				objref->imm.type, objref->imm.name);
 }
 
-static int nftnl_expr_objref_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_objref_snprintf(char *buf, size_t size, uint32_t type,
 				      uint32_t flags,
 				      const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_objref_snprintf_default(buf, len, e);
+		return nftnl_expr_objref_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_objref_export(buf, len, e, type);
+		return nftnl_expr_objref_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/payload.c b/src/expr/payload.c
index 897fc77..d61e854 100644
--- a/src/expr/payload.c
+++ b/src/expr/payload.c
@@ -285,30 +285,30 @@ static int nftnl_expr_payload_export(char *buf, size_t size, uint32_t flags,
 }
 
 static int
-nftnl_expr_payload_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_payload_snprintf(char *buf, size_t size, uint32_t type,
 			    uint32_t flags, const struct nftnl_expr *e)
 {
 	struct nftnl_expr_payload *payload = nftnl_expr_data(e);
 
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
 		if (payload->sreg)
-			return snprintf(buf, len, "write reg %u => %ub @ %s header + %u csum_type %u csum_off %u csum_flags 0x%x ",
+			return snprintf(buf, size, "write reg %u => %ub @ %s header + %u csum_type %u csum_off %u csum_flags 0x%x ",
 					payload->sreg,
 					payload->len, base2str(payload->base),
 					payload->offset, payload->csum_type,
 					payload->csum_offset,
 					payload->csum_flags);
 		else
-			return snprintf(buf, len, "load %ub @ %s header + %u => reg %u ",
+			return snprintf(buf, size, "load %ub @ %s header + %u => reg %u ",
 					payload->len, base2str(payload->base),
 					payload->offset, payload->dreg);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_payload_export(buf, len, flags, e, type);
+		return nftnl_expr_payload_export(buf, size, flags, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/queue.c b/src/expr/queue.c
index e0fb785..acb42e9 100644
--- a/src/expr/queue.c
+++ b/src/expr/queue.c
@@ -172,41 +172,41 @@ nftnl_expr_queue_json_parse(struct nftnl_expr *e, json_t *root,
 #endif
 }
 
-static int nftnl_expr_queue_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_queue_snprintf_default(char *buf, size_t size,
 					     const struct nftnl_expr *e)
 {
 	struct nftnl_expr_queue *queue = nftnl_expr_data(e);
-	int ret, remain = len, offset = 0;
+	int ret, remain = size, offset = 0;
 	uint16_t total_queues;
 
 	if (e->flags & (1 << NFTNL_EXPR_QUEUE_NUM)) {
 		total_queues = queue->queuenum + queue->queues_total - 1;
 
-		ret = snprintf(buf + offset, len, "num %u", queue->queuenum);
+		ret = snprintf(buf + offset, size, "num %u", queue->queuenum);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 
 		if (queue->queues_total && total_queues != queue->queuenum) {
-			ret = snprintf(buf + offset, len, "-%u", total_queues);
+			ret = snprintf(buf + offset, size, "-%u", total_queues);
 			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 		}
 
-		ret = snprintf(buf + offset, len, " ");
+		ret = snprintf(buf + offset, size, " ");
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	if (e->flags & (1 << NFTNL_EXPR_QUEUE_SREG_QNUM)) {
-		ret = snprintf(buf + offset, len, "sreg_qnum %u ",
+		ret = snprintf(buf + offset, size, "sreg_qnum %u ",
 			       queue->sreg_qnum);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	if (e->flags & (1 << NFTNL_EXPR_QUEUE_FLAGS)) {
 		if (queue->flags & (NFT_QUEUE_FLAG_BYPASS)) {
-			ret = snprintf(buf + offset, len, "bypass ");
+			ret = snprintf(buf + offset, size, "bypass ");
 			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 		}
 		if (queue->flags & (NFT_QUEUE_FLAG_CPU_FANOUT)) {
-			ret = snprintf(buf + offset, len, "fanout ");
+			ret = snprintf(buf + offset, size, "fanout ");
 			SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 		}
 	}
@@ -232,18 +232,18 @@ static int nftnl_expr_queue_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_queue_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_queue_snprintf(char *buf, size_t size, uint32_t type,
 			  uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_queue_snprintf_default(buf, len, e);
+		return nftnl_expr_queue_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_queue_export(buf, len, e, type);
+		return nftnl_expr_queue_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/quota.c b/src/expr/quota.c
index c247b0a..e9cc708 100644
--- a/src/expr/quota.c
+++ b/src/expr/quota.c
@@ -169,29 +169,29 @@ static int nftnl_expr_quota_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_quota_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_quota_snprintf_default(char *buf, size_t size,
 					       const struct nftnl_expr *e)
 {
 	struct nftnl_expr_quota *quota = nftnl_expr_data(e);
 
-	return snprintf(buf, len,
+	return snprintf(buf, size,
 			"bytes %"PRIu64" consumed %"PRIu64" flags %u ",
 			quota->bytes, quota->consumed, quota->flags);
 }
 
-static int nftnl_expr_quota_snprintf(char *buf, size_t len, uint32_t type,
+static int nftnl_expr_quota_snprintf(char *buf, size_t size, uint32_t type,
 				       uint32_t flags,
 				       const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_quota_snprintf_default(buf, len, e);
+		return nftnl_expr_quota_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_quota_export(buf, len, e, type);
+		return nftnl_expr_quota_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/redir.c b/src/expr/redir.c
index 9fb634a..b58635c 100644
--- a/src/expr/redir.c
+++ b/src/expr/redir.c
@@ -173,26 +173,26 @@ static int nftnl_expr_redir_export(char *buf, size_t size,
 	return nftnl_buf_done(&b);
 }
 
-static int nftnl_expr_redir_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_redir_snprintf_default(char *buf, size_t size,
 					     const struct nftnl_expr *e)
 {
-	int ret, remain = len, offset = 0;
+	int ret, remain = size, offset = 0;
 	struct nftnl_expr_redir *redir = nftnl_expr_data(e);
 
 	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_REG_PROTO_MIN)) {
-		ret = snprintf(buf + offset, len, "proto_min reg %u ",
+		ret = snprintf(buf + offset, size, "proto_min reg %u ",
 			       redir->sreg_proto_min);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_REG_PROTO_MAX)) {
-		ret = snprintf(buf + offset, len, "proto_max reg %u ",
+		ret = snprintf(buf + offset, size, "proto_max reg %u ",
 			       redir->sreg_proto_max);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
 
 	if (nftnl_expr_is_set(e, NFTNL_EXPR_REDIR_FLAGS)) {
-		ret = snprintf(buf + offset, len, "flags 0x%x ",
+		ret = snprintf(buf + offset, size, "flags 0x%x ",
 			       redir->flags);
 		SNPRINTF_BUFFER_SIZE(ret, remain, offset);
 	}
@@ -201,18 +201,18 @@ static int nftnl_expr_redir_snprintf_default(char *buf, size_t len,
 }
 
 static int
-nftnl_expr_redir_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_redir_snprintf(char *buf, size_t size, uint32_t type,
 			  uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_redir_snprintf_default(buf, len, e);
+		return nftnl_expr_redir_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_redir_export(buf, len, e, type);
+		return nftnl_expr_redir_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/reject.c b/src/expr/reject.c
index 1e6fdf5..01bafb4 100644
--- a/src/expr/reject.c
+++ b/src/expr/reject.c
@@ -137,12 +137,12 @@ nftnl_expr_reject_json_parse(struct nftnl_expr *e, json_t *root,
 #endif
 }
 
-static int nftnl_expr_reject_snprintf_default(char *buf, size_t len,
+static int nftnl_expr_reject_snprintf_default(char *buf, size_t size,
 					      const struct nftnl_expr *e)
 {
 	struct nftnl_expr_reject *reject = nftnl_expr_data(e);
 
-	return snprintf(buf, len, "type %u code %u ",
+	return snprintf(buf, size, "type %u code %u ",
 			reject->type, reject->icmp_code);
 }
 
@@ -161,18 +161,18 @@ static int nftnl_expr_reject_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_reject_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_reject_snprintf(char *buf, size_t size, uint32_t type,
 			   uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_reject_snprintf_default(buf, len, e);
+		return nftnl_expr_reject_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_reject_export(buf, len, e, type);
+		return nftnl_expr_reject_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/rt.c b/src/expr/rt.c
index 10cb1e2..408b9a9 100644
--- a/src/expr/rt.c
+++ b/src/expr/rt.c
@@ -173,13 +173,13 @@ static int nftnl_expr_rt_json_parse(struct nftnl_expr *e, json_t *root,
 }
 
 static int
-nftnl_expr_rt_snprintf_default(char *buf, size_t len,
+nftnl_expr_rt_snprintf_default(char *buf, size_t size,
 			       const struct nftnl_expr *e)
 {
 	struct nftnl_expr_rt *rt = nftnl_expr_data(e);
 
 	if (e->flags & (1 << NFTNL_EXPR_RT_DREG)) {
-		return snprintf(buf, len, "load %s => reg %u ",
+		return snprintf(buf, size, "load %s => reg %u ",
 				rt_key2str(rt->key), rt->dreg);
 	}
 	return 0;
@@ -200,18 +200,18 @@ static int nftnl_expr_rt_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_rt_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_rt_snprintf(char *buf, size_t size, uint32_t type,
 		       uint32_t flags, const struct nftnl_expr *e)
 {
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return nftnl_expr_rt_snprintf_default(buf, len, e);
+		return nftnl_expr_rt_snprintf_default(buf, size, e);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_expr_rt_export(buf, len, e, type);
+		return nftnl_expr_rt_export(buf, size, e, type);
 	default:
 		break;
 	}
diff --git a/src/expr/target.c b/src/expr/target.c
index 3c58b03..524b378 100644
--- a/src/expr/target.c
+++ b/src/expr/target.c
@@ -195,21 +195,21 @@ static int nftnl_rule_exp_target_export(char *buf, size_t size,
 }
 
 static int
-nftnl_expr_target_snprintf(char *buf, size_t len, uint32_t type,
+nftnl_expr_target_snprintf(char *buf, size_t size, uint32_t type,
 			   uint32_t flags, const struct nftnl_expr *e)
 {
 	struct nftnl_expr_target *target = nftnl_expr_data(e);
 
-	if (len)
+	if (size)
 		buf[0] = '\0';
 
 	switch (type) {
 	case NFTNL_OUTPUT_DEFAULT:
-		return snprintf(buf, len, "name %s rev %u ",
+		return snprintf(buf, size, "name %s rev %u ",
 				target->name, target->rev);
 	case NFTNL_OUTPUT_XML:
 	case NFTNL_OUTPUT_JSON:
-		return nftnl_rule_exp_target_export(buf, len, e, type);
+		return nftnl_rule_exp_target_export(buf, size, e, type);
 	default:
 		break;
 	}
-- 
2.7.4


