X-GM-THRID: 6473346132637384704
X-Received: by 10.99.101.131 with SMTP id z125mr2264110pgb.151.1507193346690;
        Thu, 05 Oct 2017 01:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.234.198 with SMTP id i6ls6427335plt.11.gmail; Thu, 05 Oct
 2017 01:49:05 -0700 (PDT)
X-Received: by 10.101.81.196 with SMTP id i4mr1641219pgq.174.1507193345709;
        Thu, 05 Oct 2017 01:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507193345; cv=none;
        d=google.com; s=arc-20160816;
        b=y/NO310vcTb8D6sW+D8NAsF1sqfpqWjm5oTdGZ09ZH4tHDgi+CPMqpS2z3WBPN6pjx
         Umvc+dsk+YWhTJSBM4KaX9Q91o4Zj4Fz7xzid0SBOl0eBpz+2e2DGP8Wy/3xdscPtODB
         6rjG7jQ1Uu26yUJ51H4KJB86sWtnWQgrOoh/pRdHmFnnUpyED/MuoipuVyim2KCRauAW
         FsQi65rv7ApT8nj1c5zToRAg+MSd/WjleHiaNQVox9F0p2FGp3623IsLi+Q+3LGh3Beo
         LGMz+C26d4J9IN1TpktVOPxx07bq7PuUtqfx0oCWlR0ele3/pt7isDbl3kTJTHy+68/n
         OYeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=h/lPQ45sZnB0jO8Zwchcq1oP3A/0zorQNXft/4pT/LM=;
        b=iapvT1cHJe4Sz8G41+YTD7qLuDSZCaYJB/IzirGagTkFe0Ra9XgPjWg2KxNyoHT5TP
         OEABtQQAT2gBjfRLBnApQbGji/NgVmbuQCBDQ29iTspDwZmVuz26TeSYk7qNkluMrAIs
         vtUfEWxs3tr2dBPuFRO/gZ5TkyAEfPSAxk11ZNeSDhK+NT4d0TnRMToYuPboYVyEfyqr
         0kwfXMB6V8ts/8UUtgadnWeDov4CGo5iGtHfpFkYTW7AwKgUaAj7rxVbWytWmzmK2uIk
         H85RcqbV0c2DZyReos1Bpb5dvWPwfq5ZVmNFzrrJ34SEWnEQCQuiCR0Q1rjC/AgvfV+q
         /eMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUrrTC7d;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a28si1155522pfe.24.2017.10.05.01.49.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 01:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WUrrTC7d;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id i23so14209724pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 01:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=h/lPQ45sZnB0jO8Zwchcq1oP3A/0zorQNXft/4pT/LM=;
        b=WUrrTC7dAiEAcArup07yQp3xpkkusmGBCYMc/X4GbIqTcTLh2FA2m0M0t1L83z5lSc
         xzIaCOqG2MquvlAK31G8T3iB+OnEAozB76w+Ubi0JiUimP6DVrh3OKdjM+pPslUAJf2K
         5GQGVNzknZqdLhXnGyyPHaT0f2ef2hDBHc/1/z/UnYJ0cPTnj14sOekL5GEbOH9bs2KK
         fTkHBc0fdvO1xWhI+7AjbGSspBEFh/MuokhEqKrqWAL/haS3/QdfiJmqfrFcyHPobOqj
         aSxrkmqu9nMCPtQt2UkjwUZSrTs+8eMtQMdXnYbJ852uAiD0OSb6PI8holRaLe8h7ucA
         kvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h/lPQ45sZnB0jO8Zwchcq1oP3A/0zorQNXft/4pT/LM=;
        b=CN+p73am2G8UmJW3BZmqoK7Uwcdpm/WUBor4YqSE/qGtWOC9TZRmGJyCBfTRQ53UCz
         oJgtFlnf8pUSdigjTJ6eeDN0xGExCXkpyGsHy0UDnTslhSSEBnxVi0OryBDUgCdsx60N
         H2iGg7iUtD+9XFf1h6DJ4hEs1Kv65gEoEWqVaiEOchxWGLCQAeQOWtwblECZ4bTLRiui
         izeYmNnjNGykqp3xJMx515lnmSOu1Pdmj3Ih7qS81gcZsvZAd0Crs4D/vPaNpbtdbd1C
         ioLfz5WvVhhp01TEQ/ET9QoNORE/tGz15qnDqWm1lBu/JC450HJMJy6qfhkysLMr8O+C
         9ULw==
