X-GM-THRID: 6207003861393080320
X-Received: by 10.66.146.131 with SMTP id tc3mr22424873pab.20.1445180704567;
        Sun, 18 Oct 2015 08:05:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.44 with SMTP id c41ls2167270qge.11.gmail; Sun, 18 Oct
 2015 08:05:02 -0700 (PDT)
X-Received: by 10.13.226.8 with SMTP id l8mr22020535ywe.49.1445180702748;
        Sun, 18 Oct 2015 08:05:02 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si2849670pbc.1.2015.10.18.08.05.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 08:05:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so4326512pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 08:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=CignCVWLz5J/gIACnC+FnRosQq8kwWOnEdoqokfhalk=;
        b=iPZkW3dA6jGFW4eh4TiAFdbAby51dO/3QaJqA83Lyh6nXtVSIg5qsWrNiZBxZEtMY0
         CLXC0BySYlcjyvCs5ZF0eEH/6RIGxN5Szfm1CQZJNthDw34g6EabOrb/3GMJk0TOPs0G
         vAq3QSv/zxIXAq4vKqrSVIOJxVLFn1ozBgs8tzLd+pTghcSNc7CmAYMQpAYpLLzmawyw
         5Gaz6tFpLFZbtm0igvzFaYaAZ5NaIhgGkvdMoW8bYpCaU3WwJGnmvRKoI1laXipHspd3
         I3Ei+5vtNOei8DYdtxSKzWik2oR2v130cSC78ujZANxmsdjLUibXkSy0IG9MG/Btzda5
         Yd+Q==
X-Received: by 10.68.200.100 with SMTP id jr4mr29604260pbc.16.1445180702615;
        Sun, 18 Oct 2015 08:05:02 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id yq2sm31394858pbb.39.2015.10.18.08.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 08:05:01 -0700 (PDT)
Date: Sun, 18 Oct 2015 20:34:44 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: glimpse: Fix Block comment style
Message-ID: <20151018150444.GA31496@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Block comments should be aligned correctly.

Fix checkpatch WARNING: Block comments use a trailing */ on a separate
line

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/glimpse.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lclient/glimpse.c b/drivers/staging/lustre/lustre/lclient/glimpse.c
index 8533a1e..c4e8a08 100644
--- a/drivers/staging/lustre/lustre/lclient/glimpse.c
+++ b/drivers/staging/lustre/lustre/lclient/glimpse.c
@@ -109,7 +109,8 @@ int cl_glimpse_lock(const struct lu_env *env, struct cl_io *io,
 			 *       if there were no conflicting locks. If there
 			 *       were conflicting locks, enqueuing or waiting
 			 *       fails with -ENAVAIL, but valid inode
-			 *       attributes are returned anyway. */
+			 *       attributes are returned anyway.
+			 */
 			*descr = whole_file;
 			descr->cld_obj   = clob;
 			descr->cld_mode  = CLM_PHANTOM;
-- 
2.1.0


