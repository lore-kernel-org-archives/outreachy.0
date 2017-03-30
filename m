X-GM-THRID: 6403152821831598080
X-Received: by 10.99.222.21 with SMTP id f21mr1717284pgg.23.1490850192330;
        Wed, 29 Mar 2017 22:03:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls3670751itu.13.gmail; Wed, 29 Mar 2017
 22:03:11 -0700 (PDT)
X-Received: by 10.36.203.68 with SMTP id u65mr656257itg.31.1490850191364;
        Wed, 29 Mar 2017 22:03:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id i189si145476pfg.3.2017.03.29.22.03.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 22:03:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 79so7138291pgf.0
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 22:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wCmy+A3XGH9h9it5E7WH9UUdDG2aC2zVUpz/e8CL6zs=;
        b=NCP+16FIVZnVGLthrUOeork7EhgZK6BQvFuXVrtW/K2/9Wq1C9/tvJR538ONfi0+PF
         SdoqW7Z39eFnW6xk+BYPnVeGeSV7Iq3N0xVt9+nvvegTEzHthj9XjUTUBJX8lVi6dZef
         TGFQ0arYUo+ov6LoEY+aO2ME/LlIdcVZk7xpvQmJbnDoSnki4KFW9jxB6wJtNgtgQHb8
         m/qMdYxbSRGHjBZc9qe9sD3Ufj/PyJwrj/hKni7WudG/70jXl3hdz9ZQGbREJHc5O2pH
         fXQ+xDxCZMv3au3Khdaql2x2flP304W69Ya+gWFX9v4NR5V6xCQ6qavfIczX2eZ2GIJV
         /JDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wCmy+A3XGH9h9it5E7WH9UUdDG2aC2zVUpz/e8CL6zs=;
        b=ERrrhD5N5b2bm2J6C6XxEHvTmDVzZ68YqL8SW8QMdDQFPlLrH2kBIJ6/2DewNvwXjd
         ljrOpAOYj0NxeRByallHe1T2Ngj5LQuhBkrK/9Fa4ZXzzhaQEwRowrlQrFWmA140h6hE
         MrNJlT1D6nsEEKoY1iAxuX6ZNokO94cB3O5z/dMllvyQVo4WVQTDKbspWtwKDzokfWlO
         PwrLWY42tboNigBwp35FqtC2QYyi2r8Zxs6rIlD2dXCnS1yJPy1iJh1+03UIqcE7pHDC
         gkbHa0bZzWaNY1HELimxIKOgC6W9GOAxEgOlJLZV6vQB+KbpVAW8FzsxlltVzzsYCgPn
         aTfQ==
X-Gm-Message-State: AFeK/H2S2pD/sIX+4D8bGzcTQGj3EAaMTgOFOW12mYXgpTzN4b1350TItifgGPD90YZ/PA==
X-Received: by 10.84.171.228 with SMTP id l91mr4662893plb.84.1490850191098;
        Wed, 29 Mar 2017 22:03:11 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm1279105pfa.71.2017.03.29.22.03.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 22:03:09 -0700 (PDT)
Date: Thu, 30 Mar 2017 10:33:05 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Add/Remove unnecessary spaces.
Message-ID: <20170330050305.GA25722@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch add or remove unnecessary spaces as reported by
checkpatch.pl.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libebt_802_3.c       | 4 ++--
 extensions/libip6t_dst.c        | 8 ++++----
 extensions/libip6t_hbh.c        | 8 ++++----
 extensions/libip6t_ipv6header.c | 2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/extensions/libebt_802_3.c b/extensions/libebt_802_3.c
index f05d02e..6634e13 100644
--- a/extensions/libebt_802_3.c
+++ b/extensions/libebt_802_3.c
@@ -60,7 +60,7 @@ br802_3_parse(int c, char **argv, int invert, unsigned int *flags,
 		if (i > 255 || *end != '\0')
 			xtables_error(PARAMETER_PROBLEM,
 				      "Problem with specified "
-					"sap hex value, %x",i);
+					"sap hex value, %x", i);
 		info->sap = i; /* one byte, so no byte order worries */
 		info->bitmask |= EBT_802_3_SAP;
 		break;
