X-GM-THRID: 6251886520521719808
X-Received: by 10.28.48.88 with SMTP id w85mr1968754wmw.5.1455631022757;
        Tue, 16 Feb 2016 05:57:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls784602wmu.49.gmail; Tue, 16 Feb
 2016 05:57:02 -0800 (PST)
X-Received: by 10.28.63.19 with SMTP id m19mr1966077wma.0.1455631022327;
        Tue, 16 Feb 2016 05:57:02 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id w10si560968wmw.3.2016.02.16.05.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id c200so162406192wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=oHubLB8LeWUBOcL5yAba/xNCIO+CmTl40TG+jXcKPvc=;
        b=cjGUS/U0eCYw8sPpNxikDADiNUs4Km5O2ow6K23JbgIGGejBXdZ96KCtVSZaE1xAGt
         fHbbpCw16SAXCy5hL3YXYMypj0aNtevpmusZ7dwBendZO5h0VXIxCguD7kx0nMAh2pS5
         +XcgMLoAeOBHBsxz/E1qWS+3aXnCfcr1z89l0Ms2kJvIzD+/s30QugHMu6OiL77nsF21
         fIg+YaWn2CErTVfKgjDzblUaM6+3yZ76+dxWulTj/4d0DSJap+fiDDJW2Np61F9IPu8D
         MybdF0Fw0EiSe9fGE1snJ2IZBPlSvK4aBF24bsy0dp66wuIk/rFnyj76vcjJfOo9rmdY
         Trvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=oHubLB8LeWUBOcL5yAba/xNCIO+CmTl40TG+jXcKPvc=;
        b=TXJoD/W82KRfjpNIVNIn1+nhIF5zpsKSrMk50A9PZtEMFj292EzeP73OzRCNXTXygN
         6KHGNV+G4bKkTVsAJgAsDoDQY+8DI4br9GcgHaJ33DccONJEouzR8cO0K5C+6WucXle5
         KreOgNul2pictW+kr559fLogZQgIIP3pbSMuSsKbn+oFWtNZSeUeZAAUe0G816kUNDcP
         BUwCFT/EmO8Lbaeheqd5uYBPl/C/AVZt/q06vBDNgrID73W/K+gDJOIdbcZQQHDvXXae
         hMUZOeRb4RtjRAUaVJfTe7DX/G3BIPR2Nzx1eQvuAVI5pQM4lWWpc3LFoEwdDgZylPrk
         SQZA==
X-Gm-Message-State: AG10YOTrUsL11KmLpVlSpdkWzRISsFpqVlQYim78hd/hZP5kBtqruf2LyJAcfP4rRnetgkW6z5Q041wYp1hNIA==
MIME-Version: 1.0
X-Received: by 10.194.2.202 with SMTP id 10mr25620139wjw.94.1455631022232;
 Tue, 16 Feb 2016 05:57:02 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 16 Feb 2016 05:57:02 -0800 (PST)
In-Reply-To: <20160216185200.GA14853@janani-Inspiron-3521>
References: <20160216185200.GA14853@janani-Inspiron-3521>
Date: Tue, 16 Feb 2016 15:57:02 +0200
Message-ID: <CAEnQRZBhTbUcrcmiLOzwEwbTv5sSgPGbLNbUQK3yTuP8MfXVCg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Modify tcp_process
 to return void rather than int
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 16, 2016 at 8:52 PM, Janani Ravichandran
<janani.rvchndrn@gmail.com> wrote:
> tcp_process() returns int, which is not used anywhere. So, change
> function header to return void instead of int and remove all uses of
> the local variable ret, which is used as a return variable in the function.
>
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>

One more step.

> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index a396ac9..b980b03 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -207,9 +207,8 @@ static inline int add_tcp_pending_ack(u32 ack, u32 session_index,
>         return 0;
>  }
>
> -static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
> +static inline void tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
>  {
> -       int ret;
>         u8 *eth_hdr_ptr;
>         u8 *buffer = tqe->buffer;
>         unsigned short h_proto;
> @@ -267,14 +266,10 @@ static inline int tcp_process(struct net_device *dev, struct txq_entry_t *tqe)
>                                 add_tcp_pending_ack(ack_no, i, tqe);
>                         }
>
Remove new line here.
> -               } else {
> -                       ret = 0;
>                 }
> -       } else {
> -               ret = 0;
> +
Don't add new line here.

>         }
>         spin_unlock_irqrestore(&wilc->txq_spinlock, flags);
> -       return ret;
>  }
>
>  static int wilc_wlan_txq_filter_dup_tcp_ack(struct net_device *dev)
> --

