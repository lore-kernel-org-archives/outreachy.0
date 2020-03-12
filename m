X-GM-THRID: 6803435195586314240
X-Received: by 2002:a05:6808:8e6:: with SMTP id d6mr4267564oic.164.1584048292406;
        Thu, 12 Mar 2020 14:24:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls1262730otg.9.gmail; Thu, 12 Mar
 2020 14:24:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuNXYZnWIHJwhjhl9zkHOC1uNj1MsWkFJ4z0nLRRRxZK2Q61xogWCjl+W9g3wzf/WqGxNf7
X-Received: by 2002:a9d:7cd4:: with SMTP id r20mr8162675otn.148.1584048291377;
        Thu, 12 Mar 2020 14:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584048291; cv=none;
        d=google.com; s=arc-20160816;
        b=AZ7r0rTw1NBscY469ZADuDPb4hX2Mri5H/BbQuxIzXDSIYRHHduReUmEWVobGY1fo0
         2PG18HD9X4Ed569K8/mbOl3PgjTlM+FL0cCMJK40hbNThtBOM1+2kMGHWx+getmFR0t5
         GkSH6rmVJiLBbBycoenPFOxK5iotKd4rPBREdeN2JIZrqNPaQ2krhjdbMhLPEdZvdf/v
         eJCYE5UptpVDz5CuRfNCn33EgFUr2wixLWFfVvnoTFBCW4HkyFsdoCFCmHXzxoDIdgFN
         bXV0hGB6FkPhIzSSUnBwt+8INRYlsK0emzClp1xfhDI5a662eC8JgETB8IQobSDuEBh/
         B3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=XVItljm6Xr/oUO5hT886lKEtNfSC5o6dzcRoyQOCMGrrTML9T7x69GlhwEC8xYOJXw
         /2baKGPinvshJ7avyuCvhJPUQbnK4lAUaVvKUzvq5xlR2dZdY75QWHG4AJ45Fngj4K4M
         td70mRWWSc1Rub6Ma9kExA+B03eERkJ66D1XvqAWKYu7lM0y3NDrTz5v6TNQGcULI54X
         pmA+K/hJzp+tKr674I/KltIRs5SbmE1H9M2xpQNobUnf/feQRK/T3GByDvPtvEHWlgp3
         Mc0PXp7OVBHWaDTKlXrGIvJWZWzJzadIrRDlYpoYlclcANzZ9Mmguj720eyQzLk9pHef
         1eWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HFltpnaH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d11si444686otk.5.2020.03.12.14.24.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 14:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HFltpnaH;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n7so3910326pfn.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 14:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=HFltpnaHNUySqmGC0Antrp+ZtBIfX0U+zwBf3zLOzJys7KU51MrBTSh3rjAPvCEdkp
         Gu5imzdFROceiWB0QzSTr609C6e4aEH8Jsi7tgNcLrotM1qruJmC3e39gq9emxd4tjVC
         0DcPrJgLia9EqYtnknoP0RLtOVaGq1vjhTwbV0RXquFH0EZm6K4HJJCpHNb6WD0JAae8
         k7euB542PcKnMTXNfGctOKYntEHuuki1w0C7Fh90xiXi53BoQtm9hNPnJGf4sAei2HEj
         x5k/4qMnUyCOY3dqFtYHC1DD8FM4yutEDg7XcVi5EWQaOc/LxSJg0H2JMphxB17UuArp
         fFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PPB1IEeW83YJGF0pLDYUOY9gNlRAKZ8kIspqcILuL2o=;
        b=kS2L39WYz01klip5B8NeeyorBavUY/UcSVpaP7WVD90eyYY5ITNEtdwdwKeZfRDWkV
         LH/aZG+oUQuy5h0m01EN4Pi1Ncwv3tIvaoU68KzBj8odDxOikyMygZx3d2zhxnGwMdlr
         vM+VYsnCll6zL8tsAmxBK91PzXC+le/vop+lfTg+4sWaw8xAvNsUHmEDDAP8IfHJfwuU
         3A8/s9o+Ug8r/jwO1NtX40IC2Dz75VQ7xc5Jg1n9uT6wBZm81fF4HEUudIbtyxLPZ0Sb
         I/bIMb+46xHB+ei/+SXgsFDav5FkRIF5Sk3bH030Z9Pm+W9YyTr2yylUY5AoG3OnWgt3
         f00w==
X-Gm-Message-State: ANhLgQ3adBemINAdYdjkrUjxmGHn0hia4kt6DVwcNXWLOACRpt0DMpcX
	zYBBUBi+01vmU93JXOmZJ46zeo1x
X-Received: by 2002:a63:cc10:: with SMTP id x16mr9226467pgf.81.1584048290485;
        Thu, 12 Mar 2020 14:24:50 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.39.128.28])
        by smtp.gmail.com with ESMTPSA id x12sm45294089pfi.122.2020.03.12.14.24.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 14:24:50 -0700 (PDT)
Date: Fri, 13 Mar 2020 02:54:46 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com
Subject: [PATCH 2/4] staging: fbtft: Reformat long macro definitions
Message-ID: <46aa3337412b3d6c43702c66600a90e9366b2896.1584045569.git.mh12gx2825@gmail.com>
References: <cover.1584045569.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584045569.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Multiple macro definitions crossings 80 character line length nakes it
hard to understand. Reformating the these lines makes the code more
readable and easy to understand. Issue flagged by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 5f782da51959..81da30f4062e 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -348,9 +348,17 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS        \
+				       | DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY   \
+				       | DEBUG_BLANK | DEBUG_REQUEST_GPIOS  \
+				       | DEBUG_FREE_GPIOS                   \
+				       | DEBUG_VERIFY_GPIOS                 \
+				       | DEBUG_BACKLIGHT | DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE     \
+				       | DEBUG_FB_FILLRECT                  \
+				       | DEBUG_FB_COPYAREA                  \
+				       | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
-- 
2.17.1


