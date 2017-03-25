X-GM-THRID: 6401412042878615552
X-Received: by 10.107.139.139 with SMTP id n133mr4346654iod.100.1490444895886;
        Sat, 25 Mar 2017 05:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls1379968otd.0.gmail; Sat, 25 Mar
 2017 05:28:15 -0700 (PDT)
X-Received: by 10.200.35.250 with SMTP id r55mr3938684qtr.39.1490444895505;
        Sat, 25 Mar 2017 05:28:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id r66si1035104pfb.7.2017.03.25.05.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 05:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so2774227pgf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 05:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2xoVzBJk6C2IIA5d7wOxbjQlpaAYuzXRHBs8zhtht6I=;
        b=gj2fNhe6IWmp6JcKzEQbPotANandAG3AP8Yjf0zmJfdyphw5OchhoK2Ez4MTWhLE3+
         L51f+vq0zCG+cLyks+PBGaHUAkmVgorP2DHLbEZCKHNKgXPNfhVf9C39lLIc9cQPKo+K
         CHENqNK5H+uGiIzwpNmFMxatu/30nT01QJlopn77wgqciw6kqy2vzgyGIKYBKElDFa2M
         VLz3XBpHeMo7k7qiR+vPlD5H4c5e69tBbXS6CMlBBlgZI0hyjC1VTS5RvbQYqDcAvimr
         mLy8CWPIae6WNO3kohIiaKZ3l5heieoicEqFK7u8pD0KwaBtGXZAYG1SIuY6+1mHq73A
         mQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2xoVzBJk6C2IIA5d7wOxbjQlpaAYuzXRHBs8zhtht6I=;
        b=RlMhe5dasypFsnf9cSL+JJGTGvHGJ0d7RVc5bPO6Xn5NvhFFTbL1zMxxYR1YnW3JRV
         jxZ/Nq5x8EiDCZP2YTkJpgsgRT10c/htoEeaRmfHKztk3N9pHaoEgEdGh0AWjaqxOSSh
         x6UGQY8kdCzNOCjhSUrTcQ5aODCsrumLgOtin/9da96ACN26KnderpnEdUNM0K+8AmXw
         vaKGVDcBGNU/PfTsANg+1DQoupp6APPEZegvNgwK9tJtkZD4l2QDvN0/5OwuIlM43qYi
         ZVc/slV2bbjaVskTgpxtwijX49b0aTuf1OysuXlG6IFPHz4l3vOzuY5o4zyZrVvGNWVk
         Ifyw==
X-Gm-Message-State: AFeK/H2NVDGmI3kTsL/vZkxnWVQ8yrLBlfZezfXz/Sgu+GrISx4CNZ9OyMdB9EYZyjAUJw==
X-Received: by 10.99.147.68 with SMTP id w4mr14784164pgm.32.1490444895141;
        Sat, 25 Mar 2017 05:28:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v17sm10425874pgc.20.2017.03.25.05.28.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Mar 2017 05:28:14 -0700 (PDT)
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
Subject: [PATCH 2/2] net: netfilter: Remove typedef from "typedef struct bitstr_t"
Date: Sat, 25 Mar 2017 17:57:56 +0530
Message-Id: <20170325122756.8743-3-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170325122756.8743-1-arushisinghal19971997@gmail.com>
References: <20170325122756.8743-1-arushisinghal19971997@gmail.com>

This patch removes typedefs from struct and renames it from "typedef struct
bitstr_t" to "struct bitstr" as per kernel coding standards."

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 net/netfilter/nf_conntrack_h323_asn1.c | 80 +++++++++++++++++-----------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/net/netfilter/nf_conntrack_h323_asn1.c b/net/netfilter/nf_conntrack_h323_asn1.c
index fb8cf238a76f..4502c0d6071d 100644
--- a/net/netfilter/nf_conntrack_h323_asn1.c
+++ b/net/netfilter/nf_conntrack_h323_asn1.c
@@ -91,41 +91,41 @@ struct field {
 };
 
 /* Bit Stream */
