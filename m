X-GM-THRID: 6392997475785900032
X-Received: by 10.36.16.81 with SMTP id 78mr62955ity.5.1488489561724;
        Thu, 02 Mar 2017 13:19:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls589250ioe.23.gmail; Thu, 02 Mar
 2017 13:19:21 -0800 (PST)
X-Received: by 10.99.7.137 with SMTP id 131mr5955297pgh.49.1488489561182;
        Thu, 02 Mar 2017 13:19:21 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si109968pfa.6.2017.03.02.13.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:19:21 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 16so1966035pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eb6efTKyY4svCNWvcvo+5FOeS3mY+fTEJ87fSbKkQEE=;
        b=ZKerhy1ikKfyAsTpgqyTSe0J39IZ4ENOQ5xyrtUpXn0OvUgTM9x5dZsdh2HbrxAoYa
         elUJUOtL0wedSVFtaXOwVFHXIgVtd0BYgb+hcWAuZ94+E/zuqmPMZSG7cZRkHmF786HE
         F7MAKQQMiJKKPEFy08lbScS2OuDNIl4nwjNLBmXbDGSvWSCaim0pBu6PZlcakkvyyKXa
         fTEXD5JGk4U0VMxg6D+XrUTIvh1f4phTxr3WnUq59Z77zJ4Z6pM6syx6Wmtb1DLWc1Qw
         jO3NM6+CU2atQ5uHFFPWl3k1MQ1cwFnje1NvAvUv6bo4H8LMWgSTtUrQ8EzDd3FsHFzh
         7v0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eb6efTKyY4svCNWvcvo+5FOeS3mY+fTEJ87fSbKkQEE=;
        b=Uis7MFy8rBzLzfK0Mtg85VENYWjovFwu0XdhSBI+iR1i036z9sR4oSuCVT/JD/2EV9
         u3F4JlqZFWjA4R+kHiw+T4ZQkOym39WG+MlBrW74qA9VCloTHp9mp2MYQdqZFl2dt0cV
         bceUVjbCLO4sBy6c4uVmSX5jgULYfdopIgPhhyd3VAM4jajd7bm3uUv1B6AI1QA7pCwB
         fEwtwBTLEwHceVxB1iue9S/oG+v9m7f7otVzms0zN53h86GKmWcPw0B6OROB0N7M0Xv6
         lChWDqx4RfTURec0AZTjp0Omy1UnN3Xq5H9GyAJ8QM+6eiXqH1wkWYgxCnuy1yDhs7Mf
         vjYQ==
X-Gm-Message-State: AMke39lylq4hjgBrdKXZh76LXm0btEph1fD+8GIGx1lbm5b9YuuE1ZpncWfgI3yt+P+ofA==
X-Received: by 10.98.201.212 with SMTP id l81mr9831969pfk.13.1488489560977;
        Thu, 02 Mar 2017 13:19:20 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n8sm18986550pgc.16.2017.03.02.13.19.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 13:19:19 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	oleg.drokin@intel.com,
	marvin24@gmx.de,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: rts5208: Remove unnecessary cast on void pointer
Date: Fri,  3 Mar 2017 02:49:03 +0530
Message-Id: <1488489544-25941-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>

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
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 2379901..d745b93 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -767,7 +767,7 @@ int rtsx_transfer_data(struct rtsx_chip *chip, u8 card, void *buf, size_t len,
 
 	if (use_sg) {
 		err = rtsx_transfer_sglist_adma(chip, card,
-						(struct scatterlist *)buf,
+						buf,
 						use_sg, dma_dir, timeout);
 	} else {
 		err = rtsx_transfer_buf(chip, card, buf, len, dma_dir, timeout);
-- 
2.7.4


