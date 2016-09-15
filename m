X-GM-THRID: 6330639307056873472
X-Received: by 10.157.7.7 with SMTP id 7mr7328100ote.50.1473966967435;
        Thu, 15 Sep 2016 12:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.227.70 with SMTP id d67ls640495ith.3.canary; Thu, 15 Sep
 2016 12:16:07 -0700 (PDT)
X-Received: by 10.107.141.145 with SMTP id p139mr8207460iod.15.1473966966993;
        Thu, 15 Sep 2016 12:16:06 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 7si1467380pfw.1.2016.09.15.12.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id oz2so2446129pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 12:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SZCI8tYrlhpoB7RcBmgGMVsN0I1pnPM71zTXYlZXV/E=;
        b=g/4t5xNUW+q9O3g2ffkCOz7FzYWZ3ZkyUnf4obsMocgdkEFjIJjUBTe9u1tgTK+DBU
         VKTWybZkRn7rcnRKfUPouaggw9gB9iOjd9nFlsE9rTZRtPTnjLSYbZIEVqN0exdFlsKz
         gQoC2QgZd79Wznp5MtDOkAnogiyMkrLDtJx/wut4359LROuB4Qb3+Kef/dTRIRgQKMTk
         xai18GMKKH65hDI1BkLg8aokwIFGm2g4voMi/H68alxuklf0fqX+s+TiKBNm2zmj6P00
         g2qr3O9cG8YSJ2gG6met7fOpdwhQhxBefLC9F6h6JxoRdbFtNLpowwMfpAFLrs1NHoE0
         HWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SZCI8tYrlhpoB7RcBmgGMVsN0I1pnPM71zTXYlZXV/E=;
        b=XNblpx7Z/Ig7dsEuPOn6s+CK2rRx8OxKDzXf8Ay6FaOjG64yowgU6Xk1LGKP0VzHC7
         B5uZTnq+OhKvMg1eKS+3CHDEAmim/CF3cWfKyMSnwLGjeifCTJfuFsZRs3idCtqxg7Qy
         YcvJrX3jwuakYEMjSQRwe8pyXZhaoOSkdNDsXgpSYcrEOi9T6R0nbZDvTlRiNg4EMBPr
         0f1awrKOSJ90BksQQHC5cb2sxbXVvEHik7FNhIpeiDa+vXs705MRqYHjKCqreAQqvEwL
         CskdQmkoC54TlMeqTuu42AfAZaUmoJ9l30yRAjMpi9x2wXA70z46jznuE0wPEN3brdLS
         v50w==
X-Gm-Message-State: AE9vXwN0EWcumlIiLmE9+lQ4vi8fVhZ8fY7nZDo378P/+Z122x/O8VXIiE4fzGzlAZgyDQ==
X-Received: by 10.66.245.177 with SMTP id xp17mr17226520pac.118.1473966966826;
        Thu, 15 Sep 2016 12:16:06 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z187sm46896920pfz.39.2016.09.15.12.16.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:16:06 -0700 (PDT)
Date: Fri, 16 Sep 2016 00:45:57 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lior Dotan <liodot@gmail.com>,
	Christopher Harrer <charrer@alacritech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/5] staging: slicoss: Remove unnecessary blank line
Message-ID: <b434fbb38a633c90da08b0080e6d14e32a2ad499.1473966683.git.aquannie@gmail.com>
References: <cover.1473966683.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473966683.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes unnecessary blank line detected by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 6b1c92e..8be8f7c 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1660,7 +1660,6 @@ static int slic_link_event_handler(struct adapter *adapter)
 	struct slic_shmemory *sm = &adapter->shmem;
 	dma_addr_t phaddr = sm->lnkstatus_phaddr;
 
-
 	if (adapter->state != ADAPT_UP) {
 		/* Adapter is not operational.  Ignore.  */
 		return -ENODEV;
-- 
2.7.4


