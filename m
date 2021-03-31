X-GM-THRID: 6945952502339600384
X-Received: by 2002:ac8:7381:: with SMTP id t1mr4663216qtp.3.1617230615601;
        Wed, 31 Mar 2021 15:43:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls2176526qke.10.gmail; Wed, 31
 Mar 2021 15:43:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwVLAMGkUDPbua+iRbNwXzbALrYMblTH6rpDcv162sNu1kAaEApGyOIJGPFuQLwJylesXzG
X-Received: by 2002:a05:620a:749:: with SMTP id i9mr5714809qki.40.1617230614736;
        Wed, 31 Mar 2021 15:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617230614; cv=none;
        d=google.com; s=arc-20160816;
        b=011K1pHxecv9KiP9XibARnbqeooFsMZa3AFYWLZICqkhPC8NlT4uIzvLPkDr2HsWtx
         anr3YDE6dqvWk0AdhMkRAEM5gA+ylTOob8lgAhHZ+97DcLiqBuOL1FoYMnEgjYXblbma
         jeA+9v2cUcZU+AyO3xt3lfXYmctQLrvzV8DTAVbW2fVSgldrxLhnp9uAnQy0OPnh+/jf
         urVpcdjzZ9VME7iE8jKpZbDzxvF9ugHu/WovaN7QOXTfgvVPn4gnnxUe67rb7oyOgsDA
         hRTlnHg807DXVTyw2Gh4leloFvPjUpHCx6qGIrRT8iC+gfSzqoOyj80EHKxZlO7Qj9sK
         NJSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=b3Um2U35Iqe6avFKQSLtjyAh7X7/XjvkS2AH1QhoRNMbIf6AxJ+wLAtb8pXUNlGshi
         eAZ2Cy2j7KoFdynA2mIfrtoVL7pCIlFymzu8B77SAimTRfrZxSX0ARO1f3ruYYEcmJ3E
         FO8vDfAAIdpU80Wg1MTXM7dlBEiAa/oEBG1YaV1PWDlEsMTXQDxe1BpvOR/Xri+5fhsI
         4rsANlGYkr8PuCV1efn6ZMCrI0td1+99CD5TWAwYzfKnLYzujB0BzQLHPU7XT1sE5UJz
         gK6gXC9/qh2yuo2css9NH4DUT+oSvfymGT6t1iCq/8AxjgGqGGUk4pkSwa06+RpIutnw
         Athw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MzX3JU0O;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r26si354118qtf.3.2021.03.31.15.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 15:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MzX3JU0O;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id g15so68944pfq.3
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Mar 2021 15:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=MzX3JU0OUs5G8IfZrnQry1tgAyUjHud5si38mxPwDNwcltJQLMVZkMBc0dQ7ugSF3z
         jtIfEpm4k9628RqdVhX5Dm++zoawQ8jwTCDnuLHBl+4N4sOyhN4vQrNJkUDXALEy4o0K
         MAOoa6PYnBkarCAaO2FoRnz6pnMgAgzF2uI35fbikZbK/mYutCfA4tTYAVjBfCoOblBF
         Xsmi7Dps5AvRmB6YWgWm9RrVQrBpMcoVC4Mjt1DEnBzEawkPEk5gqBDacpg0kxBWVyOM
         1KfGB274OTv2uHXhLaAtTwvRL6x1deiRk/XLb4RR579LbCZCkldRCGkGEFzaEoDJ91xX
         iQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=toPBJ8H1jiy0t13MG1GhFciW6fzAHc0XjGHhuXdIhixA+992rN/HX5HAmEMhwmJFuj
         KygdIrNJULl/ihv239f6U0d/BPzNRWn2DV2xTz8OpC3oOH6mT55qZWD0KaDwM7/+fj69
         By1Z1sDTFrxOmnrldrkVWuwGogfwJY3hodyi8nJsICpE2MtqXGnW82x6osSp0AWwpZ5m
         SUxdJKQgB11suFLUrW9nJq98E5iVHRcQkKCJciQFM4kxFkSx4dpPyRQ1yWqVJNVNFcsg
         8EXQyi2LkJbHCntrezTynNaTKZ7XBcIDtxuWrehMPr4Qc89sjpEiHsnVT7wC5IX7G7Zr
         noew==
X-Gm-Message-State: AOAM531e+9WWseNoqZENG38XJmvA7ZtFByi46nSOIkTMD2sYyZgOV1m3
	DKOOIUps74hGp9si4LB2ruf5R3DcKvxuOQ==
X-Received: by 2002:a05:6a00:2da:b029:202:7800:567 with SMTP id b26-20020a056a0002dab029020278000567mr4775723pft.71.1617230614000;
        Wed, 31 Mar 2021 15:43:34 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id h19sm3338830pfc.172.2021.03.31.15.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 15:43:33 -0700 (PDT)
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
Subject: [PATCH v2 1/3] staging: rtl8723bs: core: add comma within a comment
Date: Wed, 31 Mar 2021 15:42:29 -0700
Message-Id: <2944d1a0e8769edb489bb336423625a61d314d05.1617229359.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617229359.git.deborahbrouwer3563@gmail.com>
References: <cover.1617229359.git.deborahbrouwer3563@gmail.com>

Add a comma to separate repeated words in a comment. The comma preserves
the meaning of the comment while also stopping the checkpatch warning:
WARNING: Possible repeated word: 'very'.

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