-typedef struct {
+struct bitstr {
 	unsigned char *buf;
 	unsigned char *beg;
 	unsigned char *end;
 	unsigned char *cur;
 	unsigned int bit;
-} bitstr_t;
+};
 
 /* Tool Functions */
 #define INC_BIT(bs) if((++(bs)->bit)>7){(bs)->cur++;(bs)->bit=0;}
 #define INC_BITS(bs,b) if(((bs)->bit+=(b))>7){(bs)->cur+=(bs)->bit>>3;(bs)->bit&=7;}
 #define BYTE_ALIGN(bs) if((bs)->bit){(bs)->cur++;(bs)->bit=0;}
 #define CHECK_BOUND(bs,n) if((bs)->cur+(n)>(bs)->end)return(H323_ERROR_BOUND)
-static unsigned int get_len(bitstr_t *bs);
-static unsigned int get_bit(bitstr_t *bs);
-static unsigned int get_bits(bitstr_t *bs, unsigned int b);
-static unsigned int get_bitmap(bitstr_t *bs, unsigned int b);
-static unsigned int get_uint(bitstr_t *bs, int b);
+static unsigned int get_len(struct bitstr *bs);
+static unsigned int get_bit(struct bitstr *bs);
+static unsigned int get_bits(struct bitstr *bs, unsigned int b);
+static unsigned int get_bitmap(struct bitstr *bs, unsigned int b);
+static unsigned int get_uint(struct bitstr *bs, int b);
 
 /* Decoder Functions */
