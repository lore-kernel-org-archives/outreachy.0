X-GM-THRID: 6947041729185841152
X-Received: by 2002:ad4:5629:: with SMTP id cb9mr18305370qvb.62.1617484197824;
        Sat, 03 Apr 2021 14:09:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b752:: with SMTP id q18ls3257519qve.8.gmail; Sat, 03 Apr
 2021 14:09:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvaHF0L+sEtBDlK7dseKg9Tu2MdLFgmM26aoL319yKxwfVU0Xs1sAGuTYprqMY0y8plZpv
X-Received: by 2002:a0c:fecd:: with SMTP id z13mr18097790qvs.43.1617484197097;
        Sat, 03 Apr 2021 14:09:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617484197; cv=none;
        d=google.com; s=arc-20160816;
        b=pXfZLHIlrDCH7ZSoQo4Su5jNFakGU8rOpJtlzzbNEeo+FQMu9SqgwW2wVYrkuwT60E
         XSyU1ETRNkHmUFnpZfE84qk+oEKmJcovDLZnt+tnzx4n3sVNOEJGlQ1FAvk6O6bb0Hz1
         oDofPLB/5a+rGSMJHom5JnBH29kaQp6XHcbqn04HJT6cGUUGM1eypqM8azFnzetWcY0x
         Z/CEmrxay/6J59RGO1OA7Fm5IpNBKETZdskgWet0fYt4Jof/EqUaAPw8wY7QEcmXRhKj
         7FSUizZ5SgyGu8bGY7CY8Qm/eUT3p4egvV/jWeE6NTrsbOJiCmcG0Z1zXSl2dtfHH3oe
         gP0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=IWVLq4cGetylmYeeCZo39PJuYByM8tFivG4dPSxGTKE=;
        b=IawDnxSvyCmHXq2CcUfIfXvdlDr9khVipnn8NNvDX+716IrcbTBJl2ExelRl2aR7Ld
         ARm2D+XGXQVsmuo/RcWbnkB6At6yPLFuh3rDZiJWNnlDQFo5296TvpHpQrcfPrZLuVTO
         hZ9NOvxodhfY9Hs4FY1jMFn/VHCnnLnlSg+rxnAFUMqKxmdFCbXyJQ5v2GvfaQZyknKb
         NKYMvDORw76qjc86eAJ7+78DP483OiF0tyeBwv43uBZVv7mEaaNUlgIEYbDGanRPdkTo
         AmwyfyCLAJBvYDBrF1PGaA1Y8VkMNcmySwsEl8ilot+b8TusrbBDPyIKrDYDR5VeoBPq
         6sQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VDI1CPOg;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b201si916679qkg.6.2021.04.03.14.09.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 14:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VDI1CPOg;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id v8so3956390plz.10
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 14:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IWVLq4cGetylmYeeCZo39PJuYByM8tFivG4dPSxGTKE=;
        b=VDI1CPOgECenibvItdnb1mxjiv9HsuQPF7RJ6a8Fvkj46Ud3O9wVXJaHiGN7pJAHfb
         zrIPl0YqF85Xo4OJdQEM3RI/+IMHlSyLlpKu7HiORc9jATk1TsqaPrNrT6GCO7IkA8Ie
         J4aYwyqhaK9ztY+k3J35iyfizTJLYQJCettOhK3jOTmBlyYlvRPIfEXBVdnP/4YClsbQ
         PLVklhuYJpfgc/sYlrZq3sm5z6XEUlgo2WDwfcX169H/J9lnfGYvIVaJJSsFiFEODldU
         iYoMNwjZO6WwtaZjVRpkdTP7FyTzvLc4YdIxlHzPfb5+iQ78UPmf4I4bMkrwjEFo92C+
         zQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IWVLq4cGetylmYeeCZo39PJuYByM8tFivG4dPSxGTKE=;
        b=JWatiWO11AK6oYrE+PLgJSxj0svBB/hBQXkE7LgZbrLH6Z2t+PQuKHIQHK0OnErSmo
         WHRHof9o5I7ux41f51c9MiKXXS1JNC/7rNVRLLmV65y7hJBOda1nnaPbVWGHnBhvavF0
         a3VQ6nlCa1unhJ7wFFe065+UNhjCdBnpDhKRBQDo0V5oJuQ6wHPtEtTDNCg8dHhv9v1W
         C2/qrHEBKdZM6N0tjbaLtMB6ySCw9kE60SLCXid11G+FaqPMjqRWCc9yIyOpea30tuAZ
         TBz/8KyDstSx6BOzWthsV5zXgvhsqpKsgxv893i+B03+LSmKN5GFca2U5SLnmav4pnQs
         mf2g==
X-Gm-Message-State: AOAM5312C9APR62WQ7511PLbbpqlztZNQv9wTaPJS3IqzATqEiBNMiMJ
	hsVyb7lXDCB5pnVhkkrF3NI=
X-Received: by 2002:a17:90b:4b92:: with SMTP id lr18mr20181032pjb.86.1617484196282;
        Sat, 03 Apr 2021 14:09:56 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id j3sm11628447pfi.74.2021.04.03.14.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 14:09:55 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org,
	insafonov@gmail.com,
	martin@kaiser.cx,
	simon.fodin@gmail.com,
	straube.linux@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH] staging: rtl8188eu: core: add comma within a comment
Date: Sat,  3 Apr 2021 14:09:30 -0700
Message-Id: <20210403210930.17781-1-deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1

Add a comma to separate repeated words in a comment. The comma preserves
the meaning of the comment while also stopping the checkpatch warning:
WARNING: Possible repeated word: 'very'.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index ed81cbc5e191..99e44b2c6f36 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1243,7 +1243,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
  * If we turn on USE_RXTHREAD, then, no need for critical section.
  * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
  *
- * Must be very very cautious...
+ * Must be very, very cautious...
  *
  */
 
-- 
2.17.1


