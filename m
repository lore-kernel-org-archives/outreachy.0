X-GM-THRID: 3635562938368
X-Received: by 10.112.25.7 with SMTP id y7mr1112794lbf.21.1424943293170;
        Thu, 26 Feb 2015 01:34:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls1150802wic.8.canary; Thu, 26
 Feb 2015 01:34:51 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr1163254wib.7.1424943291819;
        Thu, 26 Feb 2015 01:34:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id r6si83886wix.0.2015.02.26.01.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id k11so8760789wes.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=l1T7C4Z3Ou11YiZ7ZR7qgohgFaB1tZdwIWPYhcFmMV4=;
        b=KSG/2h5Cdk/PYFQZYpUY+Z+tAIHWIOujGKIpoxbJ38RvkSNPPuAYEW08lhgdX6jadb
         H+sGqpSJnXbmojQjiADaQuiK/rIsnaSVeuO3HkPGe4R6ANvowXBImKhNRkaowHnn2VSt
         EUOsUULM29LIqK+zrfUBLug4OEsFzX3ZKabfiihrS9V88bRYvkEHRDJ9aZHSJ/CFzzDf
         7hne8nfANa63mhzH9YNzkzdazp++dXKCpJWxOv9PdFdIj0qV13UKdnjnjtRelRgM5hHJ
         apwjDXkwx6aZ4iUOjQW/66yUY4vi6evLkK2nbuCiCXX7hBqoxyQBZLJofkrWyJOlV5Ok
         kWUg==
X-Received: by 10.180.198.78 with SMTP id ja14mr14768683wic.11.1424943291723;
        Thu, 26 Feb 2015 01:34:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id er13sm533821wjc.11.2015.02.26.01.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:34:50 -0800 (PST)
Date: Thu, 26 Feb 2015 11:32:40 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 06/24] staging: rtl8712: rewrite the right hand side of an
 assignment
Message-ID: <64a20b15344129131010e76e3d9aa356b0ac969b.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index c653ad6..743dd936 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1045,7 +1045,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	uint	frtype  = GetFrameType(pframe);
 	uint	frsubtype  = GetFrameSubType(pframe);
 
-	frsubtype = frsubtype >> 4;
+	frsubtype >>= 4;
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
 	memset((void *)mic_header2, 0, 16);
@@ -1216,7 +1216,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	uint frtype  = GetFrameType(pframe);
 	uint frsubtype  = GetFrameSubType(pframe);
 
-	frsubtype = frsubtype >> 4;
+	frsubtype >>= 4;
 	memset((void *)mic_iv, 0, 16);
 	memset((void *)mic_header1, 0, 16);
 	memset((void *)mic_header2, 0, 16);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

