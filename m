X-GM-THRID: 6329748832642924544
X-Received: by 10.129.122.9 with SMTP id v9mr840848ywc.51.1473759494721;
        Tue, 13 Sep 2016 02:38:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.80 with SMTP id p77ls465891itp.4.gmail; Tue, 13 Sep 2016
 02:38:14 -0700 (PDT)
X-Received: by 10.36.95.14 with SMTP id r14mr4015890itb.1.1473759399200;
        Tue, 13 Sep 2016 02:36:39 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si3287427pam.0.2016.09.13.02.36.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 02:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so1046857pfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 02:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s3c9aewcErT+cUdl8o6H4/WA8SVr5u2UUDIMl3DcihE=;
        b=D/UsfmgK4fUJQ7vwJtdE3iY0/bJv0UCfCKnjNY8Ga8qNVg7Xa0yKA7BASykY/PbHtQ
         v4Bv9Zmu98BsLUjiuZdXutfDKWcZFmpi1jM7tAfn2AjLay1DdxryMLdm0ur2UuoIt+HF
         xuCALpV048KBeYqEu38wCoXjujOCXXTmbIpPeD6xK6qHMsDflSIo7G1p6oPmAnHG57FE
         G9KsFzRx/najDhpVkqBJQ8FizGGTCCVCgVypuKWPXMcuQeSow9RHem9YcEAFqUnka0zE
         8cOTJgY7lWCHjbwLBuz1Qa6DPiWGqCtOP8x4s0X26s/nhbdpFPgBIRZREg/bHmZ84kRJ
         tfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s3c9aewcErT+cUdl8o6H4/WA8SVr5u2UUDIMl3DcihE=;
        b=L+AaxY0WXxUUjF7f++xWrfuZdsfcjQWXcSH324+/Kwis0wpQ46EvNBySD3ptcm8vUt
         0ULRZPJHamLg177r8jmbJ2DS4Ps1z1dS3zbgUmEZfhQdCiTlZNVeIHFoYpM0mnS140GB
         PB2h5zMJqweoRTxR99h0liMmcpnDcquXLSERdusJNbuzGB6bBCTiuJ/JvAf1jqvn78/m
         qSd0fNWgrFsdLjFm+PsxgBJbBgTQeT9IKpPO5YWMtY84W8eRJpnoWy73T2P18N8gEWzp
         yvV6jtBHMgIJl4oG7FVjTdco3HXC7zZY8oeqI8G3Sds+Xc2YXXXLoOI5ZdD6i3rinqoC
         GEsA==
X-Gm-Message-State: AE9vXwMjyDmJ38Rk8vwAEfhd2azRwgumqPxJ50inbqeDVrSsx0Y4CcKKcdqu6RUYw0KG+A==
X-Received: by 10.98.90.133 with SMTP id o127mr42164307pfb.61.1473759399034;
        Tue, 13 Sep 2016 02:36:39 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id ci9sm24380829pad.34.2016.09.13.02.36.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 02:36:38 -0700 (PDT)
Date: Tue, 13 Sep 2016 15:06:29 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: media: lirc: lirc_imon.c: Remove multiple blank
 lines
Message-ID: <99d7732c56734f9d6a56f60953094291ec2d9300.1473758274.git.anchalj109@gmail.com>
References: <cover.1473758274.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473758274.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove multiple blank lines
Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/media/lirc/lirc_imon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index a183e68..1da5cc0 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -32,7 +32,6 @@
 #include <media/lirc.h>
 #include <media/lirc_dev.h>
 
-
 #define MOD_AUTHOR	"Venky Raju <dev@venky.ws>"
 #define MOD_DESC	"Driver for SoundGraph iMON MultiMedia IR/Display"
 #define MOD_NAME	"lirc_imon"
-- 
1.9.1


