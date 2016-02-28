X-GM-THRID: 6256340119116054528
X-Received: by 10.129.73.215 with SMTP id w206mr9120327ywa.6.1456667696270;
        Sun, 28 Feb 2016 05:54:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.1 with SMTP id su1ls927673obc.18.gmail; Sun, 28 Feb
 2016 05:54:56 -0800 (PST)
X-Received: by 10.182.233.170 with SMTP id tx10mr9326255obc.18.1456667695992;
        Sun, 28 Feb 2016 05:54:55 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id 12si3086342pfb.1.2016.02.28.05.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:54:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id yy13so76771264pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n6CXOUILhXA7SaeOCk0rFoasWDO/k79IM7oLUkLyRic=;
        b=mKvBcYelkCDX2H+SVrCwlpScCf1qqDJQJcSz+Kfv1FpiDuQEQe/kXDDS4T64b/rQKG
         k3H7hBS6rT5XtDOrM24+3xbu1iPuoHZyH2rGozZ9DoUOe/ael7acMgyJThBfNhXqUujd
         posM6F+wyT4blpYwkadB9s7G5IbnQVNbIGuOzHRy5MeY8wzrexacALlZ6kw2k0sNwu11
         Eq7jOBY6fEdPUbFqx77EA0ROalX7B26zS7Aa6oWXod40G3lboPFJKPeW6U0bueEbLdnj
         l7AQK0STES3/Wow2NCzf4pgFx1DlxEHtYX3H74Pzj+ildjJDl5t8A6o0/ODElmrKfDOe
         Wh6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n6CXOUILhXA7SaeOCk0rFoasWDO/k79IM7oLUkLyRic=;
        b=ZnXE96U4dz2z9SsqUKDgOiTMhAMUHNnI+n7mcp1Fi+yE3BNaL8OttwBbxwIOZbL4/W
         LTvtAOIKcfEBvrp9qDXWNZcaLo583Jbxo2zRiIvezeDOzNVorTSdPls2FdQXAXg8FpB+
         yDw5iJXZCLYjKluIUf2G5bOhkVOinQb/Qx7CpWGIyIUZIFjHBgb27tWSzD21Bg4MsMBZ
         Lt2ZjAhcwiA74NrMxwE9o3gpuoqN06RR5pov04dzAtptYUoUurt0/p0+ZgZu1fzdnRX+
         ZrikAEVjpPak2c/rZYAZm5MUYuXmoifoaHPx/Lo2ARAvum9Op+9wnG1Du8q2BGPs2vcc
         OXJQ==
X-Gm-Message-State: AD7BkJJPzaD8CgLSvPwt5CDPFfgOTuvKRDdC9nJLLxmjUCwgE4t7997jzoB8B5K2qZD8vQ==
X-Received: by 10.66.228.97 with SMTP id sh1mr15339768pac.77.1456667695692;
        Sun, 28 Feb 2016 05:54:55 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id l14sm31578415pfi.23.2016.02.28.05.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 05:54:54 -0800 (PST)
Date: Sun, 28 Feb 2016 19:25:23 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Remove an error code indent should
 use tabs where possible
Message-ID: <20160228135514.GA4782@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space and use tabs for indent the code.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/api-ni.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index 3ecc96a..29c2e11 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -1336,8 +1336,8 @@ lnet_startup_lndni(struct lnet_ni *ni, __s32 peer_timeout,
 		 * shutdown the NI since if we get here then it must've already
 		 * been started
 		 */
-                lnet_shutdown_lndni(ni);
-                return -EINVAL;
+		lnet_shutdown_lndni(ni);
+		return -EINVAL;
 	}
 
 	cfs_percpt_for_each(tq, i, ni->ni_tx_queues) {
-- 
1.9.1


