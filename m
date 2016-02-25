X-GM-THRID: 6255244617068838912
X-Received: by 10.107.134.68 with SMTP id i65mr2644762iod.33.1456412630737;
        Thu, 25 Feb 2016 07:03:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls363399qga.11.gmail; Thu, 25 Feb
 2016 07:03:50 -0800 (PST)
X-Received: by 10.140.41.69 with SMTP id y63mr13881242qgy.26.1456412630142;
        Thu, 25 Feb 2016 07:03:50 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id xh11si260572igb.0.2016.02.25.07.03.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:03:50 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id xg9so14714431igb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NBAlMZe+8xODjhiUyqObEyoiw1jSeBw5c+odgIUX2AA=;
        b=GPF+61EEHQWf0VP+Man/itVGLk26ExhF+8Uffvod+S5vFxXnNP41+vI8LJWfPksznq
         j8MASJ9P2TuH9v2rvgPK1MiESAKFYK7C+4JgnkTQ8D71EbiG6fGTadqRnBQTF3KCA32i
         UA4bXzycOVIGthTaug/Eu6pkYUmr59MYwJR5hSnKEiPCXXqAyWleAf1e1e3RMe95oOzV
         p9MzKpSDSlSdfNNO+jOPeE9idj1uFiF6DWUhIlgDhwetR/4npb/hhtYk8wFj2w4S0EYK
         NkMQ0frCnvPCxZKUpqphPjn1RhdK8QEigYq+hctvJLdF9moVki7lPC1AGhYJPuC2/x4s
         Bq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NBAlMZe+8xODjhiUyqObEyoiw1jSeBw5c+odgIUX2AA=;
        b=NsIuGWjefJ3e4p2sD3LldeBJ7D2R/hU5WkArTRLTcXAfHa8dBnyLQ3BJkrpZ5LzA7q
         +Vpk1S/x0py4L8bX2KFDu2Vp/tyu9GrK0Gb0JRgI+HlK7SsxrVDgEZtLTL5VLZwCTmu3
         lRZyVfaGxYkPpvHR6bR+0J4gZYt8vIq9cSLaaFESjObNm4qun7b5H3aV2m9wTogzVRzr
         92FKFoK1OssYKoZeQnWw79+o/7WW+6QG6+5YiLsRKfGdN7O4rX7zXX/lD2u6TNCOk/MM
         5098SV2Skg515v2pw3+G1JjM9aBmtJq2RoKC1cEL2hmqnAryolKEg7I3aR3co642lJ9z
         nZAw==
X-Gm-Message-State: AG10YOSDS/jXdALQiN/5L6tqO//t+44Y1XBwfdM7l0WMVaLyQY9ugk2ii4mI5fBB1JSZEA==
X-Received: by 10.50.73.133 with SMTP id l5mr2738143igv.69.1456412629930;
        Thu, 25 Feb 2016 07:03:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j10sm1385531igx.15.2016.02.25.07.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:03:49 -0800 (PST)
Date: Thu, 25 Feb 2016 15:03:01 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Drop void pointer cast
Message-ID: <20160225200301.GA8020@janani-Inspiron-3521>
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
 drivers/staging/rdma/hfi1/hfi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/hfi.h b/drivers/staging/rdma/hfi1/hfi.h
index d4826a9..838459f 100644
--- a/drivers/staging/rdma/hfi1/hfi.h
+++ b/drivers/staging/rdma/hfi1/hfi.h
@@ -1173,7 +1173,7 @@ int handle_receive_interrupt_dma_rtail(struct hfi1_ctxtdata *, int);
 /* calculate the current RHF address */
 static inline __le32 *get_rhf_addr(struct hfi1_ctxtdata *rcd)
 {
-	return (__le32 *)rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;
+	return rcd->rcvhdrq + rcd->head + rcd->dd->rhf_offset;
 }
 
 int hfi1_reset_device(int);
-- 
2.5.0


