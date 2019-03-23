X-GM-THRID: 6671577370158170112
X-Received: by 2002:a2e:9086:: with SMTP id l6mr7944439ljg.190.1553348079237;
        Sat, 23 Mar 2019 06:34:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2c7:: with SMTP id y68ls1435151lje.10.gmail; Sat, 23 Mar
 2019 06:34:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwsBM2WYHLQHAm4Uhc4lBWzp0iu7+udCMfXN0LdcrEd5a9TM+OHzLetl+zQ/iTfevnY/hsX
X-Received: by 2002:a2e:9842:: with SMTP id e2mr8695237ljj.142.1553348078324;
        Sat, 23 Mar 2019 06:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553348078; cv=none;
        d=google.com; s=arc-20160816;
        b=c435Zter+elqs+3F6/i5j8/Ij532lVVvkwetIsS/w8KEGpfOPzjWVdluJaw+FsBu+7
         gWCRqD361YMh9w7+ws0/mn4bmSpUYZUs1cVBiruC12ez+u5L7Uzc5+Xq3cGpHndjSBK1
         kF0Hi2Zq3BidiTN76VNtfcMV8jKkrZPyUgHvVLn6dTMSfQYk8Iy3/GmTOYKzkYLbDQyI
         Akhvhb+ZWUuW376BXqxTtv4Le3NvXyJCSessGc6We6ALb21auweIaN3vT5yP2bkjUzyJ
         fv5O8VTpxvZkNlPKnW1pMqB7UeA4pF+XytfYf64XUz10TZJLuSKvJCax2eBH2oYOi6Zn
         6bdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Hs2qiumz6TUrqAPmijz/UY8OiSZQcQ3UahxMnEJcuZc=;
        b=tgOvk9u7fIS2bpKxYurinVZ6IKh2yjQOirVF+CElQIwYmc/nHK4cgSoJhdU/qbeMzc
         ZxPPjDDp8yROGw1p5dDD7Jl16Iaa5gz1DULJWrmxPGDaDBVjDX00OPbQ5s/ZJZbD6FGQ
         LN1ucYw8vJRv8w8pzeTgHjEYVPzdVObi8GI5d3PS3Pne8X2Yn87v1E3dqkgkFnvJqv1f
         GxkO+NUef79bNdvDosq3PiPhNI0E+NOteptfWuTpEVAoAm3OF0CfFl8/pXVZq5KwcgZj
         Lq43Px0kqDl0WGbLLhIxPLA9LHyd2RlQ7dKTm7H0FrNT4/iWcyxhOoKrA+KH2JcAFRPO
         BcPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y13si348720lfg.4.2019.03.23.06.34.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 06:34:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375418953"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 14:34:37 +0100
Date: Sat, 23 Mar 2019 14:34:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: include: Fix a
 space issue
In-Reply-To: <20190323132716.904-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231434020.2566@hadrien>
References: <20190323132716.904-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Vatsala Narang wrote:

> Replace 'foo * bar' with 'foo *bar' to fix a checkpatch warning
>
> Signed-ff-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
> index 1f53c1c7b0da..7d54cf211315 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_recv.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
> @@ -302,7 +302,7 @@ struct recv_buf
>
>  	u32 ref_cnt;
>
> -	struct adapter * adapter;
> +	struct adapter *adapter;
>
>  	u8 *pbuf;
>  	u8 *pallocated_buf;

It looks like there are more opportunities for improving this file, by
getting rid of the "p"s on these names.

julia

> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323132716.904-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

