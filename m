X-GM-THRID: 6664981263437266944
X-Received: by 2002:a65:40c8:: with SMTP id u8mr6393993pgp.116.1552028070869;
        Thu, 07 Mar 2019 22:54:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls2975769pga.1.gmail; Thu, 07 Mar
 2019 22:54:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqwK8fhMO30lBzEk+V/rMgtCEoHLrZUYCZx5bSNSyoMBpBXfJZGe8j28eNtbDIZOg+jyx8Wg
X-Received: by 2002:a63:83c8:: with SMTP id h191mr6421081pge.63.1552028070200;
        Thu, 07 Mar 2019 22:54:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552028070; cv=none;
        d=google.com; s=arc-20160816;
        b=GWdwdaPtXDNmfWLCONYjpqLPaWCtmL9M1DvW2OCKnGj99432hWzNeT1QtGr8+EB76U
         VMQkCcexbRYut3pd/RlTmiMZwcO7cRHJXmxMKXiryB2nSpAPrf3ghQCIYfQC+upBbegZ
         Wro3Lr/mDCncKVQmx07jhBao4F1HkF+L+Op+rffmjHXNdYPYuObsGjBBt6BehubRi3OD
         qmXrxBsEGA107gtNKjpV1AZG+I2/Ruw6FbKs8ZQXeQjh69eUvW5au2RWHYq7tqDyoasp
         5ttwIiONqqmoK7BXSvqEkzdUwF20A82mYSUJxc3GMTZLzX9/V4JzXxj2bCijqCtaP8Qv
         LHyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xLNqt8GknBAdcjvxtS4IiWDxJdxmiPQjVyNAyjWmiEQ=;
        b=FFEh14wTqg35XDVzIi/gbrmraln/LDEqCyqVTJULl2YXUWaWh4Nw1L7dJTJlaqqB3P
         0EdhT39PfFqjgkWXzGolNMPLrpctXU1/NIqCl+WP0paKY+677r4Bwm35QlULwmpFuVGF
         9VN4ltB/JV30I/xahzEyPBBH0wRJ2wS4yHwxxCSVFntF6EL0Ce3dn2+LGfamUHS69Jc9
         sUA7Kv3cDdbzsU59KJvZPdCnF2cXzZ7z7r8Rnb1q8yonrdD18yk2OX+QP3pMSmD1QNtb
         3oxWHoZV78GRA1HmGmVHMfjcaaABi28oyNaPoPbnltvbWWZmWPPRFv1AvCmmxV0R4PaL
         Carg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8Sqn0v0;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u20si604466pfj.3.2019.03.07.22.54.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:54:30 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8Sqn0v0;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 125so13125655pgc.12
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 22:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xLNqt8GknBAdcjvxtS4IiWDxJdxmiPQjVyNAyjWmiEQ=;
        b=D8Sqn0v0rTNekQ21B3SzBXcUOMeNWHfdotSYDPazM5HJya5059+lincByvq7Gqo0Bj
         FwFFNwevfkyrLmcLxv09fIp45OfNfsALo9yZbeJH8C+7m5j+ysoJXy2QIl9y6zdnruzV
         QG0zgavi/FaK6adwkGp8FQQ+HX5pwayF0TnDkEfMqiW0pZJuRbMeChDi9KoWYbVVlb/v
         ur9KzIfChCklmzy5BB9PeORhx55aggLlcnEBdoVIWxXKzmvahz4BGXGlhYrvQY6wA2Va
         EL1yGCwjFecd4rcIayaykBVcedWKhJADciera7x1v0Qmx+7L8tb9cdhi7rEn+Nz+tzk/
         zP5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xLNqt8GknBAdcjvxtS4IiWDxJdxmiPQjVyNAyjWmiEQ=;
        b=Y6WHv4Dm3JGkVAQv05tuyUhRgdV6AZng6h3VNKxU4zQ30KaR0aEDl/Efy9+uAxvluP
         bbFpRKMdP1KMfRh8nzdd6EB/4ON9H8htJuuHo75uG5bl8YXHnVIkCuXVTkKB2PKwPRj6
         4sGiLTZCIGCLbDmeSua7gFhuLQ1mcGW75RMhOmHdEWk/CSajKtwkSR2yqvdpn1cxJcnh
         d+cUkZfuOX3wZLpSbH6y9fUWmUP+P5/Ak7KcwlP2/g+9EdQ0K3WaBZ/R14l6x4edqwlM
         Rveijjo+zksG/BP0rgjxMixbP7AZBqPKu4D4s7zcVEXncHh5xOdCq/nZdKpCOby5xLMp
         4faA==
X-Gm-Message-State: APjAAAUtDvd9t8NUXMct9ZefibZ3rfFGCcFMK+v2AoD2+G6BNLXHoNZi
	lMMupcQ8eDHgG6/o6liWkaNsRs+ZlDg=
X-Received: by 2002:a63:545f:: with SMTP id e31mr14961304pgm.409.1552028069546;
        Thu, 07 Mar 2019 22:54:29 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:b1e7:3655:ef4:27f])
        by smtp.gmail.com with ESMTPSA id j184sm783274pfc.64.2019.03.07.22.54.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 22:54:29 -0800 (PST)
Date: Fri, 8 Mar 2019 12:24:24 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5] staging: fbtft: convert a macro to a function.
Message-ID: <20190308065424.GA7942@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a macro to an inline function to improve type safety and make
the code simpler.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v5:
  -- Add space on both the side of operator.

Changes in v4:
  -- Modify log messages.

Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.
  
Changes in v2:
  -- Make the converion from macro to inline function

 drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..7ee8a83 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000600) >> 6) |\
-			   (((c) & 0x001C) >> 2))
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000700) >> 6) |\
-			   (((c) & 0x0018) >> 3))
-#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
-			   (((c) & 000700) >> 5) |\
-			   (((c) & 0x001C) >> 2))
+inline int rgb565_to_rgb332(u16 c)
+{
+	return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c & 0x0018) >> 3);
+}
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
@@ -122,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565_to_rgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


