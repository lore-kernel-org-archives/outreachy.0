X-GM-THRID: 6393699904957448192
X-Received: by 10.99.112.77 with SMTP id a13mr3339084pgn.168.1488649268931;
        Sat, 04 Mar 2017 09:41:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls10020149otf.16.gmail; Sat, 04 Mar
 2017 09:41:08 -0800 (PST)
X-Received: by 10.13.221.140 with SMTP id g134mr3842047ywe.55.1488649268620;
        Sat, 04 Mar 2017 09:41:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s64si600285pfk.0.2017.03.04.09.41.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:41:08 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so3001800pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=sHr5Vot/C45txfl6CFuVOP5q57MxSQRbi+mysGzo9Lk=;
        b=aLO2pBaIVVkG9XHANOR3jh5vOh0aYuvt+/IiLBMUG+Fg9zvKTvcFqj8dIp+A6LAKQe
         HPjt/o2KxzgQS2LF2ZD5nA9kCytfazm2lOnxC2R7rBdPlZnF9nODSeKNvHz1PWeGwMaB
         FgOJCq2tw2mrzWPQZhd3rY+O2qtpwbHib0O4zGdFmKgFWySghWBLDW0U0Jyh2yYaWdxJ
         Qs78QhEkqIHT6j+OG9utKrpa/nxMaIW0ukVo+LqqC7lq7smbmzRydbZxp2xF7FAFNzsg
         4l/qWlnYcpp4OYRe6pXFszzYJk4otImc1Ji900kugTolv06x1k0eMO9+InZfZFKsI5Z0
         dNIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=sHr5Vot/C45txfl6CFuVOP5q57MxSQRbi+mysGzo9Lk=;
        b=Z/hnTDganvtJ3VcxXWfGXCSXcaOMuum6vvCqT/t3pE3PRt/aNWqBrOMmIPdvfrEHGP
         cCmgUqVEiRoT/6GnsBhJrNjL/0aHx22t5Yl/Aft2Y7M+DUqqToi/LlxdNePVJc7aeO6i
         FK50P2co+ND2NOmsay0ZjBZ1oiVCLQh/JxPxN1F4k8QyqLHchXoLuNX2OinfYr0UVBPV
         qtpG77usBO5oXvqyIpwmGaJZu6HsJhWce2UoKmYCQUByH26sIULYx4cAwcbRqZufj3cE
         QswL7nIn6TiDucetgRd7sAhDC+VslXEkCxSbogGaF75cLsKo9mgw17RYkLn77f+oMQuI
         heGw==
X-Gm-Message-State: AMke39ni9CCxiBw+zRAZXAv/e0q85IowIKFHTiVZH39A0zguivl+X7BJAbNRyMmtRu7Ldg==
X-Received: by 10.84.164.106 with SMTP id m39mr13502613plg.9.1488649268411;
        Sat, 04 Mar 2017 09:41:08 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 23sm30306710pfw.94.2017.03.04.09.41.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:41:07 -0800 (PST)
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
Subject: [PATCH v1 1/3] staging: rtl8192u: Replace "is is" with "is"
Date: Sat,  4 Mar 2017 23:10:59 +0530
Message-Id: <1488649261-10261-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>
References: <1488649261-10261-1-git-send-email-singhalsimran0@gmail.com>

This patch replace "is is " with "is". The replacement couldn't be
automated because sometimes the first "is" was meant to be another
word.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v1:
   -Changed "If is a command..." to "It is a command..."

 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 3e0731b..bb6d8bd 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -495,7 +495,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
 	u8			element_id;
 	u8			*pcmd_buff;
 
-	/* 0. Check inpt arguments. If is is a command queue message or
+	/* 0. Check inpt arguments. It is a command queue message or
 	 * pointer is null.
 	 */
 	if (pstats == NULL)
-- 
2.7.4


