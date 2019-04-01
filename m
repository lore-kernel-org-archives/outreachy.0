X-GM-THRID: 6674586427975532544
X-Received: by 2002:a2e:96ce:: with SMTP id d14mr1916235ljj.10.1554099231310;
        Sun, 31 Mar 2019 23:13:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:424c:: with SMTP id m12ls688499lfl.3.gmail; Sun, 31 Mar
 2019 23:13:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+waSe3SowKI7U/CE62OyEqRQxLLaipyt5z4vVSVCkyqrXt7hYZEDJ+sRE2yoCWRJqcJ2F
X-Received: by 2002:a19:c50d:: with SMTP id w13mr1650795lfe.9.1554099230161;
        Sun, 31 Mar 2019 23:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554099230; cv=none;
        d=google.com; s=arc-20160816;
        b=r79T9BuwC+bWscJLIOXeeuBZR4qnEhVmuX5y5wxVELTKwDwfGBVxVeP6ELpslrXnh8
         G8G/9ov8+z2eA2VzRPbD4BzbiAYjDJA7oEizWZiTG9vmlRjmRsx2UxWHmmaSOOktgY1x
         Yo8oguGG6yy9r/7dK+XDQcFo+DNW65ZK01UUgF78y7Pite/708Z+akqkQ6aUjR4U5VmT
         63cRPX1Jlr/gpHy6NqUrplWCW/lLm8WZ4NKJ9/tqJTtGUcVmEj8cEUDed8HUFyU6GpKA
         f78VQ6yF5y8ncE1xHovqQfdTf1TmIDERBYbcq457P1x2V/ZUSspUdjGTC1p2FVANS/nq
         JYKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9GgaVTZjTXX70Z5T3GZoTcNjOw+gwa5tyHuTbCm0eAA=;
        b=pNtCEqC0uEuquI7lC9ubuYAnvZZwsf28dIxH2SZQVQr0gJkD51WBG9dqEVILd/Z2OW
         RCRWJr881BgwfE+h+Z3jHGCA5SWRys4RVTzreVSMIN1ESQuQIFDgXKnklIi2+2TWe7BD
         QNAad/Ls8gstU6PU9gMzJ+c5y+WkUfECMoJc1sc+slejNSYFS1FkPnFH1If+WX7kM7VT
         kO6JTt+bP8EG6Uo6tQWWaRZ1LqV6QkExpWis1e831pCGq9mUeLLl/gVZlNZG4GnzPfYm
         FT4S0saxG1HL5/+LIvyjYm7e1WlFwUD6I2JrCshb1eahD2G64IQO2wWdZ6mbS2IQ1WbV
         x/EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u21si256804lja.1.2019.03.31.23.13.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 23:13:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,295,1549926000"; 
   d="scan'208";a="376573173"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 08:13:48 +0200
Date: Mon, 1 Apr 2019 08:13:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: hid: Remove print
 following unsuccessful kmalloc
In-Reply-To: <CAO-bXGC=KEM-sA3Z7mL70xDLPPUfoQ78AxyUbu-5ggBeyA5OmA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1904010813320.2664@hadrien>
References: <20190331160402.27940-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903311833100.2578@hadrien> <CAO-bXGC=KEM-sA3Z7mL70xDLPPUfoQ78AxyUbu-5ggBeyA5OmA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-859058055-1554099228=:2664"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-859058055-1554099228=:2664
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 1 Apr 2019, Sanjana Sanikommu wrote:

>
>
> On Sun, 31 Mar 2019, 22:03 Julia Lawall, <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:
>
>       > Challenge suggested by Coccinelle
>       > Remove print statement following unsuccessful kmalloc when
>       there
>       > is not enough memory. Kmalloc and variants normally produce a
>       > backtrace in such a case. Hence, a print statement is not
>       necessary.
>       >
>       > Found using the following Coccinelle semantic patch:
>       > @@
>       > identifier i,print;
>       > constant char [] c;
>       > @@
>       >
>       > i = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|
>       > devm_ioremap\|usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\|
>       > kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>       >    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...));
>       > (
>       > if (i == NULL)
>       > {
>       > -print(...,c,...);
>       > ...when any
>       > }
>       > |
>       > if (!i)
>       > {
>       > -print(...,c,...);
>       > ...when any
>       > }
>       > )
>
>       No need to change, but with the pattern i == NULL, Coccinelle
>       will match
>       !i too.
>
>
>    Shall I update the semantic patch ? Plz let me know...

There is no need to change it.

julia

>
>  Thank you
> Sanjana
>
>       julia
>
>       >
>       > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
>       > ---
>       >  drivers/staging/greybus/hid.c | 1 -
>       >  1 file changed, 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/greybus/hid.c
>       b/drivers/staging/greybus/hid.c
>       > index 0b72e1b9d325..8ab810bf5716 100644
>       > --- a/drivers/staging/greybus/hid.c
>       > +++ b/drivers/staging/greybus/hid.c
>       > @@ -292,7 +292,6 @@ static int gb_hid_parse(struct hid_device
>       *hid)
>       >
>       >       rdesc = kzalloc(rsize, GFP_KERNEL);
>       >       if (!rdesc) {
>       > -             dbg_hid("couldn't allocate rdesc memory\n");
>       >               return -ENOMEM;
>       >       }
>       >
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190331160402.27940-1-s
>       anjana99reddy99%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19033118
>       33100.2578%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAO-bXGC%3DKEM-sA3Z7mL70
> xDLPPUfoQ78AxyUbu-5ggBeyA5OmA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-859058055-1554099228=:2664--

