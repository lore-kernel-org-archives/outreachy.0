X-GM-THRID: 6673980980256047104
X-Received: by 2002:a17:902:b7c5:: with SMTP id v5mr1111342plz.10.1553907287274;
        Fri, 29 Mar 2019 17:54:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6948:: with SMTP id k8ls892262plt.7.gmail; Fri, 29
 Mar 2019 17:54:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzi25l1i+PEwzUl1Ln1Ig4bYN0i5h9PnPXkVALCE1Bo9MJz3a5Hbv2+RTpGn8Ep09iaTJK3
X-Received: by 2002:a17:902:3324:: with SMTP id a33mr1120010plc.72.1553907286516;
        Fri, 29 Mar 2019 17:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553907286; cv=none;
        d=google.com; s=arc-20160816;
        b=eADQfRQBSLripD7vMtOqNz7FB6QrB+KgjTVh1oeELYkbCvn6KqUO2pTnE85jEfbrjk
         b8rap4zmLPFWdRfx2Efx/yQfa2vY6PUivvVurFDM62dOPV3YK7V8XkLfXiQKm9eQ5asJ
         e9IBYNz8nNY9S0eSfmY6kCp/fZGUrJdsBS2nk6gHGZapm0AbMk0OowjYDtHjb3WScY66
         cuvF1n88XBinpRJ7URizl36cXMpddML31zbKnw3X5ESxF8uaSa+cCr4ja/yELqi1FkcQ
         jFkN/dJkG20gUzzry1PCDl+WM+HnX92KX9WsVtM8t//NRH88I1wDNMjOoDRmNbP9r+Dd
         qKgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ki6TFWUadJvOiWlzzHzd5oBvrgXx/SbZpsl1bwkc43Y=;
        b=P8FRfi2Vj51OXWHf58MTSVaphppp98X1rDxejZce+BvWs5bcC7oyyHZP5c5SMRhIDo
         OAXW8MmD3KuLb4i02SFXs2tbBIuUKsMhyI8GEDTwnDeten7QE4K4qFmDn3ZDzKsWhPg/
         rpFBH7mdo6AxAqEMnHdGQgP1+WnUbrlax1wdtvlm79DqNsDymFMf+W+AoG7RDy6uL0oi
         QxwU+Nc2X6I7aQTRPEcbuiS5OPXdQIDMHJZapMu3M3ff0oGZKjaYUX5klzJC7MC3DhpN
         gJUTnas0V8erguedw34c4KNO0lrRaGrVxNUwB8h8VnlzfMpRHfJ1KD6/Ec/0vovubjfJ
         hs9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZLdPp17S;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h2si333321plk.2.2019.03.29.17.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 17:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZLdPp17S;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id b65so1773890plb.6
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 17:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ki6TFWUadJvOiWlzzHzd5oBvrgXx/SbZpsl1bwkc43Y=;
        b=ZLdPp17SBj1HjDSxCyA2LZhguqwQaMuPftFUZ7eOyqpbHVl60ivhvo1ekLI9rZHrHu
         lvfIqTu9lO4OItCFk+Sl0/v6NguZpRYxcX2VVQJZS0GYHY5s7xW26+kWM6FP2lpQE2NN
         go+8vv8O2XsA3j7+w5ePVcJ6aKZWl95cHXbp519+mL4fIT483uN1bbf+qMEpsolt1mi4
         DJ88xXxkmjahET0iwezX0pSTfQ+D+LelXnJolFLSrLzBRXN8fUm32dYhTuKxDz6WkAxt
         O7ykSyp309SKErPDU+E8uPA2FHdZ5PEywp3eTX+Q51san9B6yRdnGd5sfi8VCUfvTRCV
         kLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ki6TFWUadJvOiWlzzHzd5oBvrgXx/SbZpsl1bwkc43Y=;
        b=YdyluhipcG4GOxJ8pYpVf4MCvlknau15RpWE5phtZw0InH/QcjshQyVZ13RbAIrvTO
         u+r/wAX18N5a7KvNYmSGWnZyS+SRCI2RslOYBN1TMZDZoZxQ1V+3Q5JWeT+wjWSWZdoo
         GVTXd8gw3Jp0vKLnuwc8SGOpOhVNTfTy3Fuycxa9phj+L4fC7Y6NRx9yc1sqFDmnkvdO
         iPk/wjI7aKeg9q4Z+HkBK7Yr3kCaJ97npQNFAesN+1sDZl+uZVsd8K+AidriN7cnfony
         rg7WqrqzzBvRUiisiN4sRqMW0rJzelcN0lxT7s84bNIxxdjCPYNjtcDk+dyaS4+C/8ps
         7KKg==
X-Gm-Message-State: APjAAAVAVfhS2Eo0/X4Anp7TNnk6LdhCtYKk00KdR3IKtFew0CUUphCE
	jGyFgnH53rm6zWyiHXYtXwSjc/dJmTE=
X-Received: by 2002:a17:902:a506:: with SMTP id s6mr27318802plq.164.1553907286119;
        Fri, 29 Mar 2019 17:54:46 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id b26sm10092304pgn.4.2019.03.29.17.54.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 17:54:45 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8712: Remove multiple assignments
Date: Sat, 30 Mar 2019 06:24:29 +0530
Message-Id: <20190330005429.29931-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove multiple assignments by factorizing them to get rid of checkpatch warning.
The semantic patch to solve the issue is as follows:

@@
expression x,y,z;
@@

-x=y=z;
+x=z;
+y=z;

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index 8bcb0775411f..eb3bc46cc977 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -38,8 +38,10 @@ static uint remainder_len(struct pkt_file *pfile)
 void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
 {
 	pfile->pkt = pktptr;
-	pfile->cur_addr = pfile->buf_start = pktptr->data;
-	pfile->pkt_len = pfile->buf_len = pktptr->len;
+	pfile->cur_addr = pktptr->data;
+	pfile->buf_start = pktptr->data;
+	pfile->pkt_len = pktptr->len;
+	pfile->buf_len = pktptr->len;
 	pfile->cur_buffer = pfile->buf_start;
 }
 
-- 
2.17.1


