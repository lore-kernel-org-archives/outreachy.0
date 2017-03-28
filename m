X-GM-THRID: 6402645752993021952
X-Received: by 10.99.43.216 with SMTP id r207mr10147318pgr.145.1490732131247;
        Tue, 28 Mar 2017 13:15:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.116 with SMTP id p49ls5530107otp.4.gmail; Tue, 28 Mar
 2017 13:15:30 -0700 (PDT)
X-Received: by 10.200.4.130 with SMTP id s2mr9416789qtg.20.1490732130861;
        Tue, 28 Mar 2017 13:15:30 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si867438pfb.0.2017.03.28.13.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so23740648pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nV49jMpBcWWtEwmw1Ei+5AQEDdYf3lU8tbN3ULymfpo=;
        b=BD8nLJ5cUuEt87eBUiUqltecsgGg4QN4Xt3jAtoQqaTx0MLRTE/11Wqp8D4ntuYhw6
         St65ZdNgaFXgLkDLnQrTNT0K77levBcbNLC8FkRBXvpTtCkYLhRj6thL8wz9TC+BfvTv
         SOQVamKo/gwod/U6q+4z8buM+BkiG2xGH6xQf0eQJu2wnfqhSW8/UG1rXf1R6W2jZxDl
         6orFs/XlRzEhP0NKTcjo6rcvWzClrzPDAC4hymgHWq6Q6lkIz4HyLkEXfLRcimbVjba7
         u1aI2P6uikmqRpxiRL3EMt56aGt7e5Ir73jol0P8MhtOksDUKrtyaICAuF9Xt2uE4W1J
         QbLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nV49jMpBcWWtEwmw1Ei+5AQEDdYf3lU8tbN3ULymfpo=;
        b=DU9GyJgemaGnAXr7Y3vwhUUVJsQVkuXdxluiReDFxrsXA1RWepc3Oeid9a6BD7mMZK
         B8rBEs2X4vJGq17z9BSNPh7W7RP/SKaOecSjg7AGycxGIHCpGbOZsvXGBGqK4hvG51UK
         +31fIgF37W5TfNMvlfJDDgCsv2IFK6HL+5jp3wRWunFGRFk0i5tp9DHoVupL1H2m+Snr
         m3Na9irk3hfSQe4nBFRiozGoYwnybj6O//F/0koHLOSZDJo4wUJwtBX6IBqfH2LzRoxu
         D+6VraqelXpTdkpI2ZM8dBVyPs9WwuWpLKI3L3J88ivQgEeCElWhgD8sbtOU2Vq1V7hC
         FMKw==
X-Gm-Message-State: AFeK/H2WCL1xyNwzjHzSTBGV0FTv5/Ozx4ZgLclcO6LaDgc8ZJ3pLZ8DEJ4JVhHZgvbCJw==
X-Received: by 10.98.66.88 with SMTP id p85mr4084365pfa.146.1490732130603;
        Tue, 28 Mar 2017 13:15:30 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a5sm9014768pfh.124.2017.03.28.13.15.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:15:30 -0700 (PDT)
Date: Wed, 29 Mar 2017 01:45:28 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: adc: max1363: constify attribute_group structures
Message-ID: <20170328201528.GA15455@singhal-Inspiron-5558>
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
  36951     448       0   37399    9217 drivers/iio/adc/max1363.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  37015	    384	      0	  37399	   9217	drivers/iio/adc/max1363.o

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/adc/max1363.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/max1363.c b/drivers/iio/adc/max1363.c
index c6c12fe..80eada4 100644
--- a/drivers/iio/adc/max1363.c
+++ b/drivers/iio/adc/max1363.c
@@ -1007,7 +1007,7 @@ static struct attribute *max1363_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group max1363_event_attribute_group = {
+static const struct attribute_group max1363_event_attribute_group = {
 	.attrs = max1363_event_attributes,
 };
 
-- 
2.7.4


