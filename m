X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:7008:: with SMTP id y8mr2003839plk.279.1584505581107;
        Tue, 17 Mar 2020 21:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls10455939plx.4.gmail; Tue,
 17 Mar 2020 21:26:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuXq5F703UgqmD0K3F6QwehzmERBHXYEqSl/9qMN129sE+skNV4FX2Damg45ZQsOQn3uTQn
X-Received: by 2002:a17:90a:3ad0:: with SMTP id b74mr2785849pjc.58.1584505579244;
        Tue, 17 Mar 2020 21:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584505579; cv=none;
        d=google.com; s=arc-20160816;
        b=VyWG+SeCOSV3oK7LOqtyy1AVk8E04G8XZOi6QLylrT5O+CzQ/6mbWtHlaI7gR91jID
         kGaQsxlby8+jB81K5t5tDgLY82leycXbbGfLI/da7op9vegWqt5Y3fdwqsm3MQoVelAY
         l2lvK9vYj8PkNbcFNa14Fs+GHewjQ+8FAo4KY4FBVSwO/aTIDhK0krKFDmO4nyBJEqXq
         VrzpqJoNfU5w/hKFyltUl3szh2dtb0XEqxB7mf1HFNTNB2wI9mACxK9HIN0ClwKjY6bx
         7S1O+L/fmfi5cJMVz1fIwO/cCDN5RUJK19jOgLz2mN63M/gwOcxr+GmqR60fRfYefOrp
         G79A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QIWYOHYAGsjWkLX/08hd/R24tHKjTlO86LchXE2jJvs=;
        b=mW1XtPEvjD9+MaP4mXKVfyVF5W1G5YHCo2H+/WIWPigMG1LU2D2NbrhLv4O6NFz8HR
         qs1k+wFjDLC+QTy43/Jaj8Yr64KEyT7yojDLFtF3ZOH1OkraqsO4ipv+cGo5G+I5HPTF
         AdHg2Gs5S0eWvujNS2uRFCoGRSdAnTJcJN6piU45k6qzbsp0YVxmw9c1KZeZJrBTLvGO
         zasIIKOpFEHBXtjMalV7350rw//QxwUxepOJHyU5RrO01rzqPttoFD9X0b2O6K1yRto+
         v2QPJN/A05RvRE7eoBrhiROQnI8BjcXtQmpw/9mLDut419TFTDGkhdpL7lF3HTGSV59G
         Ctaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lw3tPlwq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f29si281550pga.0.2020.03.17.21.26.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 21:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lw3tPlwq;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 7so12959710pgr.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 21:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QIWYOHYAGsjWkLX/08hd/R24tHKjTlO86LchXE2jJvs=;
        b=Lw3tPlwqsHsaM4Iu9nYmzh+7acCIKGkcSNwJUD9rMocorEQZ/JNYVqaeb8lpRQG1l8
         16VI0lIUA/dNIbsayo/BZDmKXR0S/Ae5hTvOZg5dVNdRZj5e4j3hQqywbNooMvyUg+Qq
         ozSlrqii9o6bh5sWNQuDOOAcvE5todOFUGtYC7EzfZ2rxxCXH1AULSjcDbgvm8/MGPLe
         aGoEgNGYA0/DyDiPfTtiO52/SGKYq6DPrTsxe0J9iMc+ZRJDsn7Xv+ft444/gK68Ol4v
         JuKPbd/cF4hl2VhyapJUx6iMMkUg4dgAC5oZdmH2DazNCJNL06/g0aEcwU+YqjHNViHB
         wrgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QIWYOHYAGsjWkLX/08hd/R24tHKjTlO86LchXE2jJvs=;
        b=B3vqk/lOGAV9P0wWmkUiudrQuEbLD29XY9do1Qcohgv6Z66VX45oupeMwt0FGoxAh1
         RQl5T7l0yi3PFfaWStHiebW1fXNoAB+T0Rcpr2yVGgDI0DALgTUrRWle674xhftCyoe0
         FBXhJ3oCLQ4usrogDO2r2g6UgJfskQansUwb7f51kN535jDAbEHVUrBQeegxmaj1PuWO
         q4rUVcaVQQDgCPFWe4t85RWp+ItQ21lpvqxkd3muhw5n8BSrf3zVD7iH/k+fVs+gVoZ9
         VYSeaMX5NOfBElewTRLa1pJf+Dw60WJWYu1UCW8xk1PWrCTV7dKPdVHNqlZNq5nN2O6t
         9f4A==
X-Gm-Message-State: ANhLgQ303iFbPX80WRmGi65iX4f30jsENF/hH3rN4ay2E7DOJcki3t7Y
	pBhwu2SYDOaOSOhWucZowkgjmtj7
X-Received: by 2002:a63:5561:: with SMTP id f33mr2658208pgm.20.1584505578752;
        Tue, 17 Mar 2020 21:26:18 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id 71sm4784024pfv.8.2020.03.17.21.26.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 21:26:18 -0700 (PDT)
Date: Wed, 18 Mar 2020 09:56:12 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 0/2] staging: iio: adc: General code reformatting / cleanup
 patchset
Message-ID: <cover.1584505215.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Address code formatting warnings and check messages flagged by
checkpatch script. Changes intended to improve readability of code.


Deepak R Varma (2):
  staging: iio: adc: ad7192: Reformat lines crossing 80 columns
  staging: iio: adc: ad7280a: Add spaces around operators

 drivers/staging/iio/adc/ad7192.c  | 15 ++++++++-------
 drivers/staging/iio/adc/ad7280a.c |  4 ++--
 2 files changed, 10 insertions(+), 9 deletions(-)

-- 
2.17.1


