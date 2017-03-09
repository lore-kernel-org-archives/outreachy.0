X-GM-THRID: 6395635092352401408
X-Received: by 10.107.131.35 with SMTP id f35mr4631348iod.68.1489099838203;
        Thu, 09 Mar 2017 14:50:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.197 with SMTP id t66ls2226315ioi.25.gmail; Thu, 09 Mar
 2017 14:50:37 -0800 (PST)
X-Received: by 10.99.112.77 with SMTP id a13mr6755691pgn.168.1489099837700;
        Thu, 09 Mar 2017 14:50:37 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si1491500pfx.8.2017.03.09.14.50.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:37 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so8202081pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Xcng26hwis4gxcF72hmJMYanOjmvXJ8+5Fjb2YECZzI=;
        b=Jjy6j2R2lsqxu9Tq9DUpVZysiOeq/ZgEZ8giHVp/cZaX4fAEp/KzRjAP/iTW8BKs5s
         GG+danQ/HN15kC7keAwBgHBfDzzQJytjNK5MZn0s0zjsSlATmsHI3hzu9P2nHVDBsw/k
         90IrJGAu/AJjPBL9l3P9ngn0i5I2Ubn295piMTCvkeiaRi/w0EL7GvNm6COjE4ue7Ic0
         zS9jP5Ec7bMsLLqaOX1nS0/FnmLcLC7BxsQd76qEInh7diiS88SY+g6b8acA6woU15LF
         6CkndL28AYsjJQH9JwHEshjPSQoaWrqI2Gd0igDhARX7CzTZYBeSExbfqaNYjftnUSby
         S0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Xcng26hwis4gxcF72hmJMYanOjmvXJ8+5Fjb2YECZzI=;
        b=D6U5ZxhyUW8pvq0k3xb2rVnJLxSA5aPLyL8rGCxYpJ7TxjHlW/0zirogfXlu40/MmI
         DjdnWDtuCdEzE7HI41FTxHbgTNdtNrRM/GE6U5I/EuO+ChB2cs0Tlz99XZWkHw39qQ3R
         7PV4Mvl8bs8xdDMb403NLMvxZQTLYnvDcvKNJbIMCPXTIEOYMhuyLLFpgutUNTjq5pcM
         Xh3skI5ZJ9ZwfrNZ9eOk5E1AII0qF6GjF0Pb5JebcXHxTW3/d32GyHul/nzw8f5RB6A8
         6h2jzBOwjztW08v5HgPpgecDzA5wqLT+74KCk2sWwU8PHdVE2YM/p3WYkI06R2qPZskH
         FAFw==
X-Gm-Message-State: AMke39n4P3SDSwR8M95bxYqnC81SkPNViOeH615ITjoue/HlsjV5zJIV3om40y32n9dqtA==
X-Received: by 10.98.211.143 with SMTP id z15mr17215439pfk.46.1489099837509;
        Thu, 09 Mar 2017 14:50:37 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b11sm14421064pfj.27.2017.03.09.14.50.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:36 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 1/7] staging: gc2235: Remove unnecessary typecast of c90 int constant
Date: Fri, 10 Mar 2017 04:20:23 +0530
Message-Id: <1489099829-1264-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

This patch removes unnecessary typecast of c90 int constant.

WARNING: Unnecessary typecast of c90 int constant

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 3dd5e7f..3f2b11ec 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -706,10 +706,10 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 	h_ratio = ((res->height << 13) / h);
 	if (h_ratio == 0)
 		return -1;
-	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
+	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
-		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
+	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
+	    (match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
 	return w_ratio + h_ratio;
-- 
2.7.4


