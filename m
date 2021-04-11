X-GM-THRID: 6949956774560530432
X-Received: by 2002:a05:6512:3d9e:: with SMTP id k30mr312575lfv.366.1618166202587;
        Sun, 11 Apr 2021 11:36:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls697649lfv.1.gmail; Sun, 11
 Apr 2021 11:36:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJys8vo3YYYXSMqmpsTep4lv/sXMrMQ8f7CE03Znx9TNSMFEIQMrn53qFeYrCy5FaD1emQEL
X-Received: by 2002:ac2:44b3:: with SMTP id c19mr16081413lfm.68.1618166200749;
        Sun, 11 Apr 2021 11:36:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618166200; cv=none;
        d=google.com; s=arc-20160816;
        b=NBf8v/lt5LRczpM+NxWpt2Akrx+QzIyHpQ9SJw6DHDaTYL4mKv+xB0KWy7WYZR8aUl
         8O5tfWLytHTgc6ReKBrc+blvrS59UbdEuUzlL51rhgxSvI+KI5xlEp7WxqIBg8c8/mAG
         dwKG+gfJR0/fG1VCLhyccPSiyboI/G6WVTcPEFjta6xsPnv5bwr3iNmiBQJ3bE46yxjs
         lbmOJxMubvXdl1aKzTcg8R5Iivk01guoWt6DhXEzidERrb1BA5SwRHdtg6YfLujGT7cn
         ICFimLYIkUE/XZqW8MJStjQtaEjtMcDPeEFWeepizW0PcJWXjTD+oC6jPDlfY4QzQLOV
         szIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Rr8E+Q3FCa1M4riAo8GDxxlFhS6eYncmiHkHOyhsOSo=;
        b=cwivRULU0fL3956XQ6SVSZHaiAOadk9xva+u9VVHw38auTuL+u5IWpqzTMGF5Ak2AT
         +9+PbTnq+VDcxdPxMaPjUr6iuXKimmRGVAzucc7RcoPCswjttAG7A1cTKiztJCbtCx4j
         RwJ+P05QZOO0bUoR4zcF0hqDx7rxBBl2qIpA9eN6xa1r8Bo6MlBn5/uW67wVOmhTjZnj
         10L0d/a+/VrYwRY3e0qgXjDYT61BZOpZAymO05CaB129aCYEQ6ofH89cRyD+BRMrm1v7
         2R4yUVctoz/HZ+ZogYaAYNlNcVfNP14LHuEODpRGMJfgTsA32fz0lCN2qxn75JrLG9bS
         wbtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kLGrW5+i;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id f7si442751lfa.0.2021.04.11.11.36.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 11:36:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kLGrW5+i;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id sd23so7943424ejb.12
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 11:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rr8E+Q3FCa1M4riAo8GDxxlFhS6eYncmiHkHOyhsOSo=;
        b=kLGrW5+ir2nwKkLfv6Z2DtUSw1y+2DzF6B4wMkyx23E5Q51FF6kL+BVvI8akoH1sJv
         G0fhRDpWg4XMTd5blaLUu9JfkPO58nGgQcYbWHmG68wB760uBnHhqlkVNjZ+M3uswEON
         v248q91G9T5Y391+IYxmxQ+VLmBBZt4wgpETtcpPsFzGw9CBW2p4q3tyjgnOWaXrdOSQ
         2Hw7bC/EDuds6VWWjTvfLGi/dRLOegHM5ruEu08h85ArBO61QzrGpLZ6Jkldsr91xg30
         XCB+EegHMYzcpBoNIBIPKIyZJoQED2ID6aesBLaCSpEqfqZtf8fZdkcO+PFDtS4jke+x
         7Q5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rr8E+Q3FCa1M4riAo8GDxxlFhS6eYncmiHkHOyhsOSo=;
        b=HszHe4Fpfmdr/uuTym+or7Ztuj7G1WWCf+349Z19hPDrxuWz+H0lFhKlYmsAtal1MJ
         /TCxRRZh2orBP+f2StifHDjrYHtj5uBzXZLfG8PsfBKtS/9mszpcYPr880x3o/6BxAdh
         jtyuZVuzgV5/DGUSUqy97RLYOcTLVn5+XqmUUqtg+q59DynvK62jQST9i3nYah1KcARE
         ENJtjon2oJHnHnD16Hsoo5qsKbqLJfUaZQ9iLN8CslsCiyI6MzAhg47XSpjmhI8Moqoj
         onR5plpSZ3kf4Mumn+y8FN1FMr2hfs1wnS0nnGVs0i83COFx57dF7lsjhbDhgy2dhvq0
         BGwg==
X-Gm-Message-State: AOAM533kBkPZWRd3xv/JSziKgcGltqi8xMZ2drs5/wNVQmQMRSEBpksb
	c0RBM82I3i+jaOG9kCfRLXo=
X-Received: by 2002:a17:906:f8d7:: with SMTP id lh23mr24650525ejb.457.1618166200337;
        Sun, 11 Apr 2021 11:36:40 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id g26sm4292277ejz.70.2021.04.11.11.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 11:36:39 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove variable set but not used
Date: Sun, 11 Apr 2021 20:36:34 +0200
Message-Id: <20210411183634.18385-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove variable "int ret", declared but not used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

Changes from v1: Change the text of the subject and log.

 drivers/staging/rtl8192u/r8192U_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index f48186a89fa1..30055de66239 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -902,7 +902,6 @@ static void rtl8192_hard_data_xmit(struct sk_buff *skb, struct net_device *dev,
 				   int rate)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
-	int ret;
 	unsigned long flags;
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 	u8 queue_index = tcb_desc->queue_index;
-- 
2.31.1

