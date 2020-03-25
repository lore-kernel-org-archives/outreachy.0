X-GM-THRID: 6808264476634120192
X-Received: by 2002:a05:6830:138e:: with SMTP id d14mr4138542otq.248.1585172600256;
        Wed, 25 Mar 2020 14:43:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls1280743oii.2.gmail; Wed, 25 Mar
 2020 14:43:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvCyw2szS9v7xW3c9ivzkU21/iJqycPOlZcTy1H0Uyamd3YiElOvQKNsnwqKXebcTQrOLXP
X-Received: by 2002:aca:a98a:: with SMTP id s132mr4119719oie.75.1585172599088;
        Wed, 25 Mar 2020 14:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585172599; cv=none;
        d=google.com; s=arc-20160816;
        b=v506ZFGEsGkxpD4QaUgccaP7K7DJpClpusFgCw+BWa6Dwf1W0dFfja9dboxjnODYaA
         uzGkhdPVSoMcld1vatAXjMDm6ABG3v+cQSsbtfPiAmXM3JeqDxbAR9b4x0+NIR2NXKGA
         b4/1iuKI4EiqPl52+TNJJbTf1FbzG8E720Llo+1f4MYJt6E2FtixK1c9RaHy9drSjSGh
         v53SGx6pkTtfFx85Z4PlooEvuwNiDeOYJPOr7tX2CFv6EFmouh5zV2LAXfbQ0wUWOmxX
         TKS5H9wdhnujfNhDimrRuGySYJvB34lm8MBye8GdWt7QdpnY8Kz3bNq/210rjiK/JwTL
         MlWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=h0hI1ctK7evRWi0Tx3F+lFEp/ylOEoUVzXunsODTLdY=;
        b=MJKLarb/bqG0PK6ULmdrqEUmu8n9LcCFAhpfVFGAoD6H1Qns5AH7hvibCg38R+shhE
         m4VaWHCOnPjixAcyiyaL6UxHhLaIP2VBJYMfUFa86iXonLEFOdAZzmPB668SIYrbkL6N
         GB3coXgxJmD4EiT1IQsczcirwt81nwVIW6UjhfpiFcq7EKBnuy1aT5BJK0vuzZpjg8dO
         4mxmeq6/Cp9kW9RcomIcFUO7z+0LvPzJHDlq3QPUqx/Ne8i0SLTLDKdvN3Djvd+BmUik
         FoLqYD81C7LOhKUNtxtWjXC8z8kircaK5Vl6YTnlCMFkIK8Myby21n8IHRWx5TUyMxrO
         XLNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6CccuvD;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d22si43570oti.1.2020.03.25.14.43.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 14:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6CccuvD;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id d17so1824600pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 14:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=h0hI1ctK7evRWi0Tx3F+lFEp/ylOEoUVzXunsODTLdY=;
        b=K6CccuvDhDFg4uDguK3OiesQSTy4fN0R7L2ZKiBbN6KUB5W5JGjUjBeE8sAHEWaPX2
         w/HSgNcZUtbTEQ28K1Q8MlNo5DaOd8AscgJK5B3m5OeehiuaHg1US+Hapq413+gXZgxD
         pC/tsiWBNJEFkVFyevTpcfH7QZijl90PLmgGflSa8Fy7sXpNJtnKbfG++5ArAO6Rdaj+
         gDFnjrinuJIrGqgR5G4NygPWvjK7+oq7x6gE9H1UhL0UfjtPwT5biCQ+bEhxPvjmMzzS
         ZgkB+HD5/RSOurcjFBSUuP1KD5/ocn9MzxOEE4CNq1jVf5ZbdVHr3IrFWx1V8RBeCj3p
         fpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=h0hI1ctK7evRWi0Tx3F+lFEp/ylOEoUVzXunsODTLdY=;
        b=aYBDQzvXrV/kObiiqcHziumG7kc7eApOpMb+aAP77JzDteazcEWkwI62QtzdcUYDbe
         daFTVc76IWxir26qhnY0GvqAPIUXffWEvWRkLsYPrUQgywzaVLgySnf3nJHmduiTSQ3E
         ankHTB0Zi/N42tR0tUWp45mBGeuHhZi/mz+63cDf5NispXk3OqRqxAucyPxAG5uF/9OV
         Yo4onwZUleKfqc01P3s18z8Ho+sED99bwQJMt2imUuUy/61zKdPw5xoGMkikegdYFeRN
         NM0UBda62y8rxmWcTlcbIDQYL4IXxPHZaq9V5dYyTWfnszWc2YTHxuPHinnq1XLaLAO3
         fPTg==
X-Gm-Message-State: ANhLgQ0TQMsHwg7AgdGIJ7QFT3F/ta4mEoTWPrFXN7yHJKgKQOd73IEB
	FkXK1AFqr6vxliOBqddWaVd9VqbF4No=
X-Received: by 2002:aa7:828e:: with SMTP id s14mr5336751pfm.15.1585172598186;
        Wed, 25 Mar 2020 14:43:18 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id a19sm87724pfk.110.2020.03.25.14.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 14:43:17 -0700 (PDT)
Date: Thu, 26 Mar 2020 03:13:12 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: hal: Compress return logic
Message-ID: <20200325214312.GA1936@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
index eb7de3617d83..767e2a784f78 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com_phycfg.c
@@ -1498,9 +1498,7 @@ s8 PHY_GetTxPowerByRate(
 		return value;
 	}
 
-	value = pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
-
-	return value;
+	return pHalData->TxPwrByRateOffset[Band][RFPath][TxNum][rateIndex];
 
 }
 
-- 
2.17.1


