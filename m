X-GM-THRID: 7448435884032
X-Received: by 10.182.251.231 with SMTP id zn7mr34277933obc.24.1425995068432;
        Tue, 10 Mar 2015 06:44:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.51 with SMTP id 48ls102279qga.15.gmail; Tue, 10 Mar
 2015 06:44:28 -0700 (PDT)
X-Received: by 10.236.70.100 with SMTP id o64mr36206622yhd.9.1425995068279;
        Tue, 10 Mar 2015 06:44:28 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id m1si129886pdc.0.2015.03.10.06.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 06:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id y10so1767750pdj.12
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 06:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uzfVzAuOu7sCNoOwn4yWLos58NsOc56jsr2fh2RsVuY=;
        b=IGdT0gZmGDyv0M0AeaSuZvPzTbpl55TZbpHstTtCaIky807bdsyKX08cEM7x4Nez65
         xw1DByRu5chla5if/rhFvRu6RtnlTs2tUeOdXnkAOu3YkG0pFS2aMgo0p2p4TPMFe1d9
         tIMBWVBk3GQoelQ2V01nBY1Uj9lYa7AsNiz18wr5u2lbmjy9HUeSSGptJFB16xA1pnrs
         LRBoCyyeWbdRIfCPA/RC37+Fzo9fBb6IWHA8oWiyfKNO0tuX1gO0a9hh5Br0z7i/KeCT
         3zfL56xRvjNzoEjrcnxyTCUu83Q+EDejJwNsx26c3xvq3ItaZEwF09bL/rJ0WoHohwao
         DHtg==
X-Received: by 10.66.154.17 with SMTP id vk17mr65493949pab.5.1425995068005;
        Tue, 10 Mar 2015 06:44:28 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id hz8sm1264352pac.5.2015.03.10.06.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 06:44:26 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:12:42 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Remove unneeded variable and replace its
 uses
Message-ID: <20150310134242.GA9593@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Variable dotdot is only used as a function parameter and
can be replaced there directly to improve code compactness.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_nfs.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
index 6a67e71..b8ced3d 100644
--- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
+++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
@@ -287,7 +287,6 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
 	struct ll_sb_info     *sbi;
 	struct dentry	 *result = NULL;
 	struct mdt_body       *body;
-	static const char	   dotdot[] = "..";
 	struct md_op_data     *op_data;
 	int		   rc;
 	int		      lmmsize;
@@ -303,8 +302,8 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
 	if (rc != 0)
 		return ERR_PTR(rc);
 
-	op_data = ll_prep_md_op_data(NULL, dir, NULL, dotdot,
-				     strlen(dotdot), lmmsize,
+	op_data = ll_prep_md_op_data(NULL, dir, NULL, "..",
+				     2, lmmsize,
 				     LUSTRE_OPC_ANY, NULL);
 	if (IS_ERR(op_data))
 		return (void *)op_data;
@@ -321,7 +320,7 @@ static struct dentry *ll_get_parent(struct dentry *dchild)
 	CDEBUG(D_INFO, "parent for "DFID" is "DFID"\n",
 		PFID(ll_inode2fid(dir)), PFID(&body->fid1));
 
-	result = ll_iget_for_nfs(dir->i_sb, &body->fid1, NULL);
+	
 
 	ptlrpc_req_finished(req);
 	return result;
-- 
1.9.1


