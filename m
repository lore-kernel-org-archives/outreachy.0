X-GM-THRID: 6536210357179908096
X-Received: by 10.223.133.177 with SMTP id 46mr2575804wrt.7.1521830207470;
        Fri, 23 Mar 2018 11:36:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.156.193 with SMTP id h1ls76178wre.3.gmail; Fri, 23 Mar
 2018 11:36:46 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsToNbQxDTkDrl5j/5nQyekQGIhJfxQEyVhgbrVyG7j7TwNpoMIYbExhu/NkfM7HLxE/QVK
X-Received: by 10.223.156.204 with SMTP id h12mr2652544wre.13.1521830206234;
        Fri, 23 Mar 2018 11:36:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830206; cv=none;
        d=google.com; s=arc-20160816;
        b=IxN6vr2bwvAI7S23VB/w4kUpnuZy4QS98XhAClknoBlsS1D8NvMbfMHvYwEUFvzlo2
         WrX7WTp/n9axT0nP6UewzFlSYxqmldcRSEoKzlW/Cgi33DHiPBSUjNeBaZty92Q2mem2
         TM01S9En+l5H1+RovDDfZGbHG89lvme4gu5NyYq5SlrZh+bQ0lomi0uuN+1K5F0ppCAl
         MjeKQVrm8oAngmr+uOH1vMS/Lyjo/tA97eKrAl1+lVa3l687GVkpd7f6UESMAPDS/RS6
         iQstvfpya0+ou+kWNwUtSMo9QL2MNXlKo/czengUydZaSXMdAt1BYmS90QFnHDlAxYPh
         7U3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lEjrFeapxZMen2qOU5PFOg1gyYlXW6UzfRSHFr6RjQI=;
        b=034WqzAjLsbxnH92VZ5bvsy4njaTawFMrx2ihIdKqvHNGMU8J/dPTr00FtKe0vhlgJ
         9xv8zKSoFyfqgrVH5S1d9Ysmj1IfrPaipwgxl9mZ1gY6R8j9zV5pbAM3103jy6zyZJGC
         XlkjvlU9OjqQXxrfkr51KVcOvojP7Zu0LwPoGvK6rVX+aiY4Jsp73TB7blwt0CJ/gJV5
         ZdaVkRgt2xlgNZE+jWQPSf1FWXLJRy1C9BR8xpQ6S1o+WVTHKhDLwrU3luvQHtKl/OOb
         7AkdUZ6n42rxqbRjDP26i74XE10DiGQRaRaisbX7EeZbhQh+1wKGB5BN7JjUz8KwB6Y/
         RAjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g7si126791wrb.2.2018.03.23.11.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:36:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,351,1517871600"; 
   d="scan'208";a="259616676"
Received: from nat-tvwna-outside-visitornet2-c-77.princeton.org (HELO nat-tvwna-inside-visitornet101-d-15021.princeton.org) ([66.180.182.89])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2018 19:36:44 +0100
Date: Fri, 23 Mar 2018 14:36:43 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: vt6655: Change
 CARD_PKT_TYPE from typedef to enum
In-Reply-To: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803231435550.2450@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 23 Mar 2018, Nishka Dasgupta wrote:

> Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Clarify subject and commit message.
>
>  drivers/staging/vt6655/card.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> index 487039a..be5254a 100644
> --- a/drivers/staging/vt6655/card.h
> +++ b/drivers/staging/vt6655/card.h
> @@ -39,12 +39,12 @@
>  #define CB_MAX_CHANNEL_5G       42
>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
>
> -typedef enum _CARD_PKT_TYPE {
> +enum CARD_PKT_TYPE {
>  	PKT_TYPE_802_11_BCN,
>  	PKT_TYPE_802_11_MNG,
>  	PKT_TYPE_802_11_DATA,
>  	PKT_TYPE_802_11_ALL
> -} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
> +};

Were the typedefs never use?  If they were used, then this should result
in a kernel that doesn't compile.

julia

>
>  typedef enum _CARD_STATUS_TYPE {
>  	CARD_STATUS_MEDIA_CONNECT,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

