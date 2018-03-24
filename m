X-GM-THRID: 6536479698699943936
X-Received: by 10.80.230.17 with SMTP id y17mr8590799edm.0.1521903383184;
        Sat, 24 Mar 2018 07:56:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.144.194 with SMTP id d2ls174235eda.0.gmail; Sat, 24 Mar
 2018 07:56:22 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvnEIkgJv+RAZHbhvWqxNTdi4VithoQoV4PIBRqchGRqCT7788zpTpCaljbiWte5voGAUJs
X-Received: by 10.80.214.206 with SMTP id l14mr1492784edj.5.1521903382388;
        Sat, 24 Mar 2018 07:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521903382; cv=none;
        d=google.com; s=arc-20160816;
        b=dKEK5UkaOGE9Rd1UC3lz+/Xf5AgbzAPV8q8GjwDtPb1TbVqxo4aywHdEgxyVT83Lgp
         94+Y61meOgYCslwR/3PVL71+qzgjXIThQG2kYrVuTpT7ibrZCCMV/DvLNKlZXj8tLMWM
         tzRVSi4Aqzm65hobRd93SF+sWCYQPdul77Lop5TV2XEmFIin1EPEqi59fdd9dSM9+bxk
         3rRdRLEBgKjZ3RBWLciHQE07bSbMhSBdY6v79qteOuqwMsaaNg9VHISNrHO+KNZTi0le
         I+5Pon2ER8OCrM1Hc4VXLUve3KpKQHBQP7osXRtMwpdmBxfkcYcnzBq+Ri4L0rZHCaKn
         kvDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Dp3fClDnXEKBOh1qyEXc7TzbaSPMGbhNUmv2GW/msrA=;
        b=dMbmsXgURuiwDNkqPAMmK5TDoj+qNLkL4nlwuPHnmHViHTFkz0h4UuqVt3qhyu9pHP
         OyFIw6LAXbPsy1A9xlcM72hwTDM8JUCxLsEif8fEvmXwQnHDCed9ufn6xOE2//Btuteh
         MVl7lAeeyrbCfVGZ0IQTP0Iho+Bq4pz6R7VajP+pyrrpSvI88QuADiJ3VMOWawNRqDHD
         QF8P8WmPvwnd/mFLeEp2Tzl63St5ZEjlu8ELVTYxR5f29m5QpdJ8+2t6LsdKNjwdKm3Z
         SEri6oTGYnWlcQzY6JZT0z5/epyn/zxfBlTxHORoX0aFtdCNWJbCYumzZq3ED4eRVkmj
         Bdag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t11si320582edc.1.2018.03.24.07.56.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:56:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="319734768"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:56:21 +0100
Date: Sat, 24 Mar 2018 10:56:19 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/5] staging: vt6655: Delete unused
 enum CARD_PKT_TYPE
In-Reply-To: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241056070.6044@hadrien>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Delete unused enum CARD_PKT_TYPE.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v3:
>  - Deleted the enum.
>
>  drivers/staging/vt6655/card.h | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index be5254a..07d9fa0 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -39,13 +39,6 @@
>  #define CB_MAX_CHANNEL_5G       42
>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
>
> -enum CARD_PKT_TYPE {
> -	PKT_TYPE_802_11_BCN,
> -	PKT_TYPE_802_11_MNG,
> -	PKT_TYPE_802_11_DATA,
> -	PKT_TYPE_802_11_ALL
> -};
> -
>  typedef enum _CARD_STATUS_TYPE {
>  	CARD_STATUS_MEDIA_CONNECT,
>  	CARD_STATUS_MEDIA_DISCONNECT,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521892758-27981-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