@@ -71,7 +71,7 @@ br802_3_parse(int c, char **argv, int invert, unsigned int *flags,
 		if (i > 65535 || *end != '\0') {
 			xtables_error(PARAMETER_PROBLEM,
 				      "Problem with the specified "
-					"type hex value, %x",i);
+					"type hex value, %x", i);
 		}
 		info->type = htons(i);
 		info->bitmask |= EBT_802_3_TYPE;
diff --git a/extensions/libip6t_dst.c b/extensions/libip6t_dst.c
index 321e1f4..2d7ea4f 100644
--- a/extensions/libip6t_dst.c
+++ b/extensions/libip6t_dst.c
@@ -36,16 +36,16 @@ parse_opts_num(const char *idstr, const char *typestr)
 
 	id = strtoul(idstr, &ep, 0);
 
-	if ( idstr == ep ) {
+	if (idstr == ep) {
 		xtables_error(PARAMETER_PROBLEM,
 		           "dst: no valid digits in %s `%s'", typestr, idstr);
 	}
-	if ( id == ULONG_MAX  && errno == ERANGE ) {
+	if (id == ULONG_MAX && errno == ERANGE) {
 		xtables_error(PARAMETER_PROBLEM,
 			   "%s `%s' specified too big: would overflow",
 			   typestr, idstr);
 	}
-	if ( *idstr != '\0'  && *ep != '\0' ) {
+	if (*idstr != '\0' && *ep != '\0') {
 		xtables_error(PARAMETER_PROBLEM,
 		           "dst: error parsing %s `%s'", typestr, idstr);
 	}
@@ -129,7 +129,7 @@ print_options(unsigned int optsnr, uint16_t *optsp)
 	unsigned int i;
 
 	printf(" ");
-	for(i = 0; i < optsnr; i++) {
+	for (i = 0; i < optsnr; i++) {
 		printf("%d", (optsp[i] & 0xFF00) >> 8);
 
 		if ((optsp[i] & 0x00FF) != 0x00FF)
diff --git a/extensions/libip6t_hbh.c b/extensions/libip6t_hbh.c
index 8e1b0ac..6386786 100644
--- a/extensions/libip6t_hbh.c
+++ b/extensions/libip6t_hbh.c
@@ -36,18 +36,18 @@ parse_opts_num(const char *idstr, const char *typestr)
 	unsigned long int id;
 	char* ep;
 
-	id =  strtoul(idstr,&ep,0) ;
+	id =  strtoul(idstr, &ep, 0) ;
 
-	if ( idstr == ep ) {
+	if (idstr == ep) {
 		xtables_error(PARAMETER_PROBLEM,
 			   "hbh: no valid digits in %s `%s'", typestr, idstr);
 	}
-	if ( id == ULONG_MAX  && errno == ERANGE ) {
+	if (id == ULONG_MAX  && errno == ERANGE) {
 		xtables_error(PARAMETER_PROBLEM,
 			   "%s `%s' specified too big: would overflow",
 			   typestr, idstr);
 	}	
-	if ( *idstr != '\0'  && *ep != '\0' ) {
+	if (*idstr != '\0'  && *ep != '\0') {
 		xtables_error(PARAMETER_PROBLEM,
 			   "hbh: error parsing %s `%s'", typestr, idstr);
 	}
diff --git a/extensions/libip6t_ipv6header.c b/extensions/libip6t_ipv6header.c
index 887d225..2e0cebb 100644
--- a/extensions/libip6t_ipv6header.c
+++ b/extensions/libip6t_ipv6header.c
@@ -110,7 +110,7 @@ add_proto_to_mask(int proto){
 	unsigned int i=0, flag=0;
 
 	for (i = 0; i < ARRAY_SIZE(chain_flags); ++i)
-			if (proto == chain_flags[i].proto){
+			if (proto == chain_flags[i].proto) {
 				flag = chain_flags[i].flag;
 				break;
 			}
-- 
2.11.0


