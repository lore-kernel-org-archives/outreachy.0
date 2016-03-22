X-GM-THRID: 6264735070503829504
X-Received: by 10.112.209.6 with SMTP id mi6mr4015831lbc.15.1458622298379;
        Mon, 21 Mar 2016 21:51:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.136 with SMTP id a130ls834175lfe.33.gmail; Mon, 21 Mar
 2016 21:51:37 -0700 (PDT)
X-Received: by 10.112.236.37 with SMTP id ur5mr4153821lbc.0.1458622297784;
        Mon, 21 Mar 2016 21:51:37 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x242.google.com (mail-lb0-x242.google.com. [2a00:1450:4010:c04::242])
        by gmr-mx.google.com with ESMTPS id ai9si1208194lbc.2.2016.03.21.21.51.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 21:51:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::242 as permitted sender) client-ip=2a00:1450:4010:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::242 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x242.google.com with SMTP id sx8so8284127lbb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 21:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+hBe4tKyTind/mQngarjD/q5kLuc4qHy296Vun2USoo=;
        b=wnXDj0KfxOPOZaoASb4dgUcCZhoO/uPGQ97iOzgi9KtzumbDyiWs6m4vyoX6helVdw
         A/VpsUltYTMOnXmLEJJ/DB9Exdf3Rvt4zohog4bgusZrgzJS3IrvjD1q9KNt6+xjTv2i
         hKxv8adT0zLEaKEiMZuqggu0StNpj/ZmOgT1mFrXLm53Q4Df0/WQDrXIRzNPaGrlJouu
         hTYr0zq6/huuSKJHbJmNXFkrJomWYunTULnyeZcVwtDmq4ysQInzkobQTXBEoggFD+Ul
         29SUzSd4J0oLmlM2hjRej/fy3fWHdgJ4KOjGLZFTyicNUmaA96G+lV2NqCp6Bpedrlgn
         Dx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+hBe4tKyTind/mQngarjD/q5kLuc4qHy296Vun2USoo=;
        b=fS4HXJQmAZB8LayZCv8LVedqDLMEE9MicTwifDfMZK4bkftZ15FCWdIMSjDNJvnCt8
         PFsyO5+nq0ltktLfiP6TKsWtJ+hk1aDC598efgh1+t344Pb8dMtjCEnyO/dApBxWjxK8
         xB7XERBgKnhrU+yUCvs/S9SnAKgs9NB2gv59k7iI5Dl7L23L+3DQsbNPDlM2KSc/V7DZ
         a4H4vaOzxzKQzqEl5uuaI1VrpI1B+f1tWVo7poZwcDyIGJ5eSOZH8ik/J6EhzSJjp3gF
         8QHy5VMuu5TWqU8eJ3PgcSsUr/yFmcd2hYjZzv6g1T30nzdl1ZrIlsn8XDfnIpUyQgCU
         UQ2g==
X-Gm-Message-State: AD7BkJIMuazvOGtMXi0rS9jJYjNwCffgIO2tvk2jS5Dh2EuRX51p3iEjnRQhUe9SwbAjjg==
X-Received: by 10.112.201.133 with SMTP id ka5mr12303518lbc.1.1458622297649;
        Mon, 21 Mar 2016 21:51:37 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id d11sm4975992lfe.1.2016.03.21.21.51.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 21:51:36 -0700 (PDT)
Date: Tue, 22 Mar 2016 07:51:36 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: iio: ad9832: Replace 'unsigned' with 'unsigned
 int'
Message-ID: <20160322045135.GA18790@pal-comp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
Changes in v3:
  -Correct 'iio:' in subject line.
  -Re-commit patch using full name 'Svetlana Orlik'.
  

 drivers/staging/iio/frequency/ad9832.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 18b27a1..358400b 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -31,7 +31,7 @@ static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
 }
 
 static int ad9832_write_frequency(struct ad9832_state *st,
-				  unsigned addr, unsigned long fout)
+				  unsigned int addr, unsigned long fout)
 {
 	unsigned long regval;
 
-- 
2.5.0


