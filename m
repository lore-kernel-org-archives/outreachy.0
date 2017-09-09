X-GM-THRID: 6463802191249408000
X-Received: by 10.107.32.146 with SMTP id g140mr912956iog.31.1504978843142;
        Sat, 09 Sep 2017 10:40:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.218 with SMTP id v87ls1976604iov.19.gmail; Sat, 09 Sep
 2017 10:40:42 -0700 (PDT)
X-Received: by 10.99.117.26 with SMTP id q26mr4154547pgc.110.1504978842383;
        Sat, 09 Sep 2017 10:40:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504978842; cv=none;
        d=google.com; s=arc-20160816;
        b=0en/ExaNdmusutn2CG/j4XvIS2ozFZn3g5RKAdCuz+m0IkxiNGv2PGIe8nXNbH3/dp
         ur2YBIlJQlhU/17rPsn+MDC52g14po/kDoeWF3dRL/g9u6/dxad3pyDOmUBM7Kw3MFOb
         g496IhZCBD2NRF7LADbSpNS7bmpENhdwA1UZ+8rvKbyssE0bI0+f9pODQjsO9QzoDNwH
         10kxtq+cQKeWf0qK5J8sBdbDpiD8aPEOefGcbqazWYSfHpmxHLUrnePxH43F8KrN2UV1
         HJusfdys39zNJx9D6xc1qfL1xUI9E5Sl/3x/ZkqAvVpU2U7o7TktiEe58gTrlZqRDX5M
         f7mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=gPSu4gFn3w3NENV+r/u/lRuKXbC4uGC79+oMVRh8zbQ=;
        b=08CNWGCOufHZcufm9cNChgnt/NY2JYvxx/2dHqb7+HczDmZjeMrIP6KwCLmoP8HMcq
         v3MPjAK19ym6YNqai7Yg19dZkrEkPyWumvT6llUQUTsTM9wdb+PQS+LR7C94VIqWL46g
         WcdLgE+Xx2CSgcDeW3kD4AlyVPNAX52ARmKGhXILzrkXAe8+K2pMjHo9Rk0O4r0TSNVi
         bO5JoD8PQ1Vr7No/ok171OXvyL9T4gMcTIGC+ZT/xO/pFJyLNNdKGY29X5TYqCAMZ+wq
         OsGIl2Co17iJ/LhK6G5mfgqsQet+X0mtkB+MnmyggFFAGDs0AlGrOfnHK4ThwyapKU4p
         X6dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RtW5zThS;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w69si529862pfd.3.2017.09.09.10.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 10:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RtW5zThS;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so2729174pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 10:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gPSu4gFn3w3NENV+r/u/lRuKXbC4uGC79+oMVRh8zbQ=;
        b=RtW5zThScgzsVJqxrla3bjv3gh3Pcjuh95Y6oy9SFfTLW0tXZCszuLrdByqHcr24NE
         FZUMNfeFf/CMC3M5IL2GH6GFZC68gnvd1FprYie77pC+lMETJQvW9Rv5emfm8AR9U0ya
         CUEh/G25P40gvBJK6lula9ndcs9YlA+CiGTzKfnv/IT3B99DGfai7R/P9vq5fmS7+T8a
         4MpKcV77npVTwvhgiHRLgdRkDcwPareIFD5/e9a1iaGNiAKqzxhPhpDNnzBKhZc9z2NV
         i6a535Q7+WsViM6H6SEp9X9Zgp9UMBf+ajlrkydEDvzdakJRKinIt219xJWfNfozkI2d
         5Q/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gPSu4gFn3w3NENV+r/u/lRuKXbC4uGC79+oMVRh8zbQ=;
        b=L2gRPiUujh6p9/CSOoiLPuRBijJdDP4CnoKVhUqJ0l6NlkSVJovS24b+EP/qh0REBU
         HaF5Wz1NvdaPE6Y+64hc2rhk2pY70DNacCFhKuSv+MXtu9vh4obSPFEHmhZIE28+WWpS
         HtegNE+XheFnCpJ6zKqMq90NreSl6CBBAQsyxvBpY1poQxJMY3GIy2z4/OX9ieliHtIW
         1qJ1XcR101u6gsp7WEZxOjNosUDeX+acfUDQyhBsY79gGrprHhh0ueU3HrlhWYoV9cOX
         EFHsfCOGOPIS78E+PAo2vtYmBoWvWxt+jgQurXAdildRWgr4sZ1PHFiUrPDDYiNwZ4Hd
         XxZQ==
X-Gm-Message-State: AHPjjUjI/OuriIGgk8m7oZnQY9FID3587zX26q0nZGSELAWhBPmAdaM9
	df7jFeG+pOb/PA==
X-Google-Smtp-Source: ADKCNb7C0CkK/zKgqqNg3SvdiUPGa0hkOn/ybz5n0YQLJ7eax66CXbRpp/tTUMg1HlOAj2buytUEIw==
X-Received: by 10.99.185.26 with SMTP id z26mr6661713pge.438.1504978842109;
        Sat, 09 Sep 2017 10:40:42 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id 13sm8954128pfi.55.2017.09.09.10.40.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Sep 2017 10:40:41 -0700 (PDT)
Date: Sat, 9 Sep 2017 23:10:34 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: [PATCH V3] Staging: speakup: Replace symbolic permission
Message-ID: <20170909174034.GA22902@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
readable and matches the style used in other declarations nearby.

Problem found using checkpatch.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---

Changes in v2:
 - Make the commit message more clearer and the title more concise 

 drivers/staging/speakup/speakup_acntsa.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 0e10404..4331584 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
 }
 
 module_param_named(ser, synth_acntsa.ser, int, 0444);
-module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
+module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
 module_param_named(start, synth_acntsa.startup, short, 0444);
 
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
-- 
2.7.4


