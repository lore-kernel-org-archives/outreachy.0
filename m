X-GM-THRID: 6204754090721804288
X-Received: by 10.13.223.129 with SMTP id i123mr25321457ywe.33.1444671134981;
        Mon, 12 Oct 2015 10:32:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.58.5 with SMTP id m5ls1146638obq.61.gmail; Mon, 12 Oct
 2015 10:32:14 -0700 (PDT)
X-Received: by 10.182.50.170 with SMTP id d10mr24828354obo.48.1444671134670;
        Mon, 12 Oct 2015 10:32:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id vy6si679416pbc.1.2015.10.12.10.32.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:32:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ve7so101415579pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=DvxK2LZet4uYZyGZDR5TnJ2XcAjLdyiIydb8+qk/fzE=;
        b=IobuUaFMGE1SzGxRu+n6JpLOZvA4Z7kDUSTSGknecETf4xNWQLFyiGdaMWLjae7RCy
         n8fz8obWrxIEvxD3r0asSX+MbFsya6u3G3tMICeVpAmYVnEsMFGCC24AoJxlLoJqYl/M
         0wPdj9RIZcbQ8neQSmSkrZdy+2UB3jtu/z61y3a/fAzWckBzIBvOSUMEw+KSZOyS9Pgo
         gf1HqiZK9NyJ723w0nuBvmzL/69kDN1TzTHmzAFh0NBzKyTAQJmAaRcwpBhvSv+ZrG2b
         6iBgQ6wIYCGUebYG5hTNf42C6MgXPgfTVIzsf2XrB343G0Cfmy1yfQ0UoPS9PELDilcR
         cy4g==
X-Received: by 10.68.190.170 with SMTP id gr10mr34817444pbc.91.1444671134539;
        Mon, 12 Oct 2015 10:32:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id i9sm19395927pbq.84.2015.10.12.10.32.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:32:13 -0700 (PDT)
Date: Mon, 12 Oct 2015 23:02:01 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] Staging: wilc1000: host_interface: Remove extra NULL
 test
Message-ID: <3f3303356a62e08e17ffde7cdc8531d5b1fd34bc.1444670615.git.shivanib134@gmail.com>
References: <cover.1444670615.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444670615.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL test statement as it is preceded by another NULL test on the
same variable in the code.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
Changes in v2:
	Deleted one patch and added another. Improved the other ones.
 drivers/staging/wilc1000/host_interface.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index bb833d3..5e4d620 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -6044,12 +6044,9 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
 	if (ret)
 		s32Error = -ENOENT;
 
-	if (pstrWFIDrv != NULL) {
 		kfree(pstrWFIDrv);
 		/* pstrWFIDrv=NULL; */
 
-	}
-
 	clients_count--; /* Decrease number of created entities */
 	terminated_handle = NULL;
 	up(&hSemHostIntDeinit);
-- 
2.1.0


