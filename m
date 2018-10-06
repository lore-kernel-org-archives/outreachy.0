X-GM-THRID: 6609620704439566336
X-Received: by 2002:a24:be49:: with SMTP id i70-v6mr14134506itf.32.1538922242783;
        Sun, 07 Oct 2018 07:24:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:660c:491:: with SMTP id a17ls1797344itk.8.gmail; Sun, 07
 Oct 2018 07:24:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63HWOba8wvmeG2zHxJ2h8oXDmr9qhUzafBr7IZsR1xIU/pXHa0pamktpaA11TC2P+y0Q6hV
X-Received: by 2002:a05:660c:3cd:: with SMTP id c13mr4050599itl.22.1538922241872;
        Sun, 07 Oct 2018 07:24:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538922241; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir+9Txz6EIUG9NaAWavHypSH8lKIZrKSjWmomp800iGwqCFAkTkW++8p1RKY7CJF9e
         OjCccMHWDOjN/kY4kkrWnZPhWhcXtgmveKUhmrbQULJmIuxMAhf1Su/RIc6X0VMehDn8
         5u2NCmfGfybWzZP69q1GZFJ/9C8pp32aPgB5UakxX4CKl9uDuHbKWZOFuX6JKghWMf99
         J2UohCvQul1hQ1RT4kdW4TK6lkHXdj3yFaOJ5V/a4FS6SOxScXqoYgh8AXwm7BQk/FeA
         wfr/wO4lRjbnJpHRheiwBieviN3MXpvSMoG5E38W1OnCDZE/t11oRPFP1b7c8THUwfR2
         lvaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7motJzgQJgS36e0bI3d07C08+0uoaI6/DYk/NqYIWcw=;
        b=W2Ezy0yTk3Z6NxnKppjx6FVpD+i99yETMkYT2YQ473X8vCQn4kC8e6VUk2sD1S2tS9
         AIn7GogfHh9tLI1EGuw4a96ZhPBS92Kcam5n70mhM70cQXXejUv+xxLa3Ki/kGrnmmys
         CMBFEk3UdWdx+Wg+YSLXgztWtMGC7qbghLYE/vx/rvQVTKGR54uRg5oh/7phk/jMQdIa
         Epgxs5HXx25h68u2Z07Ohz/Wm3TDsocR9XIdQCiR5CVG/yYhSWmQmghTdFgN0WOqbTnX
         nOFW8nGa/QdeA57aBOEh3hm34GSxrqfnuDMH/XYmu9OZNUtYzTLKDaseqONfwaMPchfH
         kPAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NVN/yCFp";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n124-v6si351196itb.0.2018.10.07.07.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 07:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NVN/yCFp";
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id c8-v6so8892135plo.9
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 07:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7motJzgQJgS36e0bI3d07C08+0uoaI6/DYk/NqYIWcw=;
        b=NVN/yCFp+sIgRLkskIjTmu3vpNjQ7kW7tmZCY7Jzm9ULGIQakSOat2fLRqXJ8D8YKc
         A2s7++gKsCLQceErelv/rd6K88UCD7iAszHlBPw1oynWCrKRdva1rkcq5F/jIQlsCv3z
         LOa9lJL5VdmTx0dZrZXgV8sGvFrEo2jAvqKKhbIrJIGB4u858Cu4Ou2l7PEpMECzjCMf
         vMcxz6hZs6vNlnJNxcLVzwnjkB3DSOLXagnK3UV3DW/RBNn5O/ZPodFdKfNHK/LwlvUq
         I249KoIwNoHfny6m7NIieOwqItexiHsvWc/RMhIyYqbWUOANL56+HrcfBV8lDVibXndH
         qTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7motJzgQJgS36e0bI3d07C08+0uoaI6/DYk/NqYIWcw=;
        b=j7ScHTjdHx6uGaGsc0FQdrHrdzozqO+8XuXs2R76SZxmL9V+S7HedMUkN2SaAaRSVy
         UYXWTaCsuAZWEcIAcmoSGQJSzKGDplOtipT3GtRBNkYxAgHi3oGN/s5IWPzmqCxIHySw
         ewYNt0alG0enDvm4Vx5A7kI+IMpZB/IQqbOv3NoijEmDXp/mU2NB9ISsSsqiewTWkYcT
         4x5bP16wenuxkGXb50A4+/FFST9yysvHtS60VsIQXlNplRkq7ApdsK2hPEXzi2e6MXMy
         S/Nt3KPb7NCqF3zr6Hz92c6ebhCX3Z3Sh3ig4RIVfy3/qwB3x8eMiVGviKoqeh8aQS7j
         hxdA==
X-Gm-Message-State: ABuFfohKoOruxwmRN+FtHjQB4Jemm+BucrrRHW+B3JpEyINV6cWE3dK/
	gJS3xS3k5zQhAv5ESbWo4lU=
X-Received: by 2002:a17:902:4403:: with SMTP id k3-v6mr19971649pld.243.1538922241046;
        Sun, 07 Oct 2018 07:24:01 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.207.206.206])
        by smtp.gmail.com with ESMTPSA id z7-v6sm23638140pff.146.2018.10.07.07.23.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 07 Oct 2018 07:24:00 -0700 (PDT)
Date: Sun, 7 Oct 2018 01:54:14 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	mamtashukla555@gmail.com
Subject: [PATCH] staging: media: davinci_vpfe: Use __func__ instead of
 function name
Message-ID: <20181006202414.GA12019@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Access current function name using __func__.
Use %s and __func__ instead of function name.

Issue found with checkpatch.pl

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---

Predefined identifier __func__ gives the name of current function name.
Thus, it gives better debug information in this case. 

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 9594276..4d09e81 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
-- 
1.9.1


