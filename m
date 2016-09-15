X-GM-THRID: 6330466800696819712
X-Received: by 10.107.152.132 with SMTP id a126mr6763682ioe.28.1473943912412;
        Thu, 15 Sep 2016 05:51:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.17 with SMTP id n17ls2180286ota.40.gmail; Thu, 15 Sep
 2016 05:51:52 -0700 (PDT)
X-Received: by 10.31.95.18 with SMTP id t18mr2365650vkb.2.1473943912048;
        Thu, 15 Sep 2016 05:51:52 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 142si2702346pfx.2.2016.09.15.05.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:51:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so2110724pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wwTjvmVZyrFK4yGp0ZjHIPSVVR8C5qmD2B/0nfx9TH0=;
        b=SW8VP/re73Z3X78ETnqg6v/pEVxKc65RH55P9zUohZXJiPR/sEwYaTc20sxNeVlZLz
         VR8oBHRzYcs6gGiUYO0b6D7vQZh6Xn3hYr1nLNGRfn497kQ+Lhnr5EjNgsvzvGWJOpdp
         ZRgAr/5BJvpvGqoghIUJd1JfsgMTeKgBrR4nfxwTgO8cfT4Go3vFDr/AsHMXxVvdPbVX
         mZlKXBvzbEdUTEDEziyXDlmQlA9OwFAzRi4YtOwf822XzheNyYiUR+Zo71tIEPqGFWsr
         ZdXa6YrHnq9v0cilv4KIy6AIOOVFgRvUMh1NfQB7SxWpffz8yEcdOCnp8SG5sH2x+XI8
         Ygng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wwTjvmVZyrFK4yGp0ZjHIPSVVR8C5qmD2B/0nfx9TH0=;
        b=eMcUdBvqXdBV38XtqXoE/hfGctVI+sRNhG5upvFBMPoq/ztz2kyloqWXu8ovVHtLie
         MoKa93oCYWCuUihvT7Qt09P7kNXORTmVG6Sq8TjcNFLlrji4hn97xDI4uy8qJElj0wzQ
         6GO09JdA5CajWUIdo3Nh779MZtohcpLUTrqwVmWIknBSG0w5oWZBf5O4JYoUOD/YpZ2O
         H7jD68w0lEDVGunUo05u3V/ZxoBS6AkyiC6BfK2wphNXkjoqBrgZxsnlc6I0f2NLQRz1
         I259tM9dw/EZCJtz4JpYkvUUkds3ix4pSLnetSQ4c5VJcTs4njT+4zDjpvmutLuOg3y+
         2OuA==
X-Gm-Message-State: AE9vXwOWacVNDTU2MJ1SFDtn0jXqDbHAT0FDmZHxqubxZ0zSPdNn61a/VsNjyCwXhM6BCw==
X-Received: by 10.66.34.101 with SMTP id y5mr14096767pai.95.1473943911834;
        Thu, 15 Sep 2016 05:51:51 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tw2sm5139127pac.41.2016.09.15.05.51.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:51:51 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:21:42 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/6] staging: lustre: Change 'unsigned' to 'unsigned int'
Message-ID: <d98547b8a3caee19f5f68530b2471d7ce513b05f.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning:
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_resource.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
index e2c2587..62d9f6f 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_resource.c
@@ -449,8 +449,8 @@ static unsigned ldlm_res_hop_hash(struct cfs_hash *hs,
 				  const void *key, unsigned mask)
 {
 	const struct ldlm_res_id     *id  = key;
-	unsigned		val = 0;
-	unsigned		i;
+	unsigned int		val = 0;
+	unsigned int		i;
 
 	for (i = 0; i < RES_NAME_SIZE; i++)
 		val += id->name[i];
@@ -561,9 +561,9 @@ static struct cfs_hash_ops ldlm_ns_fid_hash_ops = {
 struct ldlm_ns_hash_def {
 	enum ldlm_ns_type nsd_type;
 	/** hash bucket bits */
-	unsigned	nsd_bkt_bits;
+	unsigned int	nsd_bkt_bits;
 	/** hash bits */
-	unsigned	nsd_all_bits;
+	unsigned int	nsd_all_bits;
 	/** hash operations */
 	struct cfs_hash_ops *nsd_hops;
 };
-- 
2.7.4


