X-GM-THRID: 6802933186338750464
X-Received: by 2002:a37:9104:: with SMTP id t4mr2716654qkd.449.1583931312215;
        Wed, 11 Mar 2020 05:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls1048028qkf.1.gmail; Wed, 11
 Mar 2020 05:55:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6apDAZE+U1F/omXnYOmHHuDDQ1uejj9yzECLEe2LrcS8ei2YxMOac1LKOLg9cJ2LQ413y
X-Received: by 2002:a37:4dc4:: with SMTP id a187mr2649929qkb.436.1583931310689;
        Wed, 11 Mar 2020 05:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583931310; cv=none;
        d=google.com; s=arc-20160816;
        b=MvwB+gjzux/8BR/EVqnCHdMVb++m0lkan2jku8Ey2PTJT64sJk0XVcHryNFoLYnOHA
         YkxsiK/yVED+WQWj4k+ubIp/v6I9A9wSPeXm7ISQpYqM76VqHfcn9n5aq7Gsuh2sNBcy
         Z7VhhhOuh9CG8I0I7hnytPoN102Zc2Tn8SzQmrzXTlLh+JsGSFGKknLqQC8JACwPAq+d
         pseiWabk8XdnPXvDSn3osS55oZ+ZB8hULJiQrUxSCoNM52S6gi7J/TTXV4K8O2nvBHFB
         SxvXSZfd83lpYo1Ro9Tm7wi8L3T7TVKNXLl1KAXZuveTL5qL3wmpj/q9YMwSrgSYiHD/
         dT5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=LejFn6yYVLckCZa01sKnIbyhEF1keVyA7WsR3125o7Q=;
        b=Oai9yBcWkhQyK6WfusXJwOOHeiq3RcA9xlj0l0gRnYCkQ0RIYIinL2+6Mbqljpc4V9
         MAKpANyBPKDTJTYRJ8xQKkoO21GwtRs8KGJOCZ6HCt6vVMyB5ArCB6yb4bLk3sPWTKH5
         f8WnpqfI4rGf+4PyKYjPHdbCVbPvu9zG2TmOcz0GB4Susc3FSF92gs7XowXa4nbjRj13
         A+l8Yqo8hGKuhXwlLxDGw+AkgPZyb5oetH3H3l2Jrbxnggl7dYQHV7+LOwy/tNOrmrJU
         bk57NcpzAedrtV48NHxZZNPQApCbzRwD9Wt2TrLPG5i8SB8GkeT8f2v2p/HeExZ8t96w
         R+wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=wtgQdxKD;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d193si84075qke.1.2020.03.11.05.55.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=wtgQdxKD;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-oi1-x241.google.com with SMTP id k8so303323oik.2
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 05:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LejFn6yYVLckCZa01sKnIbyhEF1keVyA7WsR3125o7Q=;
        b=wtgQdxKD3cCVyNcikyZruuGpQNUh73otTPL03L1Y3nG5QJ0mu8VBC07J2FFWWv7fjR
         jupqrrpiCkzvvIpgV6g0vJKpl0plw/q3q1I4eeM7xo4uYKOtlF9Zq/RKyTczVB83QoOH
         oDm6XuGKM+TP+lUY2Zf0a3zmJH/7s9QIooxvTxu0bSLJhjdz9S7RUT1jGakUV2YeOGer
         lSVa7LQXYVJFczjgZt8Vrf8Edi+Xei2X9NUapSqsEmrhjfhj9jq9oInz0UO5sEYHH68n
         LeHhnqAviCnFHeYd9fQdi8MO0lS+d/Yw4jLZ+z6/mBa6OMeuAObj7BOJnZ904CsSCD3u
         k+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LejFn6yYVLckCZa01sKnIbyhEF1keVyA7WsR3125o7Q=;
        b=mXbMbOJmBpjcVkTyrguF77gc/RBzLcru+aGfyvB52qsqg0vSjUoBauuJNhaGKIF5W9
         hUrhfJZBlgnlvGkB/oz/3RGr9gffwPlhvcruAOcTKDP8kbqhq/UTJ4UcJwgt+rS3wR8D
         b+duxeGfzoaJF9eYJkfPHHvf6NKoqNc/0SOJnpykhsABIC3OMNDv2jkQaylDhPoIN9QS
         awixw7lCggFJwbR5G9C/wb0wVq5o+I+z7MZZWUaBEtVTAjjnlq2SBRn9bwbQv6+DjG1j
         eQivuJXonRrVuyN+ZpuabFZ4Z/Pn1IZCTsF2ghzUHnShqx3SDcV28JpbwYA8FD4EyXAi
         rEEw==
X-Gm-Message-State: ANhLgQ1B3DiPyBhpjtztotS/NmmRLik3BWEDEwoCcHgau9jLaKWgg+7v
	4IfYES28+cSXPvQ/JJp+Y7W0VtjCVx/xnA==
X-Received: by 2002:aca:a882:: with SMTP id r124mr1826627oie.53.1583931309752;
        Wed, 11 Mar 2020 05:55:09 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([2806:106e:1f:1211:ccea:c45e:83e9:af6e])
        by smtp.gmail.com with ESMTPSA id 67sm5392250oid.30.2020.03.11.05.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 05:55:09 -0700 (PDT)
Date: Wed, 11 Mar 2020 06:55:07 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Chas Williams <3chas3@gmail.com>, linux-iio@vger.kernel.org,
	Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] remove unnecessary newline for brace
Message-ID: <20200311125507.GA9347@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

put brace at the end of line following coding conventions

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/atm/adummy.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/atm/adummy.c b/drivers/atm/adummy.c
index 8157925af824..6eeaa1b21f3b 100644
--- a/drivers/atm/adummy.c
+++ b/drivers/atm/adummy.c
@@ -131,8 +131,7 @@ adummy_proc_read(struct atm_dev *dev, loff_t *pos, char *page)
 	return 0;
 }
 
-static const struct atmdev_ops adummy_ops =
-{
+static const struct atmdev_ops adummy_ops = {
 	.open =		adummy_open,
 	.close =	adummy_close,	
 	.send =		adummy_send,
-- 
2.17.1


