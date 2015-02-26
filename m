X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.126.194 with SMTP id na2mr1160831lbb.18.1424943739400;
        Thu, 26 Feb 2015 01:42:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls1142004wic.10.canary; Thu, 26
 Feb 2015 01:42:19 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr1140331wjb.4.1424943739116;
        Thu, 26 Feb 2015 01:42:19 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id l8si1469722wia.0.2015.02.26.01.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:42:19 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id b13so8917433wgh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JpW0aon6c5YCK2rBeEsbEeC05guyHkwLLmIyl3Wnbro=;
        b=xZ9xnqQ+apEhSjTx8Zow42/h7VF9K7hYJtjTLCwPqvgolEjIB4Llbs0U5ShkTSS0KZ
         aU9+sufqz92YyqqBiDwuiezEYq+42si5Pha3oeh9zu+ha50WfpsyAwB93SiYNqM3GR1f
         WMv8owO1Zk6HChQD48Jm1oT0mdMdMNVq4lyzkybqu5Lg/3kQl5Ndwquz2LsUgPcjwT2v
         zWNwZbrXIbabNSaCc+is0jrefE0vy0jsQ9gZ1+OSKuIRiobBM3lsA1K/J+CLRGIjRMG3
         zfuq+7wzBLlB7T7GwBc28bejRqYwXR/ca2DSU+II5wwbMOd+oyj6wmpj284BV3UtudK6
         Z1MQ==
X-Received: by 10.194.157.38 with SMTP id wj6mr14660991wjb.62.1424943739047;
        Thu, 26 Feb 2015 01:42:19 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id fo17sm546982wjc.19.2015.02.26.01.42.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:42:18 -0800 (PST)
Date: Thu, 26 Feb 2015 11:42:14 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 15/24] staging: rtl8188eu: rewrite the right hand side of an
 assignment
Message-ID: <5fe041789f9e0a3a04186448d0da6685d34c2b66.1424942340.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 5dc11ca..455ecdc 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -38,12 +38,12 @@ static bool check_condition(struct adapter *adapt, const u32  condition)
 		return false;
 
 	cond = condition & 0x0000FF00;
-	cond = cond >> 8;
+	cond >>= 8;
 	if ((_interface & cond) == 0 && cond != 0x07)
 		return false;
 
 	cond = condition & 0x00FF0000;
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

