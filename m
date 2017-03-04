X-GM-THRID: 6393675902317756416
X-Received: by 10.157.7.193 with SMTP id 59mr3303252oto.148.1488643679406;
        Sat, 04 Mar 2017 08:07:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls13282644otd.12.gmail; Sat, 04 Mar
 2017 08:07:59 -0800 (PST)
X-Received: by 10.157.27.231 with SMTP id v36mr3294502otv.125.1488643679073;
        Sat, 04 Mar 2017 08:07:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si559537pfz.1.2017.03.04.08.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 187so1906677pgb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 08:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=v7SNvSMuBnREeL/KvwswxrCOW2Ols0czv52KgMo3zvg=;
        b=WCraf9RZkCiL7BCGn9KeOUL/jSJXcJkxpfmNrfwKdS6bPEXdzo+YXdbOP1VY7sE40W
         kNUvbQQnQOwBSiIVt+CcRHtNDTL+l8Zplh1YZKTT63AeRZBNWDpYPfBCX3IkQMzDBMAI
         2rm1HDdMRba0mwX17iD/0acYiZqadxdKvceb0H6WZzD59F07/5rJDMtABeX6SVAxeeKk
         3GXcccT91QzTERbjrrow178/3dTLTYQtiWEGHbyMHkvwJ8d5wvYaEWja/b1syFwGQ52k
         gKNz7qKAEvXuZzP1YE8O6t7dDE0Mg9p2+CDkQYy4e5VlMa4bovCpfrf36/2zfdei5I9z
         l8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=v7SNvSMuBnREeL/KvwswxrCOW2Ols0czv52KgMo3zvg=;
        b=pISzo7cMdYNQseAatEtN5qZEt3/vIvs7lGmrcvwwZ3R0IGL1Bk//dX8VUkmvTuRDse
         2zZDukEtGmh12ZkOBsSfWeIJ6eExljivCZFpJ0bMPdhWgmHyeDQNJPa7+E86xO1FODWP
         gvLpxK+bD3SdDSJ+gzq1LSlZ3ZuPLotcAiUL3UYuEacXxvUxMHCKyDFnu28T9mOAIx6x
         osQ5CiNDk8O40rp6IoNSRj4kxwlM8gwUYkGdN7wpVOQqGHv9H7+RdT8nWg8LeibOUpMT
         FqUMkcHZAVAT9lrU/nasl9l/FD1nyr2n+IZexpNduu8S4/b5Atzv+bNfMKV9lEnwKwbK
         lIQg==
X-Gm-Message-State: AMke39m/TYF/TZ3B3jW+fdgNetwFxd5RhoIB+pJZ7FG6miPS6axDZRZRUX+oRXR23rAh3g==
X-Received: by 10.99.151.18 with SMTP id n18mr9864339pge.183.1488643678858;
        Sat, 04 Mar 2017 08:07:58 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v86sm30079809pfa.58.2017.03.04.08.07.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 08:07:57 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: abbotti@mev.co.uk
Cc: hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	johan@kernel.org,
	dtwlin@gmail.com,
	outreachy-kernel@googlegroups.com,
	greybus-dev@lists.linaro.org
Subject: [PATCH 1/3] staging: rtl8192u: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 21:37:49 +0530
Message-Id: <1488643671-24758-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 3e0731b..231be8f 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -495,7 +495,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 	u8			element_id;
 	u8			*pcmd_buff;
 
-	/* 0. Check inpt arguments. If is is a command queue message or
+	/* 0. Check inpt arguments. If is a command queue message or
 	 * pointer is null.
 	 */
 	if (pstats == NULL)
-- 
2.7.4


