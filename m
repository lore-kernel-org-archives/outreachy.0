X-GM-THRID: 6402533781831417856
X-Received: by 10.46.87.80 with SMTP id r16mr648423ljd.12.1490717455688;
        Tue, 28 Mar 2017 09:10:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.160.139 with SMTP id j133ls1023992lfe.48.gmail; Tue, 28 Mar
 2017 09:10:54 -0700 (PDT)
X-Received: by 10.25.169.141 with SMTP id s135mr3863494lfe.30.1490717454241;
        Tue, 28 Mar 2017 09:10:54 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id x188si436671wmx.0.2017.03.28.09.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 09:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so10959871lfi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 09:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=d7y7S+gNY8LDn5DWJS3UXLPih2AUWLDPERlpcdwV5z8=;
        b=CjVzaeEAKIRt69SMOx4enx+ny5bjbwwBJm8GwzlOg7bS9ezTTTiKMyG/R3kxsUvVbv
         AsWUB5BjjemeE3GcGLOSsRDZ3WZF+BJZ9Vn5EeJK04CI6CrpPx3opwEt8Yf4bKt3KtYl
         +wu5qdpshqkfUqhTSNHaTD0tysQ9DEnsUeytSxROVx25u66LrYBee/BXwHspNKOIynPL
         P9mjXrcIg6AXGY4XIidtmzOjcQSA8d8clawP1nPAk/ZatglywzzD0IJPK2fLKyfLU+9K
         8jFGH40UXChx84aMeSWk//29Xhh/RD/ALYgIb2ee3pb7hBHU4JswtJTsht3ykXwObl9A
         ZB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=d7y7S+gNY8LDn5DWJS3UXLPih2AUWLDPERlpcdwV5z8=;
        b=B/rg3ddXRNZnRZ12gTPJPUoxkaZ7dcbg3nvJ5lEFiSv0CaDMhkJFOtmhk6EHHSCwXx
         UbfPNSOzVKO+gzoFa7uSurZ2z4bTniby4ZznBx4UZt1hH15v/6580nAnHXBrp9Fw1Z8k
         eCmflSvgj5KEtsv3mKuitr1O21PLOjhYF4RGx44uETJ7QGq9X0ESR3VJJhliIXeV72nf
         Iu2sKK1jOZhcJOlG9bl3nkzdxzT68utdBySstj1JLKHaEH9C0xkZFGacl9qp2BncIaQw
         Rrmd+VZAlJrzXv2IRn3lrd65swpXs++XBt9K1jnmGPEyYEw0VbCuGssmBHN9CUcOhErp
         XMtg==
X-Gm-Message-State: AFeK/H31QQOcy0s0MNNuy3gq+aX/TM9Dfj+xF2IJYbVE8gFhVQWFRjB7+QycdUCVh8e4XWcM+y6J3/bAhbBETg==
X-Received: by 10.46.33.141 with SMTP id h13mr1993181lji.93.1490717453755;
 Tue, 28 Mar 2017 09:10:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Tue, 28 Mar 2017 09:10:53 -0700 (PDT)
In-Reply-To: <20170328152607.GA1735@salvia>
References: <20170328130032.GA5009@arushi-HP-Pavilion-Notebook> <20170328152607.GA1735@salvia>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Tue, 28 Mar 2017 21:40:53 +0530
Message-ID: <CA+XqjF-vUmrU5Zna6xrtQ-AeQifAD6_uTaq+Hx-YopXtVUAJHQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] net: netfilter: Remove complexity
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller" <davem@davemloft.net>, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1142bcf84aac08054bccb422

--001a1142bcf84aac08054bccb422
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 8:56 PM, Pablo Neira Ayuso <pablo@netfilter.org>
wrote:

> On Tue, Mar 28, 2017 at 06:30:56PM +0530, Arushi Singhal wrote:
> > To remove complexity of code the function is added in nfnetlink.h
> > to make code more clear and readable.
>
> Patch looks good, you can also use this new function from other
> _fill_info() functions in the netfilter code, eg.
>
>         nfnl_cthelper_fill_info()
>
> Take the time to make a careful look at the netfilter tree to see if
> we can have a good bunch of new clients of this function in one go.
> Most likely many of the nfnetlink_*.c files can use this.
>
> BTW, you can also indicate in your patch description that this is
> opencoded in a way that makes it error prone for future netfilter
> netlink subsystems.
>
> Please search for a better patch title, this one is too generic. I
> understand selecting a good patch title is something that exercise.
>
> I'd suggest this:
>
>         netfilter: add nfnl_msg_type() helper function
>
> Never give up, revamp and resubmit, thanks!
>
Thanks Pablo
I will try to make it more better and resubmit my patch again
Arushi

--001a1142bcf84aac08054bccb422
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 28, 2017 at 8:56 PM, Pablo Neira Ayuso <span dir=3D"ltr">&l=
t;<a href=3D"mailto:pablo@netfilter.org" target=3D"_blank">pablo@netfilter.=
org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"=
">On Tue, Mar 28, 2017 at 06:30:56PM +0530, Arushi Singhal wrote:<br>
&gt; To remove complexity of code the function is added in nfnetlink.h<br>
&gt; to make code more clear and readable.<br>
<br>
</span>Patch looks good, you can also use this new function from other<br>
_fill_info() functions in the netfilter code, eg.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 nfnl_cthelper_fill_info()<br>
<br>
Take the time to make a careful look at the netfilter tree to see if<br>
we can have a good bunch of new clients of this function in one go.<br>
Most likely many of the nfnetlink_*.c files can use this.<br>
<br>
BTW, you can also indicate in your patch description that this is<br>
opencoded in a way that makes it error prone for future netfilter<br>
netlink subsystems.<br>
<br>
Please search for a better patch title, this one is too generic. I<br>
understand selecting a good patch title is something that exercise.<br>
<br>
I&#39;d suggest this:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netfilter: add nfnl_msg_type() helper function<=
br>
<br>
Never give up, revamp and resubmit, thanks!<br></blockquote><div>Thanks Pab=
lo<br></div><div>I will try to make it more better and resubmit my patch ag=
ain<br></div><div>Arushi <br></div></div><br></div></div>

--001a1142bcf84aac08054bccb422--

