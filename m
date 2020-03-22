X-GM-THRID: 6806837634279669760
X-Received: by 2002:a17:906:c835:: with SMTP id dd21mr14443947ejb.140.1584840387806;
        Sat, 21 Mar 2020 18:26:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f682:: with SMTP id d2ls1852273edn.11.gmail; Sat, 21 Mar
 2020 18:26:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsNcK7cYJ0KxW9fnZkdHoEiItfVocMHV8AtX8fUGGu8WLFg2jCxYRTmJy54ZW3P1yL2mugz
X-Received: by 2002:a50:c389:: with SMTP id h9mr15330818edf.1.1584840386607;
        Sat, 21 Mar 2020 18:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584840386; cv=none;
        d=google.com; s=arc-20160816;
        b=V1vmgBKwonKp2JGlqvW/F5XYgqNAruceqtB5JrM6tkyfKZx6RNfw4VHg0dlRXzx9sD
         fPwPF4vOqe6TQlto1Sz7aEIF7+0G8ZNF/qbCpaMsdqxitT+a+2SvaJorPdwnk9bk2uW0
         psf2vU3zXk1inPWE8+qvTtiM94a87U/ywPRoKeAT4WCE9EsjVv58gqJlHlxGqEcIbWng
         1/GFEYYV/3HSdUg2EEviPeO1y5rQdKZ75rl/S8DJvalQxhKy+7AGtGzagQhNfcw9G6I+
         2qdH/vZPWeRlzE2VhTC3o67oXiMU1e+GgXbXD6rxdGXqLLPuS6kv7Z6Yxn8HINYFlkAK
         vyhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=38T4suRKRdWuRD1SjMgl0yfCVqyVETKPUzt22XuHAoU=;
        b=UpCEROaQZcaFZdbdlk1YAdMTuU4JDSHjEURFULp1F4cLcQtPDprk0sNqQxzWzWqome
         3lZzB3cl0UNWKaHC4SafA3S2Lx0CxJ8D07gJqXm51V66bIZCnTx9F8Q+PunCkJMpV193
         oQE7K3LlVn+v7hth9t4Fg0FknUpIkNVOBGWETspmztp0bO67H7bPkaNYnAgoJi0hQWve
         0C/pP+DLbWJk6ihqCzEEaPMUQlPHzYgK5f3vIP1/IrJ+a3hR/+5q3gp/hrgStxFt/2fS
         ef7Nc3bUy5qiAnwF1eZgpp4q7O83P6wbMYBmyWmGoLGAErvL2WIqy9VHDltBDVL5N7F3
         A6Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOESCaMf;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id c21si233644edj.0.2020.03.21.18.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 18:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOESCaMf;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id j11so7459117lfg.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 18:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=38T4suRKRdWuRD1SjMgl0yfCVqyVETKPUzt22XuHAoU=;
        b=cOESCaMfegCxICdz5xG9sV75xqrtMYF/RXeJZuiakg3XlZwHiZuvxJvyYSkfxNsPXO
         n3rrA9sb8m5py32Y8DQIK44OhQNccfheXmzC3uy2GuEVZsqnP6qvJ8RX6WxZTNF05ZxT
         JVW+ExDV/fYcLg/FlGHpl9fFZvAGx02utaQSipf3rZmuM8FCUaU56a9mzu9vWLOHr/pB
         iw8SiBR7z6fv1KCe4cKiHZeZnaB5sTYDjn6gx+2fBzTexBi2uYLxE4ZaagAAL1pxIioy
         jF9f/0D/uwMfQXGoQV0oaaOLT8uHghQeW7SfN71TPE6nDUoj/deVNyqAvpgTKOmBg2P9
         ZSFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=38T4suRKRdWuRD1SjMgl0yfCVqyVETKPUzt22XuHAoU=;
        b=KU1Em/walIuwimC66c95EaICdoAOMyf8s6oTUmm7q3CeqGzxy+4k1sTLlydIh/7GLS
         Ux6w2a3sd/GbR47ApQxRBFQYvVf7+rurVjzUmNtoFUgx6mNdnrY/0/o6afb6Y7kMW7DD
         e4zIi8r0EcXDiuojZFUCEwfT+za25pLnB8CD1IByWyzRShaghwOjjINFqCF6fW/YCD8+
         Dz9Ff2hsPZKu2/fDJi2wpKei+BwjvCWxaHacJssPeUpoYsHC49eQyLMtvuP/HqWgkC5F
         2yqkKloIWHknnWcnivH1DeH6W1YhfCvNgqiRYY+/Lq4TqrLYo98FyYgSZxBStM9uZBJo
         O/Kg==
X-Gm-Message-State: ANhLgQ334AQmBkHJx+V3msOzhMJ1DGoAlnraucG90wHVCPSUUDTTteJb
	vWYIYAh+GMOLpM2BRW5J7tzkOYt3HH8=
X-Received: by 2002:a05:6512:10c4:: with SMTP id k4mr9112510lfg.98.1584840386103;
        Sat, 21 Mar 2020 18:26:26 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id 133sm6205002ljj.91.2020.03.21.18.26.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2020 18:26:25 -0700 (PDT)
Date: Sun, 22 Mar 2020 04:26:24 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: braces {} are not necessary for single
 statement blocks
Message-ID: <20200322012624.GA5040@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary braces for single statement block

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 8aadb5b..1b957aa 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1332,9 +1332,9 @@ static void hp100_rxfill(struct net_device *dev)
 		   ** Attempt to get a buffer and build a Rx PDL.
 		 */
 		ringptr = lp->rxrtail;
-		if (0 == hp100_build_rx_pdl(ringptr, dev)) {
+		if (0 == hp100_build_rx_pdl(ringptr, dev)) 
 			return;	/* None available, return */
-		}
+		
 
 		/* Hand this PDL over to the card */
 		/* Note: This needs performance page selected! */
-- 
2.7.4


