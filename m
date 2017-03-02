X-GM-THRID: 6392835608825298944
X-Received: by 10.129.48.147 with SMTP id w141mr4702168yww.47.1488459906052;
        Thu, 02 Mar 2017 05:05:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.3 with SMTP id e3ls1995076ioe.45.gmail; Thu, 02 Mar
 2017 05:05:05 -0800 (PST)
X-Received: by 10.107.53.15 with SMTP id c15mr4327000ioa.83.1488459905224;
        Thu, 02 Mar 2017 05:05:05 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si1424776pfk.5.2017.03.02.05.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 05:05:05 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so6766776pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 05:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vHJlUP/5DM3j7WlBa5yQmp0VR+TQiTMw+cZoEKJL/Gs=;
        b=UmptwBEQCGH9KtdsKW8zBjYox5ulU50O31NgALKzctZyGiuRTrxXTud9da3mrwvMjC
         ZD169Mr+mW5bNHlTrOPQX896RpFxhe2SGtSmSYjXZvBtlRBw6fTRvooDsRGPtJs37E/v
         1YF6kOa6j4Sqx5LiHm4MiqB8XZ7OX3UY9dLEuUKPws0piZlU8TMptgWm3q+YXpGMfCKB
         ggFTZcVqrDVkAh3KOM25nFiNjm58ZDix5e0RVEpxyw5j0R6szaYg35HWJJ2aqJJjoo2A
         ps1h4+9trbNgQtV6TpB1jafYEhc1/Z/NYw2DSdUl6u8Gf429abGcOMuN/88efqYvSW6c
         82JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vHJlUP/5DM3j7WlBa5yQmp0VR+TQiTMw+cZoEKJL/Gs=;
        b=bcC1lXqhYBmoaklP8p5ABHvKBV4WyWvvr7eV0s7BWD4j2/O2CwKBLeLIJhp2KqKGzs
         ybtUq0vHsbW4YYrwHUtXE8bdylVdvfe8ItYj5I4yRqS5cZeUzM6/Bwm8joQbC2Q8mUGY
         Ih5ybsuIzTVM2O3mw+ANGlFDL4fVK4d2Wb9XF3kd/BUFqCUf8NMCwi1c/KxK086QuIW9
         +mmYCcI3Rc9cY00ZHDQStixWIysKE9Z1hYscxUBQ3n3/+mkrCT+Q34DEX9jQENAwrJuP
         +Ve4GckBc++DWyLdfi74K6zVbzk/HlKE2XgGQQvoQJKdx2Y5D4D9Axi5yQIVcXaKvMAQ
         8hNg==
X-Gm-Message-State: AMke39kw5mpctakx8MljXq3BDkqHpf4HzIpCMKzfD4C4dqa00KpsdrGUIu2/ta3tmF8klA==
X-Received: by 10.98.49.1 with SMTP id x1mr9778849pfx.26.1488459904635;
        Thu, 02 Mar 2017 05:05:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([183.82.106.99])
        by smtp.gmail.com with ESMTPSA id u80sm17213010pgb.32.2017.03.02.05.05.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 05:05:03 -0800 (PST)
Date: Thu, 2 Mar 2017 18:34:59 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	sergio.paracuellos@gmail.com, juliana.orod@gmail.com,
	thomas.petazzoni@free-electrons.com, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/6] staging: fbtft: Fix sparse warnings of incorrect type
 in assignment
Message-ID: <20170302130459.GA31856@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following sparse warnings:

drivers/staging/fbtft/fbtft-bus.c:166:36: warning: incorrect type in assignment (different base types)
drivers/staging/fbtft/fbtft-bus.c:166:36:    expected unsigned short [unsigned] [short] [usertype] <noident>
drivers/staging/fbtft/fbtft-bus.c:166:36:    got restricted __be16 [usertype] <noident>

drivers/staging/fbtft/fbtft-io.c:74:29: warning: incorrect type in assignment (different base types)
drivers/staging/fbtft/fbtft-io.c:74:29:    expected unsigned long long [unsigned] [long] [long long] [usertype] <noident>
drivers/staging/fbtft/fbtft-io.c:74:29:    got restricted __be64 [usertype] <noident>

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -changed commit message

 drivers/staging/fbtft/fbtft-bus.c | 2 +-
 drivers/staging/fbtft/fbtft-io.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
index ec45043..df2223e 100644
--- a/drivers/staging/fbtft/fbtft-bus.c
+++ b/drivers/staging/fbtft/fbtft-bus.c
@@ -163,7 +163,7 @@ int fbtft_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
 						to_copy, remain - to_copy);
 
 		for (i = 0; i < to_copy; i++)
-			txbuf16[i] = cpu_to_be16(vmem16[i]);
+			txbuf16[i] = vmem16[i];
 
 		vmem16 = vmem16 + to_copy;
 		ret = par->fbtftops.write(par, par->txbuf.buf,
diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index d868405..ffb9a3b 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -71,7 +71,7 @@ int fbtft_write_spi_emulate_9(struct fbtft_par *par, void *buf, size_t len)
 			src++;
 		}
 		tmp |= ((*src & 0x0100) ? 1 : 0);
-		*(u64 *)dst = cpu_to_be64(tmp);
+		*(__be64 *)dst = cpu_to_be64(tmp);
 		dst += 8;
 		*dst++ = (u8)(*src++ & 0x00FF);
 		added++;
-- 
2.7.4


