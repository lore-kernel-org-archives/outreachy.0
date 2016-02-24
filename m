X-GM-THRID: 6254580575777062912
X-Received: by 10.140.246.3 with SMTP id r3mr6307167qhc.2.1456258021576;
        Tue, 23 Feb 2016 12:07:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.226 with SMTP id o2ls946696igv.8.gmail; Tue, 23 Feb 2016
 12:07:01 -0800 (PST)
X-Received: by 10.66.236.199 with SMTP id uw7mr33685576pac.47.1456258021080;
        Tue, 23 Feb 2016 12:07:01 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id y131si1931548ywc.0.2016.02.23.12.07.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:07:01 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b35so145086125qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 12:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FOhQzRsfNVCcmhlZZr3PkckhQfuU1aXrIeCStGe5dKs=;
        b=S5ZrZ2N7XkYmcg04EQSd1e/ovCww6K9dIhCY/7Ky3DmhpJHt9rD+hXCkhyYkSqqeUo
         +3fKTyEpLu4ienC1lCl33ZULfdxDpT3NF6fYs+PiRPXPQP3/M8IZEjFYMPyIRvpGcEp3
         wNpCR5WBLyyU76gnhAHnRaflW2c4Lx37m5r+8+i8lIjfWkgYQPwsaGKFPzinhoHrteTu
         HLrCRi8bQMO3cr/iCacevS9RWK9ggsxrAdiCZa0AFFvf794MPY9IAOKg8LxNECnrLUg2
         PaepIGl0YnXevlTDZ4j80yM5cDFk4DxM+MRAuQNYZo50S2F9BMu8mktEhy5pTdNSfHIA
         xcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=FOhQzRsfNVCcmhlZZr3PkckhQfuU1aXrIeCStGe5dKs=;
        b=YyAxgSDbp6xtgzj+277lrdXNUTMfKPDCHMhg/X8xboceGeDBM1IhZHYe+4OFj91OCF
         jyjrdlUI+4rNYRAVLsO6e3lznvamlXHXXsCJcko9KK+2sMRQONNAsUkeFUO7V2DQY3M2
         f047UCnZYTI6SIgAWgVYBXj4BTs8Ucw7GUsSjf/r9nQBnyj27poX0IqxhJrYAFhI6zvM
         GjGVjo+P/e9nUmjxwOPrNHA0S9pau61sjWSDYACJ6uTYcRQDrEbUJhrPUdLuWoaJHuTc
         MrTpaNIwEwIW8qNEgKFey5s7CrtR8+IHAIK5/jgD86LT7KzhvsQpj4z51YrsXPJSnFWt
         ynjw==
X-Gm-Message-State: AG10YOTUG1fFScyY+tDgXacGiR8nK/IzoABAEIIN5VoUaPsrcbQ2ycFedUlZObz/XuF9kw==
X-Received: by 10.140.82.146 with SMTP id h18mr44773594qgd.26.1456258020755;
        Tue, 23 Feb 2016 12:07:00 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (pool-68-133-44-176.bflony.fios.verizon.net. [68.133.44.176])
        by smtp.gmail.com with ESMTPSA id b111sm9067085qge.47.2016.02.23.12.07.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 12:07:00 -0800 (PST)
Date: Tue, 23 Feb 2016 20:06:12 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Do not use | with a variable with value
 0
Message-ID: <20160224010612.GA3762@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

mr->lkey has a value equal to 0. There is no need to combine it with
other things with | as for any value x, 0|x is always x.
Semantic patch used:
@@
expression x, e, e1;
statement S;
@@

  if (x == 0) {
    ... when != x = e1
        when != while(...) S
	when != for(...;...;...) S
(
* x |= e
|
* x | e
)
  ... when any
}

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rdma/hfi1/keys.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/keys.c b/drivers/staging/rdma/hfi1/keys.c
index cb4e608..e34f093 100644
--- a/drivers/staging/rdma/hfi1/keys.c
+++ b/drivers/staging/rdma/hfi1/keys.c
@@ -113,7 +113,7 @@ int hfi1_alloc_lkey(struct hfi1_mregion *mr, int dma_region)
 		((((1 << (24 - hfi1_lkey_table_size)) - 1) & rkt->gen)
 		 << 8);
 	if (mr->lkey == 0) {
-		mr->lkey |= 1 << 8;
+		mr->lkey = 1 << 8;
 		rkt->gen++;
 	}
 	rcu_assign_pointer(rkt->table[r], mr);
-- 
2.5.0


