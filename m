X-GM-THRID: 6754389089918648320
X-Received: by 2002:a63:e26:: with SMTP id d38mr13683424pgl.44.1572628759639;
        Fri, 01 Nov 2019 10:19:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5a66:: with SMTP id k38ls1124924pgm.14.gmail; Fri, 01
 Nov 2019 10:19:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+bMLhKsbCzqKbX/rzE3DayK9GycWTfT7uaMUhbNxJrEGw7I6+TW+tk9TRbkvKdC+wUee5
X-Received: by 2002:a63:e60b:: with SMTP id g11mr14986467pgh.119.1572628758403;
        Fri, 01 Nov 2019 10:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572628758; cv=none;
        d=google.com; s=arc-20160816;
        b=sYZCt8ug1Nlf7EHmoB/mhefKxsRef8p2Rui4bWhebK0ubeCSvyBXDdt5vmy1v7i5MO
         AvmEmsaXfnRBu2PeFaC6pzocI7juZRBREjfH0SdA8OqRwskCBjlo8+RWb5MvuATaG/wJ
         96oKa7f2wBxFaJreDMcViWFQKP7r1+bX8g4Jdd7OTGzS5rIFpN+kfqvHmY3f5ZqGwdhx
         ka23H3PYxcn2QVy3YyhRV6d2J8zWQx4sS0xR2Ani7SFYrwx++KFb41D4ki6ljzgR5zom
         8qBMCrQoW5LAq0+D15WEAHpaTr3R5qrqnfJIhOZedv2EVmTEKoGR8641+5nqWSVLOICF
         gbcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8PSciHQygIb8++gwPZ3veWQvaclhCxH8INunNwj+mm4=;
        b=yljp5kD6cYEEeB2IosxQ3fhPjD+BRSZRZ2I8PUh4WSR2JDzjzg1Qr8tHFBDCSwYtek
         SvDNGzIBeZnng/Zgx2USSX2gSF1XqqKBJ2vI6AxQT/77UgHEQI/pJQVKst53iqjWW/p6
         TYI9/Yhw5PvIe/BpDz8j4RiDuCsUjqqnQUcfqDvasPvk/z0H7oyZ0evB5P3OcJymISOR
         3kyRDctn8CkXUT9qqHru9WvW82Rtit/7/uvEU7yeXRe8+AJzLfRi8rkQOfU9Az+T3fe7
         XX4INes8qeBHSyHnunxrxOM80ZygbaWR2mPsAlkUAZRqZ7ZY94/adeH7IUE+eunrPuHm
         2u2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BmAZS3wW;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t71si469129pjb.2.2019.11.01.10.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 10:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BmAZS3wW;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id a18so3505094plm.10
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 10:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=8PSciHQygIb8++gwPZ3veWQvaclhCxH8INunNwj+mm4=;
        b=BmAZS3wWqGLrdwMQLvAVqydQBRVsxI2TSRoYRCPkY1TBdSv62Yf3eTY0QpyjFhRdzx
         MkCU10ugrHcif3Ey9dGyO9vKDardCvlqSARpD1BF4c5fMmbTay0R4tK+xvkWB6/MDNEC
         dcYzjvdShD27dqe/pPGskuqv3MxsJjHBwZgvEwZEp6nEM5xIV0GQQ18K7+PgYYZi3hkI
         ZjL3Sxv+Zg33rqCBndgbvBCnTrtbkav67NjUY3k93+YYf1LGzX3l5kB6H6BK5aoOQWr5
         /CBPMwGHu9AVVyvP/29uV0wEsIzIjgk3NXT6clJ2AUcI1GMEtv1M2TAerF2Cb9MNgv9U
         28GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=8PSciHQygIb8++gwPZ3veWQvaclhCxH8INunNwj+mm4=;
        b=ISd833T1PU/GDiOHwmcRDUiKPXvCieZExAnPqwz2evSrtNTPPOkp15fpGze/PvAeaG
         9y3ZrjiRKpTsczjQ+qjqLz5rae3hE9JuxwCVpeOBVi5kVMr4yvWRQ77GbMMU296t0mBS
         ESvkYYnYuq1SqmAXxetwWEiO9Dk9d1vwhSVk5xgQ5NPKTTRiumXugi/oSZq0QAfWWSHz
         uITallBDIVps3tYRB/X55pSNmLCUTq4K1a+JAqXRs5X3N5i/57UdJxtegZkIrnY5wp26
         famW6K2nx32YwuNJlUgVhyEjRzJv/8KqCMS5FPkbwClqjyFxUtpQkMokE2jQXlDKE0TF
         StbA==
X-Gm-Message-State: APjAAAUyMgRrm42JV4qNOUeS+IqoEgUye6Y4lU6Jc4/JMzTw6Q75RNzZ
	bkD5PIPrdbaFE5Jha6ALuALYyORIs30=
X-Received: by 2002:a17:902:a98c:: with SMTP id bh12mr13506602plb.289.1572628758116;
        Fri, 01 Nov 2019 10:19:18 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id z11sm10633674pfg.117.2019.11.01.10.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 10:19:17 -0700 (PDT)
Date: Fri, 1 Nov 2019 12:19:14 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] media: staging/intel-ipu3: Fix wrong assignment to boolean
 variable
Message-ID: <20191101171914.rphvreggpu6qj77e@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patch fixes a warning by replacing the incorrect value with
a boolean.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-css.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
index fd1ed84c400c..f36de501edc6 100644
--- a/drivers/staging/media/ipu3/ipu3-css.c
+++ b/drivers/staging/media/ipu3/ipu3-css.c
@@ -1450,7 +1450,7 @@ bool imgu_css_pipe_queue_empty(struct imgu_css *css, unsigned int pipe)
 bool imgu_css_queue_empty(struct imgu_css *css)
 {
 	unsigned int pipe;
-	bool ret = 0;
+	bool ret = false;
 
 	for (pipe = 0; pipe < IMGU_MAX_PIPE_NUM; pipe++)
 		ret &= imgu_css_pipe_queue_empty(css, pipe);
-- 
2.20.1


