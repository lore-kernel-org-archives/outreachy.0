X-GM-THRID: 6332164487926251520
X-Received: by 10.13.234.137 with SMTP id t131mr10229028ywe.35.1474321933923;
        Mon, 19 Sep 2016 14:52:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls576020otw.9.gmail; Mon, 19 Sep 2016
 14:52:13 -0700 (PDT)
X-Received: by 10.237.43.69 with SMTP id p63mr5131256qtd.31.1474321933541;
        Mon, 19 Sep 2016 14:52:13 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si7004278pfe.0.2016.09.19.14.52.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:52:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id hi10so1590033pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N3EdiTbA1Y7Bz1pnqptH0FwtH72sjXrEhEoQsq8/3Kk=;
        b=CnuIEZoWyCACbwpBPq59er8u0sNaiAsjwk7RmWJE6xZ44jXwVjc3Xu+UNQDuzXj4HF
         +EaPKpk/Cf39L5pLjnukZ0dGcmqSPf/XyGMSSiNv5/All9SlHpcxlXUDZlqhd6I2AH20
         pzt/G1R8Ad0Mf6eH5GDrOQfwwg/sKaciBKA6DFNRKes6+GwvhqzIL9lPiq5131/f2CTq
         tvW5bJiECKw1oOJqRdUBIZV9xeflCEDvytTDQ45L7yZG3dwyLqQDyJ8GhX8JbApCTKVb
         izF9St8HiHNCa1oOocy0BAVR9Nxmeme9mTrlwrfzTwBQS9A/JgrTrLss7YhZsPLSgU63
         ofAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N3EdiTbA1Y7Bz1pnqptH0FwtH72sjXrEhEoQsq8/3Kk=;
        b=LlsQefNKrivfdQ8PFsKxijUceOJVFjgM8PtD80CqRo9o4nicC6+26t5crpDim8XYTD
         /DJBk5+CqPkcY8+Q8GMTiTLIjy2pbI/12stggVNgJGGCPMWWBgw+YmqHJlLEAq8oNTi9
         VtDNB4oLkwPkJmkyVeLtkNAhzIpiDWzs4EwpQz6RMAnVs9iL3BRIUkc+P+1VjbTONIag
         G0PrIXK/t57/2kMPbUnroHdpjtrJasZXF9EcHRb9Zt1XEmPzQ3MWTx5mbEYn0QUvt5ac
         5hlKdLXsCl88Fy7ZDZsTqtekwGGuS8GwwwbUDOfaJ8ScJC98e7AotZ5bx6YymGBEYttC
         dCtA==
X-Gm-Message-State: AE9vXwNcbqR/buKS3/tesQ0xyyhLqXPOC5H1qlbStaE5lTQ1Eob1MCxdLi+doKh8h6aMnQ==
X-Received: by 10.66.126.46 with SMTP id mv14mr36524768pab.166.1474321914358;
        Mon, 19 Sep 2016 14:51:54 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id d26sm64140652pfe.37.2016.09.19.14.51.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:51:53 -0700 (PDT)
Date: Tue, 20 Sep 2016 03:21:38 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: comedi: Use vma_pages function on vma object
 instead of explicit computation
Message-ID: <20160919215138.GA7612@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch uses vma_pages function on vma object instead of explicit
computation.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index bf922ea..64b3966 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2233,7 +2233,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
 		goto done;
 	}
 
-	n_pages = size >> PAGE_SHIFT;
+	n_pages = vma_pages(vma);
 
 	/* get reference to current buf map (if any) */
 	bm = comedi_buf_map_from_subdev_get(s);
-- 
2.7.4


