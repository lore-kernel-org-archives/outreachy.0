X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr1129014wjb.1.1424943115082;
        Thu, 26 Feb 2015 01:31:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls10388lal.74.gmail; Thu, 26 Feb
 2015 01:31:54 -0800 (PST)
X-Received: by 10.112.9.65 with SMTP id x1mr1155870lba.16.1424943114637;
        Thu, 26 Feb 2015 01:31:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id ew5si81575wid.1.2015.02.26.01.31.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:31:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ex7so17297133wid.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JF8HdHVUKPIUdprpUqWze0oSR4OkYbWVnUtIorMJGrU=;
        b=mATb+jqA+8b+E4v0fYc6XFHcBMDVilqeOKcUmrQfgdVw6TZEqpTm2+GNZzLgn5D6vD
         wUjVEDlnxNK2G/3MW89fIRONQ1toM9X41mo99Ato+jSK9WFDKBLsOoxiLQT33rLfK8eA
         vHzEANPf0qqfF665SP9kWLq9BApDzv+5k2Gx2xjnErwaiGsQnPNtSOpAnK5L7zCBmT1U
         0BF4gJdkh1WNrJRLAOoaki/VJMsWgZS0W9p3vW/CdbUcmeh1uAC1I5GMJil9mHiEBVel
         7PhToGQvYfE+8Ozlxca8h53y1OEI1kj9KoU9hmq8Nsw7YQgOMnruFNQEjY8xcgfztPyw
         35cA==
X-Received: by 10.180.19.228 with SMTP id i4mr14771688wie.13.1424943114555;
        Thu, 26 Feb 2015 01:31:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id ee10sm33209065wib.0.2015.02.26.01.31.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:31:53 -0800 (PST)
Date: Thu, 26 Feb 2015 11:31:42 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 05/24] staging: rtl8723au: hal: rewrite the right hand side
 of an assignment
Message-ID: <51641060beca92de31cd97fb7b9b1a4e6b01742c.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
index 9d4f6be..67d985c 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_BB.c
@@ -30,12 +30,12 @@ static bool CheckCondition(const u32  Condition, const u32  Hex)
 		return false;
 
 	cond = Condition & 0x0000FF00;
-	cond = cond >> 8;
+	cond >>= 8;
 	if ((_interface & cond) == 0 && cond != 0x07)
 		return false;
 
 	cond = Condition & 0x00FF0000;
-	cond = cond >> 16;
+	cond >>= 16;
 	if ((_platform & cond) == 0 && cond != 0x0F)
 		return false;
 	return true;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

