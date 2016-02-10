X-GM-THRID: 6249584461823868928
X-Received: by 10.25.163.210 with SMTP id m201mr4581142lfe.8.1455095473789;
        Wed, 10 Feb 2016 01:11:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.67 with SMTP id m64ls86791lfm.49.gmail; Wed, 10 Feb 2016
 01:11:13 -0800 (PST)
X-Received: by 10.112.219.138 with SMTP id po10mr4567557lbc.5.1455095473181;
        Wed, 10 Feb 2016 01:11:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w10si641935wmw.3.2016.02.10.01.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 01:11:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,425,1449529200"; 
   d="scan'208";a="202427739"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Feb 2016 10:11:12 +0100
Date: Wed, 10 Feb 2016 10:11:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: comedi: range: Merge if
 conditions
In-Reply-To: <20160210085928.GA14628@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602101010290.2710@hadrien>
References: <20160210085928.GA14628@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1493908533-1455095471=:2710"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1493908533-1455095471=:2710
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 10 Feb 2016, Amitoj Kaur Chawla wrote:

> Merge if conditions with the same statements.
>
> Found using Coccinelle. The semantic patch used to find this is as
> follows:
>
> //<smpl>
> @@
> statement S;
> expression e,x;
> @@
>
> * if(e)
> (
> { ... return ...; }
> &
> S
> )
>
> * if(x)
> (
> { ... return ...; }
> &
> S
> )
> //</smpl>
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/comedi/range.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
> index ce3a58a..f5c63ab 100644
> --- a/drivers/staging/comedi/range.c
> +++ b/drivers/staging/comedi/range.c
> @@ -67,9 +67,7 @@ int do_rangeinfo_ioctl(struct comedi_device *dev,
>  	subd = (it.range_type >> 24) & 0xf;
>  	chan = (it.range_type >> 16) & 0xff;
>
> -	if (!dev->attached)
> -		return -EINVAL;
> -	if (subd >= dev->n_subdevices)
> +	if (!dev->attached || (subd >= dev->n_subdevices))

You don´t need the parentheses.

julia

>  		return -EINVAL;
>  	s = &dev->subdevices[subd];
>  	if (s->range_table) {
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160210085928.GA14628%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1493908533-1455095471=:2710--

