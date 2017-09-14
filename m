X-GM-THRID: 6465611589668044800
X-Received: by 10.107.201.146 with SMTP id z140mr1719911iof.128.1505421948895;
        Thu, 14 Sep 2017 13:45:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.84 with SMTP id m81ls5602112iod.44.gmail; Thu, 14 Sep
 2017 13:45:48 -0700 (PDT)
X-Received: by 10.55.209.202 with SMTP id o71mr12099898qkl.2.1505421948154;
        Thu, 14 Sep 2017 13:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505421947; cv=none;
        d=google.com; s=arc-20160816;
        b=is3KFxGaKSbngB4TUPhlpSPKRCDrCaLNVa+nQPbBw9st/F+wFN8mFMsxQXOTdZkSGP
         WetpuZ27IASI7Ihnjyhj1xtl4oDVj7oX88gsQc2J+e5eaa5GF8sex2xxUVPUblzvxMM0
         Mac9bEE+j9SCmrD8B3Zrk6LG6MrkcMkVNIm3MAfDXF2M5G0OruBRSud7CL/6oYA1LKJ9
         VYdpjlc7IfhbFbo9sZJVk13q/rRqIFQOk0U1/5xOxP9AyLN0ggGZFIM4V++6rm12jD+b
         uUeCuZTyrChkykhU1+Xaoz7VGQh+lIETgmnkWVdw4caDvYKCyJDKLYyf4M5SrVIxpO6Q
         KEgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=XZu56t4HELczWZAg9MykOfuYS6ShtjThtxPpSTSeMps=;
        b=DkhF6VgYsqeklOPLUGfe5tmQs7a0mmdf2jJlbK93sb/iLJTlFQjFpC32aH8t0zhW84
         HUB/DJX1sdVHY9H0xRHdUpPpLwYpBR3gi9DEETUGbb8VKiV10f6cgTSB67/BGCNpaauk
         E9djl11oBI7m8ClXaGH5+CLNnrt39co7gIhyM8J4MzlbJ3msz1RPEsTSj8HDuRKGPJzX
         JmzZMT+jljpPiIAXX46ZSOpgxnYWPfZwNbssoSYYZO+ypp41UmFq2Z8v+/jCod43lE4V
         sAfwZf4NiOzG0jod47/ZiuW3D+nZ83HzWnvmRDpAXK1QXokKkevsIsVYeyp7rNwQYD06
         n/cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k5KHU+Jx;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q65si1777571pfj.8.2017.09.14.13.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 13:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k5KHU+Jx;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i23so220746pfi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 13:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XZu56t4HELczWZAg9MykOfuYS6ShtjThtxPpSTSeMps=;
        b=k5KHU+Jxp/eDDHiFV3KS4BWhuPBgWQnErDNlytI2zAI5fi6tgGbZ+kzuGP6RqcFjGX
         VziiKZ9Yp6ynjeIq9H/hcss8OzYdDmynsiIxBNL2k/fWM3cz1SSGuQXm/zACGWJI1Nnt
         AmaJcqj274wDYTXxRvY/2t2v8K8IkK1OZ3Ggljy7D0zTQc/pKUslxWxe6eULRPEg90F5
         rpV7KLtbNTsgdVXi5FanTiVLr1jqTgmsBa0I5EAnn4E+u3vTM9EkKU2l80TRHrf1gfKY
         eBK6O57O4Ru22Gysp17cvffPEBPalLU6/3ZjriNDgBQ0XRF79q5a6JWXPq6vX0u22sZf
         1/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XZu56t4HELczWZAg9MykOfuYS6ShtjThtxPpSTSeMps=;
        b=nzW8luk/Q4GaegYBtatqE3OEGT88x+tCHosv/mrRPJRNDJsoASXctPjGkhPtVeqj6E
         skrYnfopqH7AvyfRktSNR/zuF4VGjcUt0KCuMa6QZct5OfzYr7+fZ1GiZ4enZRIJc9Xu
         w5TTM7hP/LgDvOYmEPJxxUte8Zd5psQiNUvBQmZZRX8B1tKIWGvIgMNjkquQ8LEZsWux
         OeMsKihK3VYPqoSRj4fWdI+x2DnWzmtb8zoDdzdwnkH2QIGVB2wGelVQ4LaU1d5Lpyqt
         W1tZsD1SOAEss4W+QbswcjrerPCwE9yy77w4zCp0oPKGJB8FFQAaD5yxe+lxQfn8Apes
         nyMg==
X-Gm-Message-State: AHPjjUhyjyCOUhK7k+/Uxb+3aIcEoyNa07sZm48QQM3xHh8a80lHSd9D
	uiKLEYsVEVeulg==
X-Google-Smtp-Source: AOwi7QBjG6ZW4yiOijf/paDyT4JNxBNJ2NcQ9Hjeuycb9gUUaJkOM1Xf9uaHQOyvXUStL92E6lN5VA==
X-Received: by 10.84.245.134 with SMTP id j6mr4606466pll.283.1505421947216;
        Thu, 14 Sep 2017 13:45:47 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id k82sm21906448pfj.66.2017.09.14.13.45.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 13:45:46 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 0/2] staging: lustre: fix macro definitions
Date: Fri, 15 Sep 2017 02:15:32 +0530
Message-Id: <cover.1505421269.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <alpine.DEB.2.20.1709142137000.2650@hadrien>
References: <alpine.DEB.2.20.1709142137000.2650@hadrien>

This patch:
1. fixes the checkpatch.pl macro warnings.
2. removes macros with no uses

---------------------------------------------------------------------


Aastha Gupta (2):
  staging: lustre: fix macro definitions warnings
  staging: lustre: drop macro that has no uses

 drivers/staging/lustre/lustre/include/lu_object.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
2.7.4


