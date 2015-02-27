X-GM-THRID: 4475579269120
X-Received: by 10.112.159.227 with SMTP id xf3mr2068257lbb.11.1425041883605;
        Fri, 27 Feb 2015 04:58:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.132 with SMTP id wq4ls162775lac.30.gmail; Fri, 27 Feb
 2015 04:58:03 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr2048889lab.0.1425041883150;
        Fri, 27 Feb 2015 04:58:03 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id by11si129398wib.1.2015.02.27.04.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:58:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl2 with SMTP id l2so20304540wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=egeKquzAbTZpup3r6qQu5cIbIV1pPohx1D9uOM8Lfsk=;
        b=ByBAEJpNAnbymPAS9kMghB4TMve2uctRsbBGMOU2h9FcFweHJAn88HyTXUoYfgflhS
         KALtHiOmA347WKXFGJWybvfpYiTwjm9L9WuWGai1IBlCx+lcoVSJ0SSA+pJpEmBhtDgp
         tn55ZbInNG1qMrho+I0Cz8j8JQGWiVreN9D4VwUheHmKhGT1xLUVqBKd79WyykYIquXh
         PfV6TJJUIyn+hbBxMwQjdaM4mJrsnPhJb/0zx9z0Brqb6gQcdq2Mc4XdoB41Q2djbOIG
         XS9Cpf7oDmqq1O1PvGcjNYpIIBj4stQhVqZOlwxwGgwNDiWys3M4hqS41q3PpIsbzlBD
         rtoA==
X-Received: by 10.194.110.69 with SMTP id hy5mr27899145wjb.121.1425041883043;
        Fri, 27 Feb 2015 04:58:03 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id s5sm3342050wia.1.2015.02.27.04.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:58:02 -0800 (PST)
Date: Fri, 27 Feb 2015 14:57:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 10/24] staging: lustre: obdclass: remove unused variable
Message-ID: <c0361b373b44e6a9ae9188bd0c83dcbd11b0d5ee.1425035008.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/dt_object.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/dt_object.c b/drivers/staging/lustre/lustre/obdclass/dt_object.c
index e7be26e..b1eee0a 100644
--- a/drivers/staging/lustre/lustre/obdclass/dt_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/dt_object.c
@@ -424,11 +424,8 @@ EXPORT_SYMBOL(dt_find_or_create);
 /* dt class init function. */
 int dt_global_init(void)
 {
-	int result;
-
 	LU_CONTEXT_KEY_INIT(&dt_key);
-	result = lu_context_key_register(&dt_key);
-	return result;
+	return lu_context_key_register(&dt_key);
 }
 
 void dt_global_fini(void)
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

