X-GM-THRID: 6466352868892868608
X-Received: by 10.223.172.8 with SMTP id v8mr1755499wrc.32.1505567061320;
        Sat, 16 Sep 2017 06:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.136 with SMTP id x130ls343430lff.44.gmail; Sat, 16 Sep
 2017 06:04:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBhJZwhRg+4NrtYaVphb+CubGZEm1ObhXJ9rTimJEVVuCL55YYLKsTU1FhPf/vVu1ExYv+a
X-Received: by 10.25.212.195 with SMTP id l186mr409403lfg.31.1505567059801;
        Sat, 16 Sep 2017 06:04:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505567059; cv=none;
        d=google.com; s=arc-20160816;
        b=heTKkIGynZavh6zHi5KoheKWK/kKH33RxTaNRJ8nnnMq9+DhEhTr+24y1tiArkaLZj
         HAaNmmj8jWpXnXQqXdLzn0Ro5nS6C9ajHfLvyCXCs0hRZ0r7BLgikVxrzRWmf3zUqYq5
         4oaNGLu016B2UdyVIN4EbXs4HJW5tJ4slDb2U9n2GSrIyERC7xV0iYEKINiWzm3I8uTC
         s1HQgrYerpv88+nwI9NmLZNG2+6afC7qKkt0W2Ds2J0THssn16RGk3uFlthvGk2k1iCp
         LSpIFZBSBm+nqcVIAK/wmmY5vr/Qy1xDVNFX2L8W78Kr5AQ1SwVDUb+wSJPvBSgHvVNm
         C4PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bfPK5VFBSpyjBADgPs3FC0IEdnKHDrhd/KdQw4ZnVlw=;
        b=hXr8hO2M2vGIgIgFNzUGpjHOo4C1EFjSurHXQUzu3TYRxfJVHsV1Cnnc7pg4EhXFZu
         h2FYZkBsXC/QnO7T11zzImR246S/o/Y9GYWekI2GRgYHN+S13cjdZkOdF6fNCTzhbtLb
         xOyMgqbX4pGW9IPdzCvzMF7RWHF+r+IuLchInqsNyO2zmqMP/rjmZCyepaerh4YLpvu+
         88MdKcjaQyZ8KzhYbL/zuBx2++fI1tU6AUhql8uxNQnJMDMmDAWD02N5UyS9QeTRC3Jo
         aRe4ujRLnHhpdw00IJmPpilXjqO2rjtyQXLDRnDUDYY9IKUTRxsly1s5jC3FKdf+IT5H
         eXzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c142si140847wmh.3.2017.09.16.06.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:04:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291381366"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 15:04:19 +0200
Date: Sat, 16 Sep 2017 15:04:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: dgnc: remove variable
 rc
In-Reply-To: <1505566784-15237-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161502050.2943@hadrien>
References: <1505566784-15237-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> Found using coccinelle script:
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v2:
> 	- preserved comment regarding return value
>
>  drivers/staging/dgnc/dgnc_neo.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_neo.c b/drivers/staging/dgnc/dgnc_neo.c
> index 1943e66..c459171 100644
> --- a/drivers/staging/dgnc/dgnc_neo.c
> +++ b/drivers/staging/dgnc/dgnc_neo.c
> @@ -1182,7 +1182,6 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
>  	unsigned long flags;
>  	struct channel_t *ch;
>  	struct un_t *un;
> -	int rc = 0;
>
>  	if (!tty)
>  		return -ENXIO;
> @@ -1199,12 +1198,10 @@ static int neo_drain(struct tty_struct *tty, uint seconds)
>  	un->un_flags |= UN_EMPTY;
>  	spin_unlock_irqrestore(&ch->ch_lock, flags);
>
> -	rc = wait_event_interruptible_timeout(un->un_flags_wait,
> +	/* If returned value is non-zero, user ctrl-c'ed us */
> +	return wait_event_interruptible_timeout(un->un_flags_wait,
>  					      ((un->un_flags & UN_EMPTY) == 0),
>  					      msecs_to_jiffies(seconds * 1000));

The comment looks good now.  By there is another small issue, which is
that since you have pushed the call a bit to the right by using return,
the arguments of the call have to move to the right too.  Hopefully they
will still fit on one line.  If not, you could align the arguments at the
nearest preceding tab.

julia

> -
> -	/* If ret is non-zero, user ctrl-c'ed us */
> -	return rc;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505566784-15237-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

