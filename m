X-GM-THRID: 6530191418322845696
X-Received: by 10.36.65.15 with SMTP id x15mr14167399ita.47.1520428671675;
        Wed, 07 Mar 2018 05:17:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.230 with SMTP id d99ls370981ioj.18.gmail; Wed, 07 Mar
 2018 05:17:50 -0800 (PST)
X-Google-Smtp-Source: AG47ELs9/2urbY9S9kiii4urCl9m7yB9KP7900Cgms2VXC8orNZ/3uw4DjTEBduDESVUarGll/9y
X-Received: by 10.107.16.26 with SMTP id y26mr16214679ioi.36.1520428670689;
        Wed, 07 Mar 2018 05:17:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520428670; cv=none;
        d=google.com; s=arc-20160816;
        b=ZO89itlgjwLxwZprV6ieBokI+tXVVo+ivz8cjhyC4CF3PDgcG/fu32HPBXnBD0iqWL
         z8iId4ujkQT1r3x9zfHCrfo4V3An20xRxrGOPUVQuZIA1tUqHU6R72+CjAOmwJjbBGyD
         1kk07RMPzaR7nQw3uba9tvM2PHTAtRqHCk29q8P8GzRDxOq80E5wRgrMLiNUjPjUNQzO
         hc2wQhmaq1mwPkuzoBXcx8fW7zlsbYBxIExOELstYLunz7YSLgthZwMmZzfJ1Ggw1pvS
         vbpi3e18HpCNNWllFBmAw2zigS19ojbQFBdRGNmd2sDmjAq5VxQA1YJwDosRgPgtMRxF
         +vfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=gWjrC5PfkyI7nufiPJFa70HGWxbVUXemXPsffzP2jIo=;
        b=RA+Q0REHEy5vw4BwM3hTXEmn/YpKvcJMIYASBMip4+YXEkTAMKnwMOYvR+2FtefROb
         dlbp/59EBp7203ZJUxdBaYbXk1uDci3QCN66ff+Eqa0J/mCmJJgwsUIKE/5zIH0UZnnR
         qNdFYi46KDaym32WZn8Fjv9vQ0cvk4vP6rbDfQ+yBXaNUVKVgI0S2a8FRT3rqAWCR9Or
         2Gl17Y5S6ZSXm8Zc5IQ1pR3nq+dzYAhCQmwVGz8mJ53DgfJL115MT1vVF2fs82JqajZd
         9b1FKSJi3cJcHe0J7bbzOEy43yKECVfBJZpazZrzhxc79oJHLGpYwUOKkLMM4vKllT9Y
         xBWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CjV7P9mP;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id l8si2023956iog.3.2018.03.07.05.17.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 05:17:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CjV7P9mP;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id e3so857997pga.6
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 05:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=gWjrC5PfkyI7nufiPJFa70HGWxbVUXemXPsffzP2jIo=;
        b=CjV7P9mPjSR/YucFYFn9afxsgCdcjkITVxcpdLBafmYpiXDxNB0/EWWNcRFOupKKqu
         w3k2idr+ohU4MJrUJOvAVozIwsZ0Lp/YrC6GB0Kpp4r3DpeyyHXJvZHjcI59BKzFur0b
         ptBL6Hq30ZSF+bvgAGmtMXfACTgpe+yXLrTLvc1+7Dxdb8+DJBFAOS/VzHbttEHhq4CM
         352ftk5z46lpVn4zvllba3ghZl+x43Z7Kq5HhHzwIeaCXMsDlspYdRXoeofLI2PmvqhL
         bszBdaQsgwL7usNqGYnog2m8FE9As6CYWAoJCxdo79fcAEstr0F/Hque/S79+cPlGrmT
         1VFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=gWjrC5PfkyI7nufiPJFa70HGWxbVUXemXPsffzP2jIo=;
        b=HAJ7gYYVOaSwOADaKeRmiRWZdvURDCVIdDlQi2mNnOFMO9VnAfdaDTBwbbJn92YjqR
         Z+wwOPQGWUJPV+BqGTmmApqFrYpLL9atbxQQlQPH38yfgK8HqkbI8DWwoJwPA0Sb01IM
         A5KGh7eYkdKNY5Kpp7JeSN5NPC/uYESQOO18ZxVuBauB1JhL6T4EO6O0BW4nJal6iyFx
         ymjW7nhvlZVm0KqfvqNkn0HoXfO9/ExwJhlfK/mOxVCZ6/MzO1VP3oh4V5JE5Tg1VjUY
         Z9pw+b+X4n7MoDArdcBuf/i7aGJm4HWiQmvVPAtpBWpYdPoF71igZN8Nbo1Pib0h7qBz
         HgPA==
X-Gm-Message-State: APf1xPADBD217d+zsfaq2ighq3KbEzAg0xDPtRBzqg3v31A4aNRM8LuV
	DRMLvEiuvb2MrCCrpCUNlxUS8Q==
X-Received: by 10.101.76.71 with SMTP id l7mr18258895pgr.192.1520428669127;
        Wed, 07 Mar 2018 05:17:49 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c11sm44734855pfe.109.2018.03.07.05.17.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Mar 2018 05:17:47 -0800 (PST)
Date: Wed, 7 Mar 2018 18:47:17 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: lars@metafoo.de
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Remove unnecessary cast on void pointer
Message-ID: <20180307131717.GA12326@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The following Coccinelle script was used to detect this:
@r@
expression x;
void* e;
type T;
identifier f;
@@
(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T*)x)->f
|

- (T*)
  e
)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/iio/adc/ad7816.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
index bfe180a..bf76a86 100644
--- a/drivers/staging/iio/adc/ad7816.c
+++ b/drivers/staging/iio/adc/ad7816.c
@@ -254,7 +254,7 @@ static const struct attribute_group ad7816_attribute_group = {
 static irqreturn_t ad7816_event_handler(int irq, void *private)
 {
 	iio_push_event(private, IIO_EVENT_CODE_AD7816_OTI,
-		       iio_get_time_ns((struct iio_dev *)private));
+		       iio_get_time_ns(private));
 	return IRQ_HANDLED;
 }
 
-- 
2.7.4


