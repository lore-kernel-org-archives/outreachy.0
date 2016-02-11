X-GM-THRID: 6249498218591158272
X-Received: by 10.107.3.24 with SMTP id 24mr41666658iod.12.1455155067087;
        Wed, 10 Feb 2016 17:44:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.146 with SMTP id g18ls420084ioi.0.gmail; Wed, 10 Feb
 2016 17:44:26 -0800 (PST)
X-Received: by 10.66.100.201 with SMTP id fa9mr42066971pab.11.1455155066593;
        Wed, 10 Feb 2016 17:44:26 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id g136si466620ywb.5.2016.02.10.17.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 17:44:26 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id s5so1278803qkd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 17:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Pzg1wr/GG+YBwe3ZwCFk6F3f1btWJRjkp6ecKoh/ROE=;
        b=yehQ43T1NDllkVztIVw7PiltDQA7fHvNKm3x6HmmeM69f1bCq+kPhgM+GvtmgoFC3y
         JJbg9N7NlwrUXoO5jJMH3uN+hYYN1hJKsu1khO+3Hg8wOEVm37BgcFa2SKYWjDVgi5Au
         joio8buMX/v7XCuduH6CD1giMxKMkLwE9nsOtc1iyl22FSfgPtmTj9hjBk5g54PazO/9
         3l28Qt33TX1qc7onA8yABoXcrqA66wIxkqwZhO0GrilHv5LcRtu5pa+wkjtM3wQ/AX+U
         nNbvNH2JtgUSWHrigK9Vy6LoR4PX5YUDF4+YpvYI2f+c79lE1yaiWLXpyzA0pjfOaqcS
         yJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Pzg1wr/GG+YBwe3ZwCFk6F3f1btWJRjkp6ecKoh/ROE=;
        b=S/lWLaje5PXAAbujknL6MPv1oOWFUxkwwZ5YWrpuI7H7yma5oY7ZK1z9gzmPRrheLe
         fEKRegja79iFE/IV71it1b1OUBTPCA8TXpxS/CS14mVjEi9f7rZwfEBUwpm8c/hPneuT
         ojgeVc+hbi4Sh0PagPFWSaGuO+1UMApNLNJW27myjCGgUq4k65w6yWG4rvnEVWfVUiQH
         A4YWZGE3p3Oi3GK73r6sd2c7WSGynqkHl2pvG5x0gjGQ/okRIlzdm+sRo4PQew71qjP8
         k91RSXKhAeBNXWWDauUqS3zE4BDGX9Zo+6ij6xu3fU402XSVhBuMvdC+20pEfmkLlv7a
         aOdA==
X-Gm-Message-State: AG10YORqXGJzFPVK6BGIC07CdyyNQ4fwaLUBFcIzJ9YWVnzw5ti2aB3n03cKlWeqzusVaA==
X-Received: by 10.55.207.217 with SMTP id v86mr52683613qkl.16.1455155066378;
        Wed, 10 Feb 2016 17:44:26 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id y200sm2427878qka.48.2016.02.10.17.44.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 17:44:25 -0800 (PST)
Date: Thu, 11 Feb 2016 01:43:47 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: unisys: Modify boolean assignment
Message-ID: <20160211064347.GA3667@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Boolean variables should be assigned true/false rather than 1/0.
This patch makes a correction on such a variable which has boolean
values assigned in all other places within the file.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Modified commit description to include that there was only one
  instance where the variable was set to 1 instead of true.
   
 drivers/staging/unisys/visorhba/visorhba_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 5a78409..e93bb1d 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -1062,7 +1062,7 @@ static int visorhba_resume(struct visor_device *dev,
 		return -EINVAL;
 
 	if (devdata->serverdown && !devdata->serverchangingstate)
-		devdata->serverchangingstate = 1;
+		devdata->serverchangingstate = true;
 
 	visor_thread_start(&devdata->threadinfo, process_incoming_rsps,
 			   devdata, "vhba_incming");
-- 
2.5.0


