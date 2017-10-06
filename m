X-GM-THRID: 6473346132637384704
X-Received: by 10.101.64.204 with SMTP id u12mr229455pgp.43.1507301426486;
        Fri, 06 Oct 2017 07:50:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.98.3 with SMTP id w3ls5819269pgb.8.gmail; Fri, 06 Oct 2017
 07:50:25 -0700 (PDT)
X-Received: by 10.101.75.78 with SMTP id k14mr191952pgt.101.1507301425325;
        Fri, 06 Oct 2017 07:50:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507301425; cv=none;
        d=google.com; s=arc-20160816;
        b=n3OQq0R/YKm46fun12InLstBvAHUe0BY48CQGv9IR+triyA7zD+xVDZPnn2+H+hviG
         9g8ONsgSqO4ouR6oeGSFIaNXlntsrbu00K8TUoOBXFAgQ2YDSFoNXW/QzytGghovNQnD
         FJy8ocYh+6bjwDDyJN9ZXFMQXMdp6NaPc3RaQymz1utai6OHGh60wNgFrw45+dvncSH5
         +DyjRbLZ0b/6r1OAKJjD4EeASznxJVP7xTW/fZ+o8cpuYtAlilaAtmOHwoQh2obr4FO0
         4NH/4+dCTRCMx1eoJ+kytYxg9yy1EIJhxwkP4TGrLJ4rJev0/aBqJpIKpuiRDscVJXaM
         J1dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=9psZ4qN7C+4W1V1Rropnqu7308YcDUKYqBMX2A8jEVY=;
        b=IPMvi+LbyuUoE7MIKi6xaLEd/GDjK+RgazuT2j/RGoCwHUPn3dMC9cgu8i7Rmw1wgr
         KkGI9cwo1FReZ7B0r2ibIHVnvV6zwbRHsqJ/3CWDwb1MZiVISipHo76uU8WN4mIb2bqF
         TnngcakeCa8rvg0fMGr4MlfctilvMeUbivJohKr5V76DODJ4oxuEdEi/v64nrt5H8B3Y
         NCSCl/wwFO08Fzy6CF65WvCGGZFfdYZbolBl3QIfXuZO/1HKtc1krR2UnBEsgvUmMfW3
         tZdVvJiV+7YzyZJpVOjly7rt54kDMLDatIHyg5QuVfxRwjBKOS33pYcMAEGAf7bOta2T
         PPkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WluGVVyg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y12si198822pfe.23.2017.10.06.07.50.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 07:50:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WluGVVyg;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j3so2912574pga.5
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Oct 2017 07:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=9psZ4qN7C+4W1V1Rropnqu7308YcDUKYqBMX2A8jEVY=;
        b=WluGVVyg6aLs9HGa5HFnRP9JVQbeBVMuBpin2ALTrTrazSDmyep5wnl8XefkOi/JN7
         U5vbJ95aKhxpnkATAfPOJjYArglCKtoI2Xj33jA7VPp+rZ0su25YDtC/CFqR8NRFll+e
         YDRzz7GKantkhYbrxqTIT02kNeXGojTZ28R0nkY6ZnIur5fb5mGU3z5X6zP8r1LrNm4J
         lyhZrQCUia4HwInvNvDekf1IfRF5V9gpX8lOswnLIqGSYDfHCUNXSA4usAldKag6gxfF
         2bB4jnnusYTiYP4Gw8Kmu3Q509mMXmI0vIzzKghNzqiTNb/LuzVtK+Bjwudv4dEj9NbS
         0uvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=9psZ4qN7C+4W1V1Rropnqu7308YcDUKYqBMX2A8jEVY=;
        b=HllzF0KjNIBQayLcwPPB701iDZThj5vjSFs24v9l5YpciYP/KVKOGnb5KlSXPRMBLl
         si1NcueTEa4s/1AJ6Sj9nuv3qH0fSomrwcsc+BiFDNfnxZ2vI6xJa0/gmUAXRCcmNfxw
         Bt8dDAQQw2BfeP5xw70ygGxs2z1FuxaPRMHdikhyCdUbinc9QPakzAQY9cJ1eOodsdX/
         0vT8UsFGPvpF8sq78s9R5vJjl+atfOWJKZldKfNUgzJ2c6pihGT5eY4oXAviT62hnN7I
         pp4x9zH2/V1w2Cwivf+Op4OoPLVNb0pMxfHE4sdY46tJkPT5Rj1nNCABzoNPMxXnfvS+
         IAzQ==
X-Gm-Message-State: AMCzsaVWeDZ6pcKil+kaECIcrW9V6QsQz6MauDNgg5lSJe+zpo8Y7Uwk
	X+i3a6jAJGMf1WUl69zxI5eTBrr1
X-Google-Smtp-Source: AOwi7QCac8mtIWIIZaC+nnhXIpG0sglL8I2k+di33/8msOl9usJ1Ew2eCnGAELA8XgFwyXBcF/Hq6A==
X-Received: by 10.98.86.135 with SMTP id h7mr2452405pfj.216.1507301425067;
        Fri, 06 Oct 2017 07:50:25 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id i11sm3067059pgq.83.2017.10.06.07.50.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 07:50:24 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] nftables: make pointers in string arrays constant
Date: Fri,  6 Oct 2017 20:17:54 +0530
Message-Id: <20171006144754.17362-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Static const char * array should be static const char *
const array as per linux-kernel coding style

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:e
 -rebase against current tree and solve merge confilcts
 -Change log message

 src/erec.c      | 2 +-
 src/evaluate.c  | 4 ++--
 src/rule.c      | 6 +++---
 src/statement.c | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/src/erec.c b/src/erec.c
index 76fdeb8..80806ff 100644
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
index 193ea1c..618e188 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -32,7 +32,7 @@
 
 static int expr_evaluate(struct eval_ctx *ctx, struct expr **expr);
 
-static const char *byteorder_names[] = {
+static const char * const byteorder_names[] = {
 	[BYTEORDER_INVALID]		= "invalid",
 	[BYTEORDER_HOST_ENDIAN]		= "host endian",
 	[BYTEORDER_BIG_ENDIAN]		= "big endian",
@@ -3423,7 +3423,7 @@ static int cmd_evaluate_export(struct eval_ctx *ctx, struct cmd *cmd)
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


