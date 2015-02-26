X-GM-THRID: 3635562938368
X-Received: by 10.152.88.40 with SMTP id bd8mr1144753lab.0.1424943794198;
        Thu, 26 Feb 2015 01:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.34 with SMTP id jt2ls1136025wid.17.canary; Thu, 26 Feb
 2015 01:43:13 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr1170195wik.5.1424943793875;
        Thu, 26 Feb 2015 01:43:13 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id r6si85221wix.0.2015.02.26.01.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id y19so8855703wgg.10
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hnjBh8neQZsq6Slj+IDZ5MFHmDmkW1+5p3NBPCFtqZo=;
        b=YPr5U8yqwgMQwDfZmvJV0I2Zys+mGjJk9QuPu6QErLo2c8oTSMX9g65jjwT+iKCYcD
         2es2Zp2MVriNynnFkCp3E8KvICc/85SUjqAUzN1BpYS97ED72qfwiCke4WgKsAAWikxj
         mF3PLgApp4ReucRVvQ07ZAIHjG2j/Qf5L14rAmrFdtT/i7S0ieHOb5BJOg3tnDOpbP5J
         7T75lo8a4Tc4V8bWpTqzJY5/z7AjJDUoIcbSv1PccHUKERJhA5lqBzwyCFy16gUWHMEj
         sBqqCy7xfH1uPOmCJYEc9aTSZ/8JsEqXUfzw1URSlKWlzvbo9fZropKWkp8qRE06/OjM
         ylRA==
X-Received: by 10.194.223.5 with SMTP id qq5mr15203175wjc.152.1424943793820;
        Thu, 26 Feb 2015 01:43:13 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id x6sm541384wjf.24.2015.02.26.01.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:43:13 -0800 (PST)
Date: Thu, 26 Feb 2015 11:43:09 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 17/24] staging: rtl8188eu: rewrite the right hand side of an
 assignment
Message-ID: <7db98748ed007c650d0bb0970669e6ce16debc07.1424942340.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index bd8d60a..f8981f5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -1079,7 +1079,7 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	uint	frtype  = GetFrameType(pframe);
 	uint	frsubtype  = GetFrameSubType(pframe);
 
-	frsubtype = frsubtype>>4;
+	frsubtype >>= 4;
 
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
@@ -1277,7 +1277,7 @@ static int aes_decipher(u8 *key, uint	hdrlen,
 /*	uint	offset = 0; */
 	uint	frtype  = GetFrameType(pframe);
 	uint	frsubtype  = GetFrameSubType(pframe);
-	frsubtype = frsubtype>>4;
+	frsubtype >>= 4;
 
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

