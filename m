X-GM-THRID: 4475579269120
X-Received: by 10.152.1.5 with SMTP id 5mr2053460lai.4.1425042385834;
        Fri, 27 Feb 2015 05:06:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.2 with SMTP id iq2ls157875lac.100.gmail; Fri, 27 Feb
 2015 05:06:25 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2051904laj.6.1425042385373;
        Fri, 27 Feb 2015 05:06:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id ev8si103456wib.3.2015.02.27.05.06.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:06:25 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id l15so59133wiw.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=H5qjLh9tpKaN04KKJFuLBNlTnInxl+ZEwOoZvdQNHes=;
        b=YDP17E49daA/4cJDr5v2IJORgdVvwf6vSp13NyMGoq7CNZxHCKQ4nqOxMOhM2nsiCr
         MthB8HeWTBOOkWKXHxNzsO4QYvoHV1nxwoCzHpSDMowZTWU/f7tm58s1r2aEZp0AX9ji
         Le675znlXIZAU+xEcR32nPrJp8r+h0hMgifCgaUA0AV0jXZk99tnnbbVcszBLpuZ4H7s
         v9uptUiQzfoo1pOT33ibNCOFllNgZ0auA+K+bK/6HG8KsE5j1GlCIbL9NaKJo6XIq4O+
         HDMUaVXi+pIqN0gOklMLFkfY/8G6RcqhYVA7uRCuzXNpmlBJsmjH35+yUR5RP6kcNTf8
         gYHQ==
X-Received: by 10.194.103.228 with SMTP id fz4mr27268010wjb.82.1425042385284;
        Fri, 27 Feb 2015 05:06:25 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id lu13sm2764318wic.10.2015.02.27.05.06.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:06:24 -0800 (PST)
Date: Fri, 27 Feb 2015 15:06:26 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 16/24] staging: lustre: llite: remove unused variable
Message-ID: <8046f90779d408bf363802fd0c5298dbc759d3dc.1425035011.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/llite/vvp_io.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/vvp_io.c b/drivers/staging/lustre/lustre/llite/vvp_io.c
index 91bba79..6acf422 100644
--- a/drivers/staging/lustre/lustre/llite/vvp_io.c
+++ b/drivers/staging/lustre/lustre/llite/vvp_io.c
@@ -309,12 +309,9 @@ static int vvp_io_read_lock(const struct lu_env *env,
 {
 	struct cl_io	 *io = ios->cis_io;
 	struct cl_io_rw_common *rd = &io->u.ci_rd.rd;
-	int result;
 
-	result = vvp_io_rw_lock(env, io, CLM_READ, rd->crw_pos,
+	return vvp_io_rw_lock(env, io, CLM_READ, rd->crw_pos,
 				rd->crw_pos + rd->crw_count - 1);
-
-	return result;
 }
 
 static int vvp_io_fault_lock(const struct lu_env *env,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

