X-GM-THRID: 6402509847805296640
X-Received: by 10.107.18.78 with SMTP id a75mr9151068ioj.58.1490700497670;
        Tue, 28 Mar 2017 04:28:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.208 with SMTP id i199ls4645276ioi.35.gmail; Tue, 28 Mar
 2017 04:28:17 -0700 (PDT)
X-Received: by 10.99.126.65 with SMTP id o1mr3837583pgn.24.1490700497179;
        Tue, 28 Mar 2017 04:28:17 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si527448pfb.2.2017.03.28.04.28.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 04:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so20631825pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 04:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PY3wNt7Hsi+zq5GEhXXYptpLQZ0lCwbCH/eKg/dAqDU=;
        b=tgJktArOkc3hYMBflVg7UDSABh0xfVKmImzAB+gUo38DHDxkPAMDEtMU8Fi+jl4fhI
         It3oaRV87vg93P9X6L0zxK5MVFRbKeXXzH8u7uFxMbgF+EKQny+cG0eCosQOerhLonAH
         lAUiVjSJWEOH/zRCrvfKWszYlyoPYsKYA3P2XsTmyDA9URQBiNJrvD4QrukCXkoyQMDv
         mbP1dtYgSIgRWTwikDBD3Xzx210pixYpJPK8AUeP1Jhn1SwzhsdGz9Z8RfN1ffyrC3D0
         KfGNlx1H30jzBZf/b/SN8aQbqEgypdOodBvQYSnK4muU2dseIkKUGZwpmdvJuJIL2vQD
         VJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=PY3wNt7Hsi+zq5GEhXXYptpLQZ0lCwbCH/eKg/dAqDU=;
        b=kYcIh/9sOCfb2Vv5jj/OVWywfp6wFUvzeqbQbwSvGFgdIYKcIOa7QP08Jw/NeZm7bX
         VhEIu3w3AO0iYoS786WRu61bmdGbQDAk5bwbonDjjEIt/ALEn5+8jLnc1cBFJYqaSCW0
         ZDGis0W4E5TYmM0piDPbLicVtUckp4+C1EbYAeULPn9WglMr8XHJ7Flp+PvxClH7gnmc
         azzMolAe1bwza/5pN7vp8y3ykhZgTZGwpowTwW0vyUZj5EwHjyTWRPyJTtpC5f3aoU3H
         rmfhl7E7mzHAmW9/idRKqXHMWkkvhNVg+Z3TVhhIcbiA9DtufrbbNIZwEwObSraCZStx
         BinA==
X-Gm-Message-State: AFeK/H2O79SnWUESxNV89+PFJ9oawXSzNA7T2iNoE4sLfOJO2PDRc0Ugo6XPFSduFE1nVw==
X-Received: by 10.98.148.25 with SMTP id m25mr30686029pfe.45.1490700496943;
        Tue, 28 Mar 2017 04:28:16 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.168])
        by smtp.googlemail.com with ESMTPSA id z21sm6921543pgc.53.2017.03.28.04.28.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 04:28:16 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.org,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/3] ebtables: extensions: Constify option struct
Date: Tue, 28 Mar 2017 16:57:51 +0530
Message-Id: <fe1daf441eafb6393160a7523cc8962cd68d310d.1490699407.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>
In-Reply-To: <cover.1490699407.git.gs051095@gmail.com>
References: <cover.1490699407.git.gs051095@gmail.com>

The struct  of the type option is only used to initialise a field
inside the ebt_u_match struct and is not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/ebt_802_3.c   | 2 +-
 extensions/ebt_among.c   | 2 +-
 extensions/ebt_arp.c     | 2 +-
 extensions/ebt_ip.c      | 2 +-
 extensions/ebt_limit.c   | 2 +-
 extensions/ebt_mark_m.c  | 2 +-
 extensions/ebt_pkttype.c | 2 +-
 extensions/ebt_stp.c     | 2 +-
 extensions/ebt_vlan.c    | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/extensions/ebt_802_3.c b/extensions/ebt_802_3.c
index dd22eb2..4584849 100644
--- a/extensions/ebt_802_3.c
+++ b/extensions/ebt_802_3.c
@@ -17,7 +17,7 @@
 #define _802_3_SAP '1'
 #define _802_3_TYPE '2'
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "802_3-sap"   , required_argument, 0, _802_3_SAP },
 	{ "802_3-type"  , required_argument, 0, _802_3_TYPE },
