X-GM-THRID: 6661107741495394304
X-Received: by 2002:ab0:2495:: with SMTP id i21mr8481359uan.9.1551106190852;
        Mon, 25 Feb 2019 06:49:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8442:: with SMTP id g63ls3143827vsd.5.gmail; Mon, 25 Feb
 2019 06:49:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZXtavEM4FVwDOT7jBMbne7GQS7cB7rUTQ+iDoibjenNdngnv1Zip17s8AVx2v1n0BLNfDs
X-Received: by 2002:a67:c217:: with SMTP id i23mr8411576vsj.39.1551106190233;
        Mon, 25 Feb 2019 06:49:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106190; cv=none;
        d=google.com; s=arc-20160816;
        b=SrAgaxZtCP8hA3kI4sinx77hkaWdOpcmqayIb+9X/RIeCNr5D76J1529muUy7nXHSe
         5XugYzcYHd0dXouHSt+pfXr2Fvmd8/RSewSI+uzPdwUlDvmEXwuETV9LnoEM1FC6xJKU
         MjZwIoVnDm9C3ZBZSGL3yku/7rl+RPZT9gNeamVfiIC17rClsH8QU4L+/D/i3APMiBX+
         ISJIUEztgAq6uwgB570skkBS76yy3W761KqvsbKQq6TFa3t7RRgZfSO4T9DhPx3l0jnQ
         n2y0mHtpPQQACsbnrIBiiBs2GDBzwTzc49zm8X/OTd762MYZWRXJyqkE7wyI5gDv3Auh
         uMGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=y8yEMm7PlhkFFdN2vrcJHU/cIqrr1PSZkxW/AIOzy+Y=;
        b=DvidfcpDD4M6lnV4N7hocvo5QRci9SqvklUnddrCiPeTYDIseQASnGC6kcL4pDL3+E
         RWBW1aN/pNJEWklGl/cr3ZwS1QACh41cYB+BDwb3c4NH5FdzrEyhazLGqcJGqZSuROBQ
         x3scRZLnjctSkFyjkHzyW4xtA549fVIIFcXJxJy92HOeim22pnMNmbmba4smb+K/1JSL
         CkSK5N+khltnmFCr/PCYNcWxEA9RJivKpC1p3Bu2TIRQk9HrhVrM5EUniqY4LWoVHBHe
         8FEr8ukakYPC6E3KGoIjng8+TOHE7LJLPJtn/3H6jwj+c2LGGiiJb4+fK0bumGfGRMdP
         cmtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HqM7ZE98;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s73si527096vkd.1.2019.02.25.06.49.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:50 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HqM7ZE98;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y10so4632901plp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=y8yEMm7PlhkFFdN2vrcJHU/cIqrr1PSZkxW/AIOzy+Y=;
        b=HqM7ZE98TZt0pOIZoS8JV+ZHpsX3RhxUSCNGWBefgKBeOJmvT35xwrhhbRuTFaoAag
         JT6E1A/D1MlKgWPfYdaAjnZMi5auP1cPeBWMJXr0zpVFO5rYyiuakepXkLvE4KUx4o/N
         XAubAJo0tm0pIZXUAgDFYPolM7DY4TcAdxZ2rQAFWwMVAGZqUiVLN0zwXKroN2/57Hgy
         H9UiG5tQjrPvkV7X+B5k1B9oDG83xGcyL0slqULgC4oa0vFhIKUHvsGAF+uD47IYpUax
         fLtGhUEn8gLTZqkaV3mTB5TkVv0ogUAjbmeow7GKWwXL/m7II1xFZYTXwxGN/a0QLtzi
         Eh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=y8yEMm7PlhkFFdN2vrcJHU/cIqrr1PSZkxW/AIOzy+Y=;
        b=rVZFFuWNyelNR39I6RsNfdS3cC+YZB3ObQkiEUe2j3T/849fsMr2UtJjltoRgO3KzX
         djfljh8zOZ0cBxt/qd+GaPQtKptj+fkwUouh87M6ToW0UQu++WtDhQRoHiB8Ly8ArpGR
         /12Kdt+xheaj7yBonh0OggQKRHzELec4b6kMTYNTw5LyHuvFC4wP6EhqOsSNLn2JO8JX
         dUPCykwpJ6y9UNCO2e0e8bj4FPeRevKbx+3MMUrbgTOeSCohVA9jnIqeacpKu0YwPR9u
         fVfX5afRrMQ75FVVja1ywNtSWyqfAF/EZVhZqY0YLDTo7jlv85A9ToPfw9fK82gCm9Jo
         5kZA==
X-Gm-Message-State: AHQUAubmV4UxzfEaj8UTUMSb9b4b3Mm9qG0Z6uhzODwsU6kg6xzaqTEp
	4/EDNTQwFYt+oHZDv5nZEhcEzzJqim0=
X-Received: by 2002:a17:902:264:: with SMTP id 91mr20983766plc.108.1551106189114;
        Mon, 25 Feb 2019 06:49:49 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b85sm28233875pfj.56.2019.02.25.06.49.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:48 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/2] Staging: mt761-dma: Alignment should match open paranthesis
Date: Mon, 25 Feb 2019 20:19:31 +0530
Message-Id: <20190225144932.8922-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225144932.8922-1-bhanusreemahesh@gmail.com>
References: <20190225144932.8922-1-bhanusreemahesh@gmail.com>

Adjust "dev_dbg" parameters to match alignment with open paranthesis
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..20c8879d4979 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -242,7 +242,7 @@ static void hsdma_dump_desc(struct mtk_hsdam_engine *hsdma,
 	int i;
 
 	dev_dbg(hsdma->ddev.dev, "tx idx: %d, rx idx: %d\n",
-			chan->tx_idx, chan->rx_idx);
+		chan->tx_idx, chan->rx_idx);
 
 	for (i = 0; i < HSDMA_DESCS_NUM; i++) {
 		tx_desc = &chan->tx_ring[i];
-- 
2.17.1


