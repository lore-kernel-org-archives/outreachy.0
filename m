X-GM-THRID: 6263799376328523776
X-Received: by 10.66.119.197 with SMTP id kw5mr16168997pab.15.1458404440951;
        Sat, 19 Mar 2016 09:20:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.42 with SMTP id o10ls4565iga.40.canary; Sat, 19 Mar 2016
 09:20:40 -0700 (PDT)
X-Received: by 10.66.220.67 with SMTP id pu3mr16161568pac.19.1458404440529;
        Sat, 19 Mar 2016 09:20:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y20si2894302pfa.2.2016.03.19.09.20.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so22508116pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fDGDKRll2h32zHmBRnAgPiAieorpj6pXvCjkMJ8ENNY=;
        b=H3B2BeoNteEaQBCniV1Ap64rBQshAqny9AqTwjnsGfZSUD10G9hdJ6hoZuXF5ZNFps
         dcCRqHfSLlOGDRsquC0TtV/tCADZW7m6GKflTdH13kIAvmgNns/Zz5jHpELG29E3mz5m
         TghHXhE/u/o9vrb2TfOz3tbB4tc5tqL1FXAICD3073WlKGoJw6LRFzIXEhaGWknAJuXh
         9ummwK1ufGixV89rWUpMq8z1j651lb3QGlDv2aak0Hy4wfktlOt4r/fBd8DkxBFUo3z8
         Z2lPmrDNraqs5Pa22zfPgbtFWXwykaRSnw9Kbz5D7rPvuykJOsxPpohqISeTI0aBCOJL
         uP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fDGDKRll2h32zHmBRnAgPiAieorpj6pXvCjkMJ8ENNY=;
        b=e2UJi3tTBY6QiTderW2TvhdI96vpb7waDSM52zieBLvm7aSKTbpYK32vzs05My7KAl
         VPsfpS3wThaAl1GMC+Zpc4GZ+ejjePCcmYCA8Mp/fPJlLHVyVBrDsB9blfwkGmqNjcl+
         vY5s1DqfrQd/KxLegnE/UvnIYE3rVe70T9oLqn92rAz1NPICuan+SGLig9flP2R73DJR
         cU3YQn7sn0T+QI8pEi8sqY0bh8fy8QU5cJaDxgL5PexnwDTdQgVYluNsTqgyyJAFMO8h
         R9xK1BH34rjIwmb7cto6H09lcdXa/ZTFRO5Wo2n8G0yTi+j86FDgdbzb1Mc7QMtx/e/v
         3ORw==
X-Gm-Message-State: AD7BkJKQf3iXiFmp9Z5vpkEf4o3gywwhvoIwZicirNk0gAsyodgs1yODhzbIIuq7/4aatw==
X-Received: by 10.98.74.6 with SMTP id x6mr32254963pfa.80.1458404440367;
        Sat, 19 Mar 2016 09:20:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id kw10sm29101771pab.0.2016.03.19.09.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:20:39 -0700 (PDT)
Date: Sat, 19 Mar 2016 14:51:48 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: rtl8188eu: rtl8188e_rxdesc: Use !x instead of x
 == NULL.
Message-ID: <b745b397de71c4bc8c966dcc4ce77fd19e5d5457.1458376695.git.bankarsandhya512@gmail.com>
References: <cover.1458376695.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458376695.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 53cf3ba..c7e48f1 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -45,7 +45,7 @@ static void process_link_qual(struct adapter *padapter,
 	struct rx_pkt_attrib *pattrib;
 	struct signal_stat *signal_stat;
 
-	if (prframe == NULL || padapter == NULL)
+	if (!prframe || !padapter)
 		return;
 
 	pattrib = &prframe->attrib;
-- 
1.8.3.4


