X-GM-THRID: 6670961947938127872
X-Received: by 2002:a05:6830:104b:: with SMTP id b11mr4127354otp.118.1553204364877;
        Thu, 21 Mar 2019 14:39:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7591:: with SMTP id s17ls805866otk.9.gmail; Thu, 21 Mar
 2019 14:39:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw57PMlusX2ILHBcJFXG2SQvH4vye3I4RiF1o1akBk+6LYH4z1kJo+1Q6nn5wf52TLe/30u
X-Received: by 2002:a9d:490d:: with SMTP id e13mr4469771otf.206.1553204363928;
        Thu, 21 Mar 2019 14:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553204363; cv=none;
        d=google.com; s=arc-20160816;
        b=SMRwI7a6SA4bBzwDLsfksiasA/wD5J9FVpW75RPYfBREmpIITditx8TwNsUDcHO4Ug
         BWJOZ7CinZe+bQknK+I10nq8P2k984nrX4zKVevPFclpPwnRJt1RE9nAXRGD0bDcpSqf
         uSjnF82aDdVLJczHPf7bM4dkXzdI1MV+JtS+8aUdJkfsEQty93uzNNJ09zgcffkQBdab
         KdQ3XP9K+S7kPPwdAJauOksmwAmRPrWynTeiIksCOo+IdYNkEB7QCF2jzw3fmErtkR4t
         q5NIazjFWmQFvcWXRp9edgAHv1UabnsQHloV9YjTAm7KYi8xdarEN6GZRkVeELBJWm0U
         ld1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Kukmxiu5BR/zbDFXxImeM0tPCNbZEXdjQGP02qNe26U=;
        b=PL7CVbKGKL4qDWSY9vL1+kZGMJxPr2ES8Y8h6Y/PknQGQEr7nt7DAQ5NofIawnRmzT
         XqsQDCopR2wNyyL8+aGjCWsNkrfh/Dj6LjMhKoIQkaV0BwUhwyU9BIAGW2PWuyLT1771
         dtme8PbqHXfjmkG++cWTUmcO/q3l27EO9g5KjW6aID8444EHG1dPNvjScs16ZnfxFBc5
         Ayeo71+kEl7z06bwuDeXohufI0Lwz6P568zdJANBvJWyd6aB/4TW0Kuy5huXgIbFFsv8
         JcVTnWclHBQpf0RUefm+Viy5ymDPG9OCOjxTlbbngt3iFNDEMaPHvpB3O9E1k9aErVK+
         BmBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X0/pHfJg";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x31si366713otb.1.2019.03.21.14.39.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:39:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="X0/pHfJg";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id y3so5070643pgk.12
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Kukmxiu5BR/zbDFXxImeM0tPCNbZEXdjQGP02qNe26U=;
        b=X0/pHfJg/HspKVPOvT1h8WGI/iPvv3+5oXkeR8Gedeufw35rZWBODM9uPcbhD6yhOy
         heq7M+wTKzVAXVWUyIA1Cb5ur4ITJpnTaPWIgs7VVqw/ty4ae7P259dkmTvn9D/bUoRc
         Sgc5Slowb94/jF4jnGH2nUqrzONHy7oL8yOrhNFfoZqv4dZ07o8FjUgr0bStq92c7FNq
         NxCD3TcozdOsDdYbGwAwpOXUu146LoMWjD3bQJm63djCLWyiNsTs+N0SevA/d3Cq9bLK
         gIG7YX+M7LlHKnhMi3tHEK5Js2A2dJdf+EhCafjZJCbojrDLjel69Oy5d2wIhIAT6rhI
         226w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Kukmxiu5BR/zbDFXxImeM0tPCNbZEXdjQGP02qNe26U=;
        b=HbNMFHX435fwhQPpruxrSLGQLGLzlWJvOvJA1sxoTxAfCk3qgwyEQEL35RfR2vB2De
         UjXq/z1do2tLLgqpvX3XudQv6996tm6u+gvLexujQoo2zHPj56iuaqr+WGTExp67y1Wn
         zy4NSpLTZ7wlsT0b2xQP7u7k+lFDxV9Z3f5FSwZcZnbkvK1gd8PDy3RAGnvUdgtKMu3T
         Z6VdvQYJgX9jK85MXPpdNBusVWMGdi+t+qr9AJuLpFdIJAmM3M025tbP2Fw/X0/1odKY
         WV4ZkuF9KYgxdL8p5615XEuwFvQ0NqcZ6NqinBupj3se2vVvlo/a0gx0PluvJTCtfMef
         XWgw==
X-Gm-Message-State: APjAAAVP9dgOVD9TaH9RLGQ1yxrPDPHhje0+Mwh8cz8pV5c0XUyrz6Hr
	dJZxCCC4zDC4M0p9IzitKsyWzqzCvfg=
X-Received: by 2002:a65:6559:: with SMTP id a25mr4973130pgw.99.1553204362988;
        Thu, 21 Mar 2019 14:39:22 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.5])
        by smtp.gmail.com with ESMTPSA id k72sm14413242pfb.122.2019.03.21.14.39.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:39:22 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH 1/3] staging: vt6655: line over 80 characters
Date: Fri, 22 Mar 2019 03:09:06 +0530
Message-Id: <20190321213906.15851-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Move function arguments thet go over 80 characters a line limit to a new
line to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vt6655/rf.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index fd09b9771cf5..8d1caa4b19e8 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -737,7 +737,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD
+			(bySleepCount, byInitCount));
 
 	return true;
 }
@@ -933,7 +934,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 	 * register
 	 * Channel Index 1~14
 	 */
-	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
+	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
+	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
@@ -942,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
-	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
+	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
+			(byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
-- 
2.17.1


