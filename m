X-GM-THRID: 7025609319157596160
X-Received: by 2002:a05:651c:4c6:: with SMTP id e6mr23885649lji.447.1635777146664;
        Mon, 01 Nov 2021 07:32:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1314:: with SMTP id x20ls1216770lfu.1.gmail; Mon,
 01 Nov 2021 07:32:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyis+9efUk7Pc2X+7D7S6NDhyXJ0VF9DUN7DbYcP3tsMbhhUloOnab+6lT2PZHOQgdBJn46
X-Received: by 2002:a05:6512:33d1:: with SMTP id d17mr23973785lfg.573.1635777145056;
        Mon, 01 Nov 2021 07:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635777145; cv=none;
        d=google.com; s=arc-20160816;
        b=EJeHlei/VFdIGhOFDB8A/PXRmNy/mZbSQicTfrVOu/U0LK7+G0FUoqKABc843buoRX
         qf/RMzoWoD0x1FUQ+Rod5UhnxzdGuHrJg1vV8WeJ04hrIh/GDEnM03wRFdJb7a96Rl74
         7+o2f7nVAw6ScIcVwdWTOwhgqzomLbBbcdb65KfJUuk6OMi2hnYtEABe2FGsaNKnWCU9
         xwVLGvn4TP8/4/VpEM0R8AMrwu7a6xewYeFz+D4Pw833NA23VgjlLLTHC6kPc1FNzqhu
         UvQpR9LnQcMJcgCUQcOq/ReOs4Qj5//zZjMRI0GlbYqYc5sVpCTNPcKpB5oW89G2t3M5
         +w9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=yXJlpxpBBlaThHpbKwL2Rsa5SaMJRqBOKWZRqLV5b0BpOS1yCco9hMkUUtfsGJhs0Z
         5UmGStYSkL0kadvgRPgv/y4SQglQEvjw+Pk0z4Ka0tPo/g2ybXGyTfr+2xrMr7wEBQMH
         iToIUKiw+pvdJwKi7WfmrUqsDMuHjOvmRwxCzRak/gw8g30i/BmcqwQZtTIUL8Cee5jl
         hr0uwyRyDFKMCZXFtOXhPtfD5241o5yDRa+BSXzqwcuuqIf8ErwhbRs+RFmr/XR16eoe
         vahssB0VCYdmGiZ2MXQzly3ZuXhYFQQ6+VMzwb7qSUo15jCTXZDb3RQY2pAbKAkdiPRm
         ZoFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UqbfzRP2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id y27si27656ljn.7.2021.11.01.07.32.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 07:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UqbfzRP2;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id y84-20020a1c7d57000000b00330cb84834fso8055771wmc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Nov 2021 07:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=UqbfzRP2IFjComwjTeq/suWfT5hLr3qKp728wk8yf7PbLSdilMsp9Pec2Kug6ifr+d
         XsBAajd6tuaF50om8XOl7ys8YVIST46qAJSLWS6R6Wmh3OlHVHoBaYzfFb0BOVzAlerd
         za63p3FoJUrrPWy6PwNypcccCNHaUUa3H5SLep9zuSjLyeCdRMO8CELHpMvT+UP8Uizw
         ZGkJGnzmKtMGOS7YgYYY1CtEQRSkRsin71fK2u9I81fG8iv37aKNJoDECVtps7x11aI2
         GRppSF4yZixWNE8gaypQ6kvFHK0VoAkJCWKdfvY8AGz59myd03/tSIaU/U0y2TD3gCki
         xCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ccxJHQnZxwCRL5ALIeLwb3BTgkZUnkc6gC/ao5xjt48=;
        b=QDQFSlQOwOF78pTqee1P5x6rK7wlFhOW6LqEpYJ+5h+xuF60/u3JgfbyBUyr2n6pxT
         JO68LaBnT6FuL5TQLcbLYUrpa8dwgCTlBmOOZeUiCDIC5qTCQ7fN7aBSGYamhN52BJOA
         unls+VMQ9UzrdVuyR09H1ESLY68sEQUSHI3ilU6rqQMUOFu+vtwZIZk4Hb4FV/toSl4a
         x8XhqmMi+Xz+Dxo37ZvHDu9UHKgf1qADaU596DM+KLW5QGwe2m66HxtaHbpliKU11plJ
         BvGJ+1GxbXMiSS1BCmc1UZKyhmEha0o6M8PL+myUAtUCRR/4eHmpbL3ANR52ZKjRH0zC
         twUg==
X-Gm-Message-State: AOAM533RXH0qJAMws57LfKsB0kJdWB7VRXbAOnFZ+W5NQfe3+PntwMh1
	sdNCjJR6EcNZbWnO1VNYJRqJSIXxB0tb0w==
X-Received: by 2002:a05:600c:378f:: with SMTP id o15mr32286025wmr.63.1635777144591;
        Mon, 01 Nov 2021 07:32:24 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id l8sm17157721wry.43.2021.11.01.07.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 07:32:24 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH v2 3/8] staging: vt6655: Remove unused `i` increments
Date: Mon,  1 Nov 2021 14:32:01 +0000
Message-Id: <79a4f03c8f2bfa555ea149ddd1c0f938dd431a0b.1635773680.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635773679.git.karolinadrobnik@gmail.com>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
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


