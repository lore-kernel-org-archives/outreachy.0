X-GM-THRID: 6209264752387948544
X-Received: by 10.66.147.33 with SMTP id th1mr21746495pab.27.1445707196559;
        Sat, 24 Oct 2015 10:19:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.37 with SMTP id g34ls68305qgd.19.gmail; Sat, 24 Oct
 2015 10:19:54 -0700 (PDT)
X-Received: by 10.31.134.2 with SMTP id i2mr16409969vkd.8.1445707194380;
        Sat, 24 Oct 2015 10:19:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id el2si2829072pbb.0.2015.10.24.10.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 10:19:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id rc13so145684312pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 10:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=koc3zWmqrb11VuucnSAhMvhBc5mnwVGkTHbgZAbeWnM=;
        b=dh6eOSmI7IKHI8a6M1IYKVkMmStEFfXLauxnF1m/iVBa26JulDVW6jgD0+mcosovEk
         fYjah/kmzBKu2tct+BLhZIRoadjYt4/gSIa0rodGb8V9yZ0dwIlbrlGlJ6ANcYOMKjwM
         RlJzhnvnzx+fJC5wp6K05fUXxYDzN8m38yIe4eVUZYiJl4IOC5S2zUvLyUxKghDz0hiy
         /HyDVEv8KkRlZ0AgxkIYtacPjTnnqP8KxxoodcxJlsqd0VvrxzmTRqbMEKO/tKFzi0pj
         Sg7rAfHoq4txs9dDDS7sz51XKuq9QcTLxjn3FyaSaGuEhCU8rETD427WhcUPSooPjvFk
         TQ7g==
X-Received: by 10.66.132.9 with SMTP id oq9mr11861320pab.101.1445707194183;
        Sat, 24 Oct 2015 10:19:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.180])
        by smtp.gmail.com with ESMTPSA id db8sm25249836pad.43.2015.10.24.10.19.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 10:19:53 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:49:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: lustre: ldlm: Do not export static function
Message-ID: <35d5a42884f3b5197edd3030b94e0b4f02567b15.1445706942.git.amitoj1606@gmail.com>
References: <cover.1445706942.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445706942.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove the export symbol for static function.

The semantic patch used to find this is:

// <smpl>
@r@
type T;
identifier f;
@@

static T f (...) { ... }

@@
identifier r.f;
declarer name EXPORT_SYMBOL;
@@

-EXPORT_SYMBOL(f);
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
index a4ee591..b73cf6d 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_pool.c
@@ -1005,7 +1005,6 @@ static int ldlm_pools_recalc(ldlm_side_t client)
 	}
 	return time;
 }
-EXPORT_SYMBOL(ldlm_pools_recalc);
 
 static int ldlm_pools_thread_main(void *arg)
 {
-- 
1.9.1


