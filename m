X-GM-THRID: 6331749364355039232
X-Received: by 10.200.51.76 with SMTP id u12mr3187552qta.63.1474225279974;
        Sun, 18 Sep 2016 12:01:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.81 with SMTP id 75ls8889666otc.6.gmail; Sun, 18 Sep 2016
 12:01:19 -0700 (PDT)
X-Received: by 10.237.45.195 with SMTP id i61mr2850150qtd.20.1474225279640;
        Sun, 18 Sep 2016 12:01:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si4097665pam.0.2016.09.18.12.01.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 12:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so2910124pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 12:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nAh5LrrRA9TjgU0DkcV2UCkLIl8P3Fvj/a/J9rs7I0c=;
        b=TZG6RO/xfXb+fC0XhD6XBCxaj1hWbaH0I1NeBjSSOaLsT+5LEZg3Jsv+OdN2MuMQrC
         Csou462liA5t1PkBeCc+W2boxm13hMTP53W+pKs6eqtMxZgV+flivOFpDQqHXT9autKw
         F9LNUxDAYW9DyfvrFi2yNfH4pm4udR743I10hiqaLlyFqH7/VvIbG3MCghm5iKFEMVJe
         1ZYJDo+7AQy1y62jAx1Y4d9u8E5s/lcltdhgIhLKYLgaM+rvTZhVd3vYPJTPZ86dmydc
         T96QNyFXYhl3TJ9EAVRhaOE+H+hTMOFNljhoVWwNKkWh05fb14ap1Jnq7YMfNmd7LuqW
         jCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nAh5LrrRA9TjgU0DkcV2UCkLIl8P3Fvj/a/J9rs7I0c=;
        b=LZGuvU06CXkBjWrtxyYEY5Rm9Um7LUh+hiqFSF3REk3MOiwF0fBKI5fDw786xeDH9a
         7OmRrF8QJtHyFSnvM5xuj35ZPsTniy1wIHB4RA/Iu/hFBeZLCu4hU/nlUF0tdpVcI1vD
         0BMDg9IQNY4Cpu/03j3xweKOmFAb4jhlWnk1yxy/ptK9v/iqI81FSb+e7vjrv96bClKn
         iWJJHyCq+AlqzaWG9dKx1ROlKNWw0F7uaoI0wSnu5O8SvAq9G8AKmbzZ4cX6HJbpKBGO
         Iul3fvFUCuGaqVkaPA/qi9znsYkk9HrIx8SA2dP52WbE7cmU2/U84uoM0Hl0MK1n6bcY
         E2hw==
X-Gm-Message-State: AE9vXwP6QlKQV6f6WQEoRHpblzAoDP/BD8m0kZA6jDOHSWQWDXYfe60o3Exgw8eZROMruQ==
X-Received: by 10.66.134.51 with SMTP id ph19mr41152394pab.30.1474225279244;
        Sun, 18 Sep 2016 12:01:19 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id f124sm238571pfg.7.2016.09.18.12.01.17
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 12:01:18 -0700 (PDT)
Date: Mon, 19 Sep 2016 00:31:12 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: i4l: Remove unused variable
Message-ID: <20160918190112.GA4845@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unused variable.

This change is made by below coccinelle script:
@@
type T;
identifier i;
constant C;
@@
(
extern T i;
|
- T i;
  <+... when != i
- i = C;
  ...+>
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 808bb3b..ad7a039 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -399,7 +399,6 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
 	unsigned int length;
 	int l;
 	int c;
-	long timeout;
 	u_char *b;
 	u_char __user *p;
 	u_char *buf;
@@ -417,7 +416,6 @@ act2000_isa_download(act2000_card *card, act2000_ddef __user *cb)
 	buf = kmalloc(1024, GFP_KERNEL);
 	if (!buf)
 		return -ENOMEM;
-	timeout = 0;
 	while (length) {
 		l = (length > 1024) ? 1024 : length;
 		c = 0;
-- 
1.7.1


