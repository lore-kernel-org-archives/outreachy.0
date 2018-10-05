X-GM-THRID: 6608897994052861952
X-Received: by 2002:a67:7e43:: with SMTP id z64-v6mr10467789vsc.30.1538754140098;
        Fri, 05 Oct 2018 08:42:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:d385:: with SMTP id b5ls947484vsj.2.gmail; Fri, 05 Oct
 2018 08:42:19 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63vQ68rYVxYlOdV+MnaSYn8MM9K0EQwKm6hIGwg6FqXKMAHgjmdmiolXwDUXFiiA52v/xky
X-Received: by 2002:a67:bc13:: with SMTP id t19mr10540531vsn.0.1538754139406;
        Fri, 05 Oct 2018 08:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538754139; cv=none;
        d=google.com; s=arc-20160816;
        b=deu/V1Gyp9d8aXoVSRg0F3gNQJSHoh5B+x/Rt9px7PoB2YcncePkRkrVTWtcVpFVd5
         u85sjI13pTQVxsyhfpPyZkyDnHP/O6mUGUBN0ZHUI7/f3N2AlgC0Rkg4Qoya5RuENVxU
         E2Ti6VgiHzW2LeJThKoxv4eH2wsG+4NMcisfZRBleP8z5siyCcGux+d5bo1q9u7MJOzQ
         7dxFO/k+VIpn6jlW1xdufXoc1bWayNU/L6pNel2Nf3zgbocL2dKmcFPI0Bp03UUHW+zz
         0FCbN2BsX3bsrNuf5tZugHtpOgKHUa8rN6scHKiakcQNk3aqM9pXyAQ4z4hOcHlZrIpv
         IiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SjKO5OLCQDfwvbO3HWVTYQ6hAhgFrrPyF+zBoLmjC5A=;
        b=cmXJAfOUCMJ4eufaeQl88UyVuno7rfcc5pedFds/gSa5yg6INJlOcdMjXxjrsj8f4I
         RRWeHby9SNNlzex51RQCc6Oy2BSjpSn8Qt3Ktl41ab+m/fBd2cVpOV4BIfI8fap//LjV
         yKNhWwc2nCPXURq9yv8XBUhE8uRIH7Vbikdm7n/TfR7cWXoae1Lmv8r/wdU1O6E9OfxF
         qKE9PN4hwr6Y1521vDu2cllsmdzGGfF1m6yfZ2rDzK4WjSqr4t3B/m35A+LA+AW5ek0O
         kCLdCNsz2VuzmOlHmfRoIY3ou46z9mLJZiBbqeYNVSICU/+ApJpfk+gU6vqXeGwKiEcp
         zNBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPdK8d7m;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id q68-v6si209604vkd.5.2018.10.05.08.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 08:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPdK8d7m;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id l81-v6so183784pfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 08:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SjKO5OLCQDfwvbO3HWVTYQ6hAhgFrrPyF+zBoLmjC5A=;
        b=sPdK8d7mMy4x7DErdeDRxuFHbKryST/jcfzggbWYf02aDfbQu+ulxEzvdy3jteAl1U
         sfWW3Knfc6PqWRjl8rvrM11XTMBFVCT64D/bSwvHpBIbigxJxV6GZ+6lNjkpZx/EhMd7
         A4b7ymQkZ52jqaUyeYde1IZ7dtrKXR4TKyWHv53O5ByjN3urdrLvLlkvJ1imYVQFLB9v
         fSNrfEpsss4Tiupx1DgQHAZIupm8lxHBK00HXVGPktWnFiRnSrot8S2Tlzd356Q3db8Z
         WgIGLQ9Ppv8jxOUkpRI4a+Y5FBr4vewb8hcclA8GEnqUi5TxdDMjbdLH4tIREFg0T82D
         orXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SjKO5OLCQDfwvbO3HWVTYQ6hAhgFrrPyF+zBoLmjC5A=;
        b=PslLLioixFTBfdG3ieKLiiXd0hKAb9YRQJBqXJDMg3X8EQlzefGcoLb03m/DNfpgY2
         T8WVFHWeP6AV01x0uyWxzLIOllkdJ7IpsNUgz81XEVHStztZq2pqbTD6tgrQm4ev+8sP
         +v2R55n6VhkSBfKhGo75rkhZYLLy1ccrjIk6Hx8cBC67M9CdL+cpUyyYe4I4vAdG4kNa
         R3gb0d1m5CtpIGl6t/913hQ8G0PEuAH0wsDvhRaaUiuo0Nq4XfOoo2re2nslVdBIej97
         cmb1M1AcWn/V4P8f7HPuQfGhWspGcdxws1EnglbljXBAg0v81d47qH61K+7Y403CXWLK
         /qvg==
X-Gm-Message-State: ABuFfohtBWTeuVpSY6AtCKq4WVn6aKfBibl/ZgWtp266QOzC43zXPHhK
	drpxPEMeUTtWRfO56kxvWgYXnmnYJNA=
X-Received: by 2002:a62:b604:: with SMTP id j4-v6mr12539883pff.199.1538754138922;
        Fri, 05 Oct 2018 08:42:18 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.88.105.99])
        by smtp.gmail.com with ESMTPSA id h88-v6sm20854833pfa.184.2018.10.05.08.42.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 08:42:18 -0700 (PDT)
Date: Fri, 5 Oct 2018 21:12:14 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: vt6655: Add spaces around '*'
Message-ID: <c59ca23a8c21191624087d26ec63e0b364ef56aa.1538752705.git.mamtashukla555@gmail.com>
References: <cover.1538752705.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1538752705.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add spaces around '*' to fix checkpatch issue.
CHECK: spaces preferred around that '*' (ctx:VxV)

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 8ae9c68..596d5f8 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -213,12 +213,12 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
 	} else if (byRTSRsvType == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
 		uCTSTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
 		uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-		uRrvTime = uCTSTime + uAckTime + uDataTime + 2*pDevice->uSIFS;
+		uRrvTime = uCTSTime + uAckTime + uDataTime + 2 * pDevice->uSIFS;
 		return cpu_to_le16((u16)uRrvTime);
 	}
 
 	/* RTSRrvTime */
-	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3*pDevice->uSIFS;
+	uRrvTime = uRTSTime + uCTSTime + uAckTime + uDataTime + 3 * pDevice->uSIFS;
 	return cpu_to_le16((u16)uRrvTime);
 }
 
-- 
1.9.1


