X-GM-THRID: 6528802195768344576
X-Received: by 10.107.3.225 with SMTP id e94mr3606128ioi.7.1520105217828;
        Sat, 03 Mar 2018 11:26:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.53.79 with SMTP id k76ls153763ita.0.canary-gmail; Sat, 03
 Mar 2018 11:26:57 -0800 (PST)
X-Google-Smtp-Source: AG47ELufh/HWkBBmRw/AT29rBqKLzlNR9OC1k6FGrHurz96nJCzJ1LvT+TExDZZfHVbXz6w2bbfn
X-Received: by 10.36.73.133 with SMTP id e5mr4031693itd.49.1520105216990;
        Sat, 03 Mar 2018 11:26:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520105216; cv=none;
        d=google.com; s=arc-20160816;
        b=lRXgvoCJTY7hIOoYap6a24DYnVN3Z+/7jRC8bXNzWci/Q6YsHNa1xGhh/Zig032xLv
         a3NwyK69ixmRVMplHdMEtcwxTYK3KI1ZW6+hr6Y8G/PHdasLP3WrMnYFfoLOQ7Dcs+90
         LtcSDlcG/0ISlg8ENjsSBLIBIkUWDu7eUnH7ofP8yMflY9bMxQzrJRfWZafZ4iHwBqzi
         agniP/ZC4UlTPW7Wjww8p2WHAOtMpK0dyF1J7C/TPr+jwn5k5ocQi5w5tAX1vApFxU9u
         uMnyS/9HTaqESuuklft5qOtSWH/g7GIDKcIDq+vVKn/jBN3CfcN9ymKZsSz0e2tyxv0+
         P02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=0FlZxDeuUGn0Txb/P7JFY75CoT95HDkQCp+xCcDINA0=;
        b=F5iw4myppMdatrDS5M0hfekosQVF+f6CJSYw9wRTfsn2sJJow+bC8zCCXSvh040DEg
         viMEQnKX30v5FfdmQrhbkzOBiDOB611wXnnvNNqccRTsFi4AR+WbB6KWjsi/dtKjLt+T
         ino6yGlzj3dRT7evQ3l4CwPJHRmZa+WX8ODr5oMxoi0qhCf/SLGJ4Wg3FokIcmMZsPKW
         /U2FSRNlE7i4aSaGSzSEVWeU70345/UcvhFQ2pK7XzyRRmH8eOEhcBYUOQ6jm+QNs9Cz
         ess+U5x/L0nL49e3KN62QQXMj937f4X/EMhQiFVkA3XnZCinwKXGL6GJNM0O4XU+9y0V
         1Spw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q27sMiSa;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id w89si1115290ioe.5.2018.03.03.11.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 11:26:56 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q27sMiSa;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id 9-v6so2010616ple.11
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 11:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0FlZxDeuUGn0Txb/P7JFY75CoT95HDkQCp+xCcDINA0=;
        b=q27sMiSavqyQe2kM0bqn0qL4KZZ/75pRV93VKJAdDLNCaL4+B+2ZroIJ5MjxNwgzXE
         1bDKytA1ASAwT7uFNTXtsiyhSTt9PrSrumG/B5lwW1TlFIRJnpuAnyy21aSK7evKwJhz
         2kLTvdiCvaJVykSpnLjgAsBm+AbPyDekORJjvMApWXKYM+3h5rKAnk+sn+pIhLG9N+P+
         Fm7RQTnq22kSs76gGWWKmvkmkzV1MhdXKGCOdyxcBh9LNkHJ4e3MYjOxCmtvFRMUFewo
         Kmgm7dYr0sNyZGSzRijMwRjoh+jvZKWD+/N5UVo8UzRDtapkNY4jr3Imhb4/K2y5xkqC
         WcRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0FlZxDeuUGn0Txb/P7JFY75CoT95HDkQCp+xCcDINA0=;
        b=G9tmY24jJPohixGn2qddNDT9iEv2rAQXDUe6X0JMcjLVuluH3W2rrYQAvmdkD24LtL
         SIviDYy1/Us7IT+n7a2K55vKLwnHTXNSsrz4iZoRKsQ58dntYgQtR04zOLKc+K6KIOTB
         TPKMo1t9kRMb1daejTBiT5YrQzTICn/aoqRXj/P+ESijp5rfs9JNG9DuKwqoYuAVtXzP
         Xq+6Vx4ZY6EAl5LlBVum4Y507AChJhjT6G6Y0sglG9T+rfuZB3+cYf/FdZcNiKJCK6Sv
         CXBkG3ZFBLskI8eZcrOINJTyO+G/oEGfbKGxklq5SEzUrQirKM6yfavpcpZR122o6QO/
         T2bQ==
X-Gm-Message-State: APf1xPDv/OT/jDLqFTRWTcWS+eBHbUJB7OGoQl2JwXdr67uclzM/F8AA
	ZYpRlV56JPoxxHMdE2NU9uDIfg==
X-Received: by 2002:a17:902:7284:: with SMTP id d4-v6mr6725684pll.296.1520105215934;
        Sat, 03 Mar 2018 11:26:55 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 75sm19600716pfl.169.2018.03.03.11.26.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 11:26:54 -0800 (PST)
Date: Sun, 4 Mar 2018 00:56:29 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alan@linux.intel.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: Remove unnecessary semicolon
Message-ID: <20180303192629.GA5198@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary semicolon found using semicolon.cocci Coccinelle
script.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 .../media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
index 5faa89a..7562bea 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/frame/src/frame.c
@@ -196,7 +196,7 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 						  attribute, context);
 		if (me->data == mmgr_NULL)
 			err = IA_CSS_ERR_INVALID_ARGUMENTS;
-	};
+	}
 
 	if (err != IA_CSS_SUCCESS) {
 		sh_css_free(me);
-- 
2.7.4


