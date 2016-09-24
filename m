X-GM-THRID: 6333834735065759744
X-Received: by 10.157.2.101 with SMTP id 92mr655833otb.100.1474732901104;
        Sat, 24 Sep 2016 09:01:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls2262548ots.13.gmail; Sat, 24 Sep
 2016 09:01:40 -0700 (PDT)
X-Received: by 10.157.43.4 with SMTP id o4mr3019325otb.38.1474732900830;
        Sat, 24 Sep 2016 09:01:40 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id f12si3002073pfk.0.2016.09.24.09.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id i5so3305078pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 09:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=0jkMHN5+DkILDZrBQ9J0vF/rM5OI6xr/1rTDYahY4+I=;
        b=TShIODkhgyr2KkeEqMQr+SfQPQIu/UwIgzFSjPFSV4iW7ISgs8qzXNmG62DyF3FbrW
         o3RfAxLe90MXgQJUyBHGj0nUWrEDSUOayf7/VZad3HygfQly3kll8JkE53+ydkLQ0dp9
         pFmpYBh1TLVhRFOYiry8liijA/o/sHyBuG5LAMLaWsb97VXlxsbxS1gkXAVRYiIThllb
         KSRJpxmzJfYCw+b9wgw2hCz12WjW531uiEokRHJrTpFy/ZfSz5SgHk+/bmbM2RUJU2GE
         oA6NzisdDE0PAw88qdXNkrSO0gQcE9FrO7QT26gJAdLZ9jlZpppufk5qbLe7EQ0jOkki
         Pxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0jkMHN5+DkILDZrBQ9J0vF/rM5OI6xr/1rTDYahY4+I=;
        b=AyfyLYM0NCGh+rOjKWv4KbxS1HuoD86PpHOidpb759Ncr4sfzXraw/Q51Hkhx8gDMg
         czaoE/3eoZQVDPjOYygb3orgyUsPMAyi6Z5DnQzAyJRpC7ra5rVLA8+SKCc5fL84dBN8
         hsNF80DRMxoLqvR6RMcpQlUGps7681JUMCK8j/YQ0x3E5WH68Z5L0i8Y++dYLnwLAz4P
         CM6Ys21hR0wm+G1fRf0iNSO7cT/h1q1+g4EBvEygp1HI6T3q3lq+h5i2riZwR2WhyWR0
         CU4CFE84cSbcxiv0al7KzDTsIn31HNHs1r04NrN+4zZPxMgOtSiC9Ru8ZbtCv7XcK4uy
         t/gw==
X-Gm-Message-State: AA6/9RmrKmYKllZcAQssEwJHe8jK8aNiXCyJfVaHNROVbCycTdla/bZtir5cbKT+zkPI+g==
X-Received: by 10.66.8.135 with SMTP id r7mr5199489paa.169.1474732900648;
        Sat, 24 Sep 2016 09:01:40 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id xn11sm19507012pac.38.2016.09.24.09.01.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 09:01:40 -0700 (PDT)
Date: Sat, 24 Sep 2016 21:31:34 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Jarod Wilson <jarod@wilsonet.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wolfram Sang <wsa-dev@sang-engineering.com>,
	MaciekBorzecki <maciek.borzecki@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 6/6] staging: media: lirc: Replace data type with pointer
 in sizeof()
Message-ID: <c8caeedace5534475eeadfa5286256e361761edb.1474722341.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474722340.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace data type with pointer of same type in sizeof() to resolve
checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 3 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 9eb1eec..828efb3 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -735,17 +735,17 @@ static int sasem_probe(struct usb_interface *interface,
 	/* Allocate memory */
 	alloc_status = 0;
 
-	context = kzalloc(sizeof(struct sasem_context), GFP_KERNEL);
+	context = kzalloc(sizeof(*context), GFP_KERNEL);
 	if (!context) {
 		alloc_status = 1;
 		goto alloc_status_switch;
 	}
-	driver = kzalloc(sizeof(struct lirc_driver), GFP_KERNEL);
+	driver = kzalloc(sizeof(*driver), GFP_KERNEL);
 	if (!driver) {
 		alloc_status = 2;
 		goto alloc_status_switch;
 	}
-	rbuf = kmalloc(sizeof(struct lirc_buffer), GFP_KERNEL);
+	rbuf = kmalloc(sizeof(*rbuf), GFP_KERNEL);
 	if (!rbuf) {
 		alloc_status = 3;
 		goto alloc_status_switch;
-- 
2.7.4


