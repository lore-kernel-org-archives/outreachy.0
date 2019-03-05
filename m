X-GM-THRID: 6663618170330284032
X-Received: by 2002:a0d:d582:: with SMTP id x124mr995696ywd.21.1551803526127;
        Tue, 05 Mar 2019 08:32:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls2482861yba.13.gmail; Tue, 05
 Mar 2019 08:32:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqytUFEBf55E1XjaFI7IapPPpEjzcEFtE51pPLT/t3jUdMkMiYVWDN9yQU8gnBsZK1wdbjKv
X-Received: by 2002:a5b:d46:: with SMTP id f6mr1720045ybr.0.1551803525210;
        Tue, 05 Mar 2019 08:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551803525; cv=none;
        d=google.com; s=arc-20160816;
        b=aRXdm+9i0kmDvwj8Lnm5ljTdlnkqXg6t4BVxmJuqWeIM7rxjWub4TolooiM5rngQoG
         cNfYA7mh4007t2i72TaxUysaV4gZxX+OK4kx3hY/pLvbHHa1CU+yx5ujNvpuSY0WIfzA
         NV3FaKnteZe5QjjOhdpIS89WEhViLG/P3HCH5OHk3AcNNoPH9771tZ802Bpfz/HbwfFf
         YJRMBl/BS3fsb+pEj7muxQvdLRqnKN2fkvLO+IrZ6qWGhsUOWsjGxoUsm3nAb5/ZfbdS
         uOsoGWEcDMdhfENzffGFBotI1yip9eoxojOFVQekbyJRG+WzWeKSlj8nZNmv4oLrHc+3
         80gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=tWcRvNG/XIdWqiG8ciik9LWScHCMFy1IjBoGiNH0dMqYFb9+HLeUBoLb7vLdBovXyj
         DkyY4B0dA2PhTsjcZ/MaBuPKC3ErVxllDgKAwZIftx/qzMs5Us1CmJ2U5XQR759n0Xw4
         C10dst1ydUlU7mYh8b6lJCPq0sjTJ/yRJGwR1ze5pFY0w+ccLNB3oMnDoSrK08C1rEPi
         P5ueT0eKBGhnl9JRGwzKY0bnU6WEsg8em+KTo0s0P5iiJPDlWGjt9FdDlr1XmJ5YhTLp
         Xiopu3r3UU3NKrSaf2NqF8hJ/86nhBdXlD+DPqYj/I+EmbCV//0+WsxUBUYJWSz1hif3
         BmNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkyM15AI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id w7si457496ybk.0.2019.03.05.08.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 08:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LkyM15AI;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id z19so7952096otm.2
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 08:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=LkyM15AISV3bkmxLHTGTmW66n7I+CPg8gLJ0ZdEdQ9ecZ+euklUOXjYo+gOfTB+uF4
         V/1xYQKZPbny68jyPfqywD1MvLl69zeLF9v2AjRN8ctRpT0Am8FgtsYdxhYLoIzWeBXX
         Q72/2FNC6KnTxEuIXAU/3IyckV3HQzuJ/CBY6p+QoLyoQUPIrmdjk8U4RYYYsUpjROhu
         rJtFWRNyWksK/1HD/A0FUpEgiyvBR68EwtrhDaa19GN/B4dNQNgi8K59tZ4kS82wzv01
         DfgTRZEmbFg/rEDQSNkkg1oGs100TbQsOQ4nySvemjTpEtvh3uW9g6i70Vlc0425KlGv
         6zGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=OwjWhFXDMsd8c+1b/0P284l55JnC42wuCPooW1WhFQi2cngMyIhAbfYdNfxbegb4xk
         WSGDDgFWvV9gQTs0lRi4dw3y99slQXGWtF2LI5k3tOz5zwJ+/coVSUmcHv2YaKwz4/FX
         LH+DGqnFCTE46ka5d3k9TziXBeapHMWT/Z7UxLP7cZQLk+rf3FlSarMuub1Fv4x6asTP
         ZvEDnBb14YfIwDWmtd1twLtBSQBQGp47/tSoCdwM+KYWoX8KsXBn/JKstSRIqIbEVH+S
         sYzUI52rADOzU6epBU7gpemfgMPNjI2LQTV1fRs+cnETC+5iTtzsl554sIhET75H8Q+i
         S43Q==
X-Gm-Message-State: APjAAAWLL2LC2hqiHgm5vBv4nRXviLClUHv4hTOillsGzvxtP/Ebuwjo
	i94ySpsk/kUUYyyQJD2BAvg=
X-Received: by 2002:a9d:30d8:: with SMTP id r24mr1415438otg.194.1551803524642;
        Tue, 05 Mar 2019 08:32:04 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id v62sm3834550oie.21.2019.03.05.08.32.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 08:32:04 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 1/4] Staging: vt6655: Modify line over 80 characters
Date: Tue,  5 Mar 2019 10:31:55 -0600
Message-Id: <c9d4ee1980ed5b5626241a641454dde6e9d279a4.1551803156.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551803156.git.madhumithabiw@gmail.com>
References: <cover.1551803156.git.madhumithabiw@gmail.com>

Fix the warning issued by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index d71022aa3f86..6bbbbe1314d5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
-- 
2.17.1


