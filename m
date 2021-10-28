X-GM-THRID: 7024064041486123008
X-Received: by 2002:a05:6512:2346:: with SMTP id p6mr3371327lfu.304.1635417360405;
        Thu, 28 Oct 2021 03:36:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:a543:: with SMTP id e3ls109053ljn.3.gmail; Thu, 28 Oct
 2021 03:35:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvD3hzodzAtHM0bk5ZjvSlh+oVwLVr2BoUrPSasSbaVpd7jJrMAhFR2UpDOtc4yYbsn8SC
X-Received: by 2002:a2e:a277:: with SMTP id k23mr3837512ljm.22.1635417358784;
        Thu, 28 Oct 2021 03:35:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417358; cv=none;
        d=google.com; s=arc-20160816;
        b=vyN/LscoTyoSpKKyLmCpgmPdi9NbL/gLkwlBCV2TZy4qYuMnLsy8wyBdRzt3VyLJrV
         smQO1okMwoEzWhCh95Q4NlXEt5YM28KNhZ8ECfOKUkcc0rR+S6ywUnIF8j3DDfnw2D4U
         V0Z5Wz/lKG2dhSnh+EEVtm5tFJAXIGCiJ6ctyVTcSHD57QU1UYR0whrctv0eNvSdnUqd
         6R7PV7RWh6JTrER1M2PLM5b+CkN7oKppoRflm+xmUd2r3CM0tPRMy2N5p5aUqwtn1i/p
         WkC2v7yn7NBKwwY2HwnjcutC+rE9gyJ0wtRpFsiO/F0XzDrZfLh+lKPP1jxt0YghaZzb
         mXeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=iWYWm+KgaJ4yCTggsQaqEZi93YabxUvFrqMV/+9Uwj5mcWqWg9QTpmmNNK5m/HB9pZ
         BVULUNeQM08IvV8eQJVEjZxQ1z3hDPXaXEeNDaRzUodkaiP9tsJN7Fe5mYqXV4kbCRz5
         KfgEsKSarQbjvmv2r64Q1ufEZ+8D+a65cLuNY84NVaYnu6ZFBzyIY9ZJtVBr7dnnouGV
         NqLAwkJn8jn5aq9OGRsTxK1J8xKWXctnn+4xdNqdfWiN6kEBzeWfV1JpegF+sRvxXulF
         LeZyBGSYV7SpBJjCLJ6V9xNT6/g7pffEZUCKetcJPoZiKlPc/ipPtx+Q7p8hE+rYj6eF
         /NcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gV7VI4mX;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id f20si153124ljn.4.2021.10.28.03.35.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:35:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gV7VI4mX;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id v127so5281140wme.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=gV7VI4mX3pwtcf/Alsr8MQkZKI8NXZeWkwWgiHPJklFk1is8HdzPxEN5JWEgGffT72
         904acUeHt5rUn9cTaf1eq6++7wGJ+0HcKg6pDDUm6Z3ViTxlfokPTn+hz3CUIpB5VfcY
         GCqbTi473jBvB3CuhzlEG//TlQt7YN6DXD1y2myGUX8ZH6yG9ueCCqzc4uxcj2IDTpsP
         pxIf7I6lg1CxZM7uscQbd6SGaeW6c2g4FOYbfA5tLz1VC6Xc+v3BfFuEOXhWIkZF4iNB
         neVXtnWEPHYm7FC/mi/VrPyu+dPK35V2GpgPGlLdjrapXeMGhXV74UG+7/u0nBx6v+K7
         4bmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=TitBRxbMygtrkr+qwTgJ78D3iZ8EJ6Ek+j79/R5iAWRzkxvzF2Eub4u6TM71qQ9EjO
         l+BwpAIxxoGRYEQr7VL+eCQBFFi1RcZycPuaLmaKc/IYxPXu3vmW3m39KQRjQEUD3v5J
         RUSa6mlNVFdFwV2DNEBAumRQ0rWyVOW0JXbuRhq3Y2r+SslKvv0HxprtdIzOT9UGleNN
         erENkFm+8+H1FyNXO7nalfauZ/so3fKky+4dDWxtgvbks8fp0NPYH2+ZOKjW0LfVUS+q
         TuwjcmDAD3IESEjmtVa3VrwBht8PXWUNLxsSKCaaArKxZSM1Y8clhg+YcCi1Zs5bw7S/
         Yzig==
X-Gm-Message-State: AOAM533NSAhZmfguyJ7s+CmY73B8QIudZZ//+LpRjbAkTwUmbUKg6JlA
	gnQwjIqUfevgAwmf9LpJLKz1TZkuCU2K85XP
X-Received: by 2002:a1c:3bd5:: with SMTP id i204mr3569575wma.46.1635417358324;
        Thu, 28 Oct 2021 03:35:58 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:35:57 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 3/7] staging: vt6655: Remove unused `i` increments
Date: Thu, 28 Oct 2021 11:35:33 +0100
Message-Id: <79a4f03c8f2bfa555ea149ddd1c0f938dd431a0b.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit c569952d92ba ("staging: vt6655: Use incrementation in `idx`")
rendered the incrementation of `i` outside of the loop unnecessary
so it can be deleted.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index c07653566d17..ea74701917e5 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -703,7 +703,6 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
 
 		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
-		i++;
 		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
 		break;
 
@@ -724,9 +723,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 		}
 
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
-		i++;
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
-		i++;
 		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
 		break;
 
-- 
2.30.2


