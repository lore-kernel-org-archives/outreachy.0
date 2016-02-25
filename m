X-GM-THRID: 6255223202189934592
X-Received: by 10.129.116.214 with SMTP id p205mr42999485ywc.55.1456407644237;
        Thu, 25 Feb 2016 05:40:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.13.103 with SMTP id g7ls194728igc.29.gmail; Thu, 25 Feb
 2016 05:40:43 -0800 (PST)
X-Received: by 10.66.139.162 with SMTP id qz2mr38318773pab.1.1456407643824;
        Thu, 25 Feb 2016 05:40:43 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id i9si218950igg.1.2016.02.25.05.40.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:40:43 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id g6so14427517igt.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wXKkdtk6CXY7uCiqWv588jwQvi2uxs8hLdipFgnR264=;
        b=xyfSDAGIybrLmm9F2jfOizg6ADY33wkzeGfpdqz+rhU0uxNNodwr2V5d5N8jUwgl04
         G8Ag6d/ZT8Ts3ZogSyiNn/szY819Yv1a+dLZXSKFC4U7ZqJVTf1/YGMexPFRC7amfvia
         zu2jdxrJk5NGrruBfWmFLXoNapykeRitWcGRoBRadBUOLUtYLig2Lvzdq0wIsJFSSS1Z
         +Cncb/76Z+1TpsmW3e6tqTO5y5XZbgd9Qw2U1+ntE917biXCC7jdz3i79LFjvShquoGr
         Dq9LilF+UrPaJKCB9NdUHuBBs9XnPaN1g10th3UI7qV7mpRXnqyEssWOZZiulwOxl+w+
         fHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wXKkdtk6CXY7uCiqWv588jwQvi2uxs8hLdipFgnR264=;
        b=mXWI3wX1V7YZnpHsl2D5qpY1mYscTJtgqikKOdHIz7DD/60ZD/kJZhPTDA0kGK3sZi
         f7Yh4tw8I/LoD1fH1hvsMwRMpkSIxvjInssWJuyGBc4CNa3s1EnY/O5FvRTw6EEVRFVF
         plbwhEKBLhqI9x4qetWCdXPnC98g/EYcHpJde63zt/e6QMo+KBUTDqPN3Uehuj8GK5dU
         5nKOm2IcfjPyfgtUOwqhc3+bDt3ovyTQF9ZK4AySrJlkSFX7ZQVYYUQNRz3uciCe4sX8
         yHQXPd9iW+3dFJSbWQh8WW8LKPtRfJeOi6GQN6WpJi+ezpxsEuEAQ/6Su2vpJUo0dWab
         nj+g==
X-Gm-Message-State: AG10YOQmBjzqzMQpZrvyqy0BQ6aUAUCD/+RboBfqLLRc9eDHm4LlCzOJdogwhyAol9U3IQ==
X-Received: by 10.50.159.7 with SMTP id wy7mr3144471igb.24.1456407643632;
        Thu, 25 Feb 2016 05:40:43 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id l94sm3262265iod.13.2016.02.25.05.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:40:43 -0800 (PST)
Date: Thu, 25 Feb 2016 13:39:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: fb_ra8875.c: Remove unneeded void pointer
 cast
Message-ID: <20160225183955.GA6135@janani-Inspiron-3521>
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
 drivers/staging/fbtft/fb_ra8875.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index b167c50..1b02c39 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -257,7 +257,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 {
 	u16 *vmem16;
-	u16 *txbuf16 = (u16 *)par->txbuf.buf;
+	u16 *txbuf16 = par->txbuf.buf;
 	size_t remain;
 	size_t to_copy;
 	size_t tx_array_size;
@@ -271,7 +271,7 @@ static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 	remain = len / 2;
 	vmem16 = (u16 *)(par->info->screen_buffer + offset);
 	tx_array_size = par->txbuf.len / 2;
-		txbuf16 = (u16 *)(par->txbuf.buf + 1);
+		txbuf16 = par->txbuf.buf + 1;
 		tx_array_size -= 2;
 		*(u8 *)(par->txbuf.buf) = 0x00;
 		startbyte_size = 1;
-- 
2.5.0


