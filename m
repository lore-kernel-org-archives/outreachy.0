X-GM-THRID: 6392997475785900032
X-Received: by 10.13.250.197 with SMTP id k188mr537318ywf.167.1488529895001;
        Fri, 03 Mar 2017 00:31:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls5673675otg.18.gmail; Fri, 03 Mar
 2017 00:31:34 -0800 (PST)
X-Received: by 10.129.67.35 with SMTP id q35mr600468ywa.51.1488529894579;
        Fri, 03 Mar 2017 00:31:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si1247496pfz.1.2017.03.03.00.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 00:31:34 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e66so3628016pfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 00:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fwchNsqkHHrris/MgvMfjhp8nS01cLGINsgiDh8Bhow=;
        b=QXA+t9yLh3l6CRo0o6QwH57l1gJMXbqgcYTZka25FCSL4aiQmvGv1PG0r7OcxIDbtm
         KF6/ML3xcL/Db6iz5JeSr6qIvJHjnGZLyc3nFIWvG1Z0GWl0hEAF3ywjY9pBHkNhBome
         NiBWOnvaV3r7R6WA7nxcUaBc/aOZbygW7nAr3L0KyAhQIwArrsea8q8+UTkZnzW2dyhk
         qN78vV5pwaBfjoysyRzK5HcrCZsnSG3kNMp6DnT/2KS54243qbu1uLgIKva/cIAw/PoS
         kVqB+qh+Yupl1ROUNg2JUaxD4JjxWyLP9BZ1WrzK9k09+TRwZE+iLz8vnN4zZclQebfA
         glbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fwchNsqkHHrris/MgvMfjhp8nS01cLGINsgiDh8Bhow=;
        b=VQ90b20PlsU4I7ExxrzSnR0AojE8RB1XYXveTWSxjaoI/QBYhh7XjqOFbZdPJ04YiA
         xEADnP37pMPHvFua++BVLwaOjZmY14bV1yYXz2ZfC5aMEskWRS+Yg7phavFvQl/gp56J
         GRUx+NVLPYIUyxDjT6y47vDuF+Eb645NunowGqCpjbUUQcRFoHEnoUsMK4IyyXpjI1sj
         PYr8RuPohaXEk5wqwUZer4+Z2vWbXAoBp3YsN9YgvoRcQ5Hba+PyEZLh0ZR/BaHydlUu
         2jaxm2furBcTEGzwicJlJxqrzKDk2KoWk60ncn2rEiVncNMKvB8xuQmcjcfjoWP59C2m
         XWxg==
X-Gm-Message-State: AMke39lPHxN6rPxJVFimSOb7ojRvM8qkh/ToVo5y7/TfeCSjA2bAIauQEa+3zyJe6NvXkQ==
X-Received: by 10.84.202.194 with SMTP id q2mr2548732plh.108.1488529894357;
        Fri, 03 Mar 2017 00:31:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t5sm4311392pgb.36.2017.03.03.00.31.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 00:31:33 -0800 (PST)
Date: Fri, 3 Mar 2017 14:01:30 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com, marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: rts5208: Remove unnecessary cast on void
 pointer
Message-ID: <20170303083130.GA25123@singhal-Inspiron-5558>
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

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Moved buf to the previous line.

 drivers/staging/rts5208/rtsx_transport.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 2379901..8b57e17 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -766,8 +766,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
 		return -EIO;
 
 	if (use_sg) {
-		err = rtsx_transfer_sglist_adma(chip, card,
-						(struct scatterlist *)buf,
+		err = rtsx_transfer_sglist_adma(chip, card, buf,
 						use_sg, dma_dir, timeout);
 	} else {
 		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
-- 
2.7.4


