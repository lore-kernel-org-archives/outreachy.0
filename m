X-GM-THRID: 6472213781908815872
X-Received: by 10.99.9.3 with SMTP id 3mr811016pgj.19.1506929712518;
        Mon, 02 Oct 2017 00:35:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls2788639pgn.17.gmail; Mon, 02 Oct
 2017 00:35:11 -0700 (PDT)
X-Received: by 10.98.211.86 with SMTP id q83mr1070771pfg.22.1506929711862;
        Mon, 02 Oct 2017 00:35:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506929711; cv=none;
        d=google.com; s=arc-20160816;
        b=ZfBsp+moGYX56xZHHZD4IMn0ZchgaIetM1J4pXb+jtYXhJ9bwugLtsEodySM7OIGwD
         U+RXGbWkGM8Sp+wW7u0CS6UqYvAGJDEVcqp93XcVEVpi6jTj2lkaj/9aetg0JhD0yGPu
         aOopHh0tcNi/78Z6jsPuyfIJy4gGRoq0hTHyniF/uidGisVsFJv/AugtQ0Ys67cpM2nZ
         wTfk4zvpd6BkKAg634ntINFOD5qJAGCM9+EHyRfMwZZ3zrU3mbvkDRHj1HTfJSqG84i4
         CsYQa8bPzZvrEo0QWoV764t/lN3hnYzd2zFZrgvrO9E1bTvvlmBwY+WfuZ+YP+cQ2I7E
         yWkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=W37LsZkgsMsRSnwR5X6JEHLGJ/hdxZPAvTi0kPOr/J4=;
        b=f06ZNOBEiXImi+D46i+163db0yMnkwsbA8EH18gjQHSCxYErheKODMlNgVzDZJDzQT
         WvC5mFYxuke5HCY2klEdH6GQPFIgVTDfbHCS5jkAWbCqOYn5Vx1KWJM02PFY2GKxptpg
         p3PH+9WGkrxRkbd93b7euSdT3DcO2LmmwYv3Uom5u9Kl/W+TqUAHo7/cNg0O1BRMQwVy
         4IU35FKeiZMzhS3rqKs7IoQ7KtYaICiKqkCdY3BYzGhW1kipXgxQfjo+8tAEp8+WJdTD
         QUZ5ku+RHsGCJid2+x3TNjoUS7DzZET7IMB7g2mqA297csd6zE7y2jA5jt6UHUaohCeP
         zFuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cfDINbPP;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id d207si950986pfd.16.2017.10.02.00.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 00:35:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cfDINbPP;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so4893349pfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Oct 2017 00:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=W37LsZkgsMsRSnwR5X6JEHLGJ/hdxZPAvTi0kPOr/J4=;
        b=cfDINbPP3QAj2xfb6RLO/m44KE5/BEsFVMDSctbZS0LxFUkOXcsvg7qE82Dal6Q2e0
         +DUD6BF3lpv3tRK8R5DDjUDP9uRll7aZ+H9RXIioFdTskYODtSxHVKRhZHt4EjbyGkSB
         ontVNOuCtbK/rzIDUjtcX+eXVaqxor2Rx52dfIj0krSXfWVKKylTEB77T7BHdoqhWmbr
         AJXMd5sKJVFyc5bO5hzNk0UKDO6a4FLZij/XIevR0IM0pdUsexEbHp93NscDi/mKKxe0
         +Q5z+9Jv4pfkTA51C2krc7bR1id98uXfg782iPnhEIytPPYxh3HzBLQelSVnVdRm1AEG
         hAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=W37LsZkgsMsRSnwR5X6JEHLGJ/hdxZPAvTi0kPOr/J4=;
        b=cN6kXT7qscJ3T/wwL9DWIQQulA5Qh35X4E8undSPVS7sXbCohzUgYNlC4mioTBgFZ3
         ehDNAy0t+i2Or1ttiUcRPI7fdmAGXHAbOtdFfiHc4AHnn3DdUE6MxrRXlYKMdyrEMHuJ
         CBM+SRnFUblBsVz2EAuBjLWNttxw6G5JDU6Lm25RnF3KNuI1XHmxpZRQGnj5nCiFrebm
         WDlqjtos0rJH5YnxZwyfPDERRRDjhRLCBa4/b/VyZep3RLQsogbuoUFttWAlUDZXdUVx
         PwZmQ7HLW1L0QdeVTH+2Qw/D8WmUik8hDcu9ajiqc9ZVrO2gLiz7Jphob+fJaBQDcZiz
         X0+Q==
X-Gm-Message-State: AMCzsaUcC/eR/+4yT4i2MhRjpeGq28Ao5BgKLQsRHbXeG/2EXH9b+hE4
	Gr3yw6JdD4fAkkbjGhrj/WV+qXqM
X-Google-Smtp-Source: AOwi7QC84CxbV0DBrlakfEcJaQgIAjycuAiDsOyqiuMoiJXSIe3hMu3rhinkg/Xv0XlihwB8dzB8Mg==
X-Received: by 10.84.248.129 with SMTP id q1mr7330000pll.156.1506929711691;
        Mon, 02 Oct 2017 00:35:11 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id s9sm16323720pfk.20.2017.10.02.00.35.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Oct 2017 00:35:11 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 2/3] evaluate: Place constant on right side in comparison
Date: Mon,  2 Oct 2017 13:02:49 +0530
Message-Id: <9c9100de4d9803aa0e7112592a1fa5a79bd1fd7b.1506928244.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>
In-Reply-To: <cover.1506928244.git.harshasharmaiitr@gmail.com>
References: <cover.1506928244.git.harshasharmaiitr@gmail.com>

Comparisons should place the constant on the right side of the test
as per linux-kernel coding style

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 src/evaluate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/evaluate.c b/src/evaluate.c
index 5624ca2..b783054 100644
--- a/src/evaluate.c
+++ b/src/evaluate.c
@@ -2174,13 +2174,13 @@ static int stmt_evaluate_reject_bridge_family(struct eval_ctx *ctx,
 		protocol = proto_find_num(base, desc);
 		switch (protocol) {
 		case __constant_htons(ETH_P_IP):
-			if (NFPROTO_IPV4 == stmt->reject.family)
+			if (stmt->reject.family == NFPROTO_IPV4)
 				break;
 			return stmt_binary_error(ctx, stmt->reject.expr,
 				  &ctx->pctx.protocol[PROTO_BASE_NETWORK_HDR],
 				  "conflicting protocols specified: ip vs ip6");
 		case __constant_htons(ETH_P_IPV6):
-			if (NFPROTO_IPV6 == stmt->reject.family)
+			if (stmt->reject.family == NFPROTO_IPV6)
 				break;
 			return stmt_binary_error(ctx, stmt->reject.expr,
 				  &ctx->pctx.protocol[PROTO_BASE_NETWORK_HDR],
-- 
1.9.1


