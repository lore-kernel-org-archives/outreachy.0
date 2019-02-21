X-GM-THRID: 6660473673127821312
X-Received: by 2002:a17:902:280b:: with SMTP id e11mr690849plb.55.1550762372574;
        Thu, 21 Feb 2019 07:19:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:47ca:: with SMTP id p71ls1279711pfi.1.gmail; Thu, 21 Feb
 2019 07:19:31 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib6vdiS5tQdrdhgwFytf/bMLhk308w5eDy0C1oWLkUsLKysO0Z22u4NsZ7DTtx0hlgZmEzQ
X-Received: by 2002:a63:2c06:: with SMTP id s6mr3027138pgs.120.1550762371880;
        Thu, 21 Feb 2019 07:19:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550762371; cv=none;
        d=google.com; s=arc-20160816;
        b=xXKiok+VBzWhGWVD5T6Q6Fn9GCorr6H4ZQQcytop3ut/BYUBbf6oSbCsVfVz8Q+D5H
         SeTI+6L4DoY+98kO2GYgwvjMOQyda0y4MrMaTobydJLPNZq5LMGvvbZj6p9+IbyuNKZk
         411I47MA7uykMmmHP1sw7bEMgKMfUXtJTYYhpgYL7UfEeR7ypdcSNvryfvSjIontrvWN
         u5XnmhNL0URum4ueCMnquX4yV1cis9rKycf07XuaYfHNPPNE73i0nZ+O/XaeRP6LXCFI
         7lsI2Nxf6Mrve6usHksONRcf50TSI+18pueWfsP2eIHmf2dH4LZR5Cs0QVc2q0fNuhUY
         D/Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=n0khr7TEbwJDPPRrtSFLXNGS5tTQtFvFn1oBbdmzpe4618bPo3Ll016Mv8kul3WsKS
         9JoJjfQ8aqL9ANbuzUVFIumdeh0aVZKncOuKvAyvEhZzMMF6RQ8/GakBbpy25KA1tS3h
         B5Aphkc5taB3l7x9y3SnBIV4+m+RJh/nGFOshMKG9KShv41gsenB0aNwOVOnT1XkcYRB
         cqnvUcEy6l0ni2GkMtGq+CyV4uesbzJdp/8klEIhm1VU+X0siF8hXm1+L8as5hLJNL7r
         WUSUnStPzI0uGSMS8eT/nwFYSoqILb7L5ha8ONtxpixNoQVzwY/kVbJPNg3YKqsrhbqT
         wRZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1FKc8By;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d26si82044pfj.2.2019.02.21.07.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 07:19:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U1FKc8By;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id m10so4664529plt.10
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 07:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=U1FKc8By9AlXzlGPgq63BnZJ/jrNN0MvDnbPbZz57rCiLW/qR2dkW72wFwT/swDTxk
         Z9DHITTqlPEQMQlJ2h0xb4JaK5cPJnftzL20S6S2+MiRExejMaR+oV0R9V7ODlBNotMT
         cp4K8mWXGuR8dm9WRvBF65QJSnlTcf+IrFaMbyTOFXEjdMytdsJy+i0hXzmia4X0Ewg3
         kLKHh8CuRxjzSQ67onq0dSnmVZ2/GuV/55reLn7MNwMvnjOG0KzQ/7SxV8h5zcQ0w4lJ
         qtolzBtAVasR1XoPoro1Pd6ha2y7oTHEBAlVDwxHDsWNH6Z08dnLJanQXDkR9+boOsOE
         04Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pNJHhgyEbuJcp6bukW8ShxBT1fizDqIn4FabNb/Ilfc=;
        b=nIaBE/749PrRT8E3/0NsMWV8tBkRdRpmT7h4ZtIZW9/k8ULOl48tVESeJheTrTg5Ou
         lRfmxw6wowqrUT06+Bg1/WYh68pxF02rGISmbFKxwjbDeiuFLpBHzLdDuz31LSIA5lyb
         ERbEwHee26sa7AsQvqcLwQtmkVe5goufr0KkOq4uJ3Rp6BZjLz62JFdz5jL0JI9Lv1Dw
         uRaxtHdC/uWnQ6sq6pFmHe5+pGjK10ZixVvWGhuR07BAPkxBLJd1OxBX5rf+9ocsiQbj
         kzwvos3leVk5DU5gVX0KjNlY/iOSqMGd6jfNQm8PXzy5Il0Cq2ll6Y/2UlLLWanaVPTK
         jaxQ==
X-Gm-Message-State: AHQUAubKq3+oH8PgWzDC42lhKR9TfAcWH4Bz7TJsGdfsRtVjigpYE4kJ
	12dMWBJGVxb5kHmnJ0qgOZ3lDlke9Ug=
X-Received: by 2002:a17:902:8687:: with SMTP id g7mr42841415plo.96.1550762371600;
        Thu, 21 Feb 2019 07:19:31 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id g6sm26274261pgq.18.2019.02.21.07.19.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Feb 2019 07:19:31 -0800 (PST)
Date: Thu, 21 Feb 2019 20:49:28 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] Staging: fbtft: Remove extra blank line before '}'
Message-ID: <20190221151928.GA1864@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Removes unnecesessary extra blank line before the closing brace '}'
which solves the checkpatch.pl warning.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index de3f431abc15..9d78ce6e819f 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -87,7 +87,6 @@ static int fbtft_request_one_gpio(struct fbtft_par *par,
 			dev_err(dev,
 				"Failed to request %s GPIO:%d\n", name, ret);
 			return ret;
-
 		}
 		fbtft_par_dbg(DEBUG_REQUEST_GPIOS, par, "%s: '%s' GPIO\n",
 			      __func__, name);
-- 
2.17.1


