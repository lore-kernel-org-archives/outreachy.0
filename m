X-GM-THRID: 6210088605629546496
X-Received: by 10.182.143.65 with SMTP id sc1mr13052600obb.15.1445898927845;
        Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.225 with SMTP id z1ls1035745igl.18.gmail; Mon, 26 Oct
 2015 15:35:27 -0700 (PDT)
X-Received: by 10.107.7.230 with SMTP id g99mr13789229ioi.17.1445898927503;
        Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3839410pbb.2.2015.10.26.15.35.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv9so209601942pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=714llWShlqvyUgt52pnJudmwdd2mvv302mtMCoQ4FKA=;
        b=lC6YwLrnWHpxX+ADbOCa6aa600IXHE7iiQj8ot9Qpvu5daBzgIOeLqTVVGmLCGJg5Q
         JNMvjScUl+xCiYUPWRmXW06/8G6fseRb7PfDOJ0vZChsqVswlj9DGzOL4yrr97pycTAr
         etrssZ0NGz97W+B3ZXZCe7Eqm8egltLgF9iS/9gldYHE6fQe2Zd3HJDP0yZGw5T/Zf9P
         aXq9w2OpFbaph7lJ7LWuu2gmq41MXwFRiuSLdAhjsK/gilXfedg1CiYbayj3OBJtIf+s
         Se0z9lc/G3jFp0bqgv8ScikcE3rcRKkwlE7RE3v5WeAQUY2CV+HjKahLLqAmA+gwCfwh
         XRYQ==
X-Received: by 10.68.193.5 with SMTP id hk5mr24426197pbc.152.1445898927388;
        Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ja4sm35789332pbb.19.2015.10.26.15.35.26
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:35:27 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:05:30 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 0/8] Staging: rdma ipath: fix checkpatch issues
Message-ID: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes checkpatch issues, for ipath_common.h and
ipath_cq.c

Swetha (8):
  Staging: rdma ipath: Removing multiple blank lines
  Staging: rdma ipath: __aligned(size) is preferred over    
    __attribute__((aligned(size)))
  Staging : rdma ipath: spaces preferred around that '<<'
  Staging : rdma ipath: "foo * bar" should be "foo *bar"
  Staging: rdma ipath: Fix space before tabs, line over 80 characters
  Staging: rdma ipath: 'explict' misspelled
  Staging: rdma ipath: No space is necessary after a cast
  Staging: rdma ipath: braces should be used on all arms

 drivers/staging/rdma/ipath/ipath_common.h | 33 +++++++++++++++----------------
 drivers/staging/rdma/ipath/ipath_cq.c     | 28 ++++++++++++++------------
 2 files changed, 31 insertions(+), 30 deletions(-)

-- 
1.9.1


