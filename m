X-GM-THRID: 6403063503831171072
X-Received: by 10.237.63.20 with SMTP id p20mr1158239qtf.3.1490829396856;
        Wed, 29 Mar 2017 16:16:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls19739971otn.25.gmail; Wed, 29 Mar
 2017 16:16:36 -0700 (PDT)
X-Received: by 10.200.45.138 with SMTP id p10mr1159749qta.17.1490829396478;
        Wed, 29 Mar 2017 16:16:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w140si813340itc.0.2017.03.29.16.16.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 16:16:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so5404792pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 16:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m0WDIqDwTp64mNaVbuvp5gBqBYknmSyGuZ+/AFhjmwk=;
        b=H8bEYyorgTPQwVsddIhCYOgBXpocop/lfLgTebsJPKhv4soow6N2T0c5h6LYxQnuUD
         HF/IhC/ixI/RPKdGWVHv4rwJOAnrn1yRE9D/pIeQ6tQVgf2qBqZMUd0QUmaHmmy/PwOS
         VPaviP6jvz0ItYUazjL3xda0Iob3u70vty5jlMIp09cM+s0Zd8yNMuvsN1NAV9Co98Ho
         hLqcyKnTfQLJamhf3nv/Sc59RokhBO1R8+JS7T7ZFOPy5XPwasTafvuIrSGh3NBK1oip
         e2xJn/i5MNsnsk0/njOBhzMphgFtRj29baZOYCUUDGqbMS/+FFvBscdoFDv1qrlQci/S
         jfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m0WDIqDwTp64mNaVbuvp5gBqBYknmSyGuZ+/AFhjmwk=;
        b=FqV00YxIeyazGnY/S47x1Cq5rk4AEWy/QPoq5WggC3WJbmL2sYBM1OObknkqOQMxY3
         CYtD9kDYX6Xrd5RDieWGn7wcv0K7nVDMx1buwXt7zF2H8+Es14JaT3IyDoP6x8Jd6MkY
         ScyXSWuiXEwqe/K+Yw9Ntg/1WNZXHw2FXObPiSfdMBBGcnp7t5M8jk4DGvdmkaom8W0x
         bq9R+qGizKuXTFozrDUHM77sJRW7Ij3FM/jiucwXYedjjDU52/rdGI4Y32BZrn4fU2SL
         BPEBtTKzQtDA4G7Zcm4ajdxZnaBlMKkuVmVvUYusXdty6vrLWPDiKL8di2Mh9BlR9nY4
         tnzg==
X-Gm-Message-State: AFeK/H0RyRQIUcMRUpYdlla7PU+EBNKtSnHqRb6YwiAS+kZLbe47S50QTin9qr8slXzWjg==
X-Received: by 10.98.36.81 with SMTP id r78mr3023617pfj.178.1490829395733;
        Wed, 29 Mar 2017 16:16:35 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u64sm287527pfk.113.2017.03.29.16.16.33
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 16:16:34 -0700 (PDT)
Date: Thu, 30 Mar 2017 04:46:31 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] iptables: extensions: Add space around operators
Message-ID: <20170329231631.GA22081@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around operator and remove trailing whitespaces.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/dscp_helper.c    |  2 +-
 extensions/libarpt_mangle.c |  2 +-
 extensions/libip6t_ah.c     |  2 +-
 extensions/libip6t_dst.c    |  6 +++---
 extensions/libip6t_frag.c   |  2 +-
 extensions/libip6t_hbh.c    | 10 +++++-----
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/extensions/dscp_helper.c b/extensions/dscp_helper.c
index 75b1fec..359fbb2 100644
--- a/extensions/dscp_helper.c
+++ b/extensions/dscp_helper.c
@@ -68,7 +68,7 @@ dscp_to_name(unsigned int dscp)
 {
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(ds_classes); ++i) 
+	for (i = 0; i < ARRAY_SIZE(ds_classes); ++i)
 		if (dscp == ds_classes[i].dscp)
 			return ds_classes[i].name;
 
