X-GM-THRID: 6666299764348289024
X-Received: by 2002:a1c:4087:: with SMTP id n129mr1741716wma.13.1552119199032;
        Sat, 09 Mar 2019 00:13:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c10f:: with SMTP id w15ls47311wmi.12.gmail; Sat, 09 Mar
 2019 00:13:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqzdL2XzGXS1fbgEj+6alGNf0J5MLyWwSgTlnPJf5veH5ps8nbD6kmKrp3HlyEEHzCLPTH+3
X-Received: by 2002:a1c:358a:: with SMTP id c132mr1558228wma.23.1552119198214;
        Sat, 09 Mar 2019 00:13:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552119198; cv=none;
        d=google.com; s=arc-20160816;
        b=Oywq/O2yuwf9mwti7q4ecnCxFPof326DMcWAxI0+J6Cs7BQWPyF93m25BlcpwJtswB
         CAwrFK0sKVo4D8udvxgifEu4Vjv3KQKt8Z2SSi1BlhlOR4Nv3sj+3aYxg/2e4pACguhB
         Zo3Gq4H/L1DQ+AbnObnq74hJKRQ1TMBIKc7H02iaMgSESc6erwF0KTTfKf+WhhMCm323
         ZweNoxGumbduEIuekzEnLwTd2+FGijpkHbY1dkQRdjTDW0WeGmYy9emQjm8XQoj5oIhh
         cW9huSyGPjyArS+Z8x8XPfhcAkmIgWCRJyUCwWl8WJ/Wg34ENjGVLm2CVnQCOfo0lOFc
         MgJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8PYogxP9cH2Ub7Xf79QNzz0uxK85F74JZ6pMw5N2FpQ=;
        b=ucRGXUmRDzxXBiXwdpkhdUfTCd6mQHoQA/jCeL5S8lxYmJYVgcOKOo38FVDWCyDQU2
         fUiWAwKKu/IW/7p49NeHays4Qo/F1wHo3X3I7WCSgpuP1HqK2OaGBY6MxkXZLpwuKYKR
         Yijiei2POH24CCdnQloBrN6VobZttNS8O8UvouhBlZvXSsbmPDg+f1fTPdBq0gWuENyb
         3f6dmUqtlMF58YhhYQSiNRK8KBoWTa+a41S9vJGewoaVzXpN9xIxOKYPe7ffKL8BRjT+
         aWH9qXUmUxYf/yKL7Hp1IddUxJ4yQpR6IZab9b+uj4cLvC5l5lwaxTqm4bRH8tjVWrdV
         EQdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si422435wmd.1.2019.03.09.00.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 00:13:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,459,1544482800"; 
   d="scan'208";a="372609567"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 09:13:17 +0100
Date: Sat, 9 Mar 2019 09:13:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH Coccinelle] staging: speakup: remove
 unnecessary assignment statement before return
In-Reply-To: <20190309080721.26121-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903090911490.2558@hadrien>
References: <20190309080721.26121-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Please don't explicitly CC me and please don't put Coccinelle after PATCH.
I see the patches.  It is better to put in the commit log that Coccinelle
was used to find or fix the problem than to overload the PATCh tag.

thanks,
julia

On Sat, 9 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary assignment statement before return from function
> find_specifier_end. Issue found by Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d36f947..a748eb8052d1 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);
>  }
>
>  /*
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309080721.26121-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

