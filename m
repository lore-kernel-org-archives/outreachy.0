X-GM-THRID: 6402648458608508928
X-Received: by 10.237.33.236 with SMTP id m41mr9480103qtc.15.1490732761904;
        Tue, 28 Mar 2017 13:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.115 with SMTP id r106ls13633078ota.10.gmail; Tue, 28
 Mar 2017 13:26:01 -0700 (PDT)
X-Received: by 10.129.182.11 with SMTP id u11mr9884705ywh.149.1490732761496;
        Tue, 28 Mar 2017 13:26:01 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g82si747290pfb.5.2017.03.28.13.26.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so21054197pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uZSB27M5LAxz48XH5JUroAf6eV+f6MdzV8fLFhgtxuk=;
        b=VWy0rQlWmUtfKdq2DyEchZLZGpCC2YGVIyk0MpfsvsEm4a5zBlR7/AQ6VhNjXJtL1r
         bFDxZmf6tJ/omoTFkC/evjsrspiy4JrMkjcSjUxyD6i32lksdMiVONewlE/f+pqgdjXS
         9cEQjQtFnLdS4Ewc7X6rIwW3wWTOhSZyY2nxvbqxtz9nqn9GsQ8gZfvT83Gsz60ZFm5T
         0bgfr531VgiBNRjWFDJmrS0HN/HmNmq4djfSRFhjjHp28Ec+eZ61s7C+SoQjDMZnHQkH
         ZRLYAWSA4R/2H7qNcA0cSUFx5jVvhG7J/J+V0yHG104q4/nQ4yrdI0B7oZbUE9DpUBxR
         DCvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uZSB27M5LAxz48XH5JUroAf6eV+f6MdzV8fLFhgtxuk=;
        b=C/peH1/aEtM2JbCiynQ7bnzm5sssE5vKOqP2fmwKyAL6mVCdE67h8QgHmJJVDyyKeJ
         J8DIkDIB3eF+Ny8RiqIFKveVaLvbQZ8HAYIf7M0+i4IAgPF7pX5jvvafOFO2nX3ijfNt
         nsIWSl3p1QE/QqzkABbEzy1pH0xRaV6XIjoOa0DQFcPDgotoochHOATpRPDEf1OM9n3u
         fZzTgv6VR9amef9qmFiPaEofuYQ3XXr6JW/uGx0YBQ6Z2U7Q6w6JbHEQ08XJx1JGndaf
         DyqsgwWbKMq0JWKmtqCNg5bv2+8UTyK6mMU5SMkpn52IY24EAAUqUKQgYlDR6ybw34WV
         JOrw==
X-Gm-Message-State: AFeK/H3pHo/MvjT80q8Hcy9ENfEMq/KcDBqYNQRwAQv8aZXOu9n2RQzEMpYMcEXBVBRAtQ==
X-Received: by 10.84.224.131 with SMTP id s3mr38695404plj.162.1490732761248;
        Tue, 28 Mar 2017 13:26:01 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 9sm9094600pfq.42.2017.03.28.13.26.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:26:00 -0700 (PDT)
Date: Wed, 29 Mar 2017 01:55:59 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: light: lm3533-als: constify attribute_group structures
Message-ID: <20170328202559.GA25974@singhal-Inspiron-5558>
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
   5798    2376       0    8174    1fee drivers/iio/light/lm3533-als.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   5862	   2312	      0	   8174	   1fee	drivers/iio/light/lm3533-als.o

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/light/lm3533-als.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/light/lm3533-als.c b/drivers/iio/light/lm3533-als.c
index f409c20..0bcc843 100644
--- a/drivers/iio/light/lm3533-als.c
+++ b/drivers/iio/light/lm3533-als.c
@@ -690,7 +690,7 @@ static struct attribute *lm3533_als_event_attributes[] = {
 	NULL
 };
 
-static struct attribute_group lm3533_als_event_attribute_group = {
+static const struct attribute_group lm3533_als_event_attribute_group = {
 	.attrs = lm3533_als_event_attributes
 };
 
-- 
2.7.4


