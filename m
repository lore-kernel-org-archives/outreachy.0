X-GM-THRID: 6808080746625892352
X-Received: by 2002:a17:902:7c84:: with SMTP id y4mr3143496pll.30.1585139319213;
        Wed, 25 Mar 2020 05:28:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls1514819pga.1.gmail; Wed, 25
 Mar 2020 05:28:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3RR/srI/yKwK9Xgesybafsw8QhctRyglg29K6K98sjPbipdmQjsEZEegnv/2T+GKU4DJ8
X-Received: by 2002:a63:8c51:: with SMTP id q17mr3019084pgn.320.1585139317721;
        Wed, 25 Mar 2020 05:28:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139317; cv=none;
        d=google.com; s=arc-20160816;
        b=mwc8qnR9RSQb6aiXfXjt7XSSyKA6xPxxrO0w8z0NVlnr1IoQ9p8VLqRl9ET5bk2kbK
         kDf4BF3aeOGZeM5Fa51Rq3VvS0NAw5izG0SUjVyDpFb1bh+kvwo7LZIaLeUPsQpccFw4
         7ermB5VJ3fOuMIVO1+jkrPQ3pCVqhbKRw/jbwzR/+yUIdZfYRQ5a0YqVYi447n7gYiuW
         cTCBACMNr6aC47RfqZJfrk94B65K8XR8Es331elHVTX6AMjilxbvD8hrrLXyHYH14lBk
         G+nmyr8ONsFyf/kVmHjw9YhzUJo0u9f+8+gC+Mlp+EAz47p8UXtjWepYQ46tXNoL68+y
         Al5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OSjnSCZ4GLIIHwO+u1xxcGDnimDdOSIVFUxpyYCIIyk=;
        b=F1te65y2/+Pe9Mk9Rn3F/Yu/CPMJ+Bw5rM80712MVOecezKkv7uso8F79PN4FznDy3
         gK+BQArU+wmDEEEB0sA51IokSgqqt6zSKTqv6LuYF4XuDFvSslCET69eQ9Umqz9A8hp5
         DSUDu61+F3ouiz8ocs4Y1SOliSc7h8B9mHLfwr8rX4s7zYLm3pLJ5Htj5pVVB//3WMAs
         RLl6zKWL1i3TcKvPt/yeggaTjBVbUUwJRQ3xxed/pt6QNCgeJZ01e9Hw7YGAGGA/nHdN
         LMuSFBSC29PCUAs287SoXcZSELVvJ+HXNDAcY4qh1XRXbK9efAn4xEFelaK9yoLTEYYZ
         0dQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DeL7WWcP;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c16si226424pgw.4.2020.03.25.05.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:28:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DeL7WWcP;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id b1so1075118pgm.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 05:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OSjnSCZ4GLIIHwO+u1xxcGDnimDdOSIVFUxpyYCIIyk=;
        b=DeL7WWcPQm2UfUHRdLUbyL9l5+aspOMtAfE4GA4O0l4UdKIMRLydq3VCVzW0ld8EXw
         8Pvig7nL7zvJEVNErFjXZQMxS/HPCwn8H3mDlrjNMOQ4MSGVSOliTNF6Yts8YHFAFrzs
         3SvWPTLek1WzYr0ZvLGUWuTLmetSVyO+TMFK2nx7w8vCrz4gJNN7idWeMcPWi38fIRZ0
         7XIXBcICZp/y6X9/sbLLET2Agj9pgJn/hXatLg6KxmvcJ3h3B8mJjpstWnBnh/9mfZlr
         eZJj2CfBnybnzC70sRaiOgTVkyDvXNWmGa2POxE3q3CHn57CFcRSCpSw1fX1RZoUeX+V
         g32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OSjnSCZ4GLIIHwO+u1xxcGDnimDdOSIVFUxpyYCIIyk=;
        b=QjQ4wfRQXTrLODOgB9XPQZBX7ouAB3IRkaNUPYmY9KA9Iq1/m8lDibNk++fV1ZOeIb
         yUD3iq8lo1nVmkBVybjaAUweAOo8Ezc53QsIj6kRQdIuof53Rma9V3T2/8sjx88W7GK6
         i8JOHfA7D/jr/y6ERn7PlWghs/PpRHqwBar+CM0sYMm+PwEf8PzmifIhzHsojQ3DShAf
         7PMagU6fjSlaYWsc9Idfth20zVBAy2UOgTpQoAYxrIWEuvH5+4Ec2wTvMhsNZGHiVLgH
         ottAGf2ugps3LJ5wkpFE6xmODRMVMneWgXIIGfhpyDpmnuLWlz6FVHed7XCVjZoATyic
         0gag==
X-Gm-Message-State: ANhLgQ0kqb/N79Cpq0O12C2K/FVisuoMKowMHFgnVDNMC94jqNmrLF6O
	4t42jjwi75vFCHD1tSgKlMTsXNcfZ6qJ/g==
X-Received: by 2002:a63:56:: with SMTP id 83mr2886920pga.249.1585139316949;
        Wed, 25 Mar 2020 05:28:36 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id q6sm4385282pja.34.2020.03.25.05.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 05:28:36 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v2] staging: hp100: Add spaces in if statement.
Date: Wed, 25 Mar 2020 17:57:52 +0530
Message-Id: <20200325122752.38600-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Add space between if and open parenthesis to improve
code readability and to adhere to the standard linux kernel
coding style. Also, shift the next line to the right by a single space
as it is the continuation of the above if statement.

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
Changes in v2:
  - Remove the redundant portion of the log message.

 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 16fe9c7879cf..926d0b51ddb2 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -556,8 +556,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 			 * can map the full 32bit address space.
 			 * Also, we can have EISA Busmaster cards (not tested),
 			 * so beware !!! - Jean II */
-			if((bus == HP100_BUS_PCI) &&
-			   (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
+			if ((bus == HP100_BUS_PCI) &&
+			    (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32)))) {
 				/* Gracefully fallback to shared memory */
 				goto busmasterfail;
 			}
-- 
2.17.1


