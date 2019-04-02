X-GM-THRID: 6675276130832875520
X-Received: by 2002:a17:902:e38e:: with SMTP id ch14mr2151975plb.146.1554208881391;
        Tue, 02 Apr 2019 05:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5681:: with SMTP id h1ls204879pfj.11.gmail; Tue, 02 Apr
 2019 05:41:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwL3PXUQPmHABCHf1BL59buVnnNhK6764hzODtHNOFpH33SL2Y+uG33MpTtd+ixnkekCjHj
X-Received: by 2002:a62:e01c:: with SMTP id f28mr1266687pfh.101.1554208880610;
        Tue, 02 Apr 2019 05:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554208880; cv=none;
        d=google.com; s=arc-20160816;
        b=nOEGoxxYw+H9CaVjNkd+0Zs6NvorRMOpqeLl1uD/9+dacA2zzXaAcs0Uf6Qd+7utLK
         tNnCNmeGn0CwthiUVfWBZcor1UxUzTtrrlsyqf2MifUFvVtbq5TkRRAIA/mjH5aJTVby
         RdDxGHpkjMDBFjLNqqQGSqAmX6elTSCiGboZhMkZofoE7A5ZusguJGns+j97nV2kYkIv
         o4x7vLUsen7C78AI6sgw61jkBx3wF/O1xeofQO5J7Lcm9mzp4a2kKQAEn/uKh99o1KJ7
         D8V67ZHTr0yVhNGrFCTJHrXzJqU3P2lc2MYZxTEX30rR5kFrSvdYJS8pA5oQUv/7bnXG
         Q8eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=SZ4YW5TfiyeEc9NOixdniCxzckbTZ42UFeUdf5A3Le01Jc1NGKldHr5/DW5jK4a0mq
         Ta2qNZ5ffzjRB6X9SOx8MqxIz9HHFdvLPYZeSZFQzoOa/Trb10qOwZIb2uyBQKRFs/ez
         KIp5fZr5ZJ3E5DuT5kq23rVFjITcc01j/4r3T7F+ZtyssYRCBh09lHoL9w2Bspbn+1fc
         /d5rYS9NH8+G5fmFxXdJBPqVW91Xfyka0SBqe03858/zcpTrJj8tmqdPGQxAsFLjy4Z1
         dRMDVKTrdGXy7OR/sEIZh3gfYEp/Qc5p2UIzqFWNFV6jIxLu1fxh9qb5VBPJtqzRSja8
         I5bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgJptWMN;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b38si797412plb.1.2019.04.02.05.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 05:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgJptWMN;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id y6so6236211plt.1
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=RgJptWMND+MGl2q7fKIZmShUPGMwL2Ky/cenx26a2dDaQQ/aekxshnSJipguHKzrmn
         9lHSloFdPrFGq2AKjmgfSguli71+4COCm7XSzgrCzP8JQbHaGhj+y44i1x+THxfaKeiV
         FNh0Ie0mU3pmVuUmPpjnjeMd+c4/vLw1zk4a/Wu9l/XacWZ+BrAhI5h5Z0nAako2gh93
         WYcSi6Ua4foTp+FF2wHZot4Evl6cM7IjNaJ28r58Nn9nsP9vBrvqdl+RV4RK775xrdbd
         A2VyH0E73EFJZO0RpA8NWCq6ugmdRf3B5843AW12tFtIcDyOULW1lhf0wuaBmdMIUvJ2
         DaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=XiMRJpF7VqXmtZ1ceekRm+jRoVK2gTGHla1GUQ83Fy2bKFkixvTrDJpAnvzwaEWvu6
         T4b2lWoQUOA00clGuvP11AfXqQIHXzJZ47VRCM17OsFExwfe/tH6PHVJEEb2ghYG0fBG
         DaFDcm2WTK2HJx6HRGrlp+LICseDNoN1aDrMkbOgafF/Nv+1xMBh8ba1L+p2paK/QbuJ
         xaYBjmOfSqsfcZB4+l4OUvlLXdzoIkgaIdJ93XeJ2g5zGU0LZ7U2onwJbXFbvvHieX85
         zqpJnfJ3HNCb0Ls+27pFADNJUNZ4WKLS9LXDOJFdPEi9VSE+SKeRcpdu565PnAkd7cM8
         9h8Q==
X-Gm-Message-State: APjAAAVMaxPwbgPVLt8fgNr1RZvwHE1rrBJdvempgGjhXDRcVP7mytGi
	Qcr9pSpYqFPpV/iRffAuo36KFkGB
X-Received: by 2002:a17:902:a704:: with SMTP id w4mr12214137plq.51.1554208880066;
        Tue, 02 Apr 2019 05:41:20 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id t190sm22650949pfb.33.2019.04.02.05.41.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 05:41:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: core: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 18:10:22 +0530
Message-Id: <e85c9986cfcf88423d83310b70bb785e47add908.1554208601.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554208601.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ebb45ac..254dd33 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3958,7 +3958,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 				/*  A-MSDU NOT Supported */
 				BA_para_set = 0;
 				/*  immediate Block Ack */
-				BA_para_set |= (1 << 1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
+				BA_para_set |= BIT(1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
 				/*  TID */
 				BA_para_set |= (status << 2) & IEEE80211_ADDBA_PARAM_TID_MASK;
 				/*  max buffer size is 8 MSDU */
-- 
2.7.4


