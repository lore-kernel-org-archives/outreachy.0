X-GM-THRID: 6402643767138975744
X-Received: by 10.176.81.216 with SMTP id h24mr8711683uaa.28.1490731669474;
        Tue, 28 Mar 2017 13:07:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.36 with SMTP id 33ls946642ota.46.gmail; Tue, 28 Mar 2017
 13:07:49 -0700 (PDT)
X-Received: by 10.129.172.6 with SMTP id k6mr10937799ywh.52.1490731668205;
        Tue, 28 Mar 2017 13:07:48 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y90si863732pfa.6.2017.03.28.13.07.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 13:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so23696391pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 13:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nHdK1ZYYb9XsTunI080R0BESsD8HL25OnSxobX8VZPE=;
        b=rEaM960tytfCImkurJFP5YRWUMKiRGVZgNdz6Hq2L8mkK42CMR9okYHHZYvTx8EoUd
         2fNJRYWoeADBDLOSgz5XDu9KvZXq2fi59N7MqxsY2M7oZCzPtHV5RI46aEqG6hDrRhQF
         0ldPcYdCi8xnxX0EG9jAzSqCXpjTbnVQlqLXDJbaWuaIwcljfB/xetzVhWhBZ9fQu/Yk
         sM7dzUi3hKYRqEGifYKFLSMbPAwyhrtZ4Fyr4b45xVfEc6M3L+zewUT/a9w3qAMUKK1u
         Rau+nc4Q3QtqCf9o0FHEKX2qKLmK6K1I9xkBS/XZSQGPGwM69MJEE8VhARyjXQnb65qT
         su4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nHdK1ZYYb9XsTunI080R0BESsD8HL25OnSxobX8VZPE=;
        b=qHDLI3tLgXM7OQImZDusSqhTRZQswrnM3J9CQoiD2lVjMTUc2WTUqf6Od2Q8GG9dC1
         syh4M5iiGcasLYKf6BDhdjL7k9HJunmhVYfw2ty4RSOg3xhUoT9GVQ7qEQ8NL9g2nfmJ
         8FS1eh0Rb5840Io/8dudmS/KBxPU3WWV1zlvLv44gtBJ57nOGYrO3TG5onQMxQY7qgJi
         KftAW1vJV3fxZik7i++e29QYbbDZYS7ldG6KpamIst0scRjKTzP/15DbZ7aZFXeTAxIZ
         tsvRc40hqksrdKkE7W+swOWNnONmkuPaVH4F6WQeXjyfTdhrOZacJDdvdB2M10bReTU/
         gNrA==
X-Gm-Message-State: AFeK/H1N7Teb4z5ey11jK+0PLQDsdBnOWUbS2QDHr+KqhSknWPgt4Hebr5O7Gc0NVps2TQ==
X-Received: by 10.84.228.194 with SMTP id y2mr17708785pli.85.1490731667954;
        Tue, 28 Mar 2017 13:07:47 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t5sm8953479pgb.58.2017.03.28.13.07.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 13:07:47 -0700 (PDT)
Date: Wed, 29 Mar 2017 01:37:45 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] iio: adc: ad799x: constify attribute_group structures
Message-ID: <20170328200745.GA8033@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check for attribute_group structures that are only stored in the
event_attrs filed of iio_info structure. As the event_attrs field of
iio_info structures is constant, so these attribute_group structures can
also be declared constant.
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
  26051     464       0   26515    6793 drivers/iio/adc/ad799x.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  26115	    400	      0	  26515	   6793	drivers/iio/adc/ad799x.o

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/iio/adc/ad799x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad799x.c b/drivers/iio/adc/ad799x.c
index 9704090..22426ae 100644
--- a/drivers/iio/adc/ad799x.c
+++ b/drivers/iio/adc/ad799x.c
@@ -520,7 +520,7 @@ static struct attribute *ad799x_event_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group ad799x_event_attrs_group = {
+static const struct attribute_group ad799x_event_attrs_group = {
 	.attrs = ad799x_event_attributes,
 };
 
-- 
2.7.4


