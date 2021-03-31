X-GM-THRID: 6945912104921595904
X-Received: by 2002:a63:181c:: with SMTP id y28mr4821052pgl.175.1617221192010;
        Wed, 31 Mar 2021 13:06:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls1595223ple.9.gmail; Wed, 31
 Mar 2021 13:06:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJykNJmjqJ0aMhXJ4fKfOpsAkwEy8bGE06dxz02jXNee+sWP8pgvwk70FzYA8bAjpMt8iskJ
X-Received: by 2002:a17:902:8218:b029:e6:190e:48e with SMTP id x24-20020a1709028218b02900e6190e048emr4594966pln.33.1617221190807;
        Wed, 31 Mar 2021 13:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617221190; cv=none;
        d=google.com; s=arc-20160816;
        b=VlinyuZ1hs73RlxIIHXCkaZEn/xg9Sr2bVu4IBNNhBELVOMvdUTUjcO2tFrBAQp4iB
         XR1/8HyiqdRoH1rafaOo0hVKfp+FLPyKskpfxR0W9xayDo6h3ARAbHxkQ+dQ43+Zerp/
         nDu2tJB73r9OnT9HdUHV0gUxCbQchxsCTV/k2OX7y4fMDBF33NaSIMTiNyHJc/g7E9/k
         C+IB/zRXsM8tror3G/IcjGQHTmJb7jIx9pNQvQ9N/xpBtRf5NqNFqLLUm2G0gzdJ82Cy
         zPr63pnuJhDphyhQXkJY7v/e12lY2UBbdKfgKJUqtcScir6SkVxIDo+7wb8O/ZyFl5Y0
         pw+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=ys5Gh541Ca1Dy5AHML2SDPDdvxPboGDXHtvxkAdx0CY=;
        b=OFqPag0PI2GLTrPWs7W8ThT0fFZEQSRPsF4T8+4BoESxCOUo5qHcOdbr8Ea9cdEWab
         XYHFcYgc8euIlMps558IwUKbvazFXcaxy0nWCTmzFnAjuQcUpovR16cJxQMLkfvSNPdZ
         DBuMyR7a4Xwrf3qKeyZvAq/ZiamT8NMEqe6ufQTZPNeFlXnFuPMjlnXI82WKAYuJlzpg
         QxAITs2zTZgt64Al88cH3hsAlhzcx1ZPPIl7yXzUGXQDe2vri3toIF/WMY756Q97Go+k
         bQ2Ja21actZOPTRYoK7NNRqp3RUIJJP57I56vOFfAdQ9GFp81y01g5ALWtXx0UH+qPS6
         07Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h62FU0J+;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id e8si286026pgl.0.2021.03.31.13.06.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h62FU0J+;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so1767101pjb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 13:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=ys5Gh541Ca1Dy5AHML2SDPDdvxPboGDXHtvxkAdx0CY=;
        b=h62FU0J+qTb2wc2qPCi0mkO2oQ++3iRTgKjWRo/cHbSz2uNh7WugNdr71JNhINeH/9
         xCwID1Cd2/qnn1Lz7fJ0dxebb6xrZVaiLO2jm+xFZMy1uuVqDb/AIFSLallUIM3MB8mq
         oqJSBXgI1+RJvGM2U3d1TV8F8BbnV7P2sq+Hh/ylTV+bNPE44kkC6Uml6+YC9xF9Rxi7
         8BVbYj61hmtF1Z3EHdG4ppZs7RoDvuPuUcpysnpHLxDRD6I7zj7neuxd3SzxzkU/hx8m
         I0uZuUr3lVh7AnvKM5Hfc0t5YgTYa2IQO6yDzuUyF4FwNGQE/0AfC566ZCtWwwE3/uVg
         nWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=ys5Gh541Ca1Dy5AHML2SDPDdvxPboGDXHtvxkAdx0CY=;
        b=CUxteX9wWFvXzzPQbeE9qoeqEVLNObCpjnNbvFTCemqmtFSQa7TPwA+9D7HEsUtZpg
         op174tHLVDe44QR9YGxN2V4Djjf8JAunMLmNLKB/N3/MWXoDkDu+q+oH/YgeGgVSbgjT
         eDcyXvG3qFw5+UirLcY/aXAeCSGrkmHVBQcy52vWnAlLGjWPc9MCnWEnOrbW3KjJvlrB
         GJOQ8T/LbGu+A3NiA9656FvRix4YQDOeTUe/14Si10B3tgVJpONQRLyCOUoBkSDNzbrH
         FSXODyZ/2mTtoJ3uiPCyRUEfdL/DlTHr9mePvoxyYxLk3QDf7zsBi8OFiD/LAjeWgbcG
         m9pg==
X-Gm-Message-State: AOAM531ABQqszHEr8nS+YetbSjRzy1l2UhcbDUXfkiTyJirS0Gbq6gMC
	t+7CG2FoMggPkiu8PdIvcHCBBsUNaIfcaQ==
X-Received: by 2002:a17:902:dacb:b029:e5:b538:9ce6 with SMTP id q11-20020a170902dacbb02900e5b5389ce6mr4636548plx.8.1617221190547;
        Wed, 31 Mar 2021 13:06:30 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d22sm2985668pjx.24.2021.03.31.13.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 13:06:30 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 1/3] staging: rtl8723bs: core: fix repeated word warning
Date: Wed, 31 Mar 2021 13:05:35 -0700
Message-Id: <14c1a1f1f0a34fb821d47ddab6e7e63800ec2736.1617221075.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617221075.git.deborahbrouwer3563@gmail.com>
References: <cover.1617221075.git.deborahbrouwer3563@gmail.com>

Fix checkpatch warning:
WARNING: Possible repeated word: 'very'

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 2daf5c461a4d..3878caf0b56c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1700,7 +1700,7 @@ Calling context:
 If we turn on USE_RXTHREAD, then, no need for critical section.
 Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
 
-Must be very very cautious...
+Must be very, very cautious...
 
 */
 struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pfree_xmit_queue) */
-- 
2.17.1


