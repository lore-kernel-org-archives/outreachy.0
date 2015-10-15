X-GM-THRID: 6205781635135176704
X-Received: by 10.107.38.141 with SMTP id m135mr7028085iom.18.1444897332492;
        Thu, 15 Oct 2015 01:22:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.101 with SMTP id v98ls439741ioi.35.gmail; Thu, 15 Oct
 2015 01:22:12 -0700 (PDT)
X-Received: by 10.66.90.132 with SMTP id bw4mr6454877pab.7.1444897332238;
        Thu, 15 Oct 2015 01:22:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ce6si761003pad.0.2015.10.15.01.22.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ao1so16210797pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=wZi48QTaYz6jogT5LJact0ZVrvKdAL7km4AJcItoqcs=;
        b=LV1y0ZPaD8rf08J8PQuEeNly751+h7vPDISXV+FZPyDGEoYnMLPYRqviaiWyTxoW2H
         pLgfbcXsOVs56IQxkmeILBG0ElpCgNcjTCY8Ig0R9kdTFQ3Wadnr3eCfqJERktNw72aq
         UaUfoDGHmgXD3Ff0C+rJemj6D3+9xlxX704Kfs4RtunHTm1BiCc/9/z3negIqLrJnSxr
         pA3fKcpWq6g8XbWzm3TS6tCT/EeJ4grckSridy+3ZY/eukvumxyHQkYFLoeLW0M3jygY
         qdMleT19bpuQLONaDR8bn/579Dm7CRGUBz2JG2kdRXvc8EoDMkDH0YRBC6eq0eGv7ak5
         SwYQ==
X-Received: by 10.66.252.35 with SMTP id zp3mr8570052pac.43.1444897332109;
        Thu, 15 Oct 2015 01:22:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id hq8sm13918136pad.35.2015.10.15.01.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:22:11 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:52:08 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 14/18] staging: rdma: ipath: ipath_init_chip: Remove useless
 initialisation
Message-ID: <d8b257b46240e68379ec32114043f7a22e173fb2.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_init_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/ipath/ipath_init_chip.c b/drivers/staging/rdma/ipath/ipath_init_chip.c
index e95af81..8b79d89 100644
--- a/drivers/staging/rdma/ipath/ipath_init_chip.c
+++ b/drivers/staging/rdma/ipath/ipath_init_chip.c
@@ -210,7 +210,7 @@ static int bringup_link(struct ipath_devdata *dd)
 
 static struct ipath_portdata *create_portdata0(struct ipath_devdata *dd)
 {
-	struct ipath_portdata *pd = NULL;
+	struct ipath_portdata *pd;
 
 	pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 	if (pd) {
-- 
1.9.1


