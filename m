X-GM-THRID: 6252584121027002368
X-Received: by 10.182.135.169 with SMTP id pt9mr5971339obb.17.1455793199798;
        Thu, 18 Feb 2016 02:59:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.10 with SMTP id n10ls2655460obi.40.gmail; Thu, 18 Feb
 2016 02:59:59 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr5971324obb.17.1455793199561;
        Thu, 18 Feb 2016 02:59:59 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si892682pfb.1.2016.02.18.02.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 02:59:59 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so1860777pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 02:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=1zgaVYQXVS9xiWobMz/zOKlzMDs/jzHhj5fwuCWAua0=;
        b=Ih90mLZ//ZjciaD1EFrAGVUA+esu+21VLvR2NqJqRrvYuX/CL3OoVYEpWbn4dFPQ2n
         Eg7KEbB/svqUhABLCNPpDQUftFY25JEjigbC+qh6Lx+WmV5UJvhK5B5RUibBOKiRr24M
         Yb8nbK0R2paFvL1SQLkLobkNx0I0dgMvTB/4gLS/ON9cSeK96yxgIMTmQ8PZ1geW3ESl
         cM28nCdIe5anA8xBFbcavgJpmctf1tYWxKTtTAXKPENEUMRcYfJCoOGtgAlrw9ZquUzQ
         VkEYcmkheS3IE0fMhR8ymLo3A3zszLCELzo9Pv4vUXHKMthCM6ShA5G73XiQspj+S5t6
         wkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=1zgaVYQXVS9xiWobMz/zOKlzMDs/jzHhj5fwuCWAua0=;
        b=b+KOi4He70gGLFUBXjAzGpvbcIHczZWZrwVN8VQxP4PXBHvRvZRfthBrfAeN3eVM47
         lsf1jeo1GOTSz3AMKtg8qHyHBtuiFXLT/0HfEVWtpNkmB3M7U15I9h2oEpqC/6/mCo/c
         aYrEdjsoJzzTpHMCB6Xp1h/xZl0964bDeKSvWlf/9psiWTznYktx2TleU626IvMFv2N5
         Uw+NF7qM/igCNu/hdH8jZtPOTj7kXpehQZ8nKXACo27yTVRC3ZVhMgyfIYhGm3jfqrw8
         vFiL4ykqxueUoiAJovQv8pVivv7RbkxmqdaAmLiuPUk9BFmIoGKbajcDGmsD/UNTV8NC
         Ls+Q==
X-Gm-Message-State: AG10YOTqsNBOEt6b5Gt77B4KJAQNw0ymBmjRkABHnvamlj1Izb4b9LC+hjsjcilUyyXD6w==
X-Received: by 10.66.147.74 with SMTP id ti10mr9187061pab.128.1455793199451;
        Thu, 18 Feb 2016 02:59:59 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.106])
        by smtp.gmail.com with ESMTPSA id fn3sm9333079pab.20.2016.02.18.02.59.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 02:59:59 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 5/7] staging: iio: resolver: delete space after a cast
Date: Thu, 18 Feb 2016 18:59:37 +0800
Message-Id: <1455793179-2674-6-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>
References: <1455793179-2674-1-git-send-email-eraretuya@gmail.com>

Delete unwanted whitespace after casting. Issue pointed out by
checkpatch.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 563a01c..03395d4 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -501,7 +501,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 
 	switch (chan->type) {
 	case IIO_ANGL:
-		pos = be16_to_cpup((__be16 *) st->rx);
+		pos = be16_to_cpup((__be16 *)st->rx);
 		if (st->hysteresis)
 			pos >>= 16 - st->resolution;
 		*val = pos;
@@ -509,7 +509,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 		break;
 	case IIO_ANGL_VEL:
 		negative = st->rx[0] & 0x80;
-		vel = be16_to_cpup((__be16 *) st->rx);
+		vel = be16_to_cpup((__be16 *)st->rx);
 		vel >>= 16 - st->resolution;
 		if (vel & 0x8000) {
 			negative = (0xffff >> st->resolution) << st->resolution;
-- 
1.9.1


