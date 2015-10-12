X-GM-THRID: 6204754090721804288
X-Received: by 10.50.20.227 with SMTP id q3mr12579347ige.11.1444656964913;
        Mon, 12 Oct 2015 06:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.114 with SMTP id q105ls3365198qgq.14.gmail; Mon, 12 Oct
 2015 06:36:04 -0700 (PDT)
X-Received: by 10.129.159.71 with SMTP id w68mr23236862ywg.28.1444656964458;
        Mon, 12 Oct 2015 06:36:04 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id uv4si1862299pac.0.2015.10.12.06.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ex6so724302pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HvEnXb6BLK8CP0aIX7mob52Poco4heO3iHRO6JJzaYc=;
        b=x7O8DP8JsGM8TWSh6WRy6omhvhhIDLQcH+0deb4w7CCwIdwO3dwdKFKXcICBRzf5Ah
         JoKcWUrpsp8uMY25br25JKono5ifrcrgimsriCFI7wD8LiPilowErwAKClAndGREJZIo
         Pimad357rvyk2kRGVHvp9A6dBH2r+4zumtT2AhZMnT/rHXa9fGvwlrOXyy2o2v4X4qWD
         gsX0Cp6mBfPwpoQJWNcBJ4bG0Qb9xmRislEVz5TeB4AIiIbYE9B8hlT3FMk6pjaRQ+Z/
         /Wa+qynlM01EyeM7Yrv92V8LY/dFoXL5fGu/792Kqcdkvo2JK0FQ3ZzAeh3ZNQLSPqBy
         +m0Q==
X-Received: by 10.66.229.67 with SMTP id so3mr35202104pac.66.1444656964325;
        Mon, 12 Oct 2015 06:36:04 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id pq4sm18518252pbc.53.2015.10.12.06.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:36:03 -0700 (PDT)
Date: Mon, 12 Oct 2015 19:05:57 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: wilc1000: host_interface: Remove extra NULL test
Message-ID: <c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134@gmail.com>
References: <cover.1444655924.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444655924.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove NULL test statement as it is preceded by another NULL test on the
same variable in the code.
Issue found using coccinelle.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d279eba..b6eea9a 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -6038,11 +6038,8 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
 	if (ret)
 		s32Error = -ENOENT;
 
-	if (pstrWFIDrv != NULL) {
-		kfree(pstrWFIDrv);
-		/* pstrWFIDrv=NULL; */
-
-	}
+	kfree(pstrWFIDrv);
+	/* pstrWFIDrv=NULL; */
 
 	clients_count--; /* Decrease number of created entities */
 	terminated_handle = NULL;
-- 
2.1.0


