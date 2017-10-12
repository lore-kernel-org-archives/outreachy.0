X-GM-THRID: 6476162089731751936
X-Received: by 10.55.79.212 with SMTP id d203mr3362822qkb.10.1507848987806;
        Thu, 12 Oct 2017 15:56:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.39.11 with SMTP id n11ls2497708qkn.13.gmail; Thu, 12 Oct
 2017 15:56:27 -0700 (PDT)
X-Received: by 10.200.50.55 with SMTP id x52mr3193140qta.62.1507848987352;
        Thu, 12 Oct 2017 15:56:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507848987; cv=none;
        d=google.com; s=arc-20160816;
        b=XSb+jja7yal95BiC2M9h0KnAdCZstJXcKZluieVqvnWubOSEAue9s9d6jsmpJNlJ7o
         HXa2aMZepEyY1CJmfvDaR+8SMQaCZ4g5rEQj6NRI+aEs0IWF2R86HOASFhNufPJx4MAt
         MP4ve2s9xxYG6WOQmNvwa1ZUKc+elhTief1BHYKnTATFW+7UGWmGLZxBfIWulK3qgnx1
         VXj1ZmPHZ14moN5iQ3DKu50Flwsjy107WOC6+CMJ47mq/yOMjH6o2YHPV8ar08gu8GVW
         +pm+IyvYgGvmM5Lq6ilUNxVjMmcSphslDniAC0cC2mv3rUpWIGEDd2TwC2RCOuX76JYL
         H9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=S2VDjaUThV2iI/kid32smowM1mtCUsOLNkt1i+5ZnnA=;
        b=b/IQIQQ3spilIX5U/ru+4goJ7XublaIGP3XMRoKPowoP6UGshYyBFzZT9/rxxX+gnP
         2Q6sMt3Ut081lLLik/B46YYORgzom6tXAwQh7kCuEaEs4eGmq8fJJWjQdfT8cWOUVy3E
         KnZJG/HCe/6t47MWVd2JsJfd6XL+PTeJUTUkDornkMyY8vD4/kpK9xuTie2g7jWUrMS5
         jRNw4thz0ePEKVjRuEl6PFr2Ayktfc2QV1EO7v8yBKXxl3WfZjGp014valT3ZztfYb/l
         ycSy+7mm8R3sfpCZUBqevW6f1oxvSxsUn9melQS0oW2fnBUDpUr2a4lvx6/FcKNaj0lI
         R3GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aqCnaMhf;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id v50si320099qta.0.2017.10.12.15.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aqCnaMhf;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id x7so7038643pfa.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 15:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=S2VDjaUThV2iI/kid32smowM1mtCUsOLNkt1i+5ZnnA=;
        b=aqCnaMhfNIJqPSy4HJQloWK2vGEvC5IZQa3wysXpyEN8ewSa2azf1yu4TPb3Lo+iYG
         bLfHB39PXkeOrWzd+VqWlHrUtGJuhA7LgwEMaNLM2YqjXqOoLHdl3FuWYwtMhVVGDL6u
         fWsasakWDJlw8J1NwPfYKfwL80MIwP3cMtQE2fgZ0MmjrrI5a86IbzkoL3wECgQfybe+
         HRDB3FUZG7CdgDR8vD68lKIKvuisYyNgMfmn21aPzMijGMC3IftmAR0Mo3bt+CDiGiWc
         Iakr0Q2GHkKzvMMVOYFpkZCkdQeQAtFPk5BmRVmZEkNKoepl42KZFJ0FdnZj+BWyfXhY
         PkeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=S2VDjaUThV2iI/kid32smowM1mtCUsOLNkt1i+5ZnnA=;
        b=STGjFkCosRr1MVpCuDfplVDhOUIbe/CX6kgReyPV2ww/7J0Cl7KNXcex50TZ87UdxX
         CtRrhbvSgIE+K1EiArdnvH0wM7HJYUqJTkQWIaCS4u1t4+57RvQng0ltLLm2YfDzq1lb
         e/oo48NMzPrwwRgqyjAMZrK+io3gyO+X4q5G5BWGAY0j8DLQZa1KlRBkaurUbrRs62ns
         h8tCx1HqmVJaxrY44kl+Zs4a9bu72sDSmwKa9ZJ9wUNIsUFewwv2i3YPV0BH6+h6Hz3Q
         fWDwkxB4ae5gnVCDzKyKh95U5QLbEzpgrTBQ2ggFff+iORh4k1uy0C88/KcwzZG2lSUQ
         i9Yg==
X-Gm-Message-State: AMCzsaXGHns7W8WHRXY6gXWvdTKzdXCEcC3+wxGrhtTMiW21+xIumJjm
	NFOI6Iofb6G0WW1ZpBI0ko8=
