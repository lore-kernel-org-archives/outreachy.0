X-GM-THRID: 6402647377988026368
X-Received: by 10.129.146.139 with SMTP id j133mr10415863ywg.173.1490732510451;
        Tue, 28 Mar 2017 13:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.156 with SMTP id u28ls113888otc.49.gmail; Tue, 28 Mar
 2017 13:21:50 -0700 (PDT)
X-Received: by 10.157.17.146 with SMTP id v18mr9467564otf.23.1490732510061;
        Tue, 28 Mar 2017 13:21:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si879365pfx.8.2017.03.28.13.21.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:21:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 79so23830058pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iQdW3s6F3n38cRuF1w2B1lTq7+PgEb+5neagheO7Ymo=;
        b=MCqWPmHlrrMnnJtHfY0hgYnM7tEy8QtsqGxi7dl7Lyz+xD0Dx9M4hgA9TZbq6NiEQR
         ueVDq0YaGw1i7mUvb9Wr8d0aK7RZdBZew+k66xvXBanzrojdLy5QgetTNURfCI5lA4oj
         lGP9arw3PpM44OHd17sPBgdLH73JUuvXtsON0pWZtzyDH0kvwjp+LMyjY2Hf+caOjjlm
         SLccRCtzEYVKqsVhwIbmDaXOu8+y6pfxA+y55fz3zq9KNZsILsm0RtzyiQfFEjnhPNT3
         TOZDCTOIPzJhKB/1A0mJgM88hxqgcHSpEeJHO93anYkakexXtz75kCCfW9mrb3Azd9S7
         SDGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iQdW3s6F3n38cRuF1w2B1lTq7+PgEb+5neagheO7Ymo=;
        b=V6DLRt5xe1BjkfvghQiH/GbEHvM1SaJVpWuu7MTrfzzeaWCK95D0kcdQFL6Ocd1LA2
         Xf7ySTgNb+7qslOKgoHLprEMz3TeWYtBI8DxVG/h8CacbPGIsthK6D7kcOajDr9LPp2R
         jRTGwt6pTgHI6/2HqaGdQnzOYgWiwITSHxDImqbqZ0fyCf4hr0+9N1bTd+Hwjn1h0GBi
         +CJqs7rnRHl1ky2KpwcD3SBI5QMCzfs1xK/32mlScvZF1cqgpOcIvPH3MpeEas6ThjmP
         gEzFKIFWzV0ziPWKZGPzJU+qPUHfO3+WB9ZJtIrPPNLESeL+F6uQC5rOGrGBSRaRDYx8
         jiwQ==
X-Gm-Message-State: AFeK/H0FR95c/29Ew1ZN9lnVfRk1IsoWjm6p7ypCb5V6Dfc7oRS03OHdfHef1fmvBhI45A==
X-Received: by 10.98.94.132 with SMTP id s126mr33123352pfb.133.1490732509824;
        Tue, 28 Mar 2017 13:21:49 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s11sm8994853pgc.61.2017.03.28.13.21.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:21:49 -0700 (PDT)
Date: Wed, 29 Mar 2017 01:51:48 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: dac: ad5504: constify attribute_group structures
Message-ID: <20170328202147.GA21830@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check for attribute_group structures that are only stored in the
event_attrs filed of iio_info structure. As the event_attrs field of
iio_info structures is constant, so these attribute_group structures can
also be declared constant. Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
struct iio_info x;
@@
x.event_attrs=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

File size before:
   text    data     bss     dec     hex filename
   3046     360       0    3406     d4e drivers/iio/dac/ad5504.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   3110	    296	      0	   3406	    d4e	drivers/iio/dac/ad5504.o

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/dac/ad5504.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/dac/ad5504.c b/drivers/iio/dac/ad5504.c
index 788b3d6..22a027d 100644
--- a/drivers/iio/dac/ad5504.c
+++ b/drivers/iio/dac/ad5504.c
@@ -212,7 +212,7 @@ static struct attribute *ad5504_ev_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group ad5504_ev_attribute_group = {
+static const struct attribute_group ad5504_ev_attribute_group = {
 	.attrs = ad5504_ev_attributes,
 };
 
-- 
2.7.4


