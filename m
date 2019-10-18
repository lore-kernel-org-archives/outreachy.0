X-GM-THRID: 6748987739858796544
X-Received: by 2002:a65:5b02:: with SMTP id y2mr8078847pgq.365.1571371159714;
        Thu, 17 Oct 2019 20:59:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls1550703pfb.2.gmail; Thu, 17 Oct
 2019 20:59:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqye7/sfjllNJyhutZ0h2EgpuuKeeusrol46IqhtUrzkCViV+z+lX7SNSTksCvahNEx7kH8/
X-Received: by 2002:a62:6546:: with SMTP id z67mr4202659pfb.32.1571371158785;
        Thu, 17 Oct 2019 20:59:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571371158; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfgoVCL/f0Z1vORMUJf22eT7YdpExpN7ysNFAlyz60Y1xIxc61tiBT9fC58HaOb/k5
         uV4MA4SD3RJW/8cZMtZ5Ae5S5f5uFIRiT4q2yFv+jfPuDn3GUjIYM5ApRVNo5svOw6SY
         ubalkilxenThV+RktwxdVzsyHN0JYRUCipqnrK6/uti3Tdqsas7faf4SL1wNZw7wv5NR
         kXBBdATR+N19XBuEKSoS0LYsNcNNbroQ+ymqdzCkpeISV0q+7GTkNXLl/h55G5IXTOt9
         4pWV0Cd8tkKPHmZdyM4PXmzbw0cNV9hWqqGEJDw59e6Qyk0/tqciPG815AgHZPDTyrtx
         GWCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N+HfCJjNuGiO+UuQb5zGw8h4tjYLzS1I+Ja5tdonBZA=;
        b=pHrnBVYxAHGnCVz5PtEK3DeM9OQZMnJi/fmxwIEMlcToBEMzlmG5zSYO8kZKHWsvQP
         y5am6m0pJ2iX/XuCIyY5UvQEkQaJZ1cwzkeDVLhCz0ZYY3wjiCIVR1ubb2K4ZuaF4ti6
         hWKSDXpCk9EWpsK6ssB+x4P8DteAAXzzQUZ+6ha6DraUiK4e9HqCexSToLXKqQJ6yiRY
         Yn4uPnQ8l7Q1KwNd84CEIs6JbCjKJIRiY7ROoObz5m35iwwzJCTW6zcioDDcxJ1eMlbe
         YYLMgYAYKo/UuKY4xu9JU6hKUhNfBdcSEEUad2/r7uNpgBhJJqgUZ750sKKONMNmEqGd
         14rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4rqQHnO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id x21si118565pln.3.2019.10.17.20.59.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Oct 2019 20:59:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H4rqQHnO;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id b1so3098487vsr.10
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Oct 2019 20:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=N+HfCJjNuGiO+UuQb5zGw8h4tjYLzS1I+Ja5tdonBZA=;
        b=H4rqQHnOlOX6h16B82hSIQ0nLqN6ZxJ2xqI7pGkOK9jDe3AVs01oA+WwoXmnuUmU32
         wew/iWw7eP74BgWR/tZYMrfqxU8zJ/yjP6/Lq3Kw1MOALTwhC/CRGIYu1LpTpZ9e3zZv
         wbgt2PNpzlX+eDoyR3yTHiteAHCVkJzCJ0gBbF1gsFAxdn+OxSt8V0IARrrBBd4//lxE
         Q31kRuKHBlSzV1sjm7/jzQJ1SMqRLSYsm6hgyMTBfna942ZylTpo5tHFzc97JcqaDUQW
         VGX8NyF17O3JWfAMeHo++QHDD2AAJ4NjLdQxUjrA6QVq2L+xzkJ/TatF5hrEIfFRIcIR
         fVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=N+HfCJjNuGiO+UuQb5zGw8h4tjYLzS1I+Ja5tdonBZA=;
        b=X4xWnow3ljceHeamp5TpWy+C//ao+GvD3YZG0RRndU7QMAQCGp7uKG52o/NfN6jZZV
         tnTw5Yu5Mj3V9cyMWi2ThkmYIbjv940x8Hzc+TuRTextCQJ7gc/wq3vdX6MkdUGHNTC9
         iwrwqg3x2u3msbiZPRPtofDIgmjzU5ij7RDe4gma9QPZaaI0cnN7E62KDT5S7qYB5jPu
         wJ5nHDOFfeGElUx9rMmuP/Pm5D7la2cJjAo5RN8HUF/jD5325VjuOJpmGbk5M6T+qKMI
         +waxR7nlioCnL4C1B4B01g8xxkdWIFS9fPUQoAV/294JAhUBFQr8ZDr+bWco1wApzXgF
         0q7Q==
X-Gm-Message-State: APjAAAWsW4f1D0cjUrJ55A0+DQCRE/888f4ddoFoih103jaW59VNAcvM
	hkN1dReJ2avgzEhEr3MWn9Q=
X-Received: by 2002:a67:fe47:: with SMTP id m7mr4323715vsr.100.1571371157923;
        Thu, 17 Oct 2019 20:59:17 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([185.245.86.198])
        by smtp.gmail.com with ESMTPSA id y23sm1151251vky.22.2019.10.17.20.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2019 20:59:17 -0700 (PDT)
Date: Thu, 17 Oct 2019 22:59:15 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Simplify boolean expression
Message-ID: <20191018035912.GA5198@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Simplify expression that it's inverting a boolean value.
Issue found by Coccinelle.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..38e7160e6da9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,7 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, !(bBtDisabled));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


