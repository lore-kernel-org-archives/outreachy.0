X-GM-THRID: 6210938115276668928
X-Received: by 10.182.196.34 with SMTP id ij2mr27657obc.24.1446099644967;
        Wed, 28 Oct 2015 23:20:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.100 with SMTP id e4ls178444igl.8.gmail; Wed, 28 Oct 2015
 23:20:44 -0700 (PDT)
X-Received: by 10.50.33.79 with SMTP id p15mr3509347igi.3.1446099644524;
        Wed, 28 Oct 2015 23:20:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id iz5si923pbc.2.2015.10.28.23.20.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:20:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhk11 with SMTP id hk11so30802923pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ukvWBpQYtV59BJDVQT55hKMLLrAHMJmFprBhH/nfxd0=;
        b=bcsUvcllLPMG0Ubu73B7NgwBM7bipGo2x7NrFNGXqfTpo0pU4AJNrKgGk/H144L8/Y
         sZACPdnolPg3ls5fUOXLgY54ojknERfoia6vGp46SRe1vbg/6AcVCjQRO9Er1Ag3LrSV
         fFTIlBxspsndrltN/Yq/7LYquDm2bjr03O2Cu5Tk/q9sJPlwj3junLhJi9Oy5tkmezT3
         73s82DHaNxc01nP1FY3XvUz4zsVqij7XCVYY3jqyq59jQxppFBZMqT0K7woa2cikNeY8
         GzJY7T3OBEFI1xVSfoqQFAPpNbSXeGqzY+H7PJp8SHC19uC7mZSB0C/iTPb9+sMjFBdb
         qWhQ==
X-Received: by 10.66.167.101 with SMTP id zn5mr41030pab.48.1446099644382;
        Wed, 28 Oct 2015 23:20:44 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id wy8sm69294pab.8.2015.10.28.23.20.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:20:43 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:50:35 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: lustre: console: Remove irrelevant return
 statement
Message-ID: <20151029062035.GA36208@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove return statement from the function lstcon_group_ndlink_move()
as its return type is void.
Fix checkpatch WARNING: void function return statements are not
generally useful

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 9748a09..b1eceb4 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -318,8 +318,6 @@ lstcon_group_ndlink_move(lstcon_group_t *old,
 	list_add_tail(&ndl->ndl_hlink, &new->grp_ndl_hash[idx]);
 	list_add_tail(&ndl->ndl_link, &new->grp_ndl_list);
 	new->grp_nnode++;
-
-	return;
 }
 
 static void
-- 
2.1.0