X-Google-Smtp-Source: AOwi7QCYUhXhJ4HaZn763xFpZ8EmLl1yVAXYbURTsnrdP+rsJwm7ewv63Cauuxsar6ezxn2yzD6oWw==
X-Received: by 10.84.229.1 with SMTP id b1mr1404016plk.405.1507848986942;
        Thu, 12 Oct 2017 15:56:26 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id s4sm25935465pgr.32.2017.10.12.15.56.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:56:26 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org,
	kadlec@blackhole.kfki.hu,
	fw@strlen.de,
	davem@davemloft.net
Cc: netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] netfilter: nf_conntrack_h323: Remove typedef struct
Date: Fri, 13 Oct 2017 04:23:57 +0530
Message-Id: <20171012225357.5144-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Remove typedef from struct as linux-kernel coding style tends to
avoid using typedefs.
Done using following coccinelle semantic patch

@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t" or T[-2:] == "_T":
        coccinelle.T2 = T[:-2];
else:
        coccinelle.T2 = T;

print T, coccinelle.T2

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
-T
+struct T2

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 net/netfilter/nf_conntrack_h323_asn1.c | 80 +++++++++++++++++-----------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/net/netfilter/nf_conntrack_h323_asn1.c b/net/netfilter/nf_conntrack_h323_asn1.c
index 89b2e46925c4..7831aa1effc9 100644
--- a/net/netfilter/nf_conntrack_h323_asn1.c
+++ b/net/netfilter/nf_conntrack_h323_asn1.c
@@ -91,41 +91,41 @@ typedef struct field_t {
 } field_t;
 
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
+static int decode_nul(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_bool(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_oid(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_int(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_enum(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_bitstr(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_numstr(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_octstr(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_bmpstr(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_seq(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_seqof(struct bitstr *bs, const struct field_t *f, char *base, int level);
+static int decode_choice(struct bitstr *bs, const struct field_t *f, char *base, int level);
 
 /* Decoder Functions Vector */
-typedef int (*decoder_t)(bitstr_t *, const struct field_t *, char *, int);
+typedef int (*decoder_t)(struct bitstr *, const struct field_t *, char *, int);
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
-static int decode_nul(bitstr_t *bs, const struct field_t *f,
+static int decode_nul(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -273,7 +273,7 @@ static int decode_nul(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bool(bitstr_t *bs, const struct field_t *f,
+static int decode_bool(struct bitstr *bs, const struct field_t *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -285,7 +285,7 @@ static int decode_bool(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_oid(bitstr_t *bs, const struct field_t *f,
+static int decode_oid(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
 {
 	int len;
@@ -302,7 +302,7 @@ static int decode_oid(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_int(bitstr_t *bs, const struct field_t *f,
+static int decode_int(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
 {
 	unsigned int len;
@@ -346,7 +346,7 @@ static int decode_int(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_enum(bitstr_t *bs, const struct field_t *f,
+static int decode_enum(struct bitstr *bs, const struct field_t *f,
                        char *base, int level)
 {
 	PRINT("%*.s%s\n", level * TAB_SIZE, " ", f->name);
@@ -362,7 +362,7 @@ static int decode_enum(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bitstr(bitstr_t *bs, const struct field_t *f,
+static int decode_bitstr(struct bitstr *bs, const struct field_t *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -396,7 +396,7 @@ static int decode_bitstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_numstr(bitstr_t *bs, const struct field_t *f,
+static int decode_numstr(struct bitstr *bs, const struct field_t *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -414,7 +414,7 @@ static int decode_numstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_octstr(bitstr_t *bs, const struct field_t *f,
+static int decode_octstr(struct bitstr *bs, const struct field_t *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -463,7 +463,7 @@ static int decode_octstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_bmpstr(bitstr_t *bs, const struct field_t *f,
+static int decode_bmpstr(struct bitstr *bs, const struct field_t *f,
                          char *base, int level)
 {
 	unsigned int len;
@@ -489,7 +489,7 @@ static int decode_bmpstr(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_seq(bitstr_t *bs, const struct field_t *f,
+static int decode_seq(struct bitstr *bs, const struct field_t *f,
                       char *base, int level)
 {
 	unsigned int ext, bmp, i, opt, len = 0, bmp2, bmp2_len;
@@ -606,7 +606,7 @@ static int decode_seq(bitstr_t *bs, const struct field_t *f,
 }
 
 /****************************************************************************/
-static int decode_seqof(bitstr_t *bs, const struct field_t *f,
+static int decode_seqof(struct bitstr *bs, const struct field_t *f,
                         char *base, int level)
 {
 	unsigned int count, effective_count = 0, i, len = 0;
@@ -696,7 +696,7 @@ static int decode_seqof(bitstr_t *bs, const struct field_t *f,
 
 
 /****************************************************************************/
-static int decode_choice(bitstr_t *bs, const struct field_t *f,
+static int decode_choice(struct bitstr *bs, const struct field_t *f,
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


