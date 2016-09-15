X-GM-THRID: 6330466800696819712
X-Received: by 10.36.37.139 with SMTP id g133mr2054699itg.0.1473943874905;
        Thu, 15 Sep 2016 05:51:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.195 with SMTP id d186ls423871itc.15.gmail; Thu, 15 Sep
 2016 05:51:14 -0700 (PDT)
X-Received: by 10.66.8.66 with SMTP id p2mr6448256paa.11.1473943874291;
        Thu, 15 Sep 2016 05:51:14 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si1194969pab.1.2016.09.15.05.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:51:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so2110164pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dr26vWpxY+2SngSlF+Gac0JN3KqqJl6zVNbnmTavi10=;
        b=eeaLvzESpEBu/FwQud30Kvr2bc+2JvnUTn2Uln8K6/6tliVpahhC8f7GCsX6P1a3CJ
         TImEw96HEkF6V11X64gNTRmFjGysjIwI7EokLFwzrF8GbUeG/A9IeujE4b6IquehnO7D
         lxoSx8TCZhaDfQKI4G92lo/LXSQ9Q6UMzeb7zqBaBM4GwzLWcBLdER9mPMGFkDgBR4nv
         SEbgba57Udo9b8fhOhcVHeYlZhKxtAbRM7yliV+uXxVr7zoZYOnRLZh/4daEQRH10b4+
         MSmz0sY2BgOoGyikOCr6Km+libPExGoZA0RS+2TLMiNr1Xbl1xVBuQvMHMQCpZivws20
         qvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dr26vWpxY+2SngSlF+Gac0JN3KqqJl6zVNbnmTavi10=;
        b=Kv1DogjI7ifBqfcMISdmtJpT/Z6YKHcuJFAZmT8fL9PA7bj5VjoawGrid9YHBYwSDT
         xy26NC2EwP4006oUNrK3ykzN1NuB/IPiCm+aQBOylipQHzbX8WXrlMrdvayORTL9UkWq
         EQE8dDmLm4/MdkA2ThZoXQwxeV/wgmLmmVYStpDxtPyz+uUvFcfufCSQKSXI+71I0BRj
         7lcsejcTuj8YO+rBBmBULeurS7ZTyYgUAUZsdTe+qmRu/R6E/AhhYfJElUOfffCVM/IQ
         dZY2sbOM5gOSNfZ+KlOncSIkH75k8eJE0CzXhmM4h51NJO6VPHiH2QB4v5n05FdZpTNJ
         /U3A==
X-Gm-Message-State: AE9vXwPJdTS72nTqdamxVTrOkItFID8k+afbE95wDllYA4UCKY9RbqKfkddz452cKr6PUg==
X-Received: by 10.66.241.65 with SMTP id wg1mr14163380pac.155.1473943873933;
        Thu, 15 Sep 2016 05:51:13 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f195sm45255368pfa.26.2016.09.15.05.51.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:51:13 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:21:04 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/6] staging: lustre: Fix block comment style
Message-ID: <448b8e796a3dd09e8bb1698799e4f00afb399d63.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning:
WARNING: Block comments use a trailing */ on a separate line.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_request.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
index 1dc8d21..f4364f9 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
@@ -1410,7 +1410,8 @@ static int ldlm_prepare_lru_list(struct ldlm_namespace *ns,
 		 * That is, for shrinker policy we drop only
 		 * old locks, but additionally choose them by
 		 * their weight. Big extent locks will stay in
-		 * the cache. */
+		 * the cache.
+		 */
 		result = pf(ns, lock, unused, added, count);
 		if (result == LDLM_POLICY_KEEP_LOCK) {
 			lu_ref_del(&lock->l_reference,
@@ -1700,7 +1701,8 @@ static int ldlm_cli_hash_cancel_unused(struct cfs_hash *hs,
  * that have 0 readers/writers.
  *
  * If flags & LCF_LOCAL, throw the locks away without trying
- * to notify the server. */
+ * to notify the server.
+ */
 int ldlm_cli_cancel_unused(struct ldlm_namespace *ns,
 			   const struct ldlm_res_id *res_id,
 			   enum ldlm_cancel_flags flags, void *opaque)
-- 
2.7.4


