X-GM-THRID: 6255239306405740544
X-Received: by 10.66.150.68 with SMTP id ug4mr40836644pab.33.1456411393224;
        Thu, 25 Feb 2016 06:43:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.70.67 with SMTP id k3ls214086igu.0.canary; Thu, 25 Feb 2016
 06:43:12 -0800 (PST)
X-Received: by 10.98.93.217 with SMTP id n86mr41345543pfj.11.1456411392843;
        Thu, 25 Feb 2016 06:43:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22d.google.com (mail-io0-x22d.google.com. [2607:f8b0:4001:c06::22d])
        by gmr-mx.google.com with ESMTPS id k15si216254igt.3.2016.02.25.06.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:43:12 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) client-ip=2607:f8b0:4001:c06::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22d.google.com with SMTP id 9so84484448iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WlAHd/BFioNHhN7Xz3dGhYqYUEeAfkqDkG4i702cZBU=;
        b=KWZypAOWe+qOn83//rTYkqyeLmpNPbjehG2QU2ZLFj+cMCkH4CLU1A5ERfwqZag8FA
         pUtYsK69Hy/Y7I5kcDuAWEcmtN7jXhwr9VaPBglMgNQ98wAa5UDnTx+oO5ES6MBHiATz
         PeWvdgCwkARh8moOmqIzE0VSbnLnfNYuq/+2BCGQ2S8bNerdK5FGchmpKFnI/GDM8x7o
         phQr2t9TY/su3XApEvgYuipdDVMSzuJEaozMBdQVpOeiUnxeruddjpQyqesjqX+emR2Y
         V80fgbMrQ8HFjKrfMCsRe+FSqmGAqZ5mvhH/eXEhkOHqZh1APX0z0xfTefGtU90F/gc1
         uv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WlAHd/BFioNHhN7Xz3dGhYqYUEeAfkqDkG4i702cZBU=;
        b=CZJ8HdUdAYjnBE0dxhNi8a5Lp2z84cnVY8jvGsSU5zQ1XXPe2NQNLhOza0jfrd13VG
         96jJ1IJEzmUaxXIjTh4NQpdbgwY6zhboZgHyd/sSufTm++8tKdOff2ixYsKnjbgt8jlq
         luWFRxX0F6ZJYCHRxkxJIiJdvtCfESXMNzTtqXkeP09knodtl0CbNY7GPhyrYMaaMBZa
         hpIZiEo/RqW7fJSs1gOQScMKLueb+oOk+FUc0hrycmkTP6N/z5jfuLRt2oTHWeO2Ig6X
         kH7QwWFPFiHWEShLDDn3zfgCv/5H1OCem2K1CTOmOYhjWKROT9OK+uf33O+TqTTCkjC8
         PgVA==
X-Gm-Message-State: AG10YOSyKBSJBKGBNEd2vKkHwQfZc0yQ/UqFWbNi2/HtNyJe12i46A9nCFcILmRUjSIwYA==
X-Received: by 10.107.39.135 with SMTP id n129mr3321793ion.153.1456411392695;
        Thu, 25 Feb 2016 06:43:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id f14sm3338059ioi.20.2016.02.25.06.43.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:43:12 -0800 (PST)
Date: Thu, 25 Feb 2016 14:42:24 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: rtsx_transport.c: Drop void pointer cast
Message-ID: <20160225194224.GA7402@janani-Inspiron-3521>
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
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f564a74..e055094 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -734,7 +734,7 @@ int rtsx_transfer_data_partial(struct rtsx_chip *chip, u8 card,
 		return -EIO;
 
 	if (use_sg) {
-		struct scatterlist *sg = (struct scatterlist *)buf;
+		struct scatterlist *sg = buf;
 
 		err = rtsx_transfer_sglist_adma_partial(chip, card, sg, use_sg,
 							index, offset, (int)len,
-- 
2.5.0