X-Gm-Message-State: AMCzsaVvdWw2ZydjnddaIvoypchoeaKcNMaVn6klHbsQU7HDYRdrTKMy
	ly/TzAyoNi89My8Oy1bQRrA=
X-Google-Smtp-Source: AOwi7QD3ITQtTiTG6gPmFAWzSUTblnCjCdUhYd61iMQOQbBS1+Ij0Pjs97YCz1AyfayLOWFQPAIfrw==
X-Received: by 10.159.252.65 with SMTP id t1mr11130057plz.31.1507193345472;
        Thu, 05 Oct 2017 01:49:05 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id q23sm29873453pfk.182.2017.10.05.01.49.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 01:49:05 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] nftables: make pointers in string arrays constant
Date: Thu,  5 Oct 2017 14:16:47 +0530
Message-Id: <20171005084647.22988-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

static const char * array should probably be static const char *
const array as per linux-kernel coding style

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/erec.c      | 2 +-
 src/evaluate.c  | 4 ++--
 src/rule.c      | 6 +++---
 src/statement.c | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/src/erec.c b/src/erec.c
index 174d1ae..1e29559 100644
--- a/src/erec.c
+++ b/src/erec.c
@@ -27,7 +27,7 @@ const struct location internal_location = {
 	.indesc	= &internal_indesc,
 };
 
-static const char *error_record_names[] = {
+static const char * const error_record_names[] = {
 	[EREC_INFORMATIONAL]	= NULL,
 	[EREC_WARNING]		= "Warning",
 	[EREC_ERROR]		= "Error"
diff --git a/src/evaluate.c b/src/evaluate.c
index ca9180b..0a9e340 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -33,7 +33,7 @@
 static struct output_ctx octx_debug_dummy;
 static int expr_evaluate(struct eval_ctx *ctx, struct expr **expr);
 
-static const char *byteorder_names[] = {
+static const char * const byteorder_names[] = {
 	[BYTEORDER_INVALID]		= "invalid",
 	[BYTEORDER_HOST_ENDIAN]		= "host endian",
 	[BYTEORDER_BIG_ENDIAN]		= "big endian",
@@ -3422,7 +3422,7 @@ static int cmd_evaluate_export(struct eval_ctx *ctx, struct cmd *cmd)
 			    ctx->debug_mask & DEBUG_NETLINK, ctx->octx);
 }
 
-static const char *cmd_op_name[] = {
+static const char * const cmd_op_name[] = {
 	[CMD_INVALID]	= "invalid",
 	[CMD_ADD]	= "add",
 	[CMD_REPLACE]	= "replace",
diff --git a/src/rule.c b/src/rule.c
index 67a828f..d744cf6 100644
--- a/src/rule.c
+++ b/src/rule.c
@@ -496,7 +496,7 @@ struct symbol *symbol_lookup(const struct scope *scope, const char *identifier)
 	return NULL;
 }
 
-static const char *chain_type_str_array[] = {
+static const char * const chain_type_str_array[] = {
 	"filter",
 	"nat",
 	"route",
@@ -515,7 +515,7 @@ const char *chain_type_name_lookup(const char *name)
 	return NULL;
 }
 
-static const char *chain_hookname_str_array[] = {
+static const char * const chain_hookname_str_array[] = {
 	"prerouting",
 	"input",
 	"forward",
@@ -1345,7 +1345,7 @@ static void obj_print_data(const struct obj *obj,
 	}
 }
 
-static const char *obj_type_name_array[] = {
+static const char * const obj_type_name_array[] = {
 	[NFT_OBJECT_COUNTER]	= "counter",
 	[NFT_OBJECT_QUOTA]	= "quota",
 	[NFT_OBJECT_CT_HELPER]	= "",
diff --git a/src/statement.c b/src/statement.c
index 6166863..11d067f 100644
--- a/src/statement.c
+++ b/src/statement.c
@@ -302,7 +302,7 @@ const char *get_unit(uint64_t u)
 	return "error";
 }
 
-static const char *data_unit[] = {
+static const char * const data_unit[] = {
 	"bytes",
 	"kbytes",
 	"mbytes",
@@ -496,7 +496,7 @@ static void print_nf_nat_flags(uint32_t flags, struct output_ctx *octx)
 
 static void nat_stmt_print(const struct stmt *stmt, struct output_ctx *octx)
 {
-	static const char *nat_types[] = {
+	static const char * const nat_types[] = {
 		[NFT_NAT_SNAT]	= "snat",
 		[NFT_NAT_DNAT]	= "dnat",
 	};
-- 
2.11.0


