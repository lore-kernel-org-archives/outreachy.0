X-GM-THRID: 6479706891981160448
X-Received: by 10.31.173.142 with SMTP id w136mr4802445vke.97.1508674326884;
        Sun, 22 Oct 2017 05:12:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.52.214 with SMTP id b205ls3324873vka.6.gmail; Sun, 22 Oct
 2017 05:12:05 -0700 (PDT)
X-Received: by 10.159.60.168 with SMTP id s40mr5631122uai.96.1508674325965;
        Sun, 22 Oct 2017 05:12:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508674325; cv=none;
        d=google.com; s=arc-20160816;
        b=iPiNoI1tqDAGBYzwyJI2zz8JWstYM2/H2A0Rgn1rKdA8QRa/T8+He/zosJagpuFp5P
         1mwsqhiKAwKxu8MwgmFWEVWof5TS3EJPT+g+hPffJflvsI7BcEABdT5fvME7IlFXbCkE
         4bglApmCRQFzTsS0UsJHKK+1fKNwrns8wqXMiFqIJcgIZYQ8OnJPNkXPUo/+nqkFSXh3
         V7xzxVDlwKF1uyX+UeWxt263Bjbp3azu/4Zy4hcHFUHS98fvZTl3iG5Ge6bUeXsY8SZy
         uwMz5NHQG/G8pjujyAUxYREjZf2Q2+EgYWjKcfmM0iICMy2OIfM1/sVSBa4YQCChRuNh
         cXxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=UoSgVQENpFXHCwRNES3OvXGeWwy/Lp8Spu1ooivAzL4=;
        b=AmPb9+I61O0uReBzNybPNrKCNy9z8pwqLiR0sdy1Gz6kMHabCq7XhzdkqLHpKeQrGQ
         pM0Nspqd98spukWi2N53zeulb2JyZlh3Ykl4BLAZ3xrcX7/NxShWuHr9GfNyLGhzsSU2
         EOyK02ynpCGKJz0w4+czE5FqgnrAEucaO2yjM5Ihp075IADz6WvRzfNBNqEv+V6ZmMkE
         wbrLi0i87mFm443JQQfq+nzulgclld+vJp62mGfwN6OiTakuga5uRV772DZB+QY5k7nf
         Flifb3zG+cDmcUem9whLK2DOge+H9VS93Bkhb9ymrkK6JcPuO7Bc/NciZ4zzg6A+sa9t
         3Lzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cSaBS3VV;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 91si378308uau.2.2017.10.22.05.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 05:12:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cSaBS3VV;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id r25so9772448pgn.4
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Oct 2017 05:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UoSgVQENpFXHCwRNES3OvXGeWwy/Lp8Spu1ooivAzL4=;
        b=cSaBS3VVAt+DLcaEVb0bkWhVC/EZoA0AP1PU2uqkjICOcYiBYs0o/o3aHr98rVtrHl
         sqTV2LShJ+HSBWFKjcj/J8AzzzL394gEOhPhfNwreGopPRzT/6i6iIgDFfeYri54dAKQ
         VtwLJK+Tzf6mcbBlY9cia0+WcUw1TckJ1T7J8hBRi4N1X5h/TGl4G+K8PKQgiGmNX8Jj
         x+cQtmW6iJFQuYqrGV9QDb4BOuAnLqql+KxobmYgtCMMFcwXsJ6iiI2wK1xLgVVcOVqe
         94jpUEWo/FHMGv9++DavuzDKNn5o9wf2tMf4ao2OpdQxSxpOsKw7DHuGZtLD6qot7oHw
         uOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UoSgVQENpFXHCwRNES3OvXGeWwy/Lp8Spu1ooivAzL4=;
        b=pzpjrncJDmmbbC3ovtWO4UA1tzRM6BmgCEnrhCqz/v45p20itWe9O7H65ltyTswgPU
         YOM6Xdqb9AWpA488qT4M7OT1VvuOl7e0LHLGXuOhtH7DtyeXqstpLHR/Yn5Ip15tNyU+
         aXcf2nvRif6dd9BKbpA2hxWx5kpGIM1LakJsqUKf3CLI7ZU6+CIYkksAT7YMjLwNYs0p
         A2W6qT5aYMDStHgsWuP/0qZAxci7EOXcK0KsLeeZDrIHwh450IT1JY30L/n9MNS0hAE9
         TNv092/OpL6fGTutBE+m0eKackGYF9QnA6rfdThf4rm5jzOjnHZ1Lp0xIEZNu/M0eeYs
         X0lw==
X-Gm-Message-State: AMCzsaWUfM8SWLZhL29sjCUIF1w82YOYRyLdnrewvWaHrLCUYLj5rjyo
	eLriDfj2CoFaK1CYAUxiFfM=
X-Google-Smtp-Source: ABhQp+TrJEsuZg+dYy1X+1sLW99PBAtawFAJy+6sGkNh4vv8oFZxuj6ogH7qnjYpoLuNnmqEabcTMw==
X-Received: by 10.98.194.16 with SMTP id l16mr9980932pfg.139.1508674325032;
        Sun, 22 Oct 2017 05:12:05 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([223.227.125.16])
        by smtp.gmail.com with ESMTPSA id z6sm8840927pfe.114.2017.10.22.05.12.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Oct 2017 05:12:04 -0700 (PDT)
Date: Sun, 22 Oct 2017 17:41:56 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <Julia.Lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Michal Marek <mmarek@suse.com>, cocci@systeme.lip6.fr,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] coccinelle: boolconv: improve script to handle more cases
Message-ID: <20171022121156.f5r3hthijlseqlr7@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Given expressions A, B and a binary operator op, the current script checks for
cases where
	A op B ? true : false can be replaced by A op B

This can be extended to handle the other case where
	A op B ? false : true can be replaced by !(A op B)

Moreover we can use the binary operator type to catch all desirable comparisons
in one go instead of writing them down.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
Changes in v2:
Re-send after addding the appropriate mailing lists

scripts/coccinelle/misc/boolconv.cocci | 43 ++++++++--------------------------
 1 file changed, 10 insertions(+), 33 deletions(-)

diff --git a/scripts/coccinelle/misc/boolconv.cocci b/scripts/coccinelle/misc/boolconv.cocci
index 33c464d6bc71..9b32b5fd31d4 100644
--- a/scripts/coccinelle/misc/boolconv.cocci
+++ b/scripts/coccinelle/misc/boolconv.cocci
@@ -16,27 +16,19 @@ virtual report
 
 @depends on patch@
 expression A, B;
+binary operator op = {==,!=,>,<,>=,<=,&&,||};
 symbol true, false;
 @@
 
 (
-  A == B
-|
-  A != B
-|
-  A > B
-|
-  A < B
-|
-  A >= B
-|
-  A <= B
-|
-  A && B
+  A op B
+- ? true : false
 |
-  A || B
++ !(
+  A op B
++ )
+- ? false : true
 )
-- ? true : false
 
 //----------------------------------------------------------
 //  For context mode
@@ -44,28 +36,13 @@ symbol true, false;
 
 @r depends on !patch@
 expression A, B;
+binary operator op = {==,!=,>,<,>=,<=,&&,||};
 symbol true, false;
 position p;
 @@
 
-(
-  A == B
-|
-  A != B
-|
-  A > B
-|
-  A < B
-|
-  A >= B
-|
-  A <= B
-|
-  A && B
-|
-  A || B
-)
-* ? true : false@p
+  A op B
+* ? \(true\|false\) : \(false@p\|true@p\)
 
 //----------------------------------------------------------
 //  For org mode
-- 
2.11.0


