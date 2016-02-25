X-GM-THRID: 6255245975090102272
X-Received: by 10.140.176.6 with SMTP id w6mr14331133qhw.23.1456412946206;
        Thu, 25 Feb 2016 07:09:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.106 with SMTP id e97ls386798qgd.67.gmail; Thu, 25 Feb
 2016 07:09:05 -0800 (PST)
X-Received: by 10.129.146.73 with SMTP id j70mr41068748ywg.25.1456412945538;
        Thu, 25 Feb 2016 07:09:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id v197si552853ywa.1.2016.02.25.07.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:09:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id y9so42342570qgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=QRyu+MdNLKcCtgCg3xNlwC7vjy4ZuOWjYkNJYwRGjJ8=;
        b=PejSDuzSWRiBY+VnJYMu8If0UZFVlSW+2ZvuA0Q6oqqxlCCHkim9jd8DbsclhYoNEE
         L5YNuIjLw1VW1zvnlWkXFMZwn+NacmRcOF+UKNWWn9RWd1kE55z1C+Pen35BtgHXB+BP
         3dyuR76MxGDlxF7RC3mQIS70VbtHnvH82H0c4hgVtPyiONiR4VZawnAsxYUoyAR19KWx
         7O32xCNPNioZZkrrmuFqxEantQRGXL0U4SvLy1k0A8PHWDkmLW4bGn0eMwFfaNu28aJH
         YBJQbrsUIo+rviyt7QjgfLTLTWp4kYe1mzarOngI+8yOwiXeiBQyNITrCBuNIOFpPOoy
         QFGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=QRyu+MdNLKcCtgCg3xNlwC7vjy4ZuOWjYkNJYwRGjJ8=;
        b=bbHO4hlc2fPDKM4AgH8BHUosNSIlkv6JrbIinflk2nBh2sdvSM+ug8I/6IvGDeZ+LC
         4elVk/sPUlWzi0SikAqJATFK8FuviM8xj0lw/6ZeQg/6K5Dufmm6e+p8JCniGSIpQWka
         HbP3N/XjawCZFWbhLt5ShTkOeV+O9IUhTYkDA0sn6tu+C+0bLuq4bqd9pLbvAF0lnkFF
         GJH3i6ep0UdGCW/5OcsGKo4xS3dtboHhRFCDRll7donJJ9FmNzOUAeadA0uIhj0sO/KX
         PFezsfVBQSiMr7hlp9PAr8wCuuFJTKRFZGuLrmWLmqdSNDnH0ACSs4RvM/lJB+GT49Mj
         SsyA==
X-Gm-Message-State: AG10YOTkugra9t1nSour0ZuArVx/Faojo2xEg6RXdNcRYhmdATPyRKX8VHKIpTK8Fm5oLw==
X-Received: by 10.140.247.2 with SMTP id s2mr40470887qhc.72.1456412945374;
        Thu, 25 Feb 2016 07:09:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 139sm3438489qho.2.2016.02.25.07.09.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:09:04 -0800 (PST)
Date: Thu, 25 Feb 2016 15:08:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: user_sdma.c: Drop void pointer cast
Message-ID: <20160225200816.GA8101@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void *e;
type T;
identifier f;
@@

(
  *((T *)e)
| 
  ((T *)x) [...]
|   
  ((T *)x)->f
| 
- (T *) 
  e
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rdma/hfi1/user_sdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index 2f48419..d152126a 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -345,7 +345,7 @@ static void activate_packet_queue(struct iowait *wait, int reason)
 
 static void sdma_kmem_cache_ctor(void *obj)
 {
-	struct user_sdma_txreq *tx = (struct user_sdma_txreq *)obj;
+	struct user_sdma_txreq *tx = obj;
 
 	memset(tx, 0, sizeof(*tx));
 }
-- 
2.5.0


