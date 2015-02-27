X-GM-THRID: 4475579269120
X-Received: by 10.112.131.106 with SMTP id ol10mr2073400lbb.20.1425041838891;
        Fri, 27 Feb 2015 04:57:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.169 with SMTP id s9ls169898laa.8.gmail; Fri, 27 Feb 2015
 04:57:17 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr2069686lbb.9.1425041837403;
        Fri, 27 Feb 2015 04:57:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id ew5si115706wid.1.2015.02.27.04.57.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:57:17 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id em10so3232wid.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=T0BEAdEIU52N/Y4Kv/SJnw0H8E33QjZjDvbAPfd1EIQ=;
        b=pLy6S3myx2GI9OEHiNj68oCDG873CAnekve2xg+aavbPCnWLeJdlIhprjNDReSwKm9
         8xtnkm3X3YXT3T3mIYXFhFSSQp5vy0VtgQ5P/Dvs85q/hkq9PrIGYL3QkhPTPfWWFKdh
         XyTIXu1MAydD/eSH/m42LX8B3QNHYRfUwKFlAe869xNMcGBOTGhe6g96afiJRzMcKzsG
         roo1UT+USVVbhhPZgYnyht+YqOOLGHXrxjx4uYWN7j+qbwDymX+G0/Ckh7bV6NO7Oy7a
         DjeOHacOh3d0Tp3GHTQKsPsA46isNmY0gCpSM3i3lhuOzgf300q/kT96iWjO4X6xfme1
         8SYA==
X-Received: by 10.194.184.148 with SMTP id eu20mr13990415wjc.77.1425041837309;
        Fri, 27 Feb 2015 04:57:17 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id pp10sm5847614wjc.31.2015.02.27.04.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 04:57:16 -0800 (PST)
Date: Fri, 27 Feb 2015 14:57:10 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/24] staging: lustre: obdclass: remove unused variable
Message-ID: <45397c854b9fd232608d939437b8fc2146ed5423.1425035007.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/obdclass/lu_object.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index 83bf168..e104662 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1769,8 +1769,6 @@ EXPORT_SYMBOL(lu_env_refill);
 int lu_env_refill_by_tags(struct lu_env *env, __u32 ctags,
 			  __u32 stags)
 {
-	int    result;
-
 	if ((env->le_ctx.lc_tags & ctags) != ctags) {
 		env->le_ctx.lc_version = 0;
 		env->le_ctx.lc_tags |= ctags;
@@ -1781,9 +1779,7 @@ int lu_env_refill_by_tags(struct lu_env *env, __u32 ctags,
 		env->le_ses->lc_tags |= stags;
 	}
 
-	result = lu_env_refill(env);
-
-	return result;
+	return lu_env_refill(env);
 }
 EXPORT_SYMBOL(lu_env_refill_by_tags);
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

