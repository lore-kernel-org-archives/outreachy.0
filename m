X-GM-THRID: 6330985798002802688
X-Received: by 10.66.20.97 with SMTP id m1mr2658486pae.120.1474194387306;
        Sun, 18 Sep 2016 03:26:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.162 with SMTP id 31ls2968196otj.25.gmail; Sun, 18 Sep
 2016 03:26:26 -0700 (PDT)
X-Received: by 10.157.0.97 with SMTP id 88mr2508253ota.148.1474194386926;
        Sun, 18 Sep 2016 03:26:26 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id z4si3904782pam.0.2016.09.18.03.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so5543892pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ESOTKPCzZKR37IWDqEYOEjWeiR6tTuxZmqO/ONvJOG4=;
        b=xvw6xxhG/fEXzaLD6/acylfAaYhfryGqAMnqecwu2jiJ3YrMU+hgWSl7fTyR3eWn+T
         6CKXOjmLAF7RjkBCEVecwYHlO+ODRT0X/dMhp212+Eq1ngTqbAPJJBFsQttS+Ja2fipE
         4tab6zkzW+di/xrrxWkaHzxTkgZP4D6PAwY1mW3Io1y4Z4o46PyNbVofFfG/cL9QR7l3
         Ht4TWmDjIfSAPboyQyogKZQbIfnoDhAi0l64P3CNj4HkQiWqdXkmjJ1KQj3vFg4Qc0P/
         oOvZRp3hHFPYJ85mk1eAO3tQ7TdFCy52mOgsDUXg9+4FDn5l2jA2p9yLn01iLDXBBspr
         6DXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ESOTKPCzZKR37IWDqEYOEjWeiR6tTuxZmqO/ONvJOG4=;
        b=YzLYXjcrheN54jt8ZMO3+Zm4NhNNG7vEbiRNl4jZm4Ba52DdcVIFy7HDWkKepxqLcD
         pzlCrmM+rov0y3Qiywrx6WM4JwgqAcWY6RsaYxyKnF1seG9hVjUX6JtybAYUVnvxEKQy
         NAiYfgkSGzEKFlI4JLODGRw5cqZaRdpbTM7sOhRpsP/vjVl55qTuVal9HJDx0jOs9rnJ
         rdj3zdkWLIYLUVs6DM0eVzDMpO4PfK9KpbvkWJZe/rzsHP3jkaEliVullZ/gainqr/0+
         wemk2cBN4RLOKhJ+CdqldJnTZ93uQlrUWXmHhz4L6PAFM4DzU+Xor5UaE4uFFtA5ibMs
         qUXw==
X-Gm-Message-State: AE9vXwOOh6gJc2h21vkDL+Llg61hetG1V8x8IuwkFxDMEcD5ibnBp+nSmMnRRZuoaYDKDA==
X-Received: by 10.66.150.134 with SMTP id ui6mr37342170pab.41.1474194386530;
        Sun, 18 Sep 2016 03:26:26 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id uj8sm23757433pab.5.2016.09.18.03.26.24
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:26:25 -0700 (PDT)
Date: Sun, 18 Sep 2016 04:55:26 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: ks7010: Drop memory allocation cast.
Message-ID: <20160917232526.GA24575@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Drop cast on the result of kzalloc.

The semantic patch that makes this change is as follows:

@@
type T;
@@
- (T *)
  (\(kmalloc\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
   kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...)) 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting the file permission issue.
 drivers/staging/ks7010/ks7010_sdio.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index f9aec4f..c40e6c5 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1147,8 +1147,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 		/* send stop request to MAC */
 		{
 			struct hostif_stop_request_t *pp;
-			pp = (struct hostif_stop_request_t *)
-			    kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
+			pp = kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
 			if (!pp) {
 				DPRINTK(3, "allocate memory failed..\n");
 				return;	/* to do goto ni suru */
-- 
1.7.1