diff --git a/extensions/ebt_among.c b/extensions/ebt_among.c
index f97d07e..e4fc5ac 100644
--- a/extensions/ebt_among.c
+++ b/extensions/ebt_among.c
@@ -26,7 +26,7 @@
 #define AMONG_DST_F '3'
 #define AMONG_SRC_F '4'
 
-static struct option opts[] = {
+static const struct option opts[] = {
 	{"among-dst", required_argument, 0, AMONG_DST},
 	{"among-src", required_argument, 0, AMONG_SRC},
 	{"among-dst-file", required_argument, 0, AMONG_DST_F},
diff --git a/extensions/ebt_arp.c b/extensions/ebt_arp.c
index 64d337d..b281955 100644
--- a/extensions/ebt_arp.c
+++ b/extensions/ebt_arp.c
@@ -24,7 +24,7 @@
 #define ARP_MAC_S  '6'
 #define ARP_MAC_D  '7'
 #define ARP_GRAT   '8'
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "arp-opcode"    , required_argument, 0, ARP_OPCODE },
 	{ "arp-op"        , required_argument, 0, ARP_OPCODE },
diff --git a/extensions/ebt_ip.c b/extensions/ebt_ip.c
index 4e0b7f0..59559fe 100644
--- a/extensions/ebt_ip.c
+++ b/extensions/ebt_ip.c
@@ -25,7 +25,7 @@
 #define IP_SPORT  '5'
 #define IP_DPORT  '6'
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "ip-source"           , required_argument, 0, IP_SOURCE },
 	{ "ip-src"              , required_argument, 0, IP_SOURCE },
diff --git a/extensions/ebt_limit.c b/extensions/ebt_limit.c
index d189a09..2cbf4de 100644
--- a/extensions/ebt_limit.c
+++ b/extensions/ebt_limit.c
@@ -41,7 +41,7 @@ static int string_to_number(const char *s, unsigned int min, unsigned int max,
 #define ARG_LIMIT		'1'
 #define ARG_LIMIT_BURST		'2'
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "limit",		required_argument, 0, ARG_LIMIT },
 	{ "limit-burst",	required_argument, 0, ARG_LIMIT_BURST },
diff --git a/extensions/ebt_mark_m.c b/extensions/ebt_mark_m.c
index 2a259b0..7561f05 100644
--- a/extensions/ebt_mark_m.c
+++ b/extensions/ebt_mark_m.c
@@ -15,7 +15,7 @@
 
 #define MARK '1'
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "mark", required_argument, 0, MARK },
 	{ 0 }
diff --git a/extensions/ebt_pkttype.c b/extensions/ebt_pkttype.c
index 5b5cb03..486c85c 100644
--- a/extensions/ebt_pkttype.c
+++ b/extensions/ebt_pkttype.c
@@ -27,7 +27,7 @@ char *classes[] =
 	"\0"
 };
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "pkttype-type"        , required_argument, 0, '1' },
 	{ 0 }
diff --git a/extensions/ebt_stp.c b/extensions/ebt_stp.c
index 2b108a7..5c5fc33 100644
--- a/extensions/ebt_stp.c
+++ b/extensions/ebt_stp.c
@@ -27,7 +27,7 @@
 #define STP_FWDD	'l'
 #define STP_NUMOPS 12
 
-static struct option opts[] =
+static const struct option opts[] =
 {
 	{ "stp-type"         , required_argument, 0, STP_TYPE},
 	{ "stp-flags"        , required_argument, 0, STP_FLAGS},
diff --git a/extensions/ebt_vlan.c b/extensions/ebt_vlan.c
index 6714c82..0a37067 100644
--- a/extensions/ebt_vlan.c
+++ b/extensions/ebt_vlan.c
@@ -25,7 +25,7 @@
 #define VLAN_PRIO  '2'
 #define VLAN_ENCAP '3'
 
-static struct option opts[] = {
+static const struct option opts[] = {
 	{"vlan-id"   , required_argument, NULL, VLAN_ID},
 	{"vlan-prio" , required_argument, NULL, VLAN_PRIO},
 	{"vlan-encap", required_argument, NULL, VLAN_ENCAP},
-- 
2.7.4


