X-GM-THRID: 6403155374315143168
X-Received: by 10.107.138.87 with SMTP id m84mr1654528iod.88.1490850787862;
        Wed, 29 Mar 2017 22:13:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.17 with SMTP id q17ls6200059iod.51.gmail; Wed, 29 Mar
 2017 22:13:07 -0700 (PDT)
X-Received: by 10.99.109.73 with SMTP id i70mr1706036pgc.59.1490850786993;
        Wed, 29 Mar 2017 22:13:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si159152pfa.6.2017.03.29.22.13.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 22:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so7186494pga.1
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 22:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lgy2j3k+n84zb46/fc/I5rPRhsX97KvonUHdrZNSOgI=;
        b=F9IIBo8adde/9SFPZck8rmnsc65GqbftESKSeYXBPhimTXIWTKHNkuWOYRiEeX3t5R
         uch/t3m7BXy+n++dBBTOSZmyPIZc+d3n79pU7Uj3YqGGKBvbFHoIdJ+BDulAZ/NwSQiB
         9jSQ7RJg3yT8jxDPmxgYe1iXxdOuQ47dPS1wo9/LlV0PvNYZXq5dZFWl7LIRHNb9XXRL
         YULxiwtQrDuX5e2WUbzatEA+4AdD3aGvjk4OYblV/kIjCXnlh/3re9LiBR8tJabVnbeh
         S9nh7p3lkPzcxg5wFyus1BEeDNk+b3TMvGwfZzLsBLDa3YvE/CrRLyXt4BDcIPtmXuQx
         si7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lgy2j3k+n84zb46/fc/I5rPRhsX97KvonUHdrZNSOgI=;
        b=rvG0J/ZyvZSAoq2Sp/5o9PTgGwyh9QHmRHeTprGYaK+NF6Otd1jVECvEWC2hNkSq+C
         sy+zKs0Gb7MdaLEp486H7TCFi61yplIh5FKbTlgQaOxKKslK3XqmWZXjaQnv0arEb1qV
         cNShh4qmeEFDVkibareFheqUCl05fItk1ClVWxrVIwWrDJQodkRw9n8ijSyBGvemmgFd
         AUZJ59VPUlqQK1BxKal+c6YxR+7QPMBnOqKNQDLtjahN/WCOIjSJgesfeR+V7ud0Ub6s
         8Nr1d0/meEBgLmdsvZIL+CvfSdOH5Cc59ElV5Q7axufPBkpwyJ7MIlLEB7o5QTxY/IUT
         qEtg==
X-Gm-Message-State: AFeK/H19PuuHrNrWWFqOCeEqnuGmwZfiMXMzOJQvor4J223/q3GZSnH0O8klcGyKnWeiqw==
X-Received: by 10.98.103.146 with SMTP id t18mr4170343pfj.135.1490850786728;
        Wed, 29 Mar 2017 22:13:06 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c19sm1340222pfd.85.2017.03.29.22.13.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 29 Mar 2017 22:13:05 -0700 (PDT)
Date: Thu, 30 Mar 2017 10:43:02 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: netfilter-devel@vger.kernel.org
Subject: [PATCH] iptables: extensions: Remove unnecessary parenthesis.
Message-ID: <20170330051301.GA25786@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed parenthesis on the right hand side of assignment, as they are
not required.
The following coccinelle script was used to fix this issue:

@@
local idexpression id;
expression e;
@@

id =
-(
e
-)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 extensions/libebt_mark.c  | 8 ++++----
 extensions/libxt_string.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/extensions/libebt_mark.c b/extensions/libebt_mark.c
