X-GM-THRID: 6208399403783290880
X-Received: by 10.182.106.11 with SMTP id gq11mr11722440obb.25.1445505629101;
        Thu, 22 Oct 2015 02:20:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.207 with SMTP id 76ls811674iot.4.gmail; Thu, 22 Oct
 2015 02:20:28 -0700 (PDT)
X-Received: by 10.107.7.230 with SMTP id g99mr12296060ioi.17.1445505628729;
        Thu, 22 Oct 2015 02:20:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id zg1si1586140pbb.2.2015.10.22.02.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hk11so82270965pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 02:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=BuLFoc9vyN6IJJvzOimD6R5qmaQDxpVAgmIVPz/M6+w=;
        b=z54YnEM+8LxHksbWz6bQ7BWNUu/DZXdjIATJ08whIcBvfBMlRMLtJ4iuRJHfzlLWWS
         fts6q9PrMBIgkoBssCcmBbwAkk4U53rD5hYY5N8e/SIzvC4jk8GCaZDWea+3rdzAe+JV
         XpUdMftgf/eRAPQ5Oa1I9Vd9sqqa6yVdayPRebNn1XlOO1K2nh0r5JKmqXI4X5qzixaS
         +StocXzSbfm+UNGdOgRSabFtr6C5Uy2nwhq7rOadGJOd5MR3T2LF7IbJLwvHnM3+VEl+
         f38jyLB59mohP6xqMxT06jKnZSEG6/NlatUH+81afh/vl38+zIIhfj7laXspkSBeVsTa
         UiMw==
X-Received: by 10.68.88.193 with SMTP id bi1mr16371697pbb.49.1445505628628;
        Thu, 22 Oct 2015 02:20:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.connectify ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id tj2sm13088910pab.4.2015.10.22.02.20.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Oct 2015 02:20:28 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org
Subject: [PATCH 0/2] Staging: lustre: Remove unused functions
Date: Thu, 22 Oct 2015 14:50:18 +0530
Message-Id: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4

These patches remove the definitions of functions which are not used.

Shraddha Barke (2):
  Staging: lustre: ptlrpc: Remove unused functions
  Staging: lustre: obdclass: Remove unused functions

 .../lustre/lustre/obdclass/lprocfs_status.c        | 139 ---------------------
 .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
 2 files changed, 202 deletions(-)

-- 
2.1.4


