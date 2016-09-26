X-GM-THRID: 6334501758545428480
X-Received: by 10.129.84.69 with SMTP id i66mr4416181ywb.29.1474866139899;
        Sun, 25 Sep 2016 22:02:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.56 with SMTP id g53ls12912540ote.32.gmail; Sun, 25 Sep
 2016 22:02:19 -0700 (PDT)
X-Received: by 10.157.15.236 with SMTP id m41mr5127243otd.107.1474866139527;
        Sun, 25 Sep 2016 22:02:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3972858pab.2.2016.09.25.22.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Sep 2016 22:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so8225176pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Sep 2016 22:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gS2wIPMLJdMkrjt4FdqtSbrM7n1Sy/vQGDFtlC6RfEk=;
        b=bhCuT9kYhsWy08fYn5A/HS/6/2XjL/jlku95eEzFwqLrcOsh9iTviiUcsGM15hC9LT
         jRYPqR/5mgUP6uQa+tt2YrQlQsKDumnHTNYXmnKn7GiwpsnSmJ0r7tqXEQOOhA8IUXcM
         NNI4a2xkVR/FpUBUkk830+3DsCx/IWV07+CrfjecQ+tIp0W0Beg1aS9pGdftOgrVesMS
         vjsNH2AnDTSH6w3xl18JuAFWQfLhndcgeSGNFPJv2qsNt6KAwYAnpxR6KXkJYIYICs0T
         Ew9ySnokKbvV7odsM+YAKfJUQ49dGkRoShsuPOpsI454pDNb5Ih2uFUPs+8eiR1jxnga
         87Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=gS2wIPMLJdMkrjt4FdqtSbrM7n1Sy/vQGDFtlC6RfEk=;
        b=U6Eu+hVVNDI5PW29VeqT0oY+b1yv8f4KmDhRKfBfQZWhwz+TOEgBkLRkj5v1ewZhMi
         cN8AI9aBMsLHezbw29H4hy18ca6du6gSI1Ipzvn3HJhC7ECzYTIF5spr9u1nhtAts3h+
         y/oFBbeKs88Q2hVQrW7Urwmt1hkBFYGpCW0TdcTmPFXWP30rDwMHccELDr9Ywk2reOi3
         XIpsBEazUJHjGJ07ISIRJ3OxXl2Xhy1h/RANWg1hk9iYynX8ZrCpll/W+iMk8uU7NLfK
         vIiMz8WFmCAHXNOx4W8y9w1dKyw7dO1ZCosQNrAa+jmxlofaLEwmIqRfdUEvEEw0eBH+
         ElNg==
X-Gm-Message-State: AE9vXwMEMAzXV8Lpwkelak3hJAuq9AZEqhlXZ/Hn/2hqSU29hfVL96Xw4yVhh2cHcd8yag==
X-Received: by 10.66.222.169 with SMTP id qn9mr34711264pac.133.1474866139324;
        Sun, 25 Sep 2016 22:02:19 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.164.95])
        by smtp.gmail.com with ESMTPSA id y190sm20763690pfg.39.2016.09.25.22.02.10
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Sep 2016 22:02:18 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 26 Sep 2016 10:32:05 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	lars@metafoo.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: iio: adc: constify attribute_group structures
Date: Mon, 26 Sep 2016 10:31:38 +0530
Message-Id: <1474866099-12282-2-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>

Check for attribute_group structures that are only stored in the
attrs filed of iio_info structure. As the attrs field of iio_info
structures is constant, so these attribute_group structures can also be
declared constant.
Done using coccinelle:

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
x.attrs=&i@p;

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

File size before: drivers/staging/iio/adc/ad7280a.o
   text	   data	    bss	    dec	    hex	filename
   6487	    584	    776	   7847	   1ea7
drivers/staging/iio/adc/ad7280a.o

File size after: drivers/staging/iio/adc/ad7280a.o
   text	   data	    bss	    dec	    hex	filename
   6551	    544	    776	   7871	   1ebf
drivers/staging/iio/adc/ad7280a.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 253a7f1..977241e 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -478,7 +478,7 @@ static ssize_t ad7280_store_balance_timer(struct device *dev,
 static struct attribute *ad7280_attributes[AD7280A_MAX_CHAIN *
 					   AD7280A_CELLS_PER_DEV * 2 + 1];
 
-static struct attribute_group ad7280_attrs_group = {
+static const struct attribute_group ad7280_attrs_group = {
 	.attrs = ad7280_attributes,
 };
 
-- 
1.9.1


