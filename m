X-GM-THRID: 6807924039035650048
X-Received: by 2002:ac8:6699:: with SMTP id d25mr387797qtp.153.1585093335346;
        Tue, 24 Mar 2020 16:42:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6192:: with SMTP id v140ls8156qkb.4.gmail; Tue, 24 Mar
 2020 16:42:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vujm2eE65bTTOgWUlw4fThx4NvZ/bBL6oY02qqvBW+K89Ag7uiZw7vmGEKMHcC7ULWeFxkT
X-Received: by 2002:a17:906:3db:: with SMTP id c27mr826457eja.371.1585093333604;
        Tue, 24 Mar 2020 16:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585093333; cv=none;
        d=google.com; s=arc-20160816;
        b=d+LHmqHLw7ljS8U5DYPIcBihX9dm3uWOpsC5NE01E8CKwFM73/JLwNax4LdvxQhxT2
         0136lj2R+I0fX/FaASJzAv3PG43BVtKFUkhaj8/epoPzOiFtJYoknHjifg61LmreXaWB
         xG1CHirGgfbZxx3840bs73oaXTgxXfLXhhiJUfK0U3ocVMYzJDPIVhSHp/2BG4Bs9JyS
         Xm1UEypMKBOEkFpFL2Fn0x8sMsvYxsxSrFAhBL4F+FwvaVjpCTVo4LfUq5HdkStgZPV9
         +qxTGprzh78N2aEG8W3cXU4mIGemQ07Os6GRfxK3wSJwCNCLHtusIeFsc+ts53LUOwsT
         MgfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xUcrcIgJfE5c+ESLiGRJrBRe9Co/l+hO4CqN7uXJ1+0=;
        b=PxGIP9ajbac4tISN/Xy4xdpC7T+hWK77zwvQvaCYkzkYut91XjVgTG0szk2dRXwojw
         Oxezdn/TmgeTOmCQ1fWDt6IZlwXmYbRNkE3wvaflfM+0HgP3DJJILPE+6EZQ3J/WtODv
         imfy64FbReUCE9/Xdj0XyWa956k94fV6ihcfpW/gL7wnyJVSnnhEyIh4bOsx9VoVVBiB
         RzRW3A6n6mzchekkYjTIhche29XPZomuvCPnZbjRT7aDpAP6c+RTObj/a+4ih6W6iNx2
         ykuLqPV/gEUHx4TcfV8q1Zdwvj2xoTHZ01RHN1U4QDlWfxVxpohOisgVrr/Y/rUu74F5
         Zhqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dliYDQPG;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id k14si551648ejb.1.2020.03.24.16.42.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 16:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dliYDQPG;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id j15so288174lfk.6
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 16:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xUcrcIgJfE5c+ESLiGRJrBRe9Co/l+hO4CqN7uXJ1+0=;
        b=dliYDQPGC7/l7mPI97eFuKFQ7dxULozSfy03ZFWWcqw4BeDiQEFBj4X/Cs/TT2sn76
         fbVkiphhJKuSdtmWB2Xwqw4B5e3Px8EAYQCvr11pwt79pP3buyovPfAI0amoDzcv8vl6
         mWR/iAJ9wMxSgwdqPiUX3FvX6rGdYopRR5pj8f0/2r+zcezg9BCra5wjMsAfC93yeY4R
         TCE+h+CT54BReVc9opEIv3K9YgNs2I8dq0gdQCJs6unRVMGW3Hrd73ZzMQPJ5K/eVg9c
         k1xdo5y0RD6qx+tnDgA8qsuHgmaeQRkx+P1LVDpLuaBgFBpGI0q7E8ey4yoaR0Gzx6es
         AVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xUcrcIgJfE5c+ESLiGRJrBRe9Co/l+hO4CqN7uXJ1+0=;
        b=OZi8mMA/fYPyqe16A561WSEQH7ytOrbLQd6ZKylBRj0c0NAHQzoIOEWQCmolnoxajH
         E5W36+jWDDwJkvRvE1sUBacg65Fm8qP3kmJ7P0yagkkzfj3jvWbE0M5ldfLcFLLb8RtI
         ZNwyPUBnquj31XuAHwtMyIdtdCphuLzu+djXanBrcJ2o4P0yKIiDq58bZDcS4L7+xtk3
         2jcPUmaNghWhil4dpu3JFPNXjVgEylx/lU4iqd3whE6Gp2ui9cMC+nHTRzxW54H/LGcU
         v5WPL7lrt6Zgv/MYL7A96KDh5JiqmktFokZePI5Ya8P3zT1giMRmMQa/MxCS6kacsBSD
         2JxA==
X-Gm-Message-State: ANhLgQ2xSER557GYAyazoOXrXhhBh4R994R1jufZaMIj/pn2AkEDD9S5
	c1DtejHg4g0h1E4HUg8Kse/vDW41
X-Received: by 2002:a19:953:: with SMTP id 80mr331302lfj.15.1585093332977;
        Tue, 24 Mar 2020 16:42:12 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.95])
        by smtp.gmail.com with ESMTPSA id a10sm1736083lff.24.2020.03.24.16.42.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Mar 2020 16:42:12 -0700 (PDT)
Date: Wed, 25 Mar 2020 02:42:10 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6655: line over 80 characters
Message-ID: <20200324234210.GA25539@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after && operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index ac1eeb7..e91d320 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -838,7 +838,8 @@ s_vFillCTSHead(
 	}
 
 	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
-		if (byFBOption != AUTO_FB_NONE && uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA) {
+		if (byFBOption != AUTO_FB_NONE &&
+		    uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA) {
 			/* Auto Fall back */
 			struct vnt_cts_fb *buf = pvCTS;
 			/* Get SignalField, ServiceField & Length */
-- 
2.7.4


