X-GM-THRID: 6403357585290821632
X-Received: by 10.99.232.83 with SMTP id a19mr402862pgk.147.1490897868317;
        Thu, 30 Mar 2017 11:17:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls700974ote.1.gmail; Thu, 30 Mar 2017
 11:17:47 -0700 (PDT)
X-Received: by 10.13.211.129 with SMTP id v123mr433668ywd.102.1490897867879;
        Thu, 30 Mar 2017 11:17:47 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z191si355819itc.0.2017.03.30.11.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so11700704pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vx0E/acnxysCm7NkE0W3hYDqHQM7wDv1xikJ2Ww0gls=;
        b=eyZnbzvXPNylcO3dV38+4hg78wSZ1gc2F1VAKqOLdM4WXbuKiVDyIT1xCeRreAE8s0
         SHfJpAsf+Ae/jtTajUjgiVzJ4AnR9PWVvhvSLqUioshxF5XpukFpuq5gHzjpYsgAeCrF
         yGHSwT0CEetIeRbGE2ow7lZuo9sHzvm7QSrsr2wViwFFey+Z9R98Nr5UipjFLd944rFQ
         Ya+sThcUDRgUk0nvr73q7MSy6iG2QsmleJGuGGB9RimP+dvCLmIN+Uw6W474uvRE61Ec
         BYecOijOuabSgF7HvtksahponB3kMe0vYB3ItX1Y6kj5hKX4bOX5eN4NfbH3qiX1ooWd
         bYsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vx0E/acnxysCm7NkE0W3hYDqHQM7wDv1xikJ2Ww0gls=;
        b=RC2vofzThzoqV1lpQTKrw+o6CZ9Sd6jcnWA0ImAL0j7iZyq1rXUO/jdP1HleCOiW5o
         zdBqG+oHSoRxwexZWKPhwxqFVh5/scV5hobTl2hzI4Lc0y/WijP9qCiZF8ywfFe4u6iI
         RygpPCEmla/0IswYSiERddPtqDOFHN9bAS5dTx8AcS3EXzu10g4eikVccrcD+lAm5wgp
         obaCGjJX2pDOvJ6sNLe4MAcG8BAd9L0LWK/0g0SazLLohyklgDCRtA/80f5MBk6gYb38
         woBrjuzLCd1w1aggSz/i7yg0ZhL1eTklkeJzpTCWaL5QwXssbBuqF0UpKd0qKUQ9XLLg
         DNdA==
X-Gm-Message-State: AFeK/H3YLv/E9fhjoTUTISDEgWDYnjspLi3pIWJpoQMZJdIbljL9M3Ckr7MzvYYmdp2M6A==
X-Received: by 10.98.135.74 with SMTP id i71mr872126pfe.86.1490897866999;
        Thu, 30 Mar 2017 11:17:46 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n85sm5834708pfi.101.2017.03.30.11.17.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 11:17:45 -0700 (PDT)
Date: Thu, 30 Mar 2017 23:47:41 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Remove spaces.
Message-ID: <20170330181741.GA3838@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Solve the checkpatch issue:
space prohibited before close parenthesis ')'
space prohibited after open parenthesis '('

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libip6t_ah.c  | 4 ++--
 extensions/libip6t_dst.c | 6 +++---
 extensions/libip6t_hbh.c | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/extensions/libip6t_ah.c b/extensions/libip6t_ah.c
index 38c71f2..fc3e524 100644
--- a/extensions/libip6t_ah.c
+++ b/extensions/libip6t_ah.c
@@ -118,13 +118,13 @@ static void ah_save(const void *ip, const struct xt_entry_match *match)
 			       ahinfo->spis[0]);
 	}
 
-	if (ahinfo->hdrlen != 0 || (ahinfo->invflags & IP6T_AH_INV_LEN) ) {
+	if (ahinfo->hdrlen != 0 || (ahinfo->invflags & IP6T_AH_INV_LEN)) {
 		printf("%s --ahlen %u",
 			(ahinfo->invflags & IP6T_AH_INV_LEN) ? " !" : "",
 			ahinfo->hdrlen);
 	}
 
-	if (ahinfo->hdrres != 0 )
+	if (ahinfo->hdrres != 0)
 		printf(" --ahres");
 }
 
diff --git a/extensions/libip6t_dst.c b/extensions/libip6t_dst.c
index 321e1f4..83358ab 100644
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
+	if (id == ULONG_MAX  && errno == ERANGE) {
 		xtables_error(PARAMETER_PROBLEM,
 			   "%s `%s' specified too big: would overflow",
 			   typestr, idstr);
 	}
-	if ( *idstr != '\0'  && *ep != '\0' ) {
+	if (*idstr != '\0'  && *ep != '\0') {
 		xtables_error(PARAMETER_PROBLEM,
 		           "dst: error parsing %s `%s'", typestr, idstr);
 	}
diff --git a/extensions/libip6t_hbh.c b/extensions/libip6t_hbh.c
index 8e1b0ac..469fecf 100644
--- a/extensions/libip6t_hbh.c
+++ b/extensions/libip6t_hbh.c
@@ -38,16 +38,16 @@ parse_opts_num(const char *idstr, const char *typestr)
 
 	id =  strtoul(idstr,&ep,0) ;
 
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
-- 
2.11.0


