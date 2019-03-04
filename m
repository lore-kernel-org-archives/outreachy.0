X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:7647:: with SMTP id z68mr10426082itb.27.1551662960639;
        Sun, 03 Mar 2019 17:29:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls4148115itk.1.gmail; Sun, 03 Mar
 2019 17:29:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqwrZIi3Mlr9avCio/P50sV73VokDgg+e/tYujNpN1Gn/G3axqznQjrg4D6XPTYjH5l3uBml
X-Received: by 2002:a24:dd91:: with SMTP id t139mr182999itf.30.1551662959796;
        Sun, 03 Mar 2019 17:29:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551662959; cv=none;
        d=google.com; s=arc-20160816;
        b=I5X4bbfqUFxEmG3l0hEYLUKtu7gK1FT6WEAdc1UVaEs+V849zp5Swdt0Ju5SL2EAUu
         TIdqR6KEmUHUeY+E4P2jh8BM5MZFqOGYpeJcpErjvZVZZpJL+TaDC1wLBoLr5JNHDEdT
         VakC+f/Z8fzbakY2YoLrinvPOAabIHdozShz0Nx/HW6hcbYTrFxcno3qMxq7JgB/bmpx
         MA+fUgOVqkjxYzqcKXrdWkOrZplT5TfXFCWy0LzFxMM8rUxcVhvEiAVwUQocJkY5tW6I
         12J+vzVxZmJIK+tbqRS557iCkGnLTt72fzVzvkB4XfeblZ+lSg1oDj4Qr6ivvI1Dcbk4
         00yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=WePRUpNXfA58W8ZeZwUZrxjBu4h+McoDYFYjHG8JIHoKq7Kqu4co6AxJCVSCZtstGk
         ixgCBhWELoW0TAAZ5HxawT6eNCJwaXqxTADLPiafSZjdasRo8u5RtTRp0SzkRXGOS/Dl
         vLfQWHNj9IUzbWLZZUJEqUSIZSd+RlPentBQyrEBM99Uy78bfsfiKt/eJ4KF3RIVjJH/
         qJj7dLBO4ANE6LMYGYSZbRd57tLFY52SK6wbagW5VwTLhOAMrApRRI4HUP9lTepsVq0K
         5mCOcrD2tJ+ElVCQbjMWrmddN1dniAmWbro6eTV8TWAWlTK1kzAF0H153n7AkFGoJkC5
         C3Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+aJtZ9I;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id d127si269919iof.1.2019.03.03.17.29.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 17:29:19 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+aJtZ9I;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id q81so2590223oic.5
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 17:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=r+aJtZ9IQwJQexPGIVSKWYoeBxFgP1vXKbni9xAIpRDdCmij7j3piX0Nw5/0c+PziQ
         mvkDpDAkMSH98CO7SPfn9ASjfT7Qt+qSsGaq2TaZhXKWvohy4kDqkVBe+MZlp8FDWT73
         EdIJOoVBWkjXI9gp27on5+uB+1s9YLMqaoA6pS+Z+Xwd36JXemdwLdO9oISK79zdDdgD
         9Tz7q8D4WPcspUsPXAYpgo9tBt2wgGii9OYG1rRP3hKXHERraNgOk31tYyU96TIhEQYM
         6RL6Dj1CUn5XVNyzBkMmpNXSZGQIV5GrwhhdGbu+vRjHWWwOl2/MnvGJ6EOF2Iz+XJaG
         y/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kNYHfViUQROGvmIXz1c9a51GTRVhWCDwH77yMBdt3EE=;
        b=WSYs4ivPOCMEB/VgDKQjhJ0i4Z9e5HLPwNkW48iZCtHZDx8rcTY6lj8XiPtrAAkCCU
         KgnZWehJ80hc4D3QVatZA+6VsFQYVgvYG16HmsBbZW98JSFLbaBEKycK7Y782KfexO1K
         OeizeIjx7n0EU+XV5drzscM3sERZjAuk6f6xW2MBbX1Vlx4x68l4XLdw1Yzn719t5QDD
         gD0AeMTI9CmmTXQnivIslUphIOr//UJ3jwEvt8PtRGMvLx5zUbSxd5pKrK//5heE4I3a
         lTVTAwoshtib6ZroB5wpvNSDkRhuDUog1IzIqoOZPLjichlsSqBaobOngvJlBMdK4XQy
         Xtrg==
X-Gm-Message-State: APjAAAXouNQqjsVib81kT14eLaPUKqu/+G+1Q3TTX+Cp0LA1NDlGz9GW
	bBolrAlcIDZrZRD2np9Kvws=
X-Received: by 2002:aca:fccd:: with SMTP id a196mr10721175oii.108.1551662959235;
        Sun, 03 Mar 2019 17:29:19 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w18sm1936036otp.70.2019.03.03.17.29.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 17:29:18 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix line over 80 characters
Date: Sun,  3 Mar 2019 19:29:14 -0600
Message-Id: <20190304012914.17346-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the warning by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 6bbbbe1314d5..490cecf8fb9d 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -62,6 +62,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
 		    u64 qwBSSTimestamp);
-bool CARDbSetBeaconPeriod(struct vnt_private *priv, unsigned short wBeaconInterval);
+bool CARDbSetBeaconPeriod(struct vnt_private *priv,
+			  unsigned short wBeaconInterval);
 
 #endif /* __CARD_H__ */
-- 
2.17.1


