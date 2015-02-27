X-GM-THRID: 4475579269120
X-Received: by 10.194.11.70 with SMTP id o6mr2052620wjb.6.1425042417334;
        Fri, 27 Feb 2015 05:06:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.178 with SMTP id p18ls133881lal.97.gmail; Fri, 27 Feb
 2015 05:06:56 -0800 (PST)
X-Received: by 10.112.131.106 with SMTP id ol10mr2080428lbb.20.1425042416902;
        Fri, 27 Feb 2015 05:06:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id ta1si112486wic.1.2015.02.27.05.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x230.google.com with SMTP id y19so20265670wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6iYXjxUi5vhfrlxfnGkers9IWaik2EycPoRPeSnOV14=;
        b=kbJpgkYDP6xqGVsRXIzZdWL7BzhM62G5inI9TIx3rVl9Qt0oq9EGyyjH7siZexZJ1B
         AwJRrZg+DrUpDi6OwjX5LQTu5St08eQGcCCGGamqHMqyA3f6nt/72HpYM5bt/Ke7vP/H
         8Qk99HHZWWRN4C/fkIONdJEv15xluypH4iVWvEIowRaKXP20Zp8N/r924AX2jFkTaAOt
         iLH8oGx/X4SfDQsLcz1zrMGdL0vM4h1V+3LoIejxOr/MEkrAMlLgpiv7SEKA9lLsgpv0
         V0sImcMs/zZkZx6Xgtx/mX65RVrPMcHh7FIImrZJ7P39j3Xb9Ccy8F0znd2LSTzO0wrI
         AFKA==
X-Received: by 10.194.21.193 with SMTP id x1mr14940920wje.144.1425042416826;
        Fri, 27 Feb 2015 05:06:56 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id gi3sm2754838wic.15.2015.02.27.05.06.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:06:56 -0800 (PST)
Date: Fri, 27 Feb 2015 15:06:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 17/24] staging: lustre: llite: remove unused variable
Message-ID: <3fe5159c53defab2ab705f092634dca4f84f1441.1425035011.git.mahfouz.saif.elyazal@gmail.com>
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
 drivers/staging/lustre/lustre/llite/lproc_llite.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/lproc_llite.c b/drivers/staging/lustre/lustre/llite/lproc_llite.c
index aaa13bd..35e0b39 100644
--- a/drivers/staging/lustre/lustre/llite/lproc_llite.c
+++ b/drivers/staging/lustre/lustre/llite/lproc_llite.c
@@ -789,11 +789,8 @@ static int ll_xattr_cache_seq_show(struct seq_file *m, void *v)
 {
 	struct super_block *sb = m->private;
 	struct ll_sb_info *sbi = ll_s2sbi(sb);
-	int rc;
-
-	rc = seq_printf(m, "%u\n", sbi->ll_xattr_cache_enabled);
 
-	return rc;
+	return seq_printf(m, "%u\n", sbi->ll_xattr_cache_enabled);
 }
 
 static ssize_t ll_xattr_cache_seq_write(struct file *file,
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

