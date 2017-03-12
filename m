X-GM-THRID: 6396647493064458240
X-Received: by 10.99.124.25 with SMTP id x25mr14080467pgc.50.1489335553289;
        Sun, 12 Mar 2017 09:19:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls942949oth.45.gmail; Sun, 12 Mar
 2017 09:19:12 -0700 (PDT)
X-Received: by 10.157.82.78 with SMTP id q14mr12403923otg.80.1489335552958;
        Sun, 12 Mar 2017 09:19:12 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si2690990pfa.4.2017.03.12.09.19.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:19:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so16403543pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kz+UM0LdFYAkaBuR3aL/rvaHv+fGRZ299eEgRxWPed0=;
        b=CH36bAfk3zY4f2YlmVH2eSnvxI9Z0UMqbyh2O/jBTgKwtwArRvJEU+4FqU+ILADnwq
         Dn3AoyXpaebgPX3iFtY/+Ihin6NuPu8GwoKfsaEkJgligzWkAQx9+YgjT6+EvuvzKJvl
         yNmmG2bir6oq/uXfu/zKzL/7AVJV5lpscI80mT7J0k8w/pxMKDKukVhP0qjvIxjhEypD
         dkMCLO0JHDmI5jgGAFn2UnFlnR8rE6Uys66HjrDDy4lW8Kbco9m4aJFDPrng88VmjMit
         b35wtE32rCUU1mYXG/cNClEcGKsggCXso0lWHQODumqca0ASKibj9ZCpa0UPUa0MjrIF
         YlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kz+UM0LdFYAkaBuR3aL/rvaHv+fGRZ299eEgRxWPed0=;
        b=Su+dDzreDYugUFcDt0tFgQW7bYB0bs72UHYuutbTtevKm1as57HPIc6U2rwnVj14XI
         xrLl79i1amxK4kaHQTj12Bgyc2fqIrymVIddNtw8zdyBZGt7LqbLeHDkzUq34snqyzjD
         vJSesJS3pKFcV0h7iw5+ZDiwbsEC4r/RfuO4KHlVt0wnuDFaS9uBkakABuXghSXBXHlf
         mV2VzKwQM9lCEf7HC9YpJOYxt6RWL73CG11a/XRam3/536ZT29+wnonLqhDTIOJ3pj3r
         E+VFPYsAWqYgt7bTzQCw+g+S9TOAcIwkYaH47itzKmvoVXj49ipms0WTrfpILSyhEblJ
         lfFg==
X-Gm-Message-State: AMke39nUeDZSuhn3OMO2Pbb9kddFVI1SRvZY1BGJbpRdH9l6AKvCAlGxv1Wtb1NER/8+uw==
X-Received: by 10.98.133.6 with SMTP id u6mr33219433pfd.48.1489335552563;
        Sun, 12 Mar 2017 09:19:12 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id m136sm29254368pga.22.2017.03.12.09.19.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:19:12 -0700 (PDT)
Message-ID: <58c57500.8e3f630a.50cd4.8982@mx.google.com>
X-Google-Original-Message-ID: <20170312161908.GA17544@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 21:49:08 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: media: atomisp: Remove gc2235_init() function.
References: <cover.1489334608.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489334608.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove gc2235_init() function definition and call, as it is used only
once in gc2235.c file. Replace the function call with return value,
__gc2235_init() function call.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 6a5a08e..9b41023 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -539,10 +539,6 @@ static int __gc2235_init(struct v4l2_subdev *sd)
 }
 
 static int is_init;
-static int gc2235_init(struct v4l2_subdev *sd)
-{
-	return __gc2235_init(sd);
-}
 
 static int power_ctrl(struct v4l2_subdev *sd, bool flag)
 {
@@ -669,7 +665,7 @@ static int gc2235_s_power(struct v4l2_subdev *sd, int on)
 	else {
 		ret = power_up(sd);
 		if (!ret)
-			ret = gc2235_init(sd);
+			ret = __gc2235_init(sd);
 		is_init = 1;
 	}
 	return ret;
-- 
2.9.3


