X-GM-THRID: 6807920699878932480
X-Received: by 2002:a17:906:3013:: with SMTP id 19mr788925ejz.8.1585092558748;
        Tue, 24 Mar 2020 16:29:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a985:: with SMTP id jr5ls9755648ejb.10.gmail; Tue,
 24 Mar 2020 16:29:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuKu4a1Au6Df6ux6mAs/jqb9OJUABX4p0cCQpDeI0L7xAJ39JxFnN/BlG/bhE3z0vvP8Esv
X-Received: by 2002:a17:906:3db:: with SMTP id c27mr778653eja.371.1585092557501;
        Tue, 24 Mar 2020 16:29:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585092557; cv=none;
        d=google.com; s=arc-20160816;
        b=iJJ2okeOoKdocC7rIwJLlf4vvaVVuxsdU+XGT+joSk5KYkVaWKUc81vxvRY62ATRtH
         xXioXPJrWgDKz8tEQxBFST+egxnq9AImF3eqAHwndeRabvHhiK1YwUvRvKkaKvpOuLCX
         3QFdY/jQSrYlPyXIsKJh0G3xJQThx/Ie0uLzniXCe5FbgdfBPDWqcwd/fSJYAgQYSMlX
         gycqebjxKdptxDCwmOk5BT3WjTIASvmMgEuw6GiENh+xj29m3W/PrHg+ryVDp7s0bOMe
         hGLHIiz/K6bLauOksSxHxyxUuZrb0gJhI4mDNopShgCA0i7F6xCPb/bhBmWvioAcAt7e
         0bzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PrUZW6Z5uhE0vIlAZJs/BPdxq6Jaqm/BzQJrYJsLcbc=;
        b=hnCelbcPVBs+CMSF4oYiQa6RTJQEXJ+t984jGkl0ojJLNNo3asej4dzat54JQ/DGDW
         FAWmG2Dn0BMEAWa2Ta2Eu3COwNz07zPxSA/zm/3ryqU3vunS7vrRpnuRakP5HsXpGf7v
         dp4EXYhRkIiYiFV7qVVLow9GiXBdaBfyqzQH398f5z/ycLnZB2ZD1XVhX/+YbTSYfZ9i
         YLLtyITzCvY70oumH7t7CQN7BfO7Ed8UoAjpEMzmSSekAsx/Aj7PG4ViDzfgfRpZiaa9
         7UdvfQa4A5hNoS2Npqe9pkzS0jlOhmA3MRTlq8MC2C4SOjYNZFZVc165Bk/tspgq9u91
         gKmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mIobxQdR;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id k14si550289ejb.1.2020.03.24.16.29.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 16:29:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mIobxQdR;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id t17so498390ljc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 16:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PrUZW6Z5uhE0vIlAZJs/BPdxq6Jaqm/BzQJrYJsLcbc=;
        b=mIobxQdRMZ0QD5Px8APyNVZKNJuLbIsX9Hqu5WF/roNoVRZIZ/HFS3MKpL7b+97TMR
         7AwoMyaDY4WATkji2FAljCxhj90DdmZi0daoUg4g9OkylgLLPpzQwxpkY5ZPfQssoVJs
         vtJcuqHKzOwW/AC9S3osp1AXoizvaYzfls4OAbxGYQ+s7V0Mrx/oNTx9GcTyLpg3ItWn
         5UoYFilcEcYfZR4shT+jypXpcQRofT6a4DQvEnMj31qjgK7FGbXKbLAXRCiVBjwnGdpI
         EzqmRZX9LFEmzteAmXbYBM2uBxLKkyEUWKvfGcCvln+c4Gu3sInhQnMT3DxmVdXqfrnN
         FuTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PrUZW6Z5uhE0vIlAZJs/BPdxq6Jaqm/BzQJrYJsLcbc=;
        b=pU0DqiJz4PaDZC73Me54YYYchFEbdLud5cXdqvYbpR/ljSzS21jqzTNS2eYpWkXgHO
         6Ap+DS7vBBjNFXC7dGmllk/yPHO83ZGBi2mP+MPSAt0u8oxSF27CCFfzJE0cTy09idgd
         SJpcj4E3tvgJS70hEB1dY+RJXon9cupNXYepTXdidWVkrFtvVcZbZyV1z45B/deiVkns
         vk7JYg+k7TRAAxqiB8L6AhDa2DqOxrxfOnzzZgQAGb5bT10BM0hyq4tO/eLwnpmCcU77
         /0HWwSNys4jInAXCik2NlmLkQVehxJnxdVO8h4T8sMtR9aYgrIV9YhZTx1tkB9PdRVAd
         YKPA==
X-Gm-Message-State: ANhLgQ3CjLeYoPEKLcp+ta/yZzZwO/nBOu6cVnKhRwlSyppZvgQif72L
	4tzBiMBm+Gb/N4zAcKxfgQlpItsC
X-Received: by 2002:a2e:b5d1:: with SMTP id g17mr91466ljn.139.1585092556973;
        Tue, 24 Mar 2020 16:29:16 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.95])
        by smtp.gmail.com with ESMTPSA id y20sm3068694ljy.100.2020.03.24.16.29.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Mar 2020 16:29:16 -0700 (PDT)
Date: Wed, 25 Mar 2020 02:29:13 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vt6655: remove line over 80 characters
Message-ID: <20200324232913.GA3907@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved from the comma character to the bottom line after
for it exceeds 80 characters.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index b19faa4..ac1eeb7 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -1170,14 +1170,19 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
 
 	td_info->mic_hdr = pMICHDR;
 
-	memset((void *)(pbyTxBufferAddr + wTxBufSize), 0, (cbHeaderLength - wTxBufSize));
+	memset((void *)(pbyTxBufferAddr + wTxBufSize), 0,
+		       	(cbHeaderLength - wTxBufSize));
 
 	/* Fill FIFO,RrvTime,RTS,and CTS */
-	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, pvRrvTime, pvRTS, pvCTS,
-			       cbFrameSize, bNeedACK, uDMAIdx, hdr, pDevice->wCurrentRate);
+	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, 
+			       pvRrvTime, pvRTS, pvCTS,
+			       cbFrameSize, bNeedACK, uDMAIdx, hdr,
+			       pDevice->wCurrentRate);
 	/* Fill DataHead */
-	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx,
-				    bNeedACK, 0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);
+	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd,
+			            cbFrameSize, uDMAIdx,
+				    bNeedACK, 0, 0, uMACfragNum,
+				    byFBOption, pDevice->wCurrentRate, is_pspoll);
 
 	hdr->duration_id = uDuration;
 
-- 
2.7.4


