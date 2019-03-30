X-GM-THRID: 6674191522051653632
X-Received: by 2002:a5d:5285:: with SMTP id c5mr1436938wrv.2.1553957079778;
        Sat, 30 Mar 2019 07:44:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1f86:: with SMTP id f128ls700843wmf.1.canary-gmail; Sat,
 30 Mar 2019 07:44:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzVBIrqdY+QYrflO7NHWyw7xx1eblL7WBiApWNa7BCOLlGg4jEAfOy7nbD7MXv81X09JAa
X-Received: by 2002:a1c:e70b:: with SMTP id e11mr726068wmh.11.1553957078980;
        Sat, 30 Mar 2019 07:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553957078; cv=none;
        d=google.com; s=arc-20160816;
        b=u7H1LyamKv36OX/gwJy8jI10Dy9GuPnLmfFv1at1UdEymTNCNXz6g4s6wLxNqW7fNC
         86LS8gSKG1VJwFi8X5OvOFZPDzVHM7TZAoTMxZ9IMiAElJRpBVQf5+EO/q2dzGk0WJng
         ux9GKUnjWkT9oEcOlI93pgdLX4fRfuy9vod9hft7iR8qqgiwxQ7NFfRiWGQyuFftIXi6
         IifpMINKZ3UBQGeezJS5SXj72qUOGvq9bcxYz0KyLSW5H16ZnLU+ego72/wNAJcQDE9N
         8iSBDffdzw5zf2UjYhOQK41uOMzlGqbOMQMSf/+CyhyaTaNSTu9LqL+d6OZEnUNehOWr
         DaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6QwSidUTDUbl6stZUHs/HRfdDbudkd6gDFzK56ObpBs=;
        b=K9J+7nFICz7n8nO4wL9/xm7D6VF0XnNGfUEgvBIL39kwOty3osbDJ0annDD0WX2aPc
         cSiAVar6rhhikuvj9eCTMCd0ZQc07Wm3er0qIUsN1dqvFJxnVejgbNx+/a1jrWIrpISk
         Q6dYR8cMf2I2YtRKS5QIIsjAeIWSt9wgs7BPu/Rej1GK5+RfynkIVS8RJXmIeihpdpBj
         5eEOMpzRKHVwvWsMsUtwX7QEoUlvmo82dO1ZRe0+tCdfNrIvayPorA2KFjnQjePDAYMa
         qcXMhEE0lG+9GfOm6RVn8bngPU+C+C8jTAzN9O8um3UNPfkq1lCA8FdWpA/GUe30Yk6D
         KSUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u6si224556wrw.2.2019.03.30.07.44.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 07:44:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,288,1549926000"; 
   d="scan'208";a="376466182"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 15:44:38 +0100
Date: Sat, 30 Mar 2019 15:44:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rtl8723bs: core:
 rtw_mlme.c: Compress two lines into one line
In-Reply-To: <4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903301543580.2608@hadrien>
References: <cover.1553955183.git.payal.s.kshirsagar.98@gmail.com> <4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Return value directly without saving it in a variable and remove that
> variable.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 12661d7..ef5f78e 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -353,10 +353,7 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
>
>  int	rtw_init_mlme_priv(struct adapter *padapter)/* struct	mlme_priv *pmlmepriv) */
>  {
> -	int	res;
> -
> -	res = _rtw_init_mlme_priv(padapter);/*  (pmlmepriv); */
> -	return res;
> +	return _rtw_init_mlme_priv(padapter);

The code doesn't look like this any more.  Please update your staging tree
and start over with this patch series.

julia


>  }
>
>  void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4756f370659f5e98dcd00f7dea94b062d202235a.1553955183.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

