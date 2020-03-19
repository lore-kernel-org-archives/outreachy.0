X-GM-THRID: 6805874038364176384
X-Received: by 2002:a2e:94c8:: with SMTP id r8mr1871445ljh.28.1584616075079;
        Thu, 19 Mar 2020 04:07:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls334349lfg.6.gmail; Thu, 19
 Mar 2020 04:07:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6QWd75RvA3Sc8dmKDhsTh2SBi6BkdV9bkw08oAv6dEb85VceKJdUBvpaUo73DYysIXwO6
X-Received: by 2002:a19:4b53:: with SMTP id y80mr1775927lfa.77.1584616073829;
        Thu, 19 Mar 2020 04:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584616073; cv=none;
        d=google.com; s=arc-20160816;
        b=CuHQoS7BQl74j8nVIYud0HICOD21e4DsU3sUEf4iJlZ0KY5Nh8e+VpexNNXFDJv8uK
         3vyVK7nFmWAbmGfQuKVwnTB7ithdEuZE66KkqRLG0Nb+UCNLlne1G8np43P+cIRCsNgF
         9I8JZUrIcFHQA99OZ4kgp0KFgUtDP0kCRkVyIu+SKXWheK1p3+GKld12OJgZfc0lYNFM
         im1jdWpb/4ZA1qVaw6343SSbnIpA0/6yZlKV6k1xAWhDFULIF75k3mSeQoEwK7BJemoX
         0CQUyeQuwmAwEqdSqr71aKEA1dmGZLK3nTt83GF0DulgQHMop8JswVvxJguzvlQUAdy0
         FC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=w5RhZxjjt3Tc80nwIStLxN0j5a/j2gCbPi2hTepxzcw=;
        b=gdIJqYP0ZNplBPRvQaEiefTdL9k5+kOJxJ13akFMwmWrzqXqTIzTa4ztESLZk4dCfK
         S7Shhu8T7qmmCRtmi7pbRaIf9FP5nNGBY7nriIvOCGNAqoAP4vU09C5tEs5Bp8PPjJ9c
         hMWXIRj/Vtcl5hokNBMJbFNiEsX5KrfRfVtQZxRtY5JKDsuMOULm8VFAHHToavrU7tox
         ny6gRCqpyWc3z5w4RBVv1tP6sTT65ExcVtyN3uIgzxPoaWMNkL+PE+jW61wOynolTlsV
         4KE9ivii2SfXNGYReBvjc3Ru/Owx3S3rvXmnila1iEV0yKiMk8kh2y5kgBnV9kq/Fk1F
         +dCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id c15si71639ljn.3.2020.03.19.04.07.53
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27813 invoked from network); 19 Mar 2020 11:07:52 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:07:52 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH 09/10] staging: rtl8723bs: hal: Correct a typo in a comment
Date: Thu, 19 Mar 2020 16:36:52 +0530
Message-Id: <75cf16823e5c008ebc2e154d5416981955702caf.1584514678.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584514678.git.vkor@vkten.in>
References: <cover.1584514678.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a single typo in a comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1e8b61443408..2b375e75be50 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -192,7 +192,7 @@ static inline union recv_frame *try_alloc_recvframe(struct recv_priv *precvpriv,
 		rtw_enqueue_recvbuf_to_head(precvbuf,
 					    &precvpriv->recv_buf_pending_queue);
 
-		/*  The case of can't allocte recvframe should be temporary, */
+		/*  The case of can't allocate recvframe should be temporary, */
 		/*  schedule again and hope recvframe is available next time. */
 		tasklet_schedule(&precvpriv->recv_tasklet);
 	}
-- 
2.20.1


