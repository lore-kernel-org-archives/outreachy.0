X-GM-THRID: 6256360130232713216
X-Received: by 10.66.159.167 with SMTP id xd7mr9337221pab.5.1456672356771;
        Sun, 28 Feb 2016 07:12:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.22 with SMTP id f22ls1162087iod.62.gmail; Sun, 28 Feb
 2016 07:12:36 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr14755296ioi.14.1456672356442;
        Sun, 28 Feb 2016 07:12:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id x5si378246ywb.2.2016.02.28.07.12.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:12:36 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id x1so48396088qkc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 07:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=a4v+gCr1jWqKlSB1GOwPxPfaMWtTgCN28e7ydw7JExc=;
        b=NwrDkLsQj3rIGJAQLWc8erEoNgKGXfA1VPUIepHc75Vchb1ZZ4/RWS/wzK6c66SCID
         XCVurY8KQO83TaJUY1R+dz96qLtwQSJv7oqs8hKqd/Woz1/WRdpxw2h9+99zVOhBEYMo
         iCPW2uRny8b3fHQ3ki4CH+e9sETJjGzAIxXXlnGOE9qCilbSREP0k7pnfa6abEga3upx
         /4J/1O5zv5SzM2neZNYUNrlncsvdNtND3xzwFuBq8MSS+9btq7IMnoedxgmZfT4aVMaO
         bjUtotO4YRdy6J87AM96Zdpzc2MlHSnauWAoCypiGMlp2odsfONe+VIo0rNvzLh74kmT
         PtsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=a4v+gCr1jWqKlSB1GOwPxPfaMWtTgCN28e7ydw7JExc=;
        b=bTN8zrcCmRYF9l6CbyFK3uMr9fwhEF5VZ6WgQMuII7Qmio1Wi0brxwRXhCY5UE4VX4
         xMiyw7ITaRNNeUf66KLCKNQwG/q+MTYBvWkWY1AZ3iorPQezoO6KPFIr6hYhhXqJS5Pu
         xuJYtVYlI+9ktxR61pOdZF+Vp34EaOPhnfD5h+9cIfWwYznAXNZjqcrlhe8tctNFoqTl
         mikaDKT6vQPC1Ma5FDG4c9CiPzuJwdC2qDke5GdQIyx5Ib+u2wUpn7fvL8p5xyrXBWSZ
         ha5frYDK2jIv7sh7rHnLg4JDjamUBHU2OrjQOUMGwITt3DoZP8iz/HC44mYxR5LOWlCL
         25Ew==
X-Gm-Message-State: AD7BkJLjZgnMKIehk6yNA/w0vbdWSVpPi7PtXylofkECbkO0ho/FoHsQk7XU06h1PiDwCA==
X-Received: by 10.55.74.209 with SMTP id x200mr13957998qka.106.1456672356213;
        Sun, 28 Feb 2016 07:12:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id t103sm9144741qgd.37.2016.02.28.07.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 07:12:35 -0800 (PST)
Date: Sun, 28 Feb 2016 15:11:46 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Use list_for_each_entry_safe()
Message-ID: <20160228201146.GA6657@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() rather than a combination of
list_for_each_safe() and list_entry()

Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry_safe, list_for_each_safe;
@@

- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when any
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rdma/hfi1/diag.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/diag.c b/drivers/staging/rdma/hfi1/diag.c
index e41159f..411cdee 100644
--- a/drivers/staging/rdma/hfi1/diag.c
+++ b/drivers/staging/rdma/hfi1/diag.c
@@ -304,8 +304,7 @@ static void drain_snoop_list(struct list_head *queue)
 	struct list_head *pos, *q;
 	struct snoop_packet *packet;
 
-	list_for_each_safe(pos, q, queue) {
-		packet = list_entry(pos, struct snoop_packet, list);
+	list_for_each_entry_safe(packet, q, queue, list) {
 		list_del(pos);
 		kfree(packet);
 	}
-- 
2.5.0


