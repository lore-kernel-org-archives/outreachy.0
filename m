X-GM-THRID: 6401412042878615552
X-Received: by 10.13.204.68 with SMTP id o65mr4396140ywd.128.1490444891818;
        Sat, 25 Mar 2017 05:28:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls2852264ioe.3.gmail; Sat, 25 Mar
 2017 05:28:10 -0700 (PDT)
X-Received: by 10.99.185.66 with SMTP id v2mr4584397pgo.94.1490444890762;
        Sat, 25 Mar 2017 05:28:10 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si1063413pfx.8.2017.03.25.05.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 05:28:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o123so13454pga.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 05:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Xo8HXhwxDc3KPp0H6YR2jzDBklQC7ObSJuehETxsHMs=;
        b=oDdqk5DB4Wl99aNND6sOgk81hQy7BvBSbwzNs86Z2jIPZggjQUvEnKsy5/IrN5cKmZ
         u4IovnheOlCbQ10Iw6GkXe7Y6aU/s/lBSJMKD5lsS4DaxZnAqzg20j3VPrCSFP22CD5V
         VNfER7Juzh8Mb+rNJICtYZZYq8+JJMC7cbVBeMHYRUOF5wgumcH9xQTZPKFb1nforRyY
         KDqcKhsAaYI6jeyPOlab5VsmImtBmP7qFJYVzn+0+ewQuAjLh69cQjeR+qpEju3TwVxl
         yhOvVh+0g7wGjbYAhL7jnIcPB7+54uvhxzioLzZJrosL/UnQMRWuZv3Pab9BA1kNjma+
         kSrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Xo8HXhwxDc3KPp0H6YR2jzDBklQC7ObSJuehETxsHMs=;
        b=cBDVAvo1h5gilZmP19j+bhgNHs62K+SJW0nxCH0a7EFaudgc/hJpQaGIPbMGUsG4Kk
         SEo5q6aAPKGuLVp4VwpuJmX0WCxcTX2PNvzfRifJrnTrugrsf0VWJ3d5ErqLNOH8R9Sb
         4CmT/bJdqVePUzs6e1TWS5oXZGYSwuyyMl1VPhOaW6boPZq1RmOVbFukCMpJlB6b9SdH
         lhemRDEVxU2tk2KU6TIDRqT2SIZVtWfIZ1yzvA0BZGinLHqstrVNoRFfsEAjoQ9a8G3G
         T0gDNGWXNQiaAjOxD8b/7CSIfStEaS3FQJePCuzkW/cEkrwedvaTLdKXPLEY2a8gGR1V
         rpSQ==
X-Gm-Message-State: AFeK/H3Rifb6tShhlDQHMV2pPt8A6poAE953Ybj1gbOVmdVXHYYRk3RDxnqZntXdkPey1A==
X-Received: by 10.98.55.66 with SMTP id e63mr15328715pfa.100.1490444890455;
        Sat, 25 Mar 2017 05:28:10 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r17sm10424178pfa.13.2017.03.25.05.28.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 05:28:08 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: kadlec@blackhole.kfki.hu
Cc: pablo@netfilter.org,
	davem@davemloft.net,
	outreachy-kernel@googlegroups.com,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	gregkh@linuxfoundation.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/2] net: netfilter: Remove typedef from "typedef struct field_t"
Date: Sat, 25 Mar 2017 17:57:55 +0530
Message-Id: <20170325122756.8743-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170325122756.8743-1-arushisinghal19971997@gmail.com>
References: <20170325122756.8743-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from struct and renames it from "typedef struct
field_t" to "struct field" as per kernel coding standards."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/nf_conntrack_h323_asn1.c | 68 +++++++++++++++++-----------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/net/netfilter/nf_conntrack_h323_asn1.c b/net/netfilter/nf_conntrack_h323_asn1.c
index 89b2e46925c4..fb8cf238a76f 100644
--- a/net/netfilter/nf_conntrack_h323_asn1.c
+++ b/net/netfilter/nf_conntrack_h323_asn1.c
@@ -77,7 +77,7 @@
 
 
 /* ASN.1 Field Structure */
