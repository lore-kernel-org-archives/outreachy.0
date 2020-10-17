X-GM-THRID: 6884588339702267904
X-Received: by 2002:a17:907:4365:: with SMTP id nd5mr9303184ejb.56.1602943368700;
        Sat, 17 Oct 2020 07:02:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cc8b:: with SMTP id p11ls3358216edt.3.gmail; Sat, 17 Oct
 2020 07:02:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJt55BuyUnpUckEMMViqo+7EWKmlBYitHp102ULmbldxG5fe8COD1dAg3gLD/2bMzWLWsd
X-Received: by 2002:a50:c34a:: with SMTP id q10mr9673684edb.36.1602943366543;
        Sat, 17 Oct 2020 07:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602943366; cv=none;
        d=google.com; s=arc-20160816;
        b=m2L98F79AR7VqXB11SSkRfC6cErUfLCWJWeHZTsFi+fhstZTY7BJadNqNHb7Mo3L+F
         RD+55Xsil3+QdTabjqmCH23sQjvdOeAmAzuBWpamscvwyIbPS+IbQdqvCcQF+rlgttvd
         Mxq2K9DDrFQQ/vSy0MXZmw0a23LruARIixHU+9qo2G4TsU7qRzTT+aSHtEhQ/BZwQiGO
         6aBd+Hw+WpBD4LY2+nRximL4UTMCmb6q241DaL+ujgD7ov+beqLnTlyaNWphyvV7KoHj
         q2DZUHcwv34dQAJYZ3dwMS8EygpnmpkcEUlaAd5uGwwEiLl/oBLYUJoRk+cyEaHGvMKB
         Ydaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=B4ieQdFMCydkHT85hqnRmd7H8DrtrX4l9IqVmcpd9I4=;
        b=S3OHZ8wuli+Y3cflbKc24dgpZMPzVWkdzK3Xdz6NIn39+2+gjSAHzLKTortQiaJFU1
         CN4sauBgvUwmai3+6tf+vmCrDJatteAtLnGiZItn8LJENT57lUqTLUzDt7wWGEzo46ta
         T4fofrGtv31htxHicL92YtiKgXi7cSAlvXe+fIttwDoIsc4eppV3Prhr5w4DDOtPiIjw
         LEDn7I9XptugK/JK5gPRteugUMR/l9QWsvHALR6cAj+syfOawFZo9KWjj9AVHMwmB3K5
         /x2Gv3tZ5C6m+00xZt9Uqqbe2V9Tz020rVjKTe4p4DpaBjMQg+DoyBYsjeF7Z/VlAT6w
         Ddag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id lf25si229199ejb.0.2020.10.17.07.02.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 07:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,387,1596492000"; 
   d="scan'208";a="473101210"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2020 16:02:46 +0200
Date: Sat, 17 Oct 2020 16:02:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: leonf08 <leonf008@gmail.com>
cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 3/3] media: staging: atomisp:
 Corrected error handling in function
In-Reply-To: <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010171601550.9440@hadrien>
References: <20201006202903.GA8346@linux> <CAN+ihrq_v6OFbOrZUhHZPRTjsUO5nrnr7Kj3AHQJYSD7+oXe5g@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-233732770-1602943366=:9440"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-233732770-1602943366=:9440
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 17 Oct 2020, leonf08 wrote:

> Hello. I‘ve sent recently my first two patches and haven’t received any
> feedback. Can I expect it. I’m a newbie in kernel contribution process, so
> don’t know all the details.

I don't have any recollection of seeing any mail from you.  Did you verify
on the google groups web interface that your messages are there?

julia

> Thanks.
>
> вт, 6 окт. 2020 г. в 22:29, Leonid Kushnir <leonf008@gmail.com>:
>       This patch fixes check of a result of 'power_up()' function call
>       in
>       function 'gc0310_s_power()' to do "error handling" instead of
>       "success
>       handling" as Dan Carpenter noted in his comment on the previous
>       patch.
>       Lines 'return gc0310_init(sd)' and 'return ret' are swapped, and
>       direct
>       value of 'ret' is checked in IF statement now.
>
>       Signed-off-by: Leonid Kushnir <leonf008@gmail.com>
>       ---
>        drivers/staging/media/atomisp/i2c/atomisp-gc0310.c | 7 ++++---
>        1 file changed, 4 insertions(+), 3 deletions(-)
>
>       diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
>       b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
>       index 8201c15b5769..d170d0adfea4 100644
>       --- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
>       +++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
>       @@ -874,11 +874,12 @@ static int gc0310_s_power(struct
>       v4l2_subdev *sd, int on)
>
>               if (on == 0)
>                       return power_down(sd);
>       +
>               ret = power_up(sd);
>       -       if (!ret)
>       -               return gc0310_init(sd);
>       +       if (ret)
>       +               return ret;
>
>       -       return ret;
>       +       return gc0310_init(sd);
>        }
>
>        /*
>       --
>       2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAN%2Bihrq_v6OFbOrZUhHZP
> RTjsUO5nrnr7Kj3AHQJYSD7%2BoXe5g%40mail.gmail.com.
>
>
--8323329-233732770-1602943366=:9440--

