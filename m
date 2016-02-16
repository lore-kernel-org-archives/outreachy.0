X-GM-THRID: 6251877540046045184
X-Received: by 10.25.39.2 with SMTP id n2mr2551024lfn.10.1455629216016;
        Tue, 16 Feb 2016 05:26:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.214 with SMTP id 205ls29188lfe.32.gmail; Tue, 16 Feb 2016
 05:26:54 -0800 (PST)
X-Received: by 10.112.157.164 with SMTP id wn4mr2537151lbb.5.1455629214749;
        Tue, 16 Feb 2016 05:26:54 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id w10si557614wmw.3.2016.02.16.05.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:26:54 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id c200so161138762wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KOt3+9XSDzEO6r3GtjU468XsIhkinNebGQEij6NoOFk=;
        b=eqkQQRbmG1Kwous38Vp3cltlFFCE5O5pEpxVmU7gMqQZauLzqxCTyEWOFSguC8IpKp
         TXZdMzzCmqL0yoQd39iVhbI5srZrSMazqSs6sudfsUy30Puap2herPVplfMUnxUpj+z3
         PbyaHc7MA4BP4KPhoK6bpwLd0E+svHkWqm+6OCwStbfsAQTZ7w/gjuYOzzniBz+4nonF
         txfhVdndkPcQF5clbqAByoC7vBJpCAnGm4C1ToQ05G6jVJH0a601IXnJxF68B1naG2Um
         3EJdotgoEoknYEnhaTV/nQw54K/vLpe0l8ZltEX48P6B0WW8hFQANmOAyOHQ9Gh9aozF
         BL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=KOt3+9XSDzEO6r3GtjU468XsIhkinNebGQEij6NoOFk=;
        b=GxIU5wn5f8ngdxSdsySlQfvZFGd+hZEPPbL5LrVfZe8gIePmeBzo567P0SvOoNbEEq
         7tc7Xa1sAJI/7gW111SihkD8EUKj6wxsiWo82z1TUpFNFapIFXEz8dQziLL0zZH+QqUG
         sX70vIHRqwcbfrhfcfFyjwVBuUdzt6ukSpMBcQrq8felGI9xxcHuhpukH3xbIWN+BM0s
         eocrodW6B3XNktTW8ZJFAs58ri8Owlwc8MNR2GtBztaQz1mYFhSvQZMim29z6Wo01aOV
         PPgjXjId8dIMOF2sGgvSqqFYAlDzaZ+9XRhpKJNKWvCpoJ3JOh6xJzMYU3miB0sfvs+p
         NCyQ==
X-Gm-Message-State: AG10YOTEzCS4bZ7Ffg6apY0GikIi0TvxIlcQaUkylQ9jdAgAtq8dJ1o9b3FUO/4s0V/wFXIbazd7ntCnPHzxjg==
MIME-Version: 1.0
X-Received: by 10.28.140.85 with SMTP id o82mr5979577wmd.0.1455629214604; Tue,
 16 Feb 2016 05:26:54 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 16 Feb 2016 05:26:54 -0800 (PST)
In-Reply-To: <49ebb18eea61eff1ad7c0c4183312ea7d25da46d.1455645880.git.janani.rvchndrn@gmail.com>
References: <cover.1455645880.git.janani.rvchndrn@gmail.com>
	<49ebb18eea61eff1ad7c0c4183312ea7d25da46d.1455645880.git.janani.rvchndrn@gmail.com>
Date: Tue, 16 Feb 2016 15:26:54 +0200
Message-ID: <CAEnQRZC7LwNBGkrDOv7=ZjZ=P5c3Kbknf7X_fcZy0777fcjbXQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: wilc_wlan.c:
 Modify return type of function tcp_process()
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-wireless@vger-kernel.org
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 16, 2016 at 8:20 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
> Change function header for tcp_process() to return void as the return
> value of type int is not used anywhere.

Better squash all 3 patches here into one. It's easier to follow the change.


>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index a396ac9..c3ca662 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -207,7 +207,7 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
>         return 0;
>  }
>
> -static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
> +static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
>  {
>         int ret;
>         u8 *eth_hdr_ptr;
> @@ -274,7 +274,6 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
>                 ret = 0;
>         }
>         spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
> -       return ret;
>  }
>
>  static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
> --
> 2.5.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/49ebb18eea61eff1ad7c0c4183312ea7d25da46d.1455645880.git.janani.rvchndrn%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