diff --git a/extensions/libarpt_mangle.c b/extensions/libarpt_mangle.c
index ec9b543..fdd2104 100644
--- a/extensions/libarpt_mangle.c
+++ b/extensions/libarpt_mangle.c
@@ -136,7 +136,7 @@ static void print_mac(const unsigned char *mac, int l)
 
 	for (j = 0; j < l; j++)
 		printf("%02x%s", mac[j],
-			(j==l-1) ? "" : ":");
+			(j == l-1) ? "" : ":");
 }
 
 static void
diff --git a/extensions/libip6t_ah.c b/extensions/libip6t_ah.c
index f35982f..38c71f2 100644
--- a/extensions/libip6t_ah.c
+++ b/extensions/libip6t_ah.c
@@ -89,7 +89,7 @@ static void ah_print(const void *ip, const struct xt_entry_match *match,
 	printf(" ah ");
 	print_spis("spi", ah->spis[0], ah->spis[1],
 		    ah->invflags & IP6T_AH_INV_SPI);
-	print_len("length", ah->hdrlen, 
+	print_len("length", ah->hdrlen,
 		    ah->invflags & IP6T_AH_INV_LEN);
 
 	if (ah->hdrres)
diff --git a/extensions/libip6t_dst.c b/extensions/libip6t_dst.c
index fe7e340..321e1f4 100644
--- a/extensions/libip6t_dst.c
+++ b/extensions/libip6t_dst.c
@@ -57,17 +57,17 @@ parse_options(const char *optsstr, uint16_t *opts)
 {
         char *buffer, *cp, *next, *range;
         unsigned int i;
-	
+
 	buffer = strdup(optsstr);
         if (!buffer)
 		xtables_error(OTHER_PROBLEM, "strdup failed");
-			
+
         for (cp = buffer, i = 0; cp && i < IP6T_OPTS_OPTSNR; cp = next, i++)
         {
                 next = strchr(cp, ',');
 
                 if (next)
-			*next++='\0';
+			*next++ = '\0';
 
                 range = strchr(cp, ':');
 
diff --git a/extensions/libip6t_frag.c b/extensions/libip6t_frag.c
index 3842496..cd6e2eb 100644
--- a/extensions/libip6t_frag.c
+++ b/extensions/libip6t_frag.c
@@ -178,7 +178,7 @@ static int frag_xlate(struct xt_xlate *xl,
 {
 	const struct ip6t_frag *fraginfo =
 		(struct ip6t_frag *)params->match->data;
-	char *space= "";
+	char *space = "";
 
 	if (!(fraginfo->ids[0] == 0 && fraginfo->ids[1] == 0xFFFFFFFF)) {
 		xt_xlate_add(xl, "frag id %s",
diff --git a/extensions/libip6t_hbh.c b/extensions/libip6t_hbh.c
index 76b4ff0..8e1b0ac 100644
--- a/extensions/libip6t_hbh.c
+++ b/extensions/libip6t_hbh.c
@@ -63,10 +63,10 @@ parse_options(const char *optsstr, uint16_t *opts)
 	buffer = strdup(optsstr);
 	if (!buffer) xtables_error(OTHER_PROBLEM, "strdup failed");
 			
-        for (cp=buffer, i=0; cp && i<IP6T_OPTS_OPTSNR; cp=next,i++)
+        for (cp = buffer, i = 0; cp && i < IP6T_OPTS_OPTSNR; cp = next,i++)
         {
-                next=strchr(cp, ',');
-                if (next) *next++='\0';
+                next = strchr(cp, ',');
+                if (next) *next++ = '\0';
                 range = strchr(cp, ':');
                 if (range) {
                         if (i == IP6T_OPTS_OPTSNR-1)
@@ -122,8 +122,8 @@ print_options(unsigned int optsnr, uint16_t *optsp)
 {
 	unsigned int i;
 
-	for(i=0; i<optsnr; i++){
-		printf("%c", (i==0)?' ':',');
+	for(i = 0; i < optsnr; i++){
+		printf("%c", (i == 0)?' ':',');
 		printf("%d", (optsp[i] & 0xFF00)>>8);
 		if ((optsp[i] & 0x00FF) != 0x00FF){
 			printf(":%d", (optsp[i] & 0x00FF));
-- 
2.11.0


