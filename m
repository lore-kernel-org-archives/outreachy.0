X-GM-THRID: 6205498930693668864
X-Received: by 10.129.74.198 with SMTP id x189mr2688168ywa.53.1444830310357;
        Wed, 14 Oct 2015 06:45:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.83 with SMTP id 77ls180779qge.74.gmail; Wed, 14 Oct
 2015 06:45:09 -0700 (PDT)
X-Received: by 10.140.235.131 with SMTP id g125mr2680017qhc.4.1444830309839;
        Wed, 14 Oct 2015 06:45:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id el2si899135pbb.0.2015.10.14.06.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ur7so5983276pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 06:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UoExXEA9XDKd0GKwLkigijx81+4aIkwFpQYlCnkCIWc=;
        b=wHhQkPHEhRNBGHSWPudOwTtlVBI7TEFfkgoRKttVmuFWld4QNjasKaKpzBSaMlPc80
         v8AIvHl8g7C5eEQLLTxgM4b65NOKAt9K7VFtMO5zVkRoUq8HJdcS1tHDLzYCwxhkEpS7
         NPNo5LguicBuikHdHygwFTHRuA5cJROKYIqn7PwalXJAdDnSLq4TYGEH5zs7pEQ+CtNc
         8sPGvWFHpYhhChPsk9QS7sZWwQOepPbu2oBZxehEM7c+GwaWIpi03ByXGYbBiROa3ebm
         wQ4A9WBk8igo8iDCh591id68aL4exHNCiFM4UJ9EaYpEfIUcVzsVUepk4T8i44+HXpho
         lwoA==
X-Received: by 10.68.178.131 with SMTP id cy3mr3838464pbc.52.1444830309710;
        Wed, 14 Oct 2015 06:45:09 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id rc5sm9835977pbc.95.2015.10.14.06.45.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:45:09 -0700 (PDT)
Date: Wed, 14 Oct 2015 19:14:59 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: rtl871x_io: Remove explicit cast
Message-ID: <20151014134459.GA14578@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Explicit typecasting is not required and should be removed.
Semantic patch used:
@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index e4e5b13c..fbbc635 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -150,7 +150,7 @@ alloc_io_queue_fail:
 
 void r8712_free_io_queue(struct _adapter *adapter)
 {
-	struct io_queue *pio_queue = (struct io_queue *)(adapter->pio_queue);
+	struct io_queue *pio_queue = adapter->pio_queue;
 
 	if (pio_queue) {
 		kfree(pio_queue->pallocated_free_ioreqs_buf);
-- 
2.1.0


