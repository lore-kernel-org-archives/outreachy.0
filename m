X-GM-THRID: 6256120108487278592
X-Received: by 10.112.157.164 with SMTP id wn4mr877117lbb.5.1456616716994;
        Sat, 27 Feb 2016 15:45:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.67 with SMTP id o64ls334275lfo.46.gmail; Sat, 27 Feb
 2016 15:45:16 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr884964lbb.20.1456616716397;
        Sat, 27 Feb 2016 15:45:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h126si246766wme.0.2016.02.27.15.45.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 15:45:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id p65so4214842wmp.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 15:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L6AQIwaDHsY8YnaJ1xgwXR/c4LEOQa2b9amI92QP9nw=;
        b=ImmSsi4zZ5W+VzGRe1PrB0n9/5lXUuL8eiPOcmjjoHRgqeSAxWvI7hA6R/WJVg2zDL
         akyDBS1GmZRIvvfS8KqEDBMqXnpw60QTXnalInk8Cf6+yqRjwoLi+OyfiGxT2JsGxzZj
         H6SmwBA53CmsLJ5P7HwZwysgsgQpxB1fLFyJlf5+N5vjFWqy/NL8MgjsdqsMEOZ+ok4Z
         YlKwFFX4UqyINHpgcB39nlEsiwv09BKTXfnWlGKhnJycL7mhsR8OZa9RZmJQFtZ7V6hR
         JixRybIfqR+rNOb2clyS4eot0Wg/ewHUq7S5KztyS/jXCS4Y5qEoWlXaFliexil9FRg6
         pOTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L6AQIwaDHsY8YnaJ1xgwXR/c4LEOQa2b9amI92QP9nw=;
        b=luhx4fgO8PQ3SILNv6ifp+l/7pZL+v21E8kIhIFGZhdNdurOlMZwkUTn9oVBGIOBbu
         Pb1+em+hRGL96RireR7xwjS4pXrBMXZ/nsq7iPPW6XqJ3TLuaYIfIcosrh+jdXg0yyiM
         rTrLvxDfFGr4JcO2IWSEdyUjmjNEEjuAOH/7ebt9X1QDTkdtastJ56kKfDROVR9WjE69
         lr++i0AIvZ10akrKu6eWfT/V3114Kx8E1BlBWKATmrtP8oPifTbC0dM/XpbSs03FMBEd
         Hlm5dKrkyti2cNQsbw61TtRcVzDwxuAW5eNLPbuFm+k2DRLOpWFSaA7Zwuffjth2XfT+
         ysCQ==
X-Gm-Message-State: AD7BkJKDOkgbvBzmOgClYINtjo0D7GbTAhK0Jn7qvCw0L9ergNq+NuCZ+idzywxMiWcj2Q==
X-Received: by 10.28.47.197 with SMTP id v188mr4224485wmv.69.1456616716260;
        Sat, 27 Feb 2016 15:45:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id bg1sm18753547wjc.27.2016.02.27.15.45.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 15:45:15 -0800 (PST)
Date: Sun, 28 Feb 2016 00:45:13 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/10] staging: octeon: Fix lines over 80 characters
Message-ID: <c5ae80e7a4c80633cd22cb8d1c3ff2cca9709e25.1456615452.git.nevola@gmail.com>
References: <cover.1456615452.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456615452.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The lines should be adjusted to 80 characters. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index 31522c2..a10fe3a 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -216,7 +216,8 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 			}
 			break;
 		}
-		pskb = (struct sk_buff **)(cvm_oct_get_buffer_ptr(work->packet_ptr) -
+		pskb = (struct sk_buff **)
+			(cvm_oct_get_buffer_ptr(work->packet_ptr) -
 			sizeof(void *));
 		prefetch(pskb);
 
@@ -298,7 +299,9 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 
 				while (segments--) {
 					union cvmx_buf_ptr next_ptr =
-					    *(union cvmx_buf_ptr *)cvmx_phys_to_ptr(segment_ptr.s.addr - 8);
+					    *(union cvmx_buf_ptr *)
+					      cvmx_phys_to_ptr(
+					      segment_ptr.s.addr - 8);
 
 			/*
 			 * Octeon Errata PKI-100: The segment size is
@@ -322,7 +325,8 @@ static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
 						segment_size = len;
 					/* Copy the data into the packet */
 					memcpy(skb_put(skb, segment_size),
-					       cvmx_phys_to_ptr(segment_ptr.s.addr),
+					       cvmx_phys_to_ptr(
+					       segment_ptr.s.addr),
 					       segment_size);
 					len -= segment_size;
 					segment_ptr = next_ptr;
-- 
2.7.0


