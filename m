X-GM-THRID: 6744681878871080960
X-Received: by 2002:a25:cd09:: with SMTP id d9mr8919335ybf.519.1570403014381;
        Sun, 06 Oct 2019 16:03:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:68cd:: with SMTP id d196ls2033223ybc.13.gmail; Sun, 06
 Oct 2019 16:03:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlLjmQtqJ/dlJyX2Vw3hgjrkwzG9siJZwCOjKkP1xgDUpIZ1bUmn3q8y7ZjorEyEl4WrEM
X-Received: by 2002:a25:9091:: with SMTP id t17mr9670652ybl.352.1570403013108;
        Sun, 06 Oct 2019 16:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570403013; cv=none;
        d=google.com; s=arc-20160816;
        b=WUe69trcTw7GY+cHbOzuBLBCxgrpBarZbdVQD2fEwXhEOj8mCK4vsJTxXg9jXXSmMW
         O/UmZx3gbfQlylpObhS0GUcEG0/bpTxdcyxvhJ6VmX1E/qDkNj3tTpF3EgG8o23aRyrr
         +GMeDXEMWXl2Py722w7SFVffLow/ZdZfHfC7+28u9q488EXww2n3nrL4ljfuoII4lp/G
         MXFMkR2j6Yo9xPk9BSv4viDM6OZ0DlEDAg31NXkfqXtBxu1zNZcB40NmzKrvk87d6Qmt
         1wuJGZn+pp4fP4Puru7H5GqPnlF97TrxcP7uqxWel5JiFrEDJyL/sIbZRQikX+YJ7rOB
         fueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oOmzQE1lbLqxTbMNLKSaAOF4Z4q7Td/JII4gAgs144E=;
        b=MpfV0bVAcLnFcs1oMxOrtK3fHl9GuwbPgX8QwTMpZvLyuUuaSjHuu0rs2I4da16TlA
         rzuKoVQUxqHerhFM8jTZMv90hPYcq3WaIJnN0QUtzuC5eBq0QOZ3M2SWPStniYynvGSg
         S2Gi6vYWeTImrbe4XyGyY94S5W7hLrNGHt7LCipuZBuR+GaUaB9oQmBgoruQmJMK9+Gg
         +Yz+AcayzvmnfETHOHWSQ2+lwcOKGCk4Yo6EU3BKPQ2RkdkE8wN/1hm1EELaYrIziE08
         ZoEt83O/XEbwNwstVkmfCLPlIcNw6gufo+7ZYYPvzHNVzqZTpeGTGWokdHEFCQNDjCVo
         Nxtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TrYXSHl/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id p140si792135ywg.4.2019.10.06.16.03.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 16:03:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TrYXSHl/";
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x944.google.com with SMTP id q11so3508926uao.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 16:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=oOmzQE1lbLqxTbMNLKSaAOF4Z4q7Td/JII4gAgs144E=;
        b=TrYXSHl/HRm7hlMw1T5wTm6gu4lxexFiY8g5nXV1w6OGxJSrqd8QDZUvTrqUK3cAcK
         JNgn1gI84meggT2Lz6MUytjwJAcqBu4eTAR4k4JzrKQPbG3uTUvdwt4ggjVgtrxMSqkY
         xoPN9H1qs2B+poggLbGgrabFiXIR0HGBmPSMwaOqDw7ctMfryEhGzuWzXfYhPRgsxJIG
         WVbhURxCcPotEUJ0DN1naHW69hHIb3ZckqWwlj8m5bA02Pw9p41Miv0dPjazGc87sXIa
         e6G08cYUglFqATzqnMEp+uilA+djKktt2ajw2D2xXHyIjI7JDDr81D+30JrOsqCog6/B
         LepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oOmzQE1lbLqxTbMNLKSaAOF4Z4q7Td/JII4gAgs144E=;
        b=j8udo9Qk3vW97nKC8r35OmFF3KKWi5XifyAOFaHiLK1VqcJ5LlqixqEbYy1YAr8T6q
         GQxG5GgRm9ZfQ3IhswXDXaSGYSNpLtulb5g6JSNzQCE9Mih1yqrXAUmgEqTOgElb6+Gq
         p2gtblx8U05phEhUVSPU3EFKyvJtm54nHZRcxGxOp8EshvvUoUl1E3dcMXvBsekbKfHC
         fSVr5jhuDQtMlcAvZR2bUT9UcOmpYkcqRrXw6TOAAPtJF4DaLSO/696XkMIxvTxhxfD8
         QdfXfW3aSyVEt/rPxcv7lWyzfy27R5EVM99a2VBS5c4JGA7F5/0dBvdgoJ2Qn1F5CFxs
         P3KA==
X-Gm-Message-State: APjAAAU4GIFiKcTTPAtahrKscVdS1Hcnfwt3F7qeuBVB5LQkJYCclMBM
	7oQWkWkKwNRzTySFAHClHqPYdnMVRRE2AQ==
X-Received: by 2002:ab0:6355:: with SMTP id f21mr13457072uap.40.1570403012751;
        Sun, 06 Oct 2019 16:03:32 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id v188sm3612920vka.34.2019.10.06.16.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 16:03:32 -0700 (PDT)
Date: Sun, 6 Oct 2019 18:03:30 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove unnecessary braces
Message-ID: <20191006230327.GA4168@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove braces that are not necessary for any arm of this statement.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 3956c43a6468..bda25e13e935 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -3063,9 +3063,8 @@ void rtw_ack_tx_done(struct xmit_priv *pxmitpriv, int status)
 {
 	struct submit_ctx *pack_tx_ops = &pxmitpriv->ack_tx_ops;
 
-	if (pxmitpriv->ack_tx) {
+	if (pxmitpriv->ack_tx)
 		rtw_sctx_done_err(&pack_tx_ops, status);
-	} else {
+	else
 		DBG_871X("%s ack_tx not set\n", __func__);
-	}
 }
-- 
2.20.1


