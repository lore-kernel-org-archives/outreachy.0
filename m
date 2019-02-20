X-GM-THRID: 6659918417753014272
X-Received: by 2002:a67:6809:: with SMTP id d9mr21916265vsc.17.1550634826348;
        Tue, 19 Feb 2019 19:53:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2706:: with SMTP id a6ls3859670uaa.0.gmail; Tue, 19 Feb
 2019 19:53:45 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY4cACVc3PUcLQ2wS8bEXeAOGrje4aqAudBY1zyS6OE5A7IZwnaph4DnInduycls8DFVhuK
X-Received: by 2002:ab0:2711:: with SMTP id s17mr20820266uao.26.1550634825578;
        Tue, 19 Feb 2019 19:53:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550634825; cv=none;
        d=google.com; s=arc-20160816;
        b=liqiiVLDb3IvprBA3y+tM6koQvQnr8fd+BeACxDB/Ag+DrBzeX+ckDPgUgwSvtvYiW
         WYwW2CEpQvJ+okYRyrRfb23NYWzELB77fBMEqaI1pnMpJLDtzlR7myaB2NxAYyScxa4+
         6HJNUNgcZhAMAKH/A/CR1xmvCwOUGlsTIxxzY8ajlDGjkmW/FeSODGtLiup33SgLyTR8
         QCGDcb5j/Q1ImaFnpFT07MhcsNjpU3SXeIymzEUhIHFsZSbnKpu0U1glp0c+MoaGpDUA
         YCNJmmcXtJH30lP+h+Gt7SGGnMuZryW5AbpEUgz6QlxEqUfmbbJlFCUyI490NyXlbXcz
         QKCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=U/FNB3Abb3sfH0VNty/Czrfu35qSpoamcmqCA+fXO9Q=;
        b=g0NI9bDoGdWBG9RiKlyhc52167YlUvE0NdcTryncyqZKOlGv49dh7DP6YIDXwLvyjG
         soibLWbem1qXX+b360huhyi/iR6cCeDasmdObIBTBzIBk6tYYdgUfqW11O9rtpTXZ6t6
         fN2Ek11r/asgMiba6CKQ2OIUdF0ujZOSM6BZC6tZToVTjIDx8Iprl8b6Ks0jrUPO1nIh
         xondrSU9G4ViMNfiz64PfH3uq4aubQH7W9A41C8+vDqX6BknOK9/Gn/WiVI31NZzXYy0
         qyPaOX1cWwGJvaSOljyFKz3+mgcmYZqxnaEYiDpITduUvWDbLTwyBtxyG5XVGT9FLoWP
         9vvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-05.prod.phx3.secureserver.net (p3plsmtpa12-05.prod.phx3.secureserver.net. [68.178.252.234])
        by gmr-mx.google.com with ESMTPS id v187si907389vkd.5.2019.02.19.19.53.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 19:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) client-ip=68.178.252.234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.234 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f177.google.com ([209.85.208.177])
	by :SMTPAUTH: with ESMTPSA
	id wIx5gLfJZ3qEywIx6geMNq; Tue, 19 Feb 2019 20:53:44 -0700
Received: by mail-lj1-f177.google.com with SMTP id q128so19489831ljb.11
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 19:53:44 -0800 (PST)
X-Gm-Message-State: AHQUAubZ9D6hdhOy5tdImAar8laKQzCGbTxGea1hFfpXHBnEmjAhokrn
	kuo6Wy46P3aX6phqLRiVxRwT0qruE7CDiWsamlU=
X-Received: by 2002:a2e:20b:: with SMTP id 11mr16164955ljc.41.1550634823084;
 Tue, 19 Feb 2019 19:53:43 -0800 (PST)
MIME-Version: 1.0
References: <20190220032432.2878-1-himadri18.07@gmail.com>
In-Reply-To: <20190220032432.2878-1-himadri18.07@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 20 Feb 2019 09:23:31 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+pTxoeuVYb+V6N6everYRtOvJwo26O-=LVVEbsXqBOFA@mail.gmail.com>
Message-ID: <CAK-LDb+pTxoeuVYb+V6N6everYRtOvJwo26O-=LVVEbsXqBOFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] net: dsa: add missing of_node_put
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>, andrew@lunn.ch, 
	Florian Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfLSEbuSWELxLA7WtdQMAPS1JEa4Az2rgotSE4hIoq7B0XGC68cbGfNWiU1xxyTX2D1qXXFaxYoukllRjyZ56qU6zT6uapcP8jp4roI8O6isKefjJEA13
 2tSMBlo0aHlNQSx757LNUuQcZtan+1FasR4WulQhJV5E3PMcKTAql3IokcZNZtF0o9xXB+0YXBWc7/zwqjNYMBnnpHVmxKvg3WE=

On Wed, Feb 20, 2019 at 8:54 AM Himadri Pandya <himadri18.07@gmail.com> wrote:
>

Hi Himadri,

Thanks for the patch!

For the scope of Outreachy, we prefer that you send patches in staging
directory as Greg makes sure to pick them during the application
period. Of course, you're very much encouraged to contribute to other
subsystems as well but there patches are mainly picked up based on
maintainer's cycle which may or may not be picked up for linux-next when
selection of interns happens.

I hope that makes sense.

> Decrement the reference count on port while returning out of the loop.

How did you find out about this issue? I think it would be good to
give credit to tool in commit log if the issue is identified or produced
by tool. [In this case, I assume it's Coccinelle]

> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  net/dsa/dsa2.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
> index a1917025e155..396e7433dd8f 100644
> --- a/net/dsa/dsa2.c
> +++ b/net/dsa/dsa2.c
> @@ -624,19 +624,25 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
>         for_each_available_child_of_node(ports, port) {
>                 err = of_property_read_u32(port, "reg", &reg);
>                 if (err)
> -                       return err;
> +                       goto put_port;
>
> -               if (reg >= ds->num_ports)
> -                       return -EINVAL;
> +               if (reg >= ds->num_ports) {
> +                       err = -EINVAL;
> +                       goto put_port;
> +               }
>
>                 dp = &ds->ports[reg];
>
>                 err = dsa_port_parse_of(dp, port);
>                 if (err)
> -                       return err;
> +                       goto put_port;
>         }
>
>         return 0;
> +
> +put_port:
> +       of_node_put(port);
> +       return err;
>  }
>
>  static int dsa_switch_parse_member_of(struct dsa_switch *ds,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190220032432.2878-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

