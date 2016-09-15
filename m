X-GM-THRID: 6330466800696819712
X-Received: by 10.66.85.104 with SMTP id g8mr5350502paz.33.1473926740947;
        Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.18 with SMTP id h18ls2757639ote.41.gmail; Thu, 15 Sep
 2016 01:05:40 -0700 (PDT)
X-Received: by 10.129.79.144 with SMTP id d138mr5390659ywb.19.1473926740597;
        Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z4si719582pam.0.2016.09.15.01.05.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so1828490pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dr26vWpxY+2SngSlF+Gac0JN3KqqJl6zVNbnmTavi10=;
        b=piv7ewu4w0CZTW41+1W62+Z5em4ne0/JL1mJ0IvDjxNtiKaV5IDMu456jbNqA8zefa
         9MRte/URzLGDkOj7GL5YaV9vPoxyP1uqlj+JkFSVW6KxjO5CCOOu9oSX9YPbtv/tjAAa
         45WlufD17NL174RDoMedUXP9Ipfp8DE6ddAiFOw8jlKFqLApc+4+t3C+OX7zojUh7qHs
         ksT5AefC0Xv7AOVyg8yzrIspc9xT4xCga5yfuFjFsEtgp3hkNt6RCSoCpBXWsIbZuQcF
         WHPkwT1aoJXwH/zftUBbUilSPsLknHcCoptuoBMPwT3MQpDdDt1l+arvlW9H3fnpaRUM
         nRrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dr26vWpxY+2SngSlF+Gac0JN3KqqJl6zVNbnmTavi10=;
        b=c4pj8iT7n1mgsqGUmZW3sLfxVGDss7a+lUwKH4B0UxtDZ7zlHEjxWcNG++GqZpqAwP
         oJa3nIvfv9AQzBIDoCzoFciCbCqsFUHt+gaF+UHWPhkJh2Op9RRIf0/+Nba047x8BVhB
         zHi0Jh5X+Eo4Fi8pWLAJcmV45xgqJzVOixIb3RP5o+0B/T29DqekdNwR37vPgcxLvlMG
         uqpoC0AmYW23mI5Q+Hl5nJFZpOPUBV5ls6yPCE1Q5Jw0WSSb8ql3dBoVZ7qKbVU+Eq6N
         wD4Cc5K79IBCZru977nx+1sZjELX0weyzhoiZaUul+IY+KHCLI/eb2SNofuTs6kIkBDo
         td3w==
X-Gm-Message-State: AE9vXwPlct5PqlZbx36WK5tIVuSNP+4HJRasMqHl7HvchCw84dqUq5NTlOFDfthj7xVevg==
X-Received: by 10.66.123.79 with SMTP id ly15mr12492639pab.157.1473926740389;
        Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v29sm42987070pfd.65.2016.09.15.01.05.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:05:40 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:35:31 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/6] staging: lustre: Fix block comment style
Message-ID: <448b8e796a3dd09e8bb1698799e4f00afb399d63.1473923837.git.aquannie@gmail.com>
References: <cover.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473923837.git.aquannie@gmail.com>
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


