X-GM-THRID: 6464551056446586880
X-Received: by 10.46.93.19 with SMTP id r19mr510455ljb.43.1505146338795;
        Mon, 11 Sep 2017 09:12:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.151 with SMTP id y145ls1287555wmd.4.gmail; Mon, 11 Sep
 2017 09:12:17 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb55qEK9GRqHiqnwHKaMdXv33+UcOZM+tMcXNrvI7Zo1OU0FlAxAWVwLc347EbSjg5XhJV3/
X-Received: by 10.28.207.5 with SMTP id f5mr954881wmg.32.1505146337597;
        Mon, 11 Sep 2017 09:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505146337; cv=none;
        d=google.com; s=arc-20160816;
        b=OGjDdomACRC7Z0uFhNxtz7cx6WqSgGkzQAnfx7tu0IHt/PUTyqNFvDdLqeEpJBFvqK
         E3vgPi0ta8Y0HEGg5Tfz/qGgXcTGacQFQyMxoQbyhTniQ2Ef/pa4fwMvLRk//LjwBED2
         4u8FOH3qsTWayLuLSi5LKnlk6tg+VQNDnzla06LUNBD2bR3mqkCIlE3cnl7Z13TTF8Jf
         tyuuhu+Q+bn7daOq6g2Q1Dv6ldeHlZwb/+ylGHnIlSaldTeIqV9MBsM3WhKqFl9PS0Cm
         6SkxdHVEf8kNiAsGBCtQS9I+T4uYYx7Nm8+/nqpXuX59tF+Y5PFPgDWHQg0t04VULPAV
         eM4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xM8XZGJt7it8JKPwhhMKEVIM04xCWP/trwK3CX+iunY=;
        b=xoTq+eySIpgkw4tnYD7Ik9uWocFnGRK7O4c9hhZC4tHr3XYYo5G7qoLMUYEZxv6Hsr
         Iqu39j2jqM/Z4lsqh0W3vNpGGgn9EsRFcL7zKes/fkAxuNS5L3SZpT+MvJMdCdTjGdQW
         8TUF20yY2VCGW2poNidQ5nQaxghxH32Q6T4OZjM6Lf8MgAghmynT1LQWRdwsWWM6REcO
         Wr27neNPQ4QuTDtXBhLhxvUumhwV1XnvES4plLdUiQ0C954ip9CymbxKKOe9keyDOpi1
         q4fk6d355dXV5JQNcuvXHcjVmYUDFve6GAVYwnlf33TB5aRIDnoV5bjVyXLqwjfH9e3m
         SQrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b62si367043wmd.3.2017.09.11.09.12.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:12:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,378,1500933600"; 
   d="scan'208";a="290543789"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 18:12:17 +0200
Date: Mon, 11 Sep 2017 18:11:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Gilad Ben-Yossef <gilad@benyossef.com>, 
    Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
    driverdev-devel@linuxdriverproject.org, devel@driverdev.osuosl.org, 
    Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ccree: Don't use volatile
 for monitor_lock
In-Reply-To: <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709111809180.13726@hadrien>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com> <20170911160449.GA11886@kroah.com> <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Srishti Sharma wrote:

> On Mon, Sep 11, 2017 at 9:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
> >> The use of volatile for the variable monitor_lock is unnecessary.
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
> >> index e5c2f92..7d77941 100644
> >> --- a/drivers/staging/ccree/ssi_request_mgr.c
> >> +++ b/drivers/staging/ccree/ssi_request_mgr.c
> >> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
> >>       dma_addr_t dummy_comp_buff_dma;
> >>       struct cc_hw_desc monitor_desc;
> >>
> >> -     volatile unsigned long monitor_lock;
> >> +     unsigned long monitor_lock;
> >
> > While volatile is not right, odds are, this is still totally wrong as
> > well.  How about using a "real" lock instead?
>
> I tried to find where is this variable being used in the code, but I
> didn't find any usage of it . It might be an important attribute of
> this structure definition but, I don't see it's value being set to
> anything or being used somewhere .

Try removing it and see if the code still compiles.  There is always a
danger that a use of something could be constructed using ## in a macro,
although given the uses of ## for this driver, it doesn't seem likely
here.

julia

