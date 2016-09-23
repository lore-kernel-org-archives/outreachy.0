X-GM-THRID: 6333362723553804288
X-Received: by 10.36.163.133 with SMTP id p127mr177284ite.0.1474600919300;
        Thu, 22 Sep 2016 20:21:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls8389847ota.23.gmail; Thu, 22 Sep
 2016 20:21:58 -0700 (PDT)
X-Received: by 10.157.5.211 with SMTP id 77mr1118832otd.60.1474600918962;
        Thu, 22 Sep 2016 20:21:58 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id p193si484019ywe.6.2016.09.22.20.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 20:21:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id t67so5499911ywg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 20:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=E7kN2GiFhKxJnvgRVn1TYbh0El/L1a8SweTMiPPZ1Lo=;
        b=Q6WhGdUtoHBeECtTndudShQSEFM0U6bqkP4ZxGAraiO3Mp+waBKyyW43Pd5sX0+6LZ
         f7OmrvuPnmmZsXNkq6VfP9FQA0Mr17xZAsc54FTuYxNye7xhDjBk26D2J1O+U8sfYd7W
         7cXRdDNgsJQmAyGkxgu5QSACWqUOzlBpKaSWa13aMJ42tpPGawR7oAuhwDbt0HyQTIFQ
         csaXX9Aichgw+/Ojrq6rdQGIEGxXfCkxTyjatVQKwd13HgihU0HTSnDXS09+HXpojAuX
         fpFMKfiPM+BtwSeuyz9pfR0cZxb8Iwo85SmY+y0e1nt5YSYsN3jw6nyQnZMjH8DUpGIs
         uReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=E7kN2GiFhKxJnvgRVn1TYbh0El/L1a8SweTMiPPZ1Lo=;
        b=A9qGRv4jvdn1QVJEUFSli3/LXBCUdBNoW2wZGAYjv01Rl1K/YAHY1E7R8+rs4DNGQ7
         jXkz4b97EZcDGrGHjXE1WOcj+xdjLenqfDDFpdTH6aUiHArkS4dcThD+jDsaUGq+Djfw
         zjYaAIDQ6A8K+IGKKeQB936gFTo3nCjy1Chy4ayE0xEP6afJwOPsX47+HX+WitePMag0
         hmfadegPIo3RH4o1SJRzPf61Pubdm47jokS2c4hZY6tCNGK8IMrVrpb2r8V9vhKIGXAI
         Oey2jjoeomvHPVj5Ntz1zVnn0YppoSEiRn6kuo467HAHT62zxrnYBdDmmx1vYkjB6Z1q
         bucQ==
X-Gm-Message-State: AE9vXwOPFPxkBYNL/TQEHeV5y/RvXHUT2qytKkOCpZc5awwYC6laDqVWiIZthCS0PRdUyw==
X-Received: by 10.129.107.196 with SMTP id g187mr4411759ywc.252.1474600918728;
        Thu, 22 Sep 2016 20:21:58 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id w20sm1892685yww.25.2016.09.22.20.21.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Sep 2016 20:21:58 -0700 (PDT)
Date: Fri, 23 Sep 2016 00:21:55 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: lustre: llite: removed uneeded return variables
Message-ID: <20160923032155.GA25412@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Removed variables used only for return purposes and replaced them for
the return value itself. Found using Coccinelle's semantic patch:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 5d4d17f..6e3a188 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -889,7 +889,6 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
 {
 	struct ldlm_lock *lock;
 	bool cancelled = true;
-	int rc;
 
 	lock = ldlm_handle2lock(&och->och_lease_handle);
 	if (lock) {
@@ -907,9 +906,8 @@ static int ll_lease_close(struct obd_client_handle *och, struct inode *inode,
 	if (lease_broken)
 		*lease_broken = cancelled;
 
-	rc = ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp, inode, och,
-				       NULL);
-	return rc;
+	return ll_close_inode_openhandle(ll_i2sbi(inode)->ll_md_exp,
+					 inode, och, NULL);
 }
 
 /* Fills the obdo with the attributes for the lsm */
@@ -2489,9 +2487,8 @@ static loff_t ll_file_seek(struct file *file, loff_t offset, int origin)
 		eof = i_size_read(inode);
 	}
 
-	retval = generic_file_llseek_size(file, offset, origin,
-					  ll_file_maxbytes(inode), eof);
-	return retval;
+	return generic_file_llseek_size(file, offset, origin,
+					ll_file_maxbytes(inode), eof);
 }
 
 static int ll_flush(struct file *file, fl_owner_t id)
@@ -2922,15 +2919,12 @@ enum ldlm_mode ll_take_md_lock(struct inode *inode, __u64 bits,
 {
 	ldlm_policy_data_t policy = { .l_inodebits = {bits} };
 	struct lu_fid *fid;
-	enum ldlm_mode rc;
 
 	fid = &ll_i2info(inode)->lli_fid;
 	CDEBUG(D_INFO, "trying to match res "DFID"\n", PFID(fid));
 
-	rc = md_lock_match(ll_i2mdexp(inode), flags | LDLM_FL_BLOCK_GRANTED,
-			   fid, LDLM_IBITS, &policy, mode, lockh);
-
-	return rc;
+	return md_lock_match(ll_i2mdexp(inode), flags | LDLM_FL_BLOCK_GRANTED,
+			     fid, LDLM_IBITS, &policy, mode, lockh);
 }
 
 static int ll_inode_revalidate_fini(struct inode *inode, int rc)
@@ -3031,10 +3025,8 @@ static int __ll_inode_revalidate(struct dentry *dentry, __u64 ibits)
 		op_data->op_valid = valid;
 		rc = md_getattr(sbi->ll_md_exp, op_data, &req);
 		ll_finish_md_op_data(op_data);
-		if (rc) {
-			rc = ll_inode_revalidate_fini(inode, rc);
-			return rc;
-		}
+		if (rc)
+			return ll_inode_revalidate_fini(inode, rc);
 
 		rc = ll_prep_inode(&inode, req, NULL, NULL);
 	}
-- 
2.10.0


