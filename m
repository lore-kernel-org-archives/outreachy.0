X-GM-THRID: 6661107741495394304
X-Received: by 2002:a63:4e11:: with SMTP id c17mr6964331pgb.138.1551106192071;
        Mon, 25 Feb 2019 06:49:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls7124772plq.0.gmail; Mon, 25
 Feb 2019 06:49:51 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ3bCg4G+5h5n5ku42S3irkWs72pC4pQ1zL/UZ8RJhshp1J7xPjOoIyHbcJLqfYkaov7IPS
X-Received: by 2002:a17:902:4181:: with SMTP id f1mr3489570pld.123.1551106191517;
        Mon, 25 Feb 2019 06:49:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551106191; cv=none;
        d=google.com; s=arc-20160816;
        b=N6zep0r6j9s2tUx+y57DXo7CT6hCF6+Oq6jstfjzTkWvnviQ2XHy+2mGgIdGhQ48Eg
         QiKksi/6vci2gdJKWqrz3xDvQ7y0jNIbkwEJujn24Cbf+p2WkSrGUELc54FD9ssHq86H
         UoILGTvyNxInvdUMR10TlJdeYNVxUiOaBLrzhuGSVFSNLiI5RAELnHWDWNEgQ8ZCxveJ
         MOw1hzcwao8TdMssG4ON1bIphHANLUV6lRKtcTejRcyobjupQo+nadD++OwUUvLP5xFM
         Q271T1xw3w1/N0+WndUKO6woJWufuxUVsSMDcwZbyIFJ6ujGVEvwXXTReLWhgmI3E01l
         PgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=gkor3mPiGFlYWRDYUF5ziurnBp8rmiGtSV/44QeaelzaWls1VlSoNhewujpB4IhP/F
         AShxJnilwphuceAyKcfAcVwXfYo7Ixr4+RZj+VvrHeHchl0bkF34L16pw+vP2dRcK+8S
         Ef880xWxN22VslyrdVt/9wCdCFcaRHOZ7R0CNwBXCWYEtSOF1imUOdT1ET9Mi/dBWg2t
         neHQyGpUVDgz9gmIN0k0nzUpZTggRdraptaPT0i7Qlj9uELr7oGUhtrYv8sF+pJeYFom
         R3ySDqm04p3ziLqqJ5snDCbgL5qLhBlcKMC70AuENYK7wnlkVuz9fBOr5iLL/nGveV/F
         nT+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YGq/dU1s";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q17si496667pgb.1.2019.02.25.06.49.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YGq/dU1s";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id q17so4599361pfh.10
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 06:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=YGq/dU1sOpSJyCzpEl/dgadUWJ45hCBh8GHXSipelAd7Gm3UgXbHiuGkaXFQxnlgA4
         ElsJa+juVjC7uVBjYk0LT47RVYv/ZviNB9WSobHkQ/mTqk07ddbO7/X2aCBAV0oL0qkv
         onDiyWsXTgnr++FIMmN1sSInD+p7dGqa+nuC+zJjIY7/D9DZHEhrIrX32b5Gn7H3uljo
         KXgl+Eby1qfCWozcvEJlb7qEIgFbYz5S1ylWVotVzkI/UgAe0NLLlYm6UsMqyaLXFzEm
         uWXdgai7vYo/DBCitvSgtEV3AcexjK83Sk7eOxk34UYV8r92wNJUdMMYLhSMcpXqMvny
         ayyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=WWS/hRjqHQQ/2pUTwP+YdWMGvtkTUm8YTxgzRq/VE0UkebT62pfl3WN6YAMV9sqzdb
         8FNDhM367+iN6Y2+vYvcis9st+/LcDZBxc4jdJ0VfyzN6tE20kmrafnZZfRflln1uOaG
         MLOPuWWLMQPn1WwjAkYR+48Kt4KGamvGJq+gIFNshNE9lpNnzxlN4obdnxcOwaWh4EjR
         81tT7Se4mAhEeEpXL80kAx6RyM/nCBn2iwzNvsqTzNRbWGuUGXFChnY0d2walsEKBuWn
         clwOpSOEPbCrcwzJkRMWkYpx2aKCdiJbQKflPMGz8RE+7wwio90ZORvdoh6676F3Ut+E
         2QcA==
X-Gm-Message-State: AHQUAuYXn5B0tVUaW5nHBfebjUxFz2TzktACissGZ4/pb0ngKhmZhQVv
	baKQjRcT5z2txlF0PY2YnY/1qJl0gCY=
X-Received: by 2002:a63:8bc8:: with SMTP id j191mr18378961pge.234.1551106191002;
        Mon, 25 Feb 2019 06:49:51 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b85sm28233875pfj.56.2019.02.25.06.49.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 06:49:50 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/2] Staging: mt7621_dma: Prefer unsigned int over just unsigned
Date: Mon, 25 Feb 2019 20:19:32 +0530
Message-Id: <20190225144932.8922-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225144932.8922-1-bhanusreemahesh@gmail.com>
References: <20190225144932.8922-1-bhanusreemahesh@gmail.com>

Replace 'unsigned' with 'unsigned int' to be specific with data type.
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 20c8879d4979..7b2cdd2829a5 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
 }
 
 static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
-				   unsigned reg, u32 val)
+				   unsigned int reg, u32 val)
 {
 	writel(val, hsdma->base + reg);
 }
-- 
2.17.1


