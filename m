X-GM-THRID: 6947041729185841152
X-Received: by 2002:aa7:d541:: with SMTP id u1mr3519464edr.95.1617484578715;
        Sat, 03 Apr 2021 14:16:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1901:: with SMTP id a1ls6112152eje.0.gmail; Sat, 03
 Apr 2021 14:16:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnaaYrecabhQPfZCc8ljxtUk37WQ2Wa2hMn8b/IWO9CrSulfTQEqIUsvWPJbAgAJnHRPGh
X-Received: by 2002:a17:906:b288:: with SMTP id q8mr20478967ejz.210.1617484577053;
        Sat, 03 Apr 2021 14:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617484577; cv=none;
        d=google.com; s=arc-20160816;
        b=beXn7e5DhGsIa8CSUDOO22x7TNf/npemb/qWDhnVP5PTBUYUHdwFc0sdnppln6S8Iz
         AIRH3QJ8xGZQBWl7nf9/roTUsQzeyB536cOdgHMO3yLmUymEO237YSQ0AFJCbWIHC4AS
         3FC0vbEdiCssCpP2e4oRwJTkRSu1nyODYqJeNLOttEckm9vlwB3rkd3SDHbw1Mfg8B3L
         AJZyAQsrjTUcE0HVsPahJiZ9dmex1ckn/Ih/r2yJRyQm25HC0Of1bvCrWR28sB/t2/de
         xilYJw7IB46toggS9GQQqxwyIwfVQp75GuQbWsQTuvnSshw5HltE/uBJCrSt8+NqskL0
         FsAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=/eohcu1c0sIXkPPNPSAIBXp1RQ4p50ByOv6aO/SlUqo=;
        b=GTIXhPq/owAOW9LMm8WONocQnqh+g0FjpN7kg+nQ0xw7Za08eYEc9dtk9FoX+iA0rS
         VecLcOTu0umk7NffjI3BbBKaztdBu1PL5GRVx58gkOwQZFy3SufbZ+iqBvdoD3C5/NVt
         sNrCPpHupiJps9IY5XTSpe1XSyh3z6dvUl3sjjle2Hyq43b6exuPs3ZZJPWCuThHI89Z
         8nFab2vMllVoyw78erEcllnXp/s1dxXA8FngSaTaeabFyhu8YJQE0eQykptl0gVt8AvS
         HMN+0HlNegchOZ1pWG+mKcMAlEbFEq3L/IEk2V9iNm82yuK8k6MQHP0WxKMLFlBRZxhu
         rTxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m18si1303926edd.5.2021.04.03.14.16.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Apr 2021 14:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Apzj7MawzQ6d7AWD4XltsKrPx2uskLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkKzBOcskdmZFgMkc2NUZPwP0/02JJx4ZYcJruuGDTh0V?=
 =?us-ascii?q?HYT71KwpDlx1TbalzD385bkZxtaq1vTOD3ZGIK//rSxQmjDpIAzNyfmZrGuc76?=
 =?us-ascii?q?z21xCSFmApsB0y5dChyHVnRxXhQuP/sEPb+d/NcCmz27ZX8MZN+6DXVtZYb+jv?=
 =?us-ascii?q?nqsL6jXhIcHR4g72C1/ESVwZrzEx2Z2RlbdjNU3N4ZnFTttwDi/K2sv7Wa53bn?=
 =?us-ascii?q?phzuxq1MlNHsx9dFDsDksKQoAw7hgAqpe4htMofq1Fte0YPfjSdP4aO832ZeA+?=
 =?us-ascii?q?1J53ncfn64rF/W4iaI6kdS11bYxVCVmnflq8DiLQhKfvZpv55TcRfS9iMbzaVB?=
 =?us-ascii?q?+Z9Mtljpx6Z/PFfikCP+59/TEzJtnSOP0DMfuN9WrHBZU4sYcvtroZYC+V49Ku?=
 =?us-ascii?q?ZJIAvKrLo/GO0rI8TV6p9tADWnRkGchHBmxJiIUms+G369MzA/k/3Q6SFfmDRC?=
 =?us-ascii?q?xU0CyKUk7w493aN4cYBN46D/L6x0iKsmdL5sUYtNQNgAWtesTlbGSRXKPG/6Gy?=
 =?us-ascii?q?WBKJ06?=
X-IronPort-AV: E=Sophos;i="5.81,302,1610406000"; 
   d="scan'208";a="501479224"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Apr 2021 23:16:16 +0200
Date: Sat, 3 Apr 2021 23:16:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deborah Brouwer <deborahbrouwer3563@gmail.com>
cc: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org, insafonov@gmail.com, 
    martin@kaiser.cx, simon.fodin@gmail.com, straube.linux@gmail.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: add comma
 within a comment
In-Reply-To: <20210403210930.17781-1-deborahbrouwer3563@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104032315200.7875@hadrien>
References: <20210403210930.17781-1-deborahbrouwer3563@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Apr 2021, Deborah Brouwer wrote:

> Add a comma to separate repeated words in a comment. The comma preserves
> the meaning of the comment while also stopping the checkpatch warning:
> WARNING: Possible repeated word: 'very'.

Thanks.  That is more understandable.  Isn't this a v2?  If so, there
should be v2 after PATCH and an explanation of the change under the ---

julia


>
> Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index ed81cbc5e191..99e44b2c6f36 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -1243,7 +1243,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
>   * If we turn on USE_RXTHREAD, then, no need for critical section.
>   * Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
>   *
> - * Must be very very cautious...
> + * Must be very, very cautious...
>   *
>   */
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210403210930.17781-1-deborahbrouwer3563%40gmail.com.
>

