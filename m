X-GM-THRID: 6950149887170183168
X-Received: by 2002:a02:cf16:: with SMTP id q22mr15017238jar.32.1618207871774;
        Sun, 11 Apr 2021 23:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls3520956ilo.11.gmail; Sun, 11 Apr
 2021 23:11:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyFxDePIdyMa0FVnVRL6sJCUysiNIbwslSd+9gUrAxkDepe6kOsDurfZVZH/L9Ffo430pMt
X-Received: by 2002:a05:6e02:1584:: with SMTP id m4mr22250112ilu.108.1618207871002;
        Sun, 11 Apr 2021 23:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618207870; cv=none;
        d=google.com; s=arc-20160816;
        b=iMZ/zUvDG98KQmSvqvb/1p/elQ1zUvWAYLv2PnD257O1zVg8zjWU9VGpSvECjf7LWS
         5jDVFdmuUEVtD2ddMfdWOr27R59qlgXjfDPyLt9MrqNDqmCa4ZQluJo1zzHTQYnoSnVF
         YR664i8MNjV7oMLCzWHKhMVFszf3MYpfT28Y4MmhkE8U5ZFTaoSdmB3dC9Gbht1pVAFO
         mhfL2dZ0osumJpJlm31iBBwTJhbhFyNWzJ1XMyMJRxtVkVtTRxJ60YwpbffwjvwjMknG
         U/0MrNkY4lW06jrFI/k5mJO9s93Xh36k196D731ez+P/gzkNmmarnIYIhjpw5RbF7eYL
         bW+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=IYqQaJDmst//9bdnYVVyaSBsB447C8sYHCRi8q6qoSo=;
        b=Zgks8P8j0svnFt19b1hEVMzClTHaNKhjfS7RO/7prbHNuqwjzc9AEI8NNeaa5pkjsA
         gsJUwbEYRH1/orS7nvnV9I0lYnhxQIVrDH2zyrfuN2mf2EU3YWuwUIaLYoOXI9BviFAs
         j483YdPATywpcl0IGM03ER40Y6LFftcWYpp8va8kh8S/Gzo94BB71gxPMhLETBQ2rOdZ
         ENb7xqu1Gh/wriUsCY8QX2vQ4iDU9gHG2ANESSNjBSuv2Ovwy/7yNH8X1PqhLg5x7DBa
         Boz/NOUzdIEzra15F6mcTmoVtqvE6kZdntWpmvBGLoY8PLiyZw3wnByPy/GFNMlhEbXQ
         b7Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W12j8BWH;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id y8si668026iom.1.2021.04.11.23.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 23:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W12j8BWH;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id p67so3569148pfp.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 23:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=IYqQaJDmst//9bdnYVVyaSBsB447C8sYHCRi8q6qoSo=;
        b=W12j8BWHXgpL0vM/RczGUl98h72QC2rDYB2oFoqBObmeShy6F1t2KdJpuh1rkZaLTy
         T9vj6Rq3gKnLGfRtO1SReFA0QoPC6S011LhsgckVjgM2KZ+XHlYTh0TeIy6HIJdBk9e3
         dpc/x5nRU/MOkMPrsuOhfTtauaMDrVIIWBfyi0qWDRURsoHkJZgz0wzxmQb0/6uaHSQh
         VJk7bz3qrMJCb6Yaclo7nbOJ2A7BiXPBmFPIFgDCHpgdYxk3o4XtgiHoxQ/ZiccKGflA
         cExbgrWVLC3ukRoK4VFVKAll+jDa+FVRz9I/JCaw4LCr8ep7Mlm/xoVPP0b0LThdz1X+
         sQuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=IYqQaJDmst//9bdnYVVyaSBsB447C8sYHCRi8q6qoSo=;
        b=Iwk56MRX7DeiHzfnkuZGq1qRbzbu1BMpr3K+xu5HiUqKDkqtNRgksqPMSKOvOdRZeG
         dByBKi61IvGgRMqj2QBw0GRMiRRFQXEpEZDNN3038x3jY9b6MjmrzDOvAcywotflujKf
         SMlTP1FMvj3/voKcf2pfe26g4NrJnrd7fhJAy3Bi+Y7YBo6hE2kQZuThvFpgo7LB9GZ+
         nNCOQg17/rPtrTkPHo00/Hgk3etiVx6VeW+ppjpcFvu+6XKDI6tyxlyBr93OkMuwlH7q
         cgucf7MpQFTyGOJxX8EcVf7kRHDbZ+5xXh2GC6vQmz7Ge/9tx60mp+ILa7yFh1jGULT5
         bkwg==
X-Gm-Message-State: AOAM530GMVCr0N+cIEW4PvqgeWGPkKV/aTsQXj022yo4aBov7MeWypza
	FLTLFxsh9Oqro8RI6g/ARCk=
X-Received: by 2002:a63:3dc7:: with SMTP id k190mr26403045pga.181.1618207870533;
        Sun, 11 Apr 2021 23:11:10 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id a25sm4251251pfo.27.2021.04.11.23.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 23:11:10 -0700 (PDT)
Date: Mon, 12 Apr 2021 11:40:53 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: rtl8188eu: replaced msleep() by usleep_range()
Message-ID: <YHPkbTPPra2isn5e@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fixed the warning:-msleep < 20ms can sleep for up to 20ms by replacing
msleep(unsigned long msecs) by usleep_range(unsigned long min, unsigned long max)
in usecs as msleep(1ms~20ms) can sleep for upto 20 ms.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 50d3c3631be0..6afbb5bf8118 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5396,7 +5396,7 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 			return H2C_SUCCESS;
 
 		if ((pstapriv->tim_bitmap & BIT(0)) && (psta_bmc->sleepq_len > 0)) {
-			msleep(10);/*  10ms, ATIM(HIQ) Windows */
+			usleep_range(10000 , 20000);/*  10ms, ATIM(HIQ) Windows */
 			spin_lock_bh(&psta_bmc->sleep_q.lock);
 
 			xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
-- 
2.30.2


