X-GM-THRID: 6802879895263248384
X-Received: by 2002:a17:902:7203:: with SMTP id ba3mr9115883plb.249.1584040030284;
        Thu, 12 Mar 2020 12:07:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls257837plx.4.gmail; Thu, 12
 Mar 2020 12:07:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuK0fB1WHJFlTeCM+P3F7pKEDtwMrKqTDoPL87/2iOhKFooC6Ro4ilBAFB7bIrrJWP3pLV7
X-Received: by 2002:a17:90a:9416:: with SMTP id r22mr5842626pjo.2.1584040028691;
        Thu, 12 Mar 2020 12:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584040028; cv=none;
        d=google.com; s=arc-20160816;
        b=j8hOCMx3fZJpfb5I0WpQf8mqX4TZC+CLcjFPJD9Ty12vrV0Vt4diOPfbn/4O8iXmx6
         39Gv1oGNeuotRdtBi6CRrkbSz029x1Hw7T8P8j++qMAenGwen5Zny2JxLDq4oXVoWwQx
         BwYi5QzumPexVxLxsKs/Zru/IU4cf+XHNP4nEWf3QX9mfhzUtFOpow8fuEbn7Fiz3aHH
         qPlLyeUBMf6URJXTmmDejG2uZgKNfYnJlxFSFcohWeWxLyrYKd1K9c5vM768c7C186ys
         ukxkAr6ED89nZqMfkQmeO8tOp7fDkF6w8wRGr20AlT7w/C3I1hvxGaITnY119Ns43qVt
         pXIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4AGNvQCJHBLnEG0JS3hoxtTJwsgi7w4uzcUjyBQMKEg=;
        b=aGTexX3AVZHZLOy2IxTFK8deWJXevId+97LRTE99/1EnxOju9DT8BT2Ah8s+sqrLXL
         d6awSbU1MQ3RZBe08rbOJQa1QEFTCF89yn+EyjMOtUebL85jD35Pqz+QexVLkwxC20Qn
         UVNq4enKnlnrZ4sl7he3omfTIagnr1B3QQIpqPU8KAZOt3GAPdrz5pukv50QUyGB8dKa
         RJnfW3Vm2QyC6TKRZtvvxaBpOrU+ifl9GVuybZEulJveFeGEcW85RUA0qNEzDlT9l/g8
         tsl6xqHWcjm3iSMt0Lp0XWaQxkj5YY44z+eAX2pFrckV1OedgGykEX2Mhdy3D7ndusp8
         9fmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CFw/dGPc";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y13si250246plp.0.2020.03.12.12.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CFw/dGPc";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id c19so3709721pfo.13
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4AGNvQCJHBLnEG0JS3hoxtTJwsgi7w4uzcUjyBQMKEg=;
        b=CFw/dGPc9Q0XMBcqdAc79xAVWD/A99kggLHZqIxkQXPSa3rM8iryWIGdRAD56AhiVq
         g4eKNnl7CUm57VU+v+cLREpmAXx1bXblArnal3qlk3+TteuZJoLgaKV86TLd7gZjVGJ8
         cog36eFj3pUSPIFhQ7kuvUtF2A4EqfNCBmr44dEuA9XzvpgJ2WG4B6pKYTVkxKvcDJ7s
         HLjX79NiKbJx6v8qKTOZL1D9PrieD1NnZir9Glar+mxLiwizcoWCIoKObd5gePTcdTFe
         975cUJPGr7wRhwaQqZj84u5ZEK6hty0Jy1Zogoy/sQ+Ch4w33MtlxVxGDkmcq8VLdcPT
         q6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4AGNvQCJHBLnEG0JS3hoxtTJwsgi7w4uzcUjyBQMKEg=;
        b=B3sCMVngr0Y+au+oLJS6XQ5xhdS2OLEvXMgQyaFXwZ8pj/lw1qf9zYjE06kXJ26wiD
         fC4Cn/RAkP+8fyYxePQdqaC/q+sVLQWmlZmsWglvYckUg3gC67pPTRbhN7xflQzM3+hB
         trXOOFUIAOcrgmRWIRozNeRL7bp+Ur9r/Ag0RwB1fmTCxxr/GDNfYJ2XnYm3MuTfkpQU
         +Z8DYhePFuaxr+n57tH9/i1T5yNqz+eSMF9wuSvkvcVtZd0K0yqex+8HNsLD9lbUcDwB
         nl+Y7kMaph1XVC3dmVIdc/yVtcR8tDkw4c/ViUJW9rheV8N3ELp7T9bHHrWE3tE38njs
         X1Sw==
X-Gm-Message-State: ANhLgQ3yITnizxmlocHTMve4vr34J/pB4xo+wlfTloGn7f9m9FAi4bQw
	Kr5axVT0c59FJ7O/XV6mg3ug637p
X-Received: by 2002:a63:b515:: with SMTP id y21mr9235197pge.148.1584040028241;
        Thu, 12 Mar 2020 12:07:08 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.142.89])
        by smtp.gmail.com with ESMTPSA id v67sm11874175pfc.120.2020.03.12.12.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 12:07:07 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 4/4] staging: qlge: qlge_ethtool.c: remove an unneeded variable
Date: Fri, 13 Mar 2020 00:36:24 +0530
Message-Id: <20200312190624.24167-5-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>
References: <20200312190624.24167-1-payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
v2: Keep newline as is for readability(Stefano Brivio).

 drivers/staging/qlge/qlge_ethtool.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 592ca7edfc44..441ac08d14d2 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device *netdev,
 			     struct ethtool_pauseparam *pause)
 {
 	struct ql_adapter *qdev = netdev_priv(netdev);
-	int status = 0;
 
 	if ((pause->rx_pause) && (pause->tx_pause))
 		qdev->link_config |= CFG_PAUSE_STD;
@@ -701,8 +700,7 @@ static int ql_set_pauseparam(struct net_device *netdev,
 	else
 		return -EINVAL;
 
-	status = ql_mb_set_port_cfg(qdev);
-	return status;
+	return ql_mb_set_port_cfg(qdev);
 }
 
 static u32 ql_get_msglevel(struct net_device *ndev)
-- 
2.17.1


