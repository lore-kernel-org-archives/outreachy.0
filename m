X-GM-THRID: 6249471421100064768
X-Received: by 10.107.11.222 with SMTP id 91mr36719753iol.7.1455068453992;
        Tue, 09 Feb 2016 17:40:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls1040388igb.13.canary; Tue, 09 Feb
 2016 17:40:53 -0800 (PST)
X-Received: by 10.107.163.208 with SMTP id m199mr37558214ioe.30.1455068453378;
        Tue, 09 Feb 2016 17:40:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id v197si69791ywa.1.2016.02.09.17.40.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 17:40:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id s5so2100861qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 17:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2JGjClCb5c8f47/F8/FClyQAplfPYmI7DFKCKiB4z34=;
        b=0MxF/UInGxEA+ksuUTlOVM2e3yCO2tBtfGr6vMAGmTDniT3izizZeFlnjMzCVR69KD
         Q8UQsjOJwkH91nlJGYtdu5kTv+6W/HdqTWJ1XKuys61zXQrm2KUzHWhGVE2IkUnQcgep
         al8rkYWeZ/fM6N1HFs4mBfmCkQw/LzdhNjGGm9GYZwvz+RQ6eIunQjHFpvDMZkS3DL2r
         V5Ta3fcO0Lw7sCh1XJV5+HTE/UEYupAi3JZ5dqCkFAfdLtKdTLkhLBy+M7hpQPchjFbk
         mus+BRQNyVvtcjFQW7NyNeGzKEyoXJVYekWfTR2OFv6HuckMw/Ns1b0lYUbuQpK5o91w
         G6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2JGjClCb5c8f47/F8/FClyQAplfPYmI7DFKCKiB4z34=;
        b=L+Y/uehWTv1IsZW4SVXqS5//k/LHShhoaGkwYDJAPIrclkS1bDd019l76REUWpW4S1
         trGYCKxehO+be0FLTYtgPrxnKrOlsAssO3aKoNwZuQL0SUVzVe91pPvhUSxCnb0H4N52
         VpOaXdhYJizParFe9g1p0EHrRyqqlGAERRjGK/xy4/QR4xSBHX5GPKhDHDVwDoT+ZMOZ
         LDqe2IlT0rV5mJFsQWewsHuAONuY3tqUkMa0WEoDm5ROHWzc6ckjAcx/92EEdjz+4/Hh
         lUKaC8MbSplH4vD9HOoHHzs7RUGyYJ01LDUnVNHu2iamg1cdoFYeOYfVFYx6b8MbHjho
         PJUg==
X-Gm-Message-State: AG10YOShuxNLC2azfGDZhhS6zffvljk25pRYfI5k1UQaJrsq2x+/MD0xDsZSPOwZ1Ni57w==
X-Received: by 10.55.201.84 with SMTP id q81mr17460051qki.99.1455068453217;
        Tue, 09 Feb 2016 17:40:53 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id a130sm358173qhd.9.2016.02.09.17.40.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 17:40:52 -0800 (PST)
Date: Wed, 10 Feb 2016 01:40:15 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: osc: Modify right hand side of an
 assignment
Message-ID: <20160210064015.GA4712@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch modifies an assignment of the form a = (a <op> b);
as: a <op>= b; where <op> is << or >>.
Coccinelle script used:

@@
identifier i;
expression e;
@@

- i = (i >> e);
+ i >>= e;

@@
identifier i;
expression e;
@@

- i = (i << e);
+ i <<= e;

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 3ae00fc..cebc974 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -3326,7 +3326,7 @@ static int __init osc_init(void)
 
 	reqsize = 1;
 	while (reqsize < OST_MAXREQSIZE)
-		reqsize = reqsize << 1;
+		reqsize <<= 1;
 
 	/*
 	 * We don't enlarge the request count in OSC pool according to
-- 
2.5.0


