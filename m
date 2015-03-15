X-GM-THRID: 8439037165568
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,98d367b8f2077b85,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.66.135 with SMTP id f7mr10737866pat.29.1426419293699;
        Sun, 15 Mar 2015 04:34:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.254.129 with SMTP id ai1ls732063igd.33.canary; Sun, 15 Mar
 2015 04:34:53 -0700 (PDT)
X-Received: by 10.50.87.97 with SMTP id w1mr6791608igz.1.1426419293209;
        Sun, 15 Mar 2015 04:34:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id l3si1303583pdo.0.2015.03.15.04.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 04:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwe9 with SMTP id we9so35350115pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 04:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=14y+BVJYlxO1DDC6dI8VfjV4tx/ADRQlUDVVgKAX6qA=;
        b=gTw9eWbf8Evvo/l6E7s14EXaBE5FlHlbJveNyw2BNja2WCMIulyG7KvnJuooaRwsao
         W1JIGx4qWCONl0UxUzowJ3YwU3HEfbpF46Ky9OU3/lXjlgQEuTvBjCpEFcAXNUSBZ8rv
         1bN4xXuJ/s5hn2r5h0t9CohiVlQcENV8z/Mt3PlaMPBIGmO9+vqgTjv8jwAFSTjPJ+ky
         u67y5GGIi1LWQRPtOTNRTIxIDaKSX+C/kzM1czy6l7ZVSgPzYYhY5rhEngh67/O3UqDC
         bjBK5EDKB/vhyg4q0Vu1WdHDswLZwgMb4eLX9cOMbsC/90eAutNlr7+81dGxKw/erclu
         Aihg==
X-Received: by 10.70.5.3 with SMTP id o3mr125877436pdo.17.1426419292933;
        Sun, 15 Mar 2015 04:34:52 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id pu9sm12092723pdb.49.2015.03.15.04.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 15 Mar 2015 04:34:49 -0700 (PDT)
Date: Sun, 15 Mar 2015 17:02:58 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: fbtft: Split function call into two lines to
 improve readability
Message-ID: <20150315113258.GA26684@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Split function call to two lines improve code style and
increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 Changes in v2: Changed subject line to make it more
		descriptive.
 
 drivers/staging/fbtft/fb_pcd8544.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index b13162c..0228f4f 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -94,7 +94,8 @@ static int init_display(struct fbtft_par *par)
 
 static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 {
-	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n", __func__, xs, ys, xe, ye);
+	fbtft_par_dbg(DEBUG_SET_ADDR_WIN, par, "%s(xs=%d, ys=%d, xe=%d, ye=%d)\n",
+			__func__, xs, ys, xe, ye);
 
 	/* H=0 Set X address of RAM */
 	write_reg(par, 0x80); /* 7:1  1
-- 
1.9.1


