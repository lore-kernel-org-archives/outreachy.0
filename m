X-GM-THRID: 6805852648712962048
X-Received: by 2002:adf:ef92:: with SMTP id d18mr3011522wro.193.1584611052976;
        Thu, 19 Mar 2020 02:44:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls682536wrq.3.gmail; Thu, 19 Mar
 2020 02:44:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuQU3zRw2AXLcYJ21optk6CXX36RZvXfmUY3Y6uteMVC16NMRnYlxMbWZR/TltFVbfFEZMu
X-Received: by 2002:adf:f54f:: with SMTP id j15mr898021wrp.175.1584611051853;
        Thu, 19 Mar 2020 02:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584611051; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHNuhhhsLgbBv5WjBmFLgarXsnboOAQla2bem5RPElDVPge07SsjpjlDc5eMv9mqAc
         U64IKwVcUZWBz5TzSyaiOuGqlPbYdd78NYIF/4ceKB6VGRYWoaUbChDOXE1dBiVfJq8j
         K1p8gCwnbP1duXf7hlAPQUyY3Cva85ZemunC6u0UWmmHtKUDh1+7lErZASD+3sjAaiXb
         vfUxDXyqdx1wQj1fgn0BiASrBEhR5DAJnMluymzfG+S2NLXmOtMJBvd1DxdVKRgVBSZW
         FDugJ/4s+pfIBZslmxYACgixCPB6WFpmQ/bO4W9/ktAd1ymY2oD+wJU1gzA3f+3VJknE
         ccRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=EkN86jCGf2olOE0Q+0YL+UhqfQLfXXRSbrX23WHB9/E=;
        b=0W10sB946EIFyf7nbCmaHl+OgCz0gr7eh96NsBhyNSqd3Hr8bZRRIot8WRJmGxg/CB
         Kw+t2SzKnBvZIJjsteguPi2M5OzWFEb6tCTX4OFBoCS9Ff6jFZN0SJDThbEOkXXGW43r
         nCXxwcsZ/IWMaAnlUcC2gH/vlbIpnoo5+MmGp+6nKV9MOHRMUeApTbY6/ZTh8/P+m3v4
         JpcpndrpJCCS7wfI4nrJHUQVRfS+WRto93QMALKqJElzUZXo/dHxoZH1Ri+gp7VAgt5v
         XQ02ryhgDoWocztmknGhXSjUUENxBYq/4S/uONHICsVSCrkndBudabAQhhZ2/axTF8GU
         29hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id n7si229612wmc.1.2020.03.19.02.44.11
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:44:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26617 invoked from network); 19 Mar 2020 09:44:10 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:44:10 -0000
Date: Thu, 19 Mar 2020 15:14:04 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
Message-ID: <20200319094358.GA2751@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h b/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
index d479f739ff08..ca5072e11e22 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
+++ b/drivers/staging/rtl8712/rtl871x_mp_phy_regdef.h
@@ -30,7 +30,7 @@
 /*--------------------------Define Parameters-------------------------------*/
 
 /*============================================================
- *       8192S Regsiter offset definition
+ *       8192S Register offset definition
  *============================================================
  *
  *
-- 
2.20.1


