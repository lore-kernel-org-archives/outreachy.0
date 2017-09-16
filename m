X-GM-THRID: 6466286051877978112
X-Received: by 10.98.205.194 with SMTP id o185mr14054561pfg.37.1505549543869;
        Sat, 16 Sep 2017 01:12:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.57.67 with SMTP id g64ls189594ioa.26.gmail; Sat, 16 Sep
 2017 01:12:23 -0700 (PDT)
X-Received: by 10.98.29.74 with SMTP id d71mr14884104pfd.31.1505549543098;
        Sat, 16 Sep 2017 01:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505549543; cv=none;
        d=google.com; s=arc-20160816;
        b=bwzEFnea8WaOdmVQyAZBdtV7B4h9v1fbLVl9RtlrLjoud1xgZesHLejAa2i1wZK3U4
         ODv6e26/zTcgwtKptyb6wIYS0sH1gyzVTbkeBRZfgZ2xsrY5QYNH6s+ZTdo4Cz4wyRv3
         1cCY/rrxKd32UZxZCPgjMFd3nJrouQ4OGWxg1UQeK2G58+ikkqSFo65qdHnPhe0Oi9kc
         Jd84EMOPf7HECGj/24z60Xk4Pgv9lR1Bj3/SKJG6rWpeHlFUwPPEWxSZJRgcUMbgNbyz
         TdJXUriwbWIFVc5VyOM7d7Nlo4TYroQ7qdV3Vx2ecrzE+NPbtQp2FPe87q9MjvvSCkj4
         ac4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=DpIFJc3rU0MfzAlVF+B5/q+8XL3AtGmirsL1rDOA5Ms=;
        b=HJI/WjTRr5jWN5g7uto9gM8/cvjoY6HtmJ9lYqnyOChtjRPDnnh6kQhExJmuyzOscq
         qGvI+m4B9BJezNiSIdA/NFN+6tpJBZL3Kyv9wvyPd5XtmzB4yeggBpzhdWCcpepItZOH
         DXWXb8yMYqGPgjTSlESx6ctreHibBisK05J8eLy5Gi4ymhY3x4WPSUPAafc1FoDY4+bD
         Vho/9s0+x0qFtSg5xiiKHOWh3sQvcUlfOoFBGG0vf6+tQ2WFVzmARW75LPy0qG6elyD7
         XvWvqY1Zj+LO5X5j4UfX++qunLcenME5yKuVrLIAhPVRhhsWe7H4CIVziX60BhwwJ1y4
         42PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KorSu1fe;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id v25si253933pfg.11.2017.09.16.01.12.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KorSu1fe;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so2271146pfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 01:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DpIFJc3rU0MfzAlVF+B5/q+8XL3AtGmirsL1rDOA5Ms=;
        b=KorSu1fejqcBZ9ZIKgm3qEFZPxbajAvlkZB3Cl7nazIYcN/3eLE+EoDlTk74APKTDM
         Tmf+XOQfb1/VJqhwmih0fsvKi+q9y5PGAlKeWm9LUfTDlyTwRrNbGRRJbrARbNoaOm+y
         hGKdwJwHjPniVYuJaxdXJLoAWtd5FUxLekb/b3NugRM9ArCtxY8yyHuteSvbVlltimv1
         ZFXirhSDVj4JKOXK+6Uc1fnksB21CRXAURt+yD8rnwhxROS46+f8iCNijaIhRdiNwCCz
         xVo8ID90hlJ57dn1hEk1K5lCgDOySxvSgTKYIog0PXAfd6TZPPBLFkoeIuc/DeZfb5Jc
         0hSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DpIFJc3rU0MfzAlVF+B5/q+8XL3AtGmirsL1rDOA5Ms=;
        b=Yya4rNZfkokhx0QC2qpbeB36js08RmtW0pvRLhQIi5hnebp2HHaXlu9IMrNVvlKogS
         CyA1RuunGIGqSp7ctTkrOg+ECH1/DQ1YqqWSy7TMrdnTG/PHfVKr2KgWc0Vz/pQ4zE59
         8gphBHfXI6kv0udu/ts6Pczj8hjgSWQyCeZEo9QddRfCIuxXWNcyTItmjnAl6gcV4yJw
         bGy0OQSEIQnMqD3Q+gWVY1wDFAO0xJR+bBo2kCSENCfHaftvb/grwdjiHBWObphoxS7I
         EnEE9w0wXyoCGByky42brloeuIvDNtGgiTh2NS59XAdWEQRhRz7el10/AFpVXMoBIAll
         nAdA==
X-Gm-Message-State: AHPjjUgzC0CHB01QAwIbUlFPsOm9bFwbW9EBuqozTIoPPGJDr7niiiru
	/278lnF6zVJadL7DIpU=
X-Google-Smtp-Source: ADKCNb6dlba3vb7m1VXC1nutgTePZLZGvZ5E4qmVdxnR86BJuV6aVg8BV7K5tr5Fu66YdL0nGTpE/Q==
X-Received: by 10.84.133.133 with SMTP id f5mr29172776plf.96.1505549542617;
        Sat, 16 Sep 2017 01:12:22 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id x27sm5656069pfe.65.2017.09.16.01.12.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:12:21 -0700 (PDT)
Date: Sat, 16 Sep 2017 13:42:16 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8723bs/os_dep: Remove typecast in kfree
Message-ID: <20170916081210.GA19333@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove typecast of pointer in kfree((u8 *)pdvobj) as
it is not needed.

Found using the following Coccinelle semantic patch:
@@
identifier x;
type t;
@@

-kfree((t *)x)
+kfree(x)

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index f509713..51df42d 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -719,7 +719,7 @@ void devobj_deinit(struct dvobj_priv *pdvobj)
 	mutex_destroy(&pdvobj->setch_mutex);
 	mutex_destroy(&pdvobj->setbw_mutex);
 
-	kfree((u8 *)pdvobj);
+	kfree(pdvobj);
 }
 
 u8 rtw_reset_drv_sw(struct adapter *padapter)
-- 
2.7.4


