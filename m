X-GM-THRID: 6210088605629546496
X-Received: by 10.129.84.198 with SMTP id i189mr33282572ywb.32.1445936324395;
        Tue, 27 Oct 2015 01:58:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.138 with SMTP id v10ls3146090qgd.5.gmail; Tue, 27 Oct
 2015 01:58:43 -0700 (PDT)
X-Received: by 10.129.87.88 with SMTP id l85mr3112459ywb.29.1445936323741;
        Tue, 27 Oct 2015 01:58:43 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si3977951pbc.1.2015.10.27.01.58.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:58:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so216792454pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=d2k9LYSFdi1M1TpGwuI9Y5vf/9lNEfF+ZZTZshd9Ec4=;
        b=Eo5qYPwAW8ROlpiUwyZzRbb92wr8wVk93DKI5HAEnuZpI1x+2YvvmJsv+7G7gF7odC
         KgQcn2zGB3nRqzFeaRfW+LGnpJV7dqDNnjdDhe1/qc7uHFnlkSRr2+4/Y6jSe3h7xVKu
         M/Kzrea2jykYq9U2SCOnMqZ2pefNIwXKAWiC/lmB43pbfKwu+HMahL9/+T/+RhrbsYP/
         Hcisz1DbFjnmEZvMYHj3KylABGbN25HsxegqU8H7ZCOyNoFIa9plI71RpWTXLSy7OYgk
         j4lzZBI2OCyxYAthugitXUwQnAX/QlWHe/IjyGqlglJSd2duNHcefP0edJhjavwTsb5l
         62rg==
X-Received: by 10.68.69.35 with SMTP id b3mr47251444pbu.22.1445936323610;
        Tue, 27 Oct 2015 01:58:43 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ve8sm38314685pbc.48.2015.10.27.01.58.41
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 01:58:42 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:28:46 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 0/8] Staging: rdma ipath: fix checkpatch issues
Message-ID: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset fixes checkpatch issues, for ipath_common.h and
ipath_cq.c

SirnamSwetha (8):
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


