X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.219.102 with SMTP id pn6mr1112240lbc.12.1424943058400;
        Thu, 26 Feb 2015 01:30:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.65 with SMTP id o1ls9012laj.67.gmail; Thu, 26 Feb 2015
 01:30:57 -0800 (PST)
X-Received: by 10.112.214.234 with SMTP id od10mr1113890lbc.3.1424943057931;
        Thu, 26 Feb 2015 01:30:57 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id o3si1310578wib.2.2015.02.26.01.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:30:57 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id em10so39891667wid.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=SWxctwW8YGp8ZJ7wN77mPgbjvond5dBSpr0TLBz1JOk=;
        b=S3ute2kJYzuAPWDDwMeknvw6EJOy52DtimWeDY2H2oVfI6PtXfleLFy1DcykYw7mOq
         lDw1RmujlazYKvSxB3o5QMsgIPn0fyPZOG3m/nX4O+2Q51C//CRjqo+Pmw8wZE/Ca04D
         jAVLwCVYPnDRQecVMytFl3s/yD3n2PsEuxnqQ3wHcAC0hbxLqnjAVXKbGknPLhsq1o6r
         ggRv0u7xcF72mzUhEfD49zfeOADBUqyMzuH6OuV2qhEC40WO6A843NUfZEHw/DKBgDyZ
         yOUGEgIGjGMYEgBxKgxEhzxeS6axXGn5IzNNq1TCRCyA3zhyzA9ihDPFvAIuHAXM8jR8
         qeaw==
X-Received: by 10.180.14.66 with SMTP id n2mr47178262wic.50.1424943057849;
        Thu, 26 Feb 2015 01:30:57 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id vh8sm514645wjc.12.2015.02.26.01.30.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:30:57 -0800 (PST)
Date: Thu, 26 Feb 2015 11:30:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/24] staging: rtl8723au: hal: rewrite the right hand side
 of an assignment
Message-ID: <dd4fe60523108ed600785bb9073d79ad4f4da82e.1424942339.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
index 1207145..8301830 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_MAC.c
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

