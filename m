X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.198 with SMTP id dy6mr2083546lbc.22.1425042488208;
        Fri, 27 Feb 2015 05:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.137 with SMTP id dw9ls148531lac.85.gmail; Fri, 27 Feb
 2015 05:08:07 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2075644lbb.11.1425042487668;
        Fri, 27 Feb 2015 05:08:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id i7si116224wif.0.2015.02.27.05.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:08:07 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ex7so58516wid.4
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=vVRO/R+x5w3bSgOWKygpzw6P8ltSf6Gub++NUfCQ4pI=;
        b=NgSQsR6Lo+vubb/5ihDwjKFwU+W1+BUGhd6I9WxOrLFypd0cIRfw3Z9tS80QQErdd5
         6SJobDysFtxKQsQ0cWo/u/aClD1PQ/c/BXfzpzZQJP18d0gEc3NRwIpJxZUmfdPG66IO
         rJEtTJv4DgV0ttrt7V5mQ+twBAMrxEY9mWXLM06gT5c4bZ8ynBrzst6i7P1JdcEXSvm5
         9M53zJTiv6XK7gqiu3kPqEChbudBv9zvP32WFEqD2BNT+ZGtfVgg/QSaaEVx+o6ywWi9
         3K6Ww742MR65nc/5s07o0BVnj5zFtaWYi04EQJn/EBagwstWxMdMGp2adiNP0KOoKdxQ
         /KuA==
X-Received: by 10.195.12.167 with SMTP id er7mr28261270wjd.54.1425042487599;
        Fri, 27 Feb 2015 05:08:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id hj10sm5858801wjc.48.2015.02.27.05.08.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:08:07 -0800 (PST)
Date: Fri, 27 Feb 2015 15:07:58 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 19/24] staging: lustre: llite: remove unused variable
Message-ID: <d5b7f5b5f48fe0112c4abea678a8233c83f5fc73.1425035012.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/llite/dcache.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/staging/lustre/lustre/llite/dcache.c
index ddf1fa9..3078dd9 100644
--- a/drivers/staging/lustre/lustre/llite/dcache.c
+++ b/drivers/staging/lustre/lustre/llite/dcache.c
@@ -339,13 +339,10 @@ static int ll_revalidate_dentry(struct dentry *dentry,
  */
 static int ll_revalidate_nd(struct dentry *dentry, unsigned int flags)
 {
-	int rc;
-
 	CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, flags=%u\n",
 	       dentry, flags);
 
-	rc = ll_revalidate_dentry(dentry, flags);
-	return rc;
+	return ll_revalidate_dentry(dentry, flags);
 }
 
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

