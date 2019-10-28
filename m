X-GM-THRID: 6752359295964151808
X-Received: by 2002:a67:eec7:: with SMTP id o7mr6576253vsp.58.1572227048437;
        Sun, 27 Oct 2019 18:44:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:28d5:: with SMTP id o204ls432430vko.9.gmail; Sun, 27 Oct
 2019 18:44:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoAb1CWRI3rLqWULDk+rKBRtK1jhnTAN+pTDVNXb91nOyWYMnpcpFD/A9VBBoZz/5WG3RP
X-Received: by 2002:a1f:3f88:: with SMTP id m130mr7663835vka.7.1572227047436;
        Sun, 27 Oct 2019 18:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572227047; cv=none;
        d=google.com; s=arc-20160816;
        b=qP9a1DYmrCwaP8neKQzB0RGT9UMup2EDBjlCQxk8jMviN/nyqHy0jHE/PgYqG5/fQe
         MSlzGFAfFD2i2A0Q1ocI+0rEJfvbKopq+ncyWMwDNb4KzWfJasjbhj6xw2ttiy6Vf82f
         tX5xQ6Rau72P167mYRhaMqVBnzLoMUXWt/daJGIkbjDm9x3+FaH8g8UxGwgJJrSZq2rG
         eQsvSji0FaMSF4AKbD5fNNEmSTpE8P+KLq3rAsWaAK/Jm9KW7WkbNIsiAUdmCc/l8xcy
         6SXnPAyxooTe9zIQEY76SB2Fi3umagBjPEgM3sSzdFGJ6BttX43lMKjiLgyhZmVmJ/ZF
         azbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yd63ScqTj3HkxNHSPiBWXkwuwlEAvctpJBFZFCRt45k=;
        b=rmt4NmG6ayuBHzB+xd+Px63fxKcxdxYwDORTcGgPjB6dxn44MDdpuk3TB43DNfuFVx
         W6hx7WpXFCzB161QFRjhBGh18e06VLH7mnbFsjk+pdp+f1VAzvjPpr478EiQUv3ElRNI
         gEVXNgnu4zJwSUC0XiCjhIh9QqvvxpgRibE+wnp07cU9qdtanvqwva7YXwG4byggRatL
         iSVKWlDncIuh5w/A5wqcQstVQoypBDkYYjy8Cd3vt5CYEkh+fn6gicdaAUN3X7uZsSAr
         vV6SoMpBtYmmo35DuE+eo59JtkwkDlQjSOj6s/Av8cqC2JZYjE6OhJ9MF97lL9q/84Nd
         KchQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=NSj1PWEf;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id s197si602585vkd.5.2019.10.27.18.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Oct 2019 18:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=NSj1PWEf;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id j85so5297398vsd.11
        for <outreachy-kernel@googlegroups.com>; Sun, 27 Oct 2019 18:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yd63ScqTj3HkxNHSPiBWXkwuwlEAvctpJBFZFCRt45k=;
        b=NSj1PWEfqgR6rAQVwkneYSlrckpZ6CjM7dbBk4UpMp1oYFBvreBGuKkue/4/pbms5p
         r3CDacStBanQKZOVU/gUSMUI7vqZDHRQi+WXI4XgdicWmfa8T0QxeRGgA0nBsr7ZF2PH
         pP+dcCRWYWlIrbXRuSyv8FpGUzEsU0ZVsyOtlMUrbhiymvgzmaS2zIY8gAsE7TjbV0ri
         phaLTdu2eLy36Z36pRU5CBJ7cJJY1L1b607sPbJ9MXy85Uop1AdAasR0rvj7GjdEqe5a
         GFUDvH1+De84vJf5TcUGl1vXeKUrf1AxBdKODOiqlDhsfJdYtmLGG/Li/VilGg6gNumk
         qtTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yd63ScqTj3HkxNHSPiBWXkwuwlEAvctpJBFZFCRt45k=;
        b=JzZLPyLWd/XOh/d2QwBhyn06PS/eWBiWv2u3pUuNt6h6I8yPL3br/7IVFRfkFzY2Aq
         09+6jjFoBaP2MLu+NXp5DepVSOsjGW9ZyJ5xCuKaTeq5QEhhzvEtn8dtqUF/SOlhNLqh
         XuXTPnGu5kah/EhC767t5I10rXwaVnMJFDGEaMfn0yAHAiS8JniPilyO84zvuPZAgu+T
         5YnyL0ciyoiIDHeaGIckuKSkVcDkno5YRcp8rPCiv3XfdgHJt5tXMJSOn1SYUmF+gOZ0
         jG+lk6BdFgaTtkvfXwMbb84wusnzX+da7wGIrgjSc/+aFZIODxZSZKsbQmz7m+JfUywZ
         D7YA==
X-Gm-Message-State: APjAAAX+SRA8CQhicSIc/tbSuiezPyvD0dCgKybps0XorN8Dnx94C7sy
	O1s9fxxiveZpQDusD3oNAU4irA==
X-Received: by 2002:a67:f84d:: with SMTP id b13mr7771605vsp.136.1572227046830;
        Sun, 27 Oct 2019 18:44:06 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id t127sm4142561vsb.22.2019.10.27.18.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2019 18:44:05 -0700 (PDT)
Date: Mon, 28 Oct 2019 01:44:05 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Fix line ending with
 a '('
Message-ID: <20191028014405.vp6x4bhq7hcokxge@linux-kernel-dev>
References: <20191027060237.GA26854@linux-kernel-dev>
 <alpine.DEB.2.21.1910270827210.3186@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910270827210.3186@hadrien>
User-Agent: NeoMutt/20171215

On Sun, Oct 27, 2019 at 08:28:14AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 27 Oct 2019, Frank A. Cancio Bello wrote:
> 
> > checkpatch.pl message:
> > "CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"
> >
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> >  drivers/staging/ks7010/ks_hostif.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > index 2666f9e30c15..ab731a2f7bb3 100644
> > --- a/drivers/staging/ks7010/ks_hostif.c
> > +++ b/drivers/staging/ks7010/ks_hostif.c
> > @@ -75,9 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
> >
> >  	if (ps_status == PS_SNOOZE) {
> >  		ks_wlan_hw_wakeup_request(priv);
> > -		time_left = wait_for_completion_interruptible_timeout(
> > -				&priv->psstatus.wakeup_wait,
> > -				msecs_to_jiffies(20));
> > +		time_left = wait_for_completion_interruptible_timeout(&priv->psstatus.wakeup_wait,
> > +								      msecs_to_jiffies(20));
> 
> This doesn't seem like a good solution, since it massively violates the 80
> character boundary.  I don't think there is a good solution in this case.
> 
> julia
>

Thanks, both Greg and Julia for the quick response.

frank a.

> >  		if (time_left <= 0) {
> >  			netdev_dbg(priv->net_dev, "wake up timeout or interrupted !!!\n");
> >  			schedule_work(&priv->wakeup_work);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191027060237.GA26854%40linux-kernel-dev.
> >

