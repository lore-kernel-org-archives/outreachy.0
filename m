X-GM-THRID: 6255224416958939136
X-Received: by 10.129.74.195 with SMTP id x186mr41193764ywa.36.1456407927574;
        Thu, 25 Feb 2016 05:45:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.211 with SMTP id h19ls203105igt.9.gmail; Thu, 25 Feb
 2016 05:45:27 -0800 (PST)
X-Received: by 10.66.231.4 with SMTP id tc4mr42565007pac.14.1456407927214;
        Thu, 25 Feb 2016 05:45:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x234.google.com (mail-io0-x234.google.com. [2607:f8b0:4001:c06::234])
        by gmr-mx.google.com with ESMTPS id c8si235937igv.2.2016.02.25.05.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) client-ip=2607:f8b0:4001:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x234.google.com with SMTP id l127so87958518iof.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4n7Ow6cfKjdReK9kCUKg0j+SmIxrtg6f6dozMUqf0TQ=;
        b=Q3nBmxLhAS9WXPqTG1G5je1fFu+jtvPCesOGoeNZf8KCPcFCm3de2PFKmYg7C/YcYA
         apWoeACmrCy8yJoMqg1P6ed6f9eA8TCf/VKto9sx9Eh35NMtpu1opDGefK3yy3VYYmY7
         t7Pprzpa8IWSAlN5R1nl9Er1gmx27VHm+xMlWnEfbi2ChjtVj7I4soq9Fn2L/71/cfw0
         dsXMfwjedKVJu44c2ZRlGrjKfD9gm56JMgZ7ixEkrP5thgcr+vD7B66AZo5ZIPNdSa0Z
         dSpV7rMHE+nt2XBJncJQXPHQi2A8dLIMzcmwksdtjvNgVP49zAhZlv+lyw+Iq9sFd2XQ
         ynHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4n7Ow6cfKjdReK9kCUKg0j+SmIxrtg6f6dozMUqf0TQ=;
        b=TUo3LWVhDnCT8zVDjtNCX0Z4R9v3wVn5lX3uiZen5YyQ28sKVw2/hDRIzRZ0Aw/hsK
         UAaVOXe1A/MOpU1CFRIve8ftgiEeO9YWf6lb0+pWmZoJlhD0P7GJNZNUKlHKlcpr3t5F
         FydYyeM0UaRx/mmGDj5bSRSa2661ljeggiVa9gdHPOIc4dUbwUm2bzMnlFUdCRjbWk+K
         8gWNr1Ilq6+yilDqwMZqQYhKqhOm8yCUNSgXcCWOlaeSbq6lKT4GApJSQQsjrURV9osp
         p9P3zwzot3EkuI1zm+pSbWhYnjNZ5rgFElh2eCYakLVXRcC35XyPVT13GpDBVlMUKLNZ
         6ZIg==
X-Gm-Message-State: AG10YORAg57PvmOaGqv2CqPNE+LRUUKU3VwrKIfzsL7dl+l4uQ4tmbFAl3e6s+c2BAeEZw==
X-Received: by 10.107.154.80 with SMTP id c77mr3095406ioe.162.1456407927049;
        Thu, 25 Feb 2016 05:45:27 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 8sm3251580ioe.8.2016.02.25.05.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:45:26 -0800 (PST)
Date: Thu, 25 Feb 2016 13:44:39 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: fb_uc1611.c: Drop void pointer cast
Message-ID: <20160225184439.GA6229@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Void pointers need not be cast to other pointer types.
Semantic patch used:

@r@
expression x;
void* e;
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
 drivers/staging/fbtft/fb_uc1611.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
index 4e82814..e87401a 100644
--- a/drivers/staging/fbtft/fb_uc1611.c
+++ b/drivers/staging/fbtft/fb_uc1611.c
@@ -222,8 +222,8 @@ static int set_var(struct fbtft_par *par)
 static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 {
 	u8 *vmem8 = (u8 *)(par->info->screen_buffer);
-	u8 *buf8 = (u8 *)(par->txbuf.buf);
-	u16 *buf16 = (u16 *)(par->txbuf.buf);
+	u8 *buf8 = par->txbuf.buf;
+	u16 *buf16 = par->txbuf.buf;
 	int line_length = par->info->fix.line_length;
 	int y_start = (offset / line_length);
 	int y_end = (offset + len - 1) / line_length;
-- 
2.5.0


