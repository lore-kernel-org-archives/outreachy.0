X-GM-THRID: 6211756809938534400
X-Received: by 10.129.92.198 with SMTP id q189mr10516329ywb.40.1446287342052;
        Sat, 31 Oct 2015 03:29:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.55.10 with SMTP id n10ls64795igp.33.gmail; Sat, 31 Oct 2015
 03:29:01 -0700 (PDT)
X-Received: by 10.50.17.106 with SMTP id n10mr2347715igd.6.1446287341810;
        Sat, 31 Oct 2015 03:29:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si1134047pbc.1.2015.10.31.03.29.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so102163870pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5DuS4z0LolQe3xlVeRAPFSEVsJf5mQ94JqN5S1tJIlg=;
        b=ynRWQgtBZFgQee4bOIu5S4hW4k8HInKhkx6qdquS1lyAR74cJV4bF9HtfuSppNcPdk
         7n4qzgR6prtfoxzPamWpKJUhERWklPIyLRYnUM8tfp/g+VHiKvqk5Y959eZI8KJBXEd8
         QfDktGQtZ00Y/vPKvicFYYFKUU2ZiF5M9zRUaw+6riEhSV4I+GQwexPhw0l1EqEkLjid
         kz8XT0dLSam2MlyD2e+NL6oZUfwYc2c6lNBKp9Rg6AANi39zr+3ejlOkkX/yXno8YYaS
         4mprKh6NEoeFaNkiqHt/SWGyjekihMNbLoUDKtaZeyBmvMJB1vw6gL6IgwiWgsiQN73h
         h+yQ==
X-Received: by 10.68.236.229 with SMTP id ux5mr14456368pbc.1.1446287341666;
        Sat, 31 Oct 2015 03:29:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id wh10sm13145706pab.2.2015.10.31.03.28.58
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:29:01 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Cc: <devel@driverdev.osuosl.org>
Subject: [PATCH 2/6] Staging: lustre: lmv: Remove unused function declaration
Date: Sat, 31 Oct 2015 15:58:42 +0530
Message-Id: <1446287326-9404-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
References: <1446287326-9404-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.563497EC.0168,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The function lmv_blocking_ast is declared in header file but not used.
Hence remove the declaration.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_internal.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_internal.h b/drivers/staging/lustre/lustre/lmv/lmv_internal.h
index b808728..c8f40d9 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_internal.h
+++ b/drivers/staging/lustre/lustre/lmv/lmv_internal.h
@@ -68,8 +68,6 @@ int lmv_intent_open(struct obd_export *exp, struct md_op_data *op_data,
 		    ldlm_blocking_callback cb_blocking,
 		    __u64 extra_lock_flags);
 
-int lmv_blocking_ast(struct ldlm_lock *, struct ldlm_lock_desc *,
-		     void *, int);
 int lmv_fld_lookup(struct lmv_obd *lmv, const struct lu_fid *fid, u32 *mds);
 int __lmv_fid_alloc(struct lmv_obd *lmv, struct lu_fid *fid, u32 mds);
 int lmv_fid_alloc(struct obd_export *exp, struct lu_fid *fid,
-- 
2.1.4


