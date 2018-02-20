X-GM-THRID: 6524431890733072384
X-Received: by 10.80.177.147 with SMTP id m19mr1255565edd.11.1519087676975;
        Mon, 19 Feb 2018 16:47:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls4749904edc.3.gmail; Mon, 19 Feb
 2018 16:47:55 -0800 (PST)
X-Google-Smtp-Source: AH8x224lc4SyVSluqkfO7oRgxPjwBDpQyAiEO04t/y17El0UVqjOITb/kcgQ4PVLap4eguwZGPTF
X-Received: by 10.80.230.18 with SMTP id y18mr4774513edm.2.1519087675439;
        Mon, 19 Feb 2018 16:47:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519087675; cv=none;
        d=google.com; s=arc-20160816;
        b=L4NNn80tVKYBQmAIp8PnKZpR+O/GbQW41ZWKPOiYl0yPS1NIFwo6gRMtMJ7Pb/YzL1
         iz4gLc1p/5+TCtiBTkwC3OuzAU0EGdsrvqSU30631vaJLVjyGP65zaRex0twL7T2lsit
         5dbognQYViAybexQK1GIbkTw2AFVwxPwwGT8lZbU3nUuox8dICzo3VuoFVybvZoQgcQ5
         /zDWQ0PTqTvsbnuKCDR6zBl6+D+DuCf288zZqgAfb9lqJL1vOaHW1i+D6cmvpAq3hro7
         AKfbUBqIpm2sR1DxMgyT3hsbqXO1YOk2mOjdB3aJV3QhbWZvjbRcforscppbvhZf3vuT
         xLnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Rtu2+Ob4n0+IYhaVVl2lQPN6IEKXTuJWxn7F4osa1z4=;
        b=SGONL1Vl7+d3o6UDnsZRqaWABYkJ4m2CmaFQRTmRBaY6DFnkiL6ebJkFIKzmAXPLL/
         bMJkiatLhAp/5Os2yPZBWD5fm0WqMDFTzi3K0vQdqNPecNZ9Klovw4xh1qZUet7g82To
         y0EfHgytliKL7usFqyf4WbtT3eVpmggtuhUAl2AYz3j9qV1tn29PH9aTDL+ZOBn1k9ti
         yqWuMiIjIZhceCv5wEzKnyQ3MnvbTGGFrWGz7DMOtIP+6vpcJHJ7771gjRMVdnew6AjK
         E/DddWDSTKwGINoZ1k7m5NBatPGUtJkNmUoAUSy+M0eEsNIW3IWFiyZkjKSy9pFMGbuq
         BIJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZRRCqHCU;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id m12si790057edi.1.2018.02.19.16.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 16:47:55 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZRRCqHCU;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id 34so11370359wre.13
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 16:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Rtu2+Ob4n0+IYhaVVl2lQPN6IEKXTuJWxn7F4osa1z4=;
        b=ZRRCqHCU+VkaT+fciWP9EJvpM1E/aSLb2YO64/Rh1mGjrVmJ926IvtoHLdNmtTy67L
         zQvNm1ujSFvxyZhGkPXhnSS4uApxQxUwkfZp8Tk/W9fjf3oIBnDgWJbBKdTq11g4DyNn
         cX9CZKIqFDvE8iwR2xx20N90q2ruY3rG1i5TLbA+lvNIgR1MlNY4yXmTJOe3EyCwlLZS
         ykGumRGik7JxGFZ1uxz5LS/7yXa9L42UzNoB0Bb/vNT8DAmyQKruL/pVem3OdQVGbrUn
         wN6hE3zANmDspuRUXCQlmDK0oH1eX10D+48vCBVjQzyG1FxppfGTP9DkVF8iqOqC6GoP
         Z+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Rtu2+Ob4n0+IYhaVVl2lQPN6IEKXTuJWxn7F4osa1z4=;
        b=ANj+WfGpt/cNFhjiTQnoG+VGc6sR4VUeHt4gA1PeH4+idp2M1i/FY0l27uouW4XxlS
         ZH5FpzqjPaJwE8VnxY91jN5LsEPyaL/XM2+NiUb9aeRHN01FkK1AQK74os4zYpUakLZp
         a+0bzsgWchdQ3a0JyrRB9NlIaH+8ExqVKA+g4RUQYaD0D7mFW99iJZp6CavZQy9FeoeP
         sJ2GjmvnEja6abRpOMngJMuhyDSEqAT4caPRKaQVn7wgCEZptiMPM7jq3Yi8qly4U0hH
         kzZVOTIEeHODjtrSp02ivJfPEhCuN7Dl3PKo4VN1VbWf1FmzCJ84qPbH/m6Qp/vnXzgB
         lvjg==
X-Gm-Message-State: APf1xPDIXsiWfogk5bJHFGidI6wW4tf9iHGIUvPloXC+AqySce0OOfeR
	rDtwAb5N62ajSHk8SA0xOT4NkD4CiSc=
X-Received: by 10.223.154.173 with SMTP id a42mr15570476wrc.240.1519087674935;
        Mon, 19 Feb 2018 16:47:54 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id d27sm33336876wrd.60.2018.02.19.16.47.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Feb 2018 16:47:54 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 0/2] Cleanup in staging pi433 driver
Date: Tue, 20 Feb 2018 01:47:24 +0100
Message-Id: <20180220004726.9662-1-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3

Do some code cleanup in order to reduce the quantity of lines
exceeding 80 columns. Problem found with checkpatch.

Eisha Chen-yen-su (2):
  staging: pi433: Split some function calls
  staging: pi433: Split subtraction across 2 lines

 drivers/staging/pi433/pi433_if.c | 48 ++++++++++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 16 deletions(-)

--
2.14.3

