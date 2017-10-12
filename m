X-GM-THRID: 6476153920097878016
X-Received: by 10.233.220.132 with SMTP id q126mr3113835qkf.41.1507847085728;
        Thu, 12 Oct 2017 15:24:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.34.181 with SMTP id f50ls2522961qta.6.gmail; Thu, 12 Oct
 2017 15:24:45 -0700 (PDT)
X-Received: by 10.200.2.141 with SMTP id p13mr3178934qtg.34.1507847085315;
        Thu, 12 Oct 2017 15:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507847085; cv=none;
        d=google.com; s=arc-20160816;
        b=c69+umWsCLxwl6gNA/9VC/3ty3PxGawcZOgR351g2ts1oRxyqlSEH8K69CtP3Gm+VG
         j5ivW/TwNzH91wss2HJEaBauKKcOpHKs/mI24b6yu/me/CmwexhObKCeu0UUsj1OoZ0J
         hYn33OZUitMrKdCGoip2r2+jlb5cx114QBYPYwvocRtl5FmUeTS6X3pMyPlNubqCbOUM
         bjfxblQKi2q7PLK0aC9veo6u9d+P0TxNo9LG/ztlU0Gzx6ZaMU6bnMxclj4Nv7Nruwt2
         JXvLQ6wHwbX+smv1tY7Zxmgq1oCLqk0XBo/5N4Q8l7wyeYgiWZBTH1rdPmROKP6sm5Ob
         J9VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Po/79vgrYZxc9dcNtTKixNMKauWgK/jjhE+Mp8ckuFg=;
        b=Qu1trCGS+EExhv/fCc5zYrJNQReBhpeDjkTPOGcLDPAbBMZg2nhRdhWg4rvxddS+Ok
         2hr3mmnP2xSVh8Bdw8aCbfX9WOWxwXiY9oAZMxW07IQ9E19IwxXXAwY/8DiLirNHWSAL
         7c0Wz2mbzFnlXatsWWqie4Lolf6DXn51dYXT0CIgbqyhRVeE3at3Nvb5p93UjVhsCry2
         u2SEW6ydWJqJ6st7zV50s4CxkMtSulADn1DyoqbSMB3+DQjqXFJAwc46CKCLtbLj/U7B
         f8OoWXOGK8Dl/SDgL2EwftgND+GUR5t3FDP8Ng4o0L1vNtOPw8dE57c3Lw3kd/6hrgfV
         13Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=if40DlGv;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id d142si300077qke.0.2017.10.12.15.24.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=if40DlGv;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id m63so6919174pfk.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 15:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Po/79vgrYZxc9dcNtTKixNMKauWgK/jjhE+Mp8ckuFg=;
        b=if40DlGvp0oLt6PWDFcEfH7Q6HtxMP7hZZUQgEilYB8Mp6weQcxYOb96RK0nzVKfhK
         5OnVuvaLzpSLPFVDm3KhqcdFpCU8Ox5BFQUQjR1lXU4zq5NS30EjfVDqXnjFXsAgdyh4
         NPu9Ai0Jvr7Hrnz0qNC9mLaY2fBn3wnyQAy0+f1rTXhL3aIgbS2gE5qwWMbvXv6qwlV5
         xWqcyxe9ccp4sSqugt0FXcg8PEif6MoOhfF4Xa7MSaxMEbKHwKRyznhY9fZWPWDkXy8D
         jAfpBCrU4eZkaJoeK4DbQ5htZEepKSVujkwggxsFjuoCn7Yy0cPYb2bmGqWRpg4Q4lOT
         4g1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Po/79vgrYZxc9dcNtTKixNMKauWgK/jjhE+Mp8ckuFg=;
        b=AqpyF/5YyfUk73XHYIMr89NQs3ksU6ZCXZkko9BbZarajnlk9QAdnRxa03NqPUeazB
         88B8GGR69jvngwJdCs5SUESa0n3y/cqqQ5a03lwROy0Nqhx1hfDie1P6t0iGtZ1rYSvj
         fTybV6ouxtU+FPyKIZApecqnYnjWRYjT5uYCG3zNr1yujc06/jqxKYgP3/I/irfDppsR
         u33QFKLGvkjCuFbZxl7B/p7QkuXQaiINbeu4kaLTZEeeAnjPMh4Jkc5u7kR2vaeqhh8x
         VqJuA1j26wasmadF04RgtZcc0U5TmD/w5SVPxrDauicOi1ywlTqy6Ej+LfLdhWcMncSn
         Wotg==
X-Gm-Message-State: AMCzsaVseKad7hYvoWMMxR/EW/Nce5NbDDude3C5X5KQYZXEJdskPddx
	Nz/BCro1Uy36UDmbJLztMlxTOf4w
X-Google-Smtp-Source: AOwi7QCVSj9GAWndj2IUNcXSTxAZia0NsJxqivtV5p7Oewx88UMsRuq2AKKu3UneQFVwPnzBR/N96Q==
X-Received: by 10.101.74.12 with SMTP id s12mr1265717pgq.381.1507847085014;
        Thu, 12 Oct 2017 15:24:45 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id q13sm25299185pgt.87.2017.10.12.15.24.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 15:24:44 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] netfilter: nfnl_cthelper: Replace kzalloc with kcalloc
Date: Fri, 13 Oct 2017 03:52:18 +0530
Message-Id: <20171012222218.1220-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

kcalloc is preferred to allocate an array instead of kzalloc.
This patch fixes checkpatch isssue.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 net/netfilter/nfnetlink_cthelper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/netfilter/nfnetlink_cthelper.c b/net/netfilter/nfnetlink_cthelper.c
index 41628b393673..f1ce335b9158 100644
--- a/net/netfilter/nfnetlink_cthelper.c
+++ b/net/netfilter/nfnetlink_cthelper.c
@@ -189,7 +189,7 @@ nfnl_cthelper_parse_expect_policy(struct nf_conntrack_helper *helper,
 	if (class_max > NF_CT_MAX_EXPECT_CLASSES)
 		return -EOVERFLOW;
 
-	expect_policy = kzalloc(sizeof(struct nf_conntrack_expect_policy) *
+	expect_policy = kcalloc(sizeof(struct nf_conntrack_expect_policy) *
 				class_max, GFP_KERNEL);
 	if (expect_policy == NULL)
 		return -ENOMEM;
-- 
2.11.0