-static int decode_nul(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_bool(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_oid(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_int(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_enum(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_bitstr(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_numstr(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_octstr(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_bmpstr(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_seq(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_seqof(bitstr_t *bs, const struct field *f, char *base, int level);
-static int decode_choice(bitstr_t *bs, const struct field *f, char *base, int level);
+static int decode_nul(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_bool(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_oid(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_int(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_enum(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_bitstr(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_numstr(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_octstr(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_bmpstr(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_seq(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_seqof(struct bitstr *bs, const struct field *f, char *base, int level);
+static int decode_choice(struct bitstr *bs, const struct field *f, char *base, int level);
 
 /* Decoder Functions Vector */
-typedef int (*decoder_t)(bitstr_t *, const struct field *, char *, int);
+typedef int (*decoder_t)(struct bitstr *, const struct field *, char *, int);
 static const decoder_t Decoders[] = {
 	decode_nul,
 	decode_bool,
@@ -150,7 +150,7 @@ static const decoder_t Decoders[] = {
  * Functions
  ****************************************************************************/
 /* Assume bs is aligned && v < 16384 */
-static unsigned int get_len(bitstr_t *bs)
+static unsigned int get_len(struct bitstr *bs)
 {
 	unsigned int v;
 
@@ -166,7 +166,7 @@ static unsigned int get_len(bitstr_t *bs)
 }
 
 /****************************************************************************/
-static unsigned int get_bit(bitstr_t *bs)
+static unsigned int get_bit(struct bitstr *bs)
 {
 	unsigned int b = (*bs->cur) & (0x80 >> bs->bit);
 
@@ -177,7 +177,7 @@ static unsigned int get_bit(bitstr_t *bs)
 
 /****************************************************************************/
 /* Assume b <= 8 */
-static unsigned int get_bits(bitstr_t *bs, unsigned int b)
+static unsigned int get_bits(struct bitstr *bs, unsigned int b)
 {
 	unsigned int v, l;
 
@@ -203,7 +203,7 @@ static unsigned int get_bits(bitstr_t *bs, unsigned int b)
 
 /****************************************************************************/
 /* Assume b <= 32 */
-static unsigned int get_bitmap(bitstr_t *bs, unsigned int b)
+static unsigned int get_bitmap(struct bitstr *bs, unsigned int b)
 {
 	unsigned int v, l, shift, bytes;
 
@@ -242,7 +242,7 @@ static unsigned int get_bitmap(bitstr_t *bs, unsigned int b)
 /****************************************************************************
  * Assume bs is aligned and sizeof(unsigned int) == 4
  ****************************************************************************/
-static unsigned int get_uint(bitstr_t *bs, int b)
+static unsigned int get_uint(struct bitstr *bs, int b)
 {
 	unsigned int v = 0;
 
@@ -264,7 +264,7 @@ static unsigned int get_uint(bitstr_t *bs, int b)
 }
 
 /****************************************************************************/
-static int decode_nul(bitstr_t *bs, const struct field *f,
+static int decode_nul(struct bitstr *bs, const struct field *f,
                       char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -273,7 +273,7 @@ static int decode_nul(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_bool(bitstr_t *bs, const struct field *f,
+static int decode_bool(struct bitstr *bs, const struct field *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -285,7 +285,7 @@ static int decode_bool(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_oid(bitstr_t *bs, const struct field *f,
+static int decode_oid(struct bitstr *bs, const struct field *f,
                       char *base, int level)
 {
 	int len;
@@ -302,7 +302,7 @@ static int decode_oid(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_int(bitstr_t *bs, const struct field *f,
+static int decode_int(struct bitstr *bs, const struct field *f,
                       char *base, int level)
 {
 	unsigned int len;
@@ -346,7 +346,7 @@ static int decode_int(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_enum(bitstr_t *bs, const struct field *f,
+static int decode_enum(struct bitstr *bs, const struct field *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -362,7 +362,7 @@ static int decode_enum(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_bitstr(bitstr_t *bs, const struct field *f,
+static int decode_bitstr(struct bitstr *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -396,7 +396,7 @@ static int decode_bitstr(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_numstr(bitstr_t *bs, const struct field *f,
+static int decode_numstr(struct bitstr *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -414,7 +414,7 @@ static int decode_numstr(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_octstr(bitstr_t *bs, const struct field *f,
+static int decode_octstr(struct bitstr *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -463,7 +463,7 @@ static int decode_octstr(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_bmpstr(bitstr_t *bs, const struct field *f,
+static int decode_bmpstr(struct bitstr *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -489,7 +489,7 @@ static int decode_bmpstr(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_seq(bitstr_t *bs, const struct field *f,
+static int decode_seq(struct bitstr *bs, const struct field *f,
                       char *base, int level)
 {
 	unsigned int ext, bmp, i, opt, len = 0, bmp2, bmp2_len;
@@ -606,7 +606,7 @@ static int decode_seq(bitstr_t *bs, const struct field *f,
 }
 
 /****************************************************************************/
-static int decode_seqof(bitstr_t *bs, const struct field *f,
+static int decode_seqof(struct bitstr *bs, const struct field *f,
                         char *base, int level)
 {
 	unsigned int count, effective_count = 0, i, len = 0;
@@ -696,7 +696,7 @@ static int decode_seqof(bitstr_t *bs, const struct field *f,
 
 
 /****************************************************************************/
-static int decode_choice(bitstr_t *bs, const struct field *f,
+static int decode_choice(struct bitstr *bs, const struct field *f,
                          char *base, int level)
 {
 	unsigned int type, ext, len = 0;
@@ -772,7 +772,7 @@ int DecodeRasMessage(unsigned char *buf, size_t sz, RasMessage *ras)
 		FNAME("RasMessage") CHOICE, 5, 24, 32, DECODE | EXT,
 		0, _RasMessage
 	};
-	bitstr_t bs;
+	struct bitstr bs;
 
 	bs.buf = bs.beg = bs.cur = buf;
 	bs.end = buf + sz;
@@ -789,7 +789,7 @@ static int DecodeH323_UserInformation(unsigned char *buf, unsigned char *beg,
 		FNAME("H323-UserInformation") SEQ, 1, 2, 2, DECODE | EXT,
 		0, _H323_UserInformation
 	};
-	bitstr_t bs;
+	struct bitstr bs;
 
 	bs.buf = buf;
 	bs.beg = bs.cur = beg;
@@ -808,7 +808,7 @@ int DecodeMultimediaSystemControlMessage(unsigned char *buf, size_t sz,
 		FNAME("MultimediaSystemControlMessage") CHOICE, 2, 4, 4,
 		DECODE | EXT, 0, _MultimediaSystemControlMessage
 	};
-	bitstr_t bs;
+	struct bitstr bs;
 
 	bs.buf = bs.beg = bs.cur = buf;
 	bs.end = buf + sz;
-- 
2.11.0


