X-GM-THRID: 6670470603047174144
X-Received: by 2002:a2e:8912:: with SMTP id d18mr709332lji.26.1553090233559;
        Wed, 20 Mar 2019 06:57:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4b42:: with SMTP id y63ls259537lfa.7.gmail; Wed, 20 Mar
 2019 06:57:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyDY8sJVhlMJNe9tm4iU7ntPSmD1Q1IeyaYiQ3kwyn2Gw8uX8OlUHDpP7KymZCBQogP8EMw
X-Received: by 2002:a19:ee1a:: with SMTP id g26mr1617190lfb.8.1553090231707;
        Wed, 20 Mar 2019 06:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553090231; cv=none;
        d=google.com; s=arc-20160816;
        b=lC5XT2wxteh3lXchhpkt+6k+ITuBI94pcd+bI5+mfjsgAN3WRuBhUSDvpir60EQCdD
         4v/PlDFlYz7NDv16vcA48kJi9+H7maN3FPvGPLCXnI+fcvkTAFjEdEsx+I31LgxX0IpK
         QA5uxLGpwhchz2l+y6oq9o7X0lzmZyGMqsrZ6KBiFz//5Te4DuloQdWHxex+1v2JzPwA
         W3juvBvJ1O6z1XLSqMHHwhnCz3DmghZVWTVdw0A9KXTF+nQXjXAlNV+DVkm88QzYdTYl
         DQhKoKUR0PpbyknQ94ZMRSqBPXPO7QpwGU3thSnSmBA/5/DC/oaGcK6T3Qoii6l74EIS
         AGfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1rl5hbjkzML31T2S8dh1f2rY4JF75la9Mo7dvh46X8o=;
        b=AXvJYHUb+bWEi8EQjef2+fkqPUNvFLWg+sKtbGHUU+mv5OMg5KbBsnNoQHcVprprzo
         /OSYw3zWEm9mpTY8n9BEz49I2zCK0Rxz2KwknBMd7ReKIbr6cAIiFllMhAYx44oE92xt
         o9Q0UpTtMt7lx71xCZ42LfhmQSTrXzEQMo6NsmOjXBb1K7NNOlPVYL4B5KiOKeNfjl5h
         l8Y9q4YBvWqZ1YLtSLkrrcMLHOEecuKVtwA6pFCieFK5qY3+laRs3y2vmvr8irHLlCuY
         ZhBoWB+7H8KBwULePwDRzDp0qLNKuUCUN0jOedLKcGtZugp1JYY+4xmkhsRlrUtR//sb
         axdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si87212lfl.0.2019.03.20.06.57.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 06:57:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,249,1549926000"; 
   d="scan'208";a="374913626"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Mar 2019 14:57:10 +0100
Date: Wed, 20 Mar 2019 14:57:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: speakup: line over 80
 characters
In-Reply-To: <1553089942-7490-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.20.1903201456260.3627@hadrien>
References: <1553089942-7490-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, Payal Kshirsagar wrote:

> Fix line over 80 characters issue of file
> drivers/staging/speakup/kobjects.c

Your kernel is not up to date.  Someone else has already made thing
change.  It was done in a different way, because comments in the middle of
a function should not be moved out to the left side.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 11c704b..fbd09c7 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +/* Do not replace with kstrtoul: here we need temp to be updated */
>  		index = simple_strtoul(cp, &temp, 10);
>  		if (index > 255) {
>  			rejected++;
> @@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		/* Do not replace with kstrtoul: here we need temp to be updated */
> +/* Do not replace with kstrtoul: here we need temp to be updated */
>  		index = simple_strtoul(cp, &temp, 10);
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553089942-7490-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

