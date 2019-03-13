X-GM-THRID: 6667942778398310400
X-Received: by 2002:adf:ee89:: with SMTP id b9mr2391699wro.23.1552505542409;
        Wed, 13 Mar 2019 12:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebcd:: with SMTP id v13ls590294wrn.14.gmail; Wed, 13 Mar
 2019 12:32:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3DDm4pY5epcqRBPnJYeA7qrva2yBbUqus1AIOAMXcOqZwJ1E1iEWAQsneEiDH2fEBhg6O
X-Received: by 2002:a5d:4642:: with SMTP id j2mr634070wrs.21.1552505541490;
        Wed, 13 Mar 2019 12:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552505541; cv=none;
        d=google.com; s=arc-20160816;
        b=jZLh1GwTV3jG4Udq48hcpL9cbkmas9roI2HTIqQCYbuAiUPQ/46iiRNSsZKSlfXX64
         PM9N29/g0rAjC4EmZ+invwNjXOmNpDoI2EDXpX0iw8bobO87FJRzuq1rjAWBpYC8iGGX
         aLqnFYGqj7rGz03hflYoT//Pv8Z14LwIXKxV9ldIFsm1C3joM9/FAE5TL939tIRzW3dD
         G8aoeZK7bH+sefmJPXUCok/fYIUQ5QdussxifBbaKrMUsMZrYcs642K2KFA6u7+v/U1v
         ESNvYwskCRk/vWq+NJ63Gj7PKRJ1NRoH6svKNj3QMBHMjMi3kAMbkATUmm65yuoUrL9z
         KoNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Q294KmDR7a+nTt8XDd8tPfv25uRiYjx5EqMB8Jcw0Lw=;
        b=bYL1vvoFKVw7Z0VXgAnUglBrj+QZu2x/g7nS3nzoleHYMVup5uq1Yw9qRt/o6SIbSk
         IkHVqjTbQ2gJheFmUQX1dp2gRvyhi40e5CEY57ABl5pws2toeXf/HnPnAwJ2zBEPIDQW
         +QH1a4vmeif7I1vfOCustWWhPyFShyvvQFOq7ehZON7wOqQUhLma3ucz5O51ERPyGFuh
         YwCKj3qEQKeEGEc1KiIZ71rGoWJTLeCGcEpUms+E5kkyIrKzJ53U4msd3GzG3BsK6A/2
         ZWcrjEKAAZf+qTUVy3mdHOvPuFyZIr8+47Yvmg5SsGhafpBPTq735aWG8r/uUmuPRk/M
         j8jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n2si696724wrp.5.2019.03.13.12.32.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 12:32:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,475,1544482800"; 
   d="scan'208";a="373292635"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 20:32:21 +0100
Date: Wed, 13 Mar 2019 20:32:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Remove unused
 variable.
In-Reply-To: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com>
Message-ID: <alpine.DEB.2.21.1903132031440.2515@hadrien>
References: <1552501395-12308-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Bhagyashri Dighole wrote:

> Remove unused variable which is used to store return value,
> Detected by Coccinelle semantic patch ret.cocci.
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d3..a748eb8 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);

The maintainer already said that he preferred this one left as is, because
he liked the input = input = input = pattern.

julia

>  }
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552501395-12308-1-git-send-email-digholebhagyashri%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

