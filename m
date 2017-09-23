X-GM-THRID: 6468972080640557056
X-Received: by 10.36.69.198 with SMTP id c67mr1020812itd.16.1506174933227;
        Sat, 23 Sep 2017 06:55:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.56.134 with SMTP id f128ls3706833oia.1.gmail; Sat, 23 Sep
 2017 06:55:32 -0700 (PDT)
X-Received: by 10.202.168.88 with SMTP id r85mr998916oie.14.1506174932376;
        Sat, 23 Sep 2017 06:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506174932; cv=none;
        d=google.com; s=arc-20160816;
        b=MJwl/XeTuoP1UVopU/C8aqgMYqelPAIgUvUc9YOY4WitimLW0FfZyH3rntjDhgxNX5
         4mHUh4aD2aKi/oJb0iQX7E88ExPypkAHXEyEmgLUzMPIssMNk2hurHFXSQH3Bz1bHBp0
         RS78gCwUn3PFa64NQ2IcTGOlM4vmLYjXwu2cwWj7AH3mvAUJ+wv6pWXTbykutNwEvNvC
         /1bU9vpSgpqXvo7/92prIzWuS0t86QWGLs9b0/s673n7rIDKoFU0iKMAzQFn7DgT4Xav
         1Vw3vWETrNRmpHaFfe1Oqn7Y11an9KRdsx1c/7G+cYDDZj7egL5vqoYeQDYgkVglBsA/
         F56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=sDMNPKKandVqX5hyD5CFm3ZWn08F53AfBDs6seZdIw0=;
        b=kwKVI4HZ+Na59ZPq7rKMLYUGZ/dtFR4/m3m3XQFyo/S3v98inChLKz55PaFN2pzsdr
         O4e42o0Afydj2Yh2sC0oke0m3/4lkIls7xtaEODp/8Do+/vHsTBTNoJShB4hqft/KQkw
         J50sKUMKxUHuAG3PDgK2HUqy+O9IC6GeeWu+E1IZu+P+7PmSq2jZpGcJ0rEexUZdCiSI
         EHRldtp71kIwqck8XhmRmFdK3LKN0qPQBz3Mbr47DNm++zfW6coOizbpg9IwQVSzngxY
         m6HH+cDN4mXZEjjNh5M7tBELDb53V93mXtZRBsABVkCsG4gymi1W99Tu92fZaFN1Ku8t
         DdCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpNXMrfQ;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s81si152872pfg.19.2017.09.23.06.55.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 06:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpNXMrfQ;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id m30so2280690pgn.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 06:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sDMNPKKandVqX5hyD5CFm3ZWn08F53AfBDs6seZdIw0=;
        b=tpNXMrfQrKBvhY6aXcJZwfwkJgEVlq5iMKWSBcww/tU+lN8q5EG1yqvo2DNplnpZ7S
         5ECJ3InwszhZe6P9HPmQdxWosSKPsEw5o42THWdjfOabB85GQoDrtcaBJW79tAlT9gLl
         wYHwh/XmivU6uWqPpQBiX11g8Mc9EN52p60bJvBj2Oa7IyASWNPX9bb55jnDwcKVnVZk
         pe98tiGP3p/S4ymHMwqTdheQr5WWceHCOBv2rkGHLG4nf4zqWljquRUFHbqS6dpz7c60
         BYj6I3PXxjvzJxk0YeZd9kEafhmYXhYIPUVPYKNtcaP7vFJA2OZbK3Np1KCGYWn6wfU9
         Gczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sDMNPKKandVqX5hyD5CFm3ZWn08F53AfBDs6seZdIw0=;
        b=lwSTTNeiJfQr4tPcc+E1mZ2zLhu15eaHR+BfK/l4nMuJA1FpDNYKZXVa0cC+rQ1ddl
         5UbRnV5/nIv/XxvgMg/18QzBOptUW5z6LEkM9ZkoALkzyQeN5t0VulJbJ74GDOCW0RsS
         LwyK0PYZpid7DHRqV4LmQ/MRSEMmo5enq3F7N1bUQLYxlhm/51J5Mz7lzYJKH/3LyP9r
         HGQLlcky2X4ZUq2PQ7b+6SH8iVrzJyGlMPIl98Xo2Cxym9SVW+2reiUhuulgiwUAuiVU
         0rCSsTnCk+wkjY9t/7SIFuyOh+VsQZ8vPY+FGIzYJCGef11WaxbB+DQck7vDoHBRTIBP
         YGgw==
X-Gm-Message-State: AHPjjUhz7A2Q7xKpVkvqgjaL46Ng6HArFyvR8Cs5NXOlks/RoXgK7mMn
	ncvEO6PSMYWXKUY1L/ewmTs=
X-Google-Smtp-Source: AOwi7QCsTMKReDzcIiPdlnSJb40pd6RdJyOQnKDwQ4sHmktraojNKUsDShbVCO82QJHihMyxXI/t4A==
X-Received: by 10.99.55.92 with SMTP id g28mr2251311pgn.59.1506174931984;
        Sat, 23 Sep 2017 06:55:31 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.248.235.76])
        by smtp.gmail.com with ESMTPSA id h82sm6801260pfd.148.2017.09.23.06.55.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 06:55:31 -0700 (PDT)
Date: Sat, 23 Sep 2017 19:25:26 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <Julia.Lawall@lip6.fr>,
	Gilles Muller <Gilles.Muller@lip6.fr>,
	Nicolas Palix <nicolas.palix@imag.fr>,
	Michal Marek <mmarek@suse.com>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] coccinelle: boolconv: improve script to handle more cases
Message-ID: <20170923135526.GA30354@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Given expressions A, B and a binary operator op, the current script checks for
cases where
	A op B ? true : false can be replaced by A op B

This can be extended to handle the other case where
	A op B ? false : true can be replaced by !(A op B)

Moreover we can use the binary operator type to catch all desirable comparisons
in one go instead of writing them down.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---

Okay I'm not sure if A op B ? false : true conversion to !(A op B) is even
desirable because it might hinder code readability in certain cases.
Just putting it out here because while I was running coccicheck in staging
drivers a few cases like the above turned up.
---
 scripts/coccinelle/misc/boolconv.cocci | 43 ++++++++--------------------------
 1 file changed, 10 insertions(+), 33 deletions(-)

diff --git a/scripts/coccinelle/misc/boolconv.cocci b/scripts/coccinelle/misc/boolconv.cocci
index 33c464d..9b32b5f 100644
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
2.7.4