-typedef struct field_t {
+struct field {
 #if H323_TRACE
 	char *name;
 #endif
@@ -87,8 +87,8 @@ typedef struct field_t {
 	unsigned char ub;
 	unsigned short attr;
 	unsigned short offset;
-	const struct field_t *fields;
-} field_t;
+	const struct field *fields;
+};
 
 /* Bit Stream */
 typedef struct {
@@ -111,21 +111,21 @@ static unsigned int get_bitmap(bitstr_t *bs, unsigned int b);
 static unsigned int get_uint(bitstr_t *bs, int b);
 
 /* Decoder Functions */
-static int decode_nul(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_bool(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_oid(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_int(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_enum(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_bitstr(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_numstr(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_octstr(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_bmpstr(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_seq(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_seqof(bitstr_t *bs, const struct field_t *f, char *base, int level);
-static int decode_choice(bitstr_t *bs, const struct field_t *f, char *base, int level);
+static int decode_nul(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_bool(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_oid(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_int(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_enum(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_bitstr(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_numstr(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_octstr(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_bmpstr(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_seq(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_seqof(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_choice(bitstr_t *bs, const struct field *f, char *base, int level);
 
 /* Decoder Functions Vector */
-typedef int (*decoder_t)(bitstr_t *, const struct field_t *, char *, int);
+typedef int (*decoder_t)(bitstr_t *, const struct field *, char *, int);
 static const decoder_t Decoders[] = {
 	decode_nul,
 	decode_bool,
@@ -264,7 +264,7 @@ static unsigned int get_uint(bitstr_t *bs, int b)
 }
 
 /****************************************************************************/
-static int decode_nul(bitstr_t *bs, const struct field_t *f,
+static int decode_nul(bitstr_t *bs, const struct field *f,
                       char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -273,7 +273,7 @@ static int decode_nul(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bool(bitstr_t *bs, const struct field_t *f,
+static int decode_bool(bitstr_t *bs, const struct field *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -285,7 +285,7 @@ static int decode_bool(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_oid(bitstr_t *bs, const struct field_t *f,
+static int decode_oid(bitstr_t *bs, const struct field *f,
                       char *base, int level)
 {
 	int len;
@@ -302,7 +302,7 @@ static int decode_oid(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_int(bitstr_t *bs, const struct field_t *f,
+static int decode_int(bitstr_t *bs, const struct field *f,
                       char *base, int level)
 {
 	unsigned int len;
@@ -346,7 +346,7 @@ static int decode_int(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_enum(bitstr_t *bs, const struct field_t *f,
+static int decode_enum(bitstr_t *bs, const struct field *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -362,7 +362,7 @@ static int decode_enum(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bitstr(bitstr_t *bs, const struct field_t *f,
+static int decode_bitstr(bitstr_t *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -396,7 +396,7 @@ static int decode_bitstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_numstr(bitstr_t *bs, const struct field_t *f,
+static int decode_numstr(bitstr_t *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -414,7 +414,7 @@ static int decode_numstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_octstr(bitstr_t *bs, const struct field_t *f,
+static int decode_octstr(bitstr_t *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -463,7 +463,7 @@ static int decode_octstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bmpstr(bitstr_t *bs, const struct field_t *f,
+static int decode_bmpstr(bitstr_t *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -489,12 +489,12 @@ static int decode_bmpstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_seq(bitstr_t *bs, const struct field_t *f,
+static int decode_seq(bitstr_t *bs, const struct field *f,
                       char *base, int level)
 {
 	unsigned int ext, bmp, i, opt, len = 0, bmp2, bmp2_len;
 	int err;
-	const struct field_t *son;
+	const struct field *son;
 	unsigned char *beg = NULL;
 
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -606,12 +606,12 @@ static int decode_seq(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_seqof(bitstr_t *bs, const struct field_t *f,
+static int decode_seqof(bitstr_t *bs, const struct field *f,
                         char *base, int level)
 {
 	unsigned int count, effective_count = 0, i, len = 0;
 	int err;
-	const struct field_t *son;
+	const struct field *son;
 	unsigned char *beg = NULL;
 
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -696,12 +696,12 @@ static int decode_seqof(bitstr_t *bs, const struct field_t *f,
 
 
 /****************************************************************************/
-static int decode_choice(bitstr_t *bs, const struct field_t *f,
+static int decode_choice(bitstr_t *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int type, ext, len = 0;
 	int err;
-	const struct field_t *son;
+	const struct field *son;
 	unsigned char *beg = NULL;
 
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -768,7 +768,7 @@ static int decode_choice(bitstr_t *bs, const struct field_t *f,
 /****************************************************************************/
 int DecodeRasMessage(unsigned char *buf, size_t sz, RasMessage *ras)
 {
-	static const struct field_t ras_message = {
+	static const struct field ras_message = {
 		FNAME("RasMessage") CHOICE, 5, 24, 32, DECODE | EXT,
 		0, _RasMessage
 	};
@@ -785,7 +785,7 @@ int DecodeRasMessage(unsigned char *buf, size_t sz, RasMessage *ras)
 static int DecodeH323_UserInformation(unsigned char *buf, unsigned char *beg,
 				      size_t sz, H323_UserInformation *uuie)
 {
-	static const struct field_t h323_userinformation = {
+	static const struct field h323_userinformation = {
 		FNAME("H323-UserInformation") SEQ, 1, 2, 2, DECODE | EXT,
 		0, _H323_UserInformation
 	};
@@ -804,7 +804,7 @@ int DecodeMultimediaSystemControlMessage(unsigned char *buf, size_t sz,
 					 MultimediaSystemControlMessage *
 					 mscm)
 {
-	static const struct field_t multimediasystemcontrolmessage = {
+	static const struct field multimediasystemcontrolmessage = {
 		FNAME("MultimediaSystemControlMessage") CHOICE, 2, 4, 4,
 		DECODE | EXT, 0, _MultimediaSystemControlMessage
 	};
-- 
2.11.0