index 7b80b22..d85ed8d 100644
--- a/extensions/libebt_mark.c
+++ b/extensions/libebt_mark.c
@@ -86,7 +86,7 @@ brmark_parse(int c, char **argv, int invert, unsigned int *flags,
 		return 1;
 	case MARK_SETMARK:
 		EBT_CHECK_OPTION(flags, OPT_MARK_SETMARK);
-		mask = (OPT_MARK_ORMARK|OPT_MARK_ANDMARK|OPT_MARK_XORMARK);
+		mask = OPT_MARK_ORMARK|OPT_MARK_ANDMARK|OPT_MARK_XORMARK;
 		if (*flags & mask)
 			xtables_error(PARAMETER_PROBLEM,
 				      "--mark-set cannot be used together with"
@@ -96,7 +96,7 @@ brmark_parse(int c, char **argv, int invert, unsigned int *flags,
 		break;
 	case MARK_ORMARK:
 		EBT_CHECK_OPTION(flags, OPT_MARK_ORMARK);
-		mask = (OPT_MARK_SETMARK|OPT_MARK_ANDMARK|OPT_MARK_XORMARK);
+		mask = OPT_MARK_SETMARK|OPT_MARK_ANDMARK|OPT_MARK_XORMARK;
 		if (*flags & mask)
 			xtables_error(PARAMETER_PROBLEM,
 				      "--mark-or cannot be used together with"
@@ -106,7 +106,7 @@ brmark_parse(int c, char **argv, int invert, unsigned int *flags,
 		break;
 	case MARK_ANDMARK:
 		EBT_CHECK_OPTION(flags, OPT_MARK_ANDMARK);
-		mask = (OPT_MARK_SETMARK|OPT_MARK_ORMARK|OPT_MARK_XORMARK);
+		mask = OPT_MARK_SETMARK|OPT_MARK_ORMARK|OPT_MARK_XORMARK;
 		if (*flags & mask)
 			xtables_error(PARAMETER_PROBLEM,
 				      "--mark-and cannot be used together with"
@@ -116,7 +116,7 @@ brmark_parse(int c, char **argv, int invert, unsigned int *flags,
 		break;
 	case MARK_XORMARK:
 		EBT_CHECK_OPTION(flags, OPT_MARK_XORMARK);
-		mask = (OPT_MARK_SETMARK|OPT_MARK_ANDMARK|OPT_MARK_ORMARK);
+		mask = OPT_MARK_SETMARK|OPT_MARK_ANDMARK|OPT_MARK_ORMARK;
 		if (*flags & mask)
 			xtables_error(PARAMETER_PROBLEM,
 				      "--mark-xor cannot be used together with"
diff --git a/extensions/libxt_string.c b/extensions/libxt_string.c
index fb15980..535e63b 100644
--- a/extensions/libxt_string.c
+++ b/extensions/libxt_string.c
@@ -255,8 +255,8 @@ string_print(const void *ip, const struct xt_entry_match *match, int numeric)
 	const struct xt_string_info *info =
 	    (const struct xt_string_info*) match->data;
 	const int revision = match->u.user.revision;
-	int invert = (revision == 0 ? info->u.v0.invert :
-				    info->u.v1.flags & XT_STRING_FLAG_INVERT);
+	int invert = revision == 0 ? info->u.v0.invert :
+				    info->u.v1.flags & XT_STRING_FLAG_INVERT;
 
 	if (is_hex_string(info->pattern, info->patlen)) {
 		printf(" STRING match %s", invert ? "!" : "");
@@ -279,8 +279,8 @@ static void string_save(const void *ip, const struct xt_entry_match *match)
 	const struct xt_string_info *info =
 	    (const struct xt_string_info*) match->data;
 	const int revision = match->u.user.revision;
-	int invert = (revision == 0 ? info->u.v0.invert :
-				    info->u.v1.flags & XT_STRING_FLAG_INVERT);
+	int invert = revision == 0 ? info->u.v0.invert :
+				    info->u.v1.flags & XT_STRING_FLAG_INVERT;
 
 	if (is_hex_string(info->pattern, info->patlen)) {
 		printf("%s --hex-string", (invert) ? " !" : "");
-- 
2.11.0


