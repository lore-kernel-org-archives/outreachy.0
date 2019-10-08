X-GM-THRID: 6744825053591896064
X-Received: by 2002:a92:7ecf:: with SMTP id q76mr33885616ill.134.1570503147600;
        Mon, 07 Oct 2019 19:52:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8707:: with SMTP id m7ls483125ild.2.gmail; Mon, 07 Oct
 2019 19:52:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz8q6APoIzMEXeTPP1ZVNz6EdJ4ixkz8e7FY32eOTNi3hFAT70biRUpj6Qa/viiHk6kqLn/
X-Received: by 2002:a92:1657:: with SMTP id r84mr31482750ill.5.1570503146383;
        Mon, 07 Oct 2019 19:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570503146; cv=none;
        d=google.com; s=arc-20160816;
        b=NN+HZBbbjq+sRZF86qUbmMH17m0OUUKU21eoMvpqm+KBe8J923lGAVqx/GTKuFGhIU
         xxgdu2da030fBJ0V+2fYe+z55jL7Ewdtva4BZZ4xugasnCSAKJNcSd51tdgX/Bc1E/u7
         Z2Rt4V4TbIoXXBDV7O9CuQ/I9xj1FJ2n5imKOn5vSydfWS1mmmUoDhckWkEzHEnnKFMb
         ZivE36jc6NK8kffvr978eBN22IHYohkZMDmkdnyBEbSxXx4Avtu1bdRDygsDFYyK6aoB
         NyPe59Z56FFNImwbLf8aMwyLtrzh4V/ci11a8Y/Veb3WAHGTy2Cm+3wvanZamSfe0Wet
         +RPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kYT2rG47QZCcKJa3rwWiCuPz6p2FztPXKdMZdY/IP4E=;
        b=fyPktdB/8JdgxbaYFe1DGOXWX8zGerow2ADPuZ4bBZUPsyA6dTsNg10GR9HgI0pAUz
         H9BXuQFkGpJf6IBBT6ue/vDo7uGr5B+OdwT4ZNSxgRvBWwgpgqvUoehH4YbEGaoQdcyZ
         XBez2y4CuU3reAu5wUqjQFrdhFO2Znbc33dP+4JkR02Q0ySNY7WmVjrrxtrJ96AN9YJh
         hWuj3sUzFx2ARtQPQGZtoy1UpItAlJkU+JrUWLb/FjAoVTkf/rwhnI5Ymk8XPtU0+bu1
         Ah/3nje1yNhPIUmKmiAMAQtEwC5nBjVXP9AmZz11jMttOY+rCjbZSdYtkSjP6im5deU3
         IJug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SuIcdZ1W;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id b2si1169756ilf.5.2019.10.07.19.52.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 19:52:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SuIcdZ1W;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe41.google.com with SMTP id v10so10356417vsc.7
        for <outreachy-kernel@googlegroups.com>; Mon, 07 Oct 2019 19:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition:user-agent;
        bh=kYT2rG47QZCcKJa3rwWiCuPz6p2FztPXKdMZdY/IP4E=;
        b=SuIcdZ1Wf4f4Lt6K4ryYEhcJStyOt2TGJ91t8PaWQL6KNDib0zU3H6+Y2w+9RHJ7BA
         3Lx0U2twdO/XOvwuxUQwZcdS2YKXUJ51eCPEx2V8bfqBzQDJGC2JAQC/QvceI5xukcjl
         02CvIYWpslieRNNexzAf6u/8J5GIHBZgw2NZaDRTK8+GeiPxmn+zrzdcKXwg9Wuk3kpz
         9Nst3i/0oPFXQH+4J7qNj2rmm+n4yJmIQrDenFIGGgbr03gX8O3i35IoIziW6ezG83BX
         pcejUUnqal/KiHeKxJeWHZNrVunVeiNW48iCbR8N/EGmUrquvWJLTlkD+eQwIrsUPEJ9
         48Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition:user-agent;
        bh=kYT2rG47QZCcKJa3rwWiCuPz6p2FztPXKdMZdY/IP4E=;
        b=ZigM3sPmLtEZZM50m3ybE+d6Rt21Qy3FT3OmSVeqgWXKjNQgfropQwg1QVEOS0fcex
         ruOM9tsz1OzeepE5eI7c6jTpemNFVUyb62WFmZi7mMyT9/iKUTNIYZLQFdSTklbwArmv
         JvBrEV4EDsI1uMp0QPTBDOYvNqg4C0maIu4VG6/jy+IHCeKyO6KUUfYxEGiyl1jdvl51
         7TLw2vJ7UcZVb7Wzci44RZkZKwdo9FUCR5GY3JjCgWehxwrmJrR1uk2ux53bKmRvQqQ0
         vyLXd3rCS3IOWsfy5PfEhJuq6G1otcwlBk8qvxbbpHTx4SbKIrZ/tp90vtz03icDI6HP
         rwzA==
X-Gm-Message-State: APjAAAWNOshIFX8cClWcq432WtL2bGLHHYVjZmGd8zf9uNwex7b72ohl
	aIp+TR5cEhFevvOIYQFxqIfLmL2zY08taQ==
X-Received: by 2002:a67:d91e:: with SMTP id t30mr17445821vsj.107.1570503145852;
        Mon, 07 Oct 2019 19:52:25 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-190-27-96-102.dynamic.etb.net.co. [190.27.96.102])
        by smtp.gmail.com with ESMTPSA id f22sm3736111vsr.15.2019.10.07.19.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 19:52:25 -0700 (PDT)
Date: Mon, 7 Oct 2019 21:52:23 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: Remove commented code
Message-ID: <20191008025221.q4j4igctqjowur2s@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20180716

Remove commented code for a cleaner file. Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in v2:
  - Reduced the scope of the commit by only removing commented lines.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 49f923f5cf02..349f611d4db2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2690,14 +2690,6 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 
 		pxmitframe->attrib.triggered = 1;
 
-/*
-		spin_unlock_bh(&psta->sleep_q.lock);
-		if (rtw_hal_xmit(padapter, pxmitframe) == true)
-		{
-			rtw_os_xmit_complete(padapter, pxmitframe);
-		}
-		spin_lock_bh(&psta->sleep_q.lock);
-*/
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
 
 
-- 
2.20.1


