X-GM-THRID: 6258245900541362176
X-Received: by 10.129.27.3 with SMTP id b3mr6649344ywb.0.1457111421595;
        Fri, 04 Mar 2016 09:10:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.104 with SMTP id dz8ls250705obb.8.gmail; Fri, 04 Mar
 2016 09:10:21 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr6697856obc.9.1457111421231;
        Fri, 04 Mar 2016 09:10:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id ui7si1548219pab.0.2016.03.04.09.10.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Mar 2016 09:10:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fl4so37866168pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Mar 2016 09:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RsWCvHHYIcGF3ZGJzdLmGgOskqgPAQuuhpgZpPCjTTI=;
        b=RDqVTFCcDz4Ka6z/Jwy+gFnLpZbRMnY91CV2mlsTlRswgmQ/W+wyJeAubuCT3/R1Gm
         yxpCHDIevaCeUXn+tz/p7PH6KHxdjxE5sgL4jqtjv9WpjMyk/7COzM+LzGrHfp4oxWyP
         +sDJ4BU3UXuPdvBOtwLKWicEaIctskuE4biJQf9aYwNeO1joZ4sYbNP7XlZqC0o0vZgy
         C4RH38Y/H2FTRsusIzjC5kT7rjKwY4+zxY2//Yksz2L/U6zoFcsW3iCmwdmOk/tBCl52
         OSQ31C3RhthAyA3pMRjnWLczb6iTcl31VUmDmQ5l9g+EW1HC9vauS+HFmIjpYaelTi+j
         zrEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RsWCvHHYIcGF3ZGJzdLmGgOskqgPAQuuhpgZpPCjTTI=;
        b=K69+nq+8y77mat+NTTPyGZBvqWvCD2b1XNGTw2oHaCjzwI10zSK0hBLt1H/Q9qALN8
         A67ndHV1LYm/lth2eQP0atVFgJoPuiShv0PbKj6UtNfcu3Hwky9X+zNGjzuM57d/2VJ2
         QA3O7JWfKkoZpYqgys1v/q47g2i2bTPHQf31Nwcaznk/4xfBjvgh5w+x6nVdiSvIIWeC
         AZ2s5BUxiVXe4HDd+W/XtnNoEn8DIrXTntQAyC8Kmr6LXDlPYGK+h9cFU2wur3oZtDQV
         84utr7BGLGUb6Vq4dBTJrk/VuailweY/VU6EA4Se1b39TVZ+r1JMzaBaS8JLb1koWjYf
         uUTA==
X-Gm-Message-State: AD7BkJJ2YFe6suQzlQok0N9bpN+uT4ao3u5pu3d25LvkxDlrMbCeOpQah8Wi3PTc2pUpXA==
X-Received: by 10.66.138.74 with SMTP id qo10mr13493839pab.140.1457111421010;
        Fri, 04 Mar 2016 09:10:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.77.50.199])
        by smtp.gmail.com with ESMTPSA id p79sm2391037pfi.61.2016.03.04.09.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 04 Mar 2016 09:10:20 -0800 (PST)
Date: Fri, 4 Mar 2016 22:40:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: driver: Replace IS_ALIGNED with
 PAGE_ALIGNED
Message-ID: <20160304171016.GA26756@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

mm.h contains a helper function PAGE_ALIGNED which tests whether
an address is aligned to PAGE_SIZE instead of using 
IS_ALIGNED(expression, PAGE_SIZE)

This change was made with the help of the following Coccinelle
semantic patch:
//<smpl>
@@
expression e;
symbol PAGE_SIZE;
@@
(
- ALIGN(e, PAGE_SIZE)
+ PAGE_ALIGN(e)
|
- IS_ALIGNED(e, PAGE_SIZE)
+ PAGE_ALIGNED(e)
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/driver.c b/drivers/staging/rdma/hfi1/driver.c
index 3218520..ee50bbf 100644
--- a/drivers/staging/rdma/hfi1/driver.c
+++ b/drivers/staging/rdma/hfi1/driver.c
@@ -246,7 +246,7 @@ static inline void *get_egrbuf(const struct hfi1_ctxtdata *rcd, u64 rhf,
  */
 inline int hfi1_rcvbuf_validate(u32 size, u8 type, u16 *encoded)
 {
-	if (unlikely(!IS_ALIGNED(size, PAGE_SIZE)))
+	if (unlikely(!PAGE_ALIGNED(size)))
 		return 0;
 	if (unlikely(size < MIN_EAGER_BUFFER))
 		return 0;
-- 
1.9.1


