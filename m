X-GM-THRID: 6402617093082054656
X-Received: by 10.159.37.143 with SMTP id 15mr4588436uaf.15.1490725458664;
        Tue, 28 Mar 2017 11:24:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls4779599ioe.23.gmail; Tue, 28
 Mar 2017 11:24:17 -0700 (PDT)
X-Received: by 10.99.97.85 with SMTP id v82mr9999414pgb.11.1490725457752;
        Tue, 28 Mar 2017 11:24:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si814851pfa.6.2017.03.28.11.24.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 11:24:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so23139056pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 11:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2xoVzBJk6C2IIA5d7wOxbjQlpaAYuzXRHBs8zhtht6I=;
        b=eufDDr46Yz8RGpU0pjgpWv/vopN1nleGHq16OREpO/fuSCVH+/EHBvHqcU0ec7iFrq
         +1GxnPzh9KxLwt7ds1q9HM/hk8rqOetACLiKD7C/JOCpLTTIMZa+8NC7jgg14axvaXMD
         XwtyjFoOoQql/65eqab4PRPTr7rT2wlXTIpRT+cqyDUdF7rOHuJ1NZeScUSIQhGRijFi
         KaDHsTmU5Oqvc9DRiZfWwZNu6BXIhISkrY1/p3xVdO6nl6j/7jMe3I2monc+PXSCiWKF
         PR8L1FjXAC/ZYTlgZOjdPhNhkBrOTs78azC4hThkKyxVDeUI+zGm5qNImKrESJCib1zR
         wHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2xoVzBJk6C2IIA5d7wOxbjQlpaAYuzXRHBs8zhtht6I=;
        b=l00RVnaqCvxq1+xOuT+BEMNCgtxaccnTLi2kjSIeR6DYzQESPXOXKXJpftDA/R4W2F
         q5xUCNGczORbJgpWmbPI596wT0qA6sz5X25yk5c8hrrrXyK7vnIairnRc+c8DcOge/fo
         XhCo4buzZG26b5jUT6PE4RJb1tKJwRxnUBuRS+W947Zj69MttgOALHSs7AhpHybXZd8L
         PGhMrTVQyKC8iaxzI450C4HBKTtah+NzWu61yDeeA/OYrXMARw8u6H3fOXkM5gl0gZDV
         yPchrARp/QY/wLGur6bwNPClD17y5xDJZR5q+r4c9PmKz2N14K+ZVpMcnwKvoQsbzvyu
         +E2A==
X-Gm-Message-State: AFeK/H0I2J8yUDDitFHY8zbzfaGXV9Rm+c5lUEoijeCqn4fTn0lEDUGEiuIeI5MpAKpOfA==
X-Received: by 10.99.176.5 with SMTP id h5mr1533084pgf.179.1490725457417;
        Tue, 28 Mar 2017 11:24:17 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v143sm8723488pgb.57.2017.03.28.11.24.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 11:24:16 -0700 (PDT)
Date: Tue, 28 Mar 2017 23:54:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: pablo@netfilter.org
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] net: netfilter: Remove typedef from "typedef struct
 bitstr_t".
Message-ID: <20170328182413.GA14102@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

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


