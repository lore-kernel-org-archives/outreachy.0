X-GM-THRID: 6666290525545431040
X-Received: by 2002:a17:902:f089:: with SMTP id go9mr7151078plb.111.1552116732274;
        Fri, 08 Mar 2019 23:32:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls5198417pfj.0.gmail; Fri, 08 Mar
 2019 23:32:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCP/x6jg1276Q4owFnqv0cldRI3ox6AlMCI6FtCwEYZfedawtyq/DAb8P9t01Pn4IiiplK
X-Received: by 2002:a63:6b41:: with SMTP id g62mr8622774pgc.47.1552116731600;
        Fri, 08 Mar 2019 23:32:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552116731; cv=none;
        d=google.com; s=arc-20160816;
        b=j94xKtyQhy7k8uWiYMYPhnUZ5QIrsyiKLDuKRzWlQk+iEkCI2OPTnnW4KRjG4Sw1iT
         gKvDoRXMYFq2SRkDF7ZEthV1q8oTAqgCsHIiPdPiN1mXMvZdB7uS7O45SN98OPVn9ESV
         CdMoWGdMIPwwrXpGpeDHSE85jj5gWbkqBDs8h8e5f9FbALAGzcgXCTjEl7xogG1VWeQ1
         Ul6y1FSsEHKegZKbc5BWdcAQcY+Le6Ve20GkW8LniWm/lSyLd2FStfzJNB+bgdixKFl7
         Wf0zbiJPvZaSFIrw/TjVjqkffOe68PwZAFPUpGQRbWSPy83/GiMIbSXpSLfMpva8/pR2
         by+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=PZeauicEnw6jVj3MG+PQQa947S0Q663SHqJi3f4EburV0smOLnji69ibA7+PwzEldZ
         cJZ6Dv+FBGr6AkQ8nA22lyyjJIXBxaxKLCYRx8K4RToCnzCuoi9Xh7VK0UujmAAiHU5i
         EtmrB4bxwdmU24xxr+9AaePr/pzusaW0LJQj0S4W5Hmebmy7kzrskNpWbVDiVSGczsKM
         HRoZwvYGFq4FCl4dg3NMCvW6bOnGSoc/9QFdyPhtuVhbjUTKw6oCod8VpHP/pWUELcGg
         sDkg62HiRU6nbPAp2n3zr2hX9IjO4i9hsFcOC+Ve9qkK+yQEu4PuVKWTaBIod3Om78fj
         XpoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDrIC9dO;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 197si571954pgc.1.2019.03.08.23.32.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 23:32:11 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDrIC9dO;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id k11so14969041pgb.8
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 23:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=EDrIC9dO1ggmEWtiMCndWWHVDNLmQqs+j+WrXAh6rGmoS3Ab3uaCDxKleO/xErzV1i
         berdooTN5Pz63uC6baPV7NI4DIAtGyKXCVSARirqXhbQeARNAee2IoUs/MuDHcouvvKs
         0zwtBTb0/nu1dsp2422cBmU4isjuWh2HubI442ctNmU6lYadxgZoVc7tfKjjmP1ybzMY
         nfNvNn+eDIsspno8xCFYXd6q8+55ae7Bryc5AfTWl/pZQmI7uUP/QRtM3ACpE7G5XQmN
         P2GyscLBPgEpzGP2SUdsLAJqUD5ZE1AybSObN2JU+PUSZEJSvypEPILInPh2Z1LPw3Ot
         1eFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=dnE9rgLJGTDRgKErEiAvvHRUPW+/mHXD5l4gCkzRPlI=;
        b=F9sO1GZ0N65nBwRWIv1KPSyC6uXenryntkRpG02YRWd818UiEamfFDHxHxC+jEXywJ
         SW+z3SDTX/ZGYFEp5tePDmyC3JCM03SmAujWza2ffzUFleyhfUoJtTZEZqqpTzHz9raM
         CQJkn2KnQl4tG27/FPv7Ycrrh2iwouDLPaYzPBIS6wvsvmFH0kA1Utvg0EEheAF812ig
         F9K+Dp8wDrsHiGfwo4Sc7C4oQ8mqfYymR6+Qpu9xC2feTGdc+mxDQcIW7GGygMrNGUPW
         YYK7CRTsYcgLMip7GuQxwXtV2fGW2n3q7h6KA/4xf5wnkkmatRTZI5X2NPNCy1zWvoSK
         GuDw==
X-Gm-Message-State: APjAAAWPHjldyJil2jFOA3m5of1v+x5VA1/5y8EtkthLjCING/f5h6On
	AgcOQFJ37nD3hiik8Rz+Qu0=
X-Received: by 2002:a17:902:59c3:: with SMTP id d3mr23181640plj.214.1552116731348;
        Fri, 08 Mar 2019 23:32:11 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id g3sm12821475pgg.41.2019.03.08.23.32.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 23:32:10 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org,
	etsai042@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: most: dim2: Fix SPDX-License-Identifier in reg.h
Date: Fri,  8 Mar 2019 23:31:22 -0800
Message-Id: <20190309073125.5610-3-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190309073125.5610-1-etsai042@gmail.com>
References: <20190309073125.5610-1-etsai042@gmail.com>

Fix the checkpatch.pl warning in drivers/staging/most/dim2/reg.h:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/reg.h b/drivers/staging/most/dim2/reg.h
index 4343a483017e..b0f36c208a57 100644
--- a/drivers/staging/most/dim2/reg.h
+++ b/drivers/staging/most/dim2/reg.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * reg.h - Definitions for registers of DIM2
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


