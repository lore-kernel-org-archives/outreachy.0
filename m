X-GM-THRID: 6473410411176656896
X-Received: by 10.98.66.134 with SMTP id h6mr292077pfd.49.1507782733592;
        Wed, 11 Oct 2017 21:32:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.108.66 with SMTP id h63ls769901pgc.25.gmail; Wed, 11 Oct
 2017 21:32:12 -0700 (PDT)
X-Received: by 10.98.16.131 with SMTP id 3mr320148pfq.40.1507782732941;
        Wed, 11 Oct 2017 21:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782732; cv=none;
        d=google.com; s=arc-20160816;
        b=sFY9d9sopR7ghgExFvj7bLHIDCuIckMCdVyqM0N1qx6XG0+hgrx/y8IeAWwgh7KKqm
         ohvyb90tG5D7YOcnZ8lHy5BLbWyCUMxp1svnk2XMBRcPZVJHw6VUFlwnh21TZB1utYT9
         RIxtEzxISxDxrUJmo47wgBDlUN9CB4Q7vBQeqkx0laJWf5+eVgxAj3kGeup4nkH9epoH
         3ISWzf+Al0ZQszFA8tLyxYjqfHwH82vFl8mGESpmm9U2fKA2/H2Tlv3qNwc+qzJxf7bN
         ltlaBcXEQDOKdQSImQEJLe+RIXbemeUUjIZgAuUSYrZSotAehWs06x3Ahbk/C3ExSPHJ
         2mbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=SQj8HVpHjgAv2NQYv/r37Kar13ek7PMGLyLqbs8f2tmnp/avRvtvjrSP/5/w/PAErL
         tQnTJAHXHsKiMmqTgcwhrt/S6q/U+krh3Q+t9mGE77D1XrDOYSNB8OcxrZouMzwHQ4b5
         o67W/lI4HNm+RshZ9GoxpQPoJWO+ND4Q+FJCIO3WNMsm8KOY8IpXGj9ay+or87+i2XnG
         EAuqNDnVD/fC+SVzYm+5ZSjGJoNro7fcwNenLyariijQCLA9dueB6UOmA5ry/2gb+W0x
         cTeasCUgEeaQBQE/26KXiXbRMNsP9B0ufTxdP46Qjub1LwDS7DD5UwWpdDsY+DIDeY02
         s1Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E3SpGcYB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id i72si10733pfe.0.2017.10.11.21.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E3SpGcYB;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id z11so4440029pfk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=E3SpGcYBkGIbMNupYVD+riujmcxg/o3tfxTwGo6+bNsFvUZKOGfhFENck9jcIMyMFN
         0rfLVF5KygTIslmEBGFC68DkdRVeagmrvHOlfuO4iMxgtdDJLFEq7/mAIy0Ki7ZTaPXp
         bf5n7ZCJggI+SycIN6P5d1fXKGe6O6gQwBHtNVsbc1hFq2J3B9/crLJPn47s1oSxGTUC
         5apieOGesRZZnr8HOSXPwFgLmgyFfemNhmYpRhc0+8vmyXa4tEbhj9d4ikUDCG2Pq4/T
         IyBMgiaiy8G+wz0r7W7d1ASlPsZaG+z9Thhc6IqgVL6B0pcle1kb6p6imjriVsqix0jm
         4HlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dt+mYIjBqPxp03m6tJqs/O2aepzQAvG0B5IzjVyVVt8=;
        b=DlvUCJY/N80d1GJtNBCf7tcY/VXWPo6CeLO5STcX7KXiGEg/cJBsIEcnRT8aKFCq+/
         um/lItY4vsJF81bLVPhXqdx9mqKB8/YZajgyAuLHz+7fAvYJxl4lLceChk7jQPyZLjTs
         mR7zbz9XOleCWXKvdUGJdAJNkrkYwXsY9QArF1stQNSb4bMVb4DcokB5QLOFeqkLS/cL
         XzGTVHrxrj/IrxRJG2JCB+0uNuR2ZgV98Ojb1BX9WSPFgCwQmCMLoKmg7WYleyfJempL
         O7OJMIZ3HAT1lxWw9A5Pu+Qb5skbO9MG22aUpjDjGdzwplOSrKaJEWCpAuqQkiH5uonM
         d5Rg==
X-Gm-Message-State: AMCzsaWKWMILWwcKP6gabWZOrcSc8EcfNDWRgTFdB+0jhupl58zLCtH/
	W4qhC19uzagalZRIA/Mm+wA=
X-Google-Smtp-Source: AOwi7QDqDy1JydMaTgGgLaAEoaTm5bv0jy+0LWTmYV0bQmWvtNY5xuc+DdUFSHxROgzMCtWyohPx6A==
X-Received: by 10.99.60.83 with SMTP id i19mr1048603pgn.59.1507782732657;
        Wed, 11 Oct 2017 21:32:12 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id q69sm16632801pfg.127.2017.10.11.21.32.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:32:12 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 09/10] staging: lustre: llite: fix coding style for error messages
Date: Thu, 12 Oct 2017 10:01:22 +0530
Message-Id: <1507782683-12754-10-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

The "DFID" part should be added to the same line as the rest of
the message, to match current coding style.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/llite/dir.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
index 58d832d..ec9b1ba 100644
--- a/drivers/staging/lustre/lustre/llite/dir.c
+++ b/drivers/staging/lustre/lustre/llite/dir.c
@@ -734,10 +734,10 @@ static int ll_ioc_copy_start(struct super_block *sb, struct hsm_copy *copy)
 		rc = ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
 		iput(inode);
 		if (rc != 0) {
-			CDEBUG(D_HSM, "Could not read file data version of "
-				      DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
-				      PFID(&copy->hc_hai.hai_fid), rc,
-				      copy->hc_hai.hai_cookie);
+			CDEBUG(D_HSM,
+			       "Could not read file data version of " DFID " (rc = %d). Archive request (%#llx) could not be done.\n",
+			       PFID(&copy->hc_hai.hai_fid), rc,
+			       copy->hc_hai.hai_cookie);
 			hpk.hpk_flags |= HP_FLAG_RETRY;
 			/* hpk_errval must be >= 0 */
 			hpk.hpk_errval = -rc;
@@ -835,8 +835,7 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
 		 */
 		if ((copy->hc_hai.hai_action == HSMA_ARCHIVE) &&
 		    (copy->hc_data_version != data_version)) {
-			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. "
-			       DFID ", start:%#llx current:%#llx\n",
+			CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. " DFID ", start:%#llx current:%#llx\n",
 			       PFID(&copy->hc_hai.hai_fid),
 			       copy->hc_data_version, data_version);
 			/* File was changed, send error to cdt. Do not ask for
-- 
2.7.4


