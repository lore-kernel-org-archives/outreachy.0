X-GM-THRID: 6400173146424475648
X-Received: by 10.157.29.131 with SMTP id y3mr18029571otd.18.1490190809774;
        Wed, 22 Mar 2017 06:53:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.193 with SMTP id s59ls1365071ota.39.gmail; Wed, 22 Mar
 2017 06:53:29 -0700 (PDT)
X-Received: by 10.200.48.218 with SMTP id w26mr6089018qta.42.1490190809330;
        Wed, 22 Mar 2017 06:53:29 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-qt0-x242.google.com (mail-qt0-x242.google.com. [2607:f8b0:400d:c0d::242])
        by gmr-mx.google.com with ESMTPS id d67si159520ywb.3.2017.03.22.06.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 06:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) client-ip=2607:f8b0:400d:c0d::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400d:c0d::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x242.google.com with SMTP id r45so25347391qte.0
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 06:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N/Ha3aw4nvt5a4ZdpY6uE4Ad+qiIV0zPLPtu17Vm+RE=;
        b=fFX/XhknD4DnhJMs08ATE/vWyw7z1XNQvOvFXGXYCSt3Km/5KKLqS5DzoWLx3N9Csm
         5wLXkCs+Y8LIEQ3Qipw5+4Q6TopiqoROov3jsblUXLjwdVdfOFjuWy09T1TIzPKigA6T
         BNqjJloTl3uP3tnKrPXg2iIMFZkyWgoXbijvDeYiZOTLUxtTuTRLVYlD/J5OzG+hD50L
         1l4CwOMjJfCqmrdg8AHmtr8S0hCIQBTU53ryuucr38wBzDVHzN1KRc05WfMv/ozvhgZH
         n3ADCL2uV2+8Y8uPGxRt97Fipxu0Beu4V/Yd//xH1DE4LJIyutiVHRpZRuqquulGCqC1
         BAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N/Ha3aw4nvt5a4ZdpY6uE4Ad+qiIV0zPLPtu17Vm+RE=;
        b=C2qagHMMKvTpttlqhNE32IxEbZ1p7QNPdoLm76TZw8ePAmRyHjXNRkC4EqD9QPWuDR
         8CjQBr9q1oxbfjllY5PajJ/fOhfO7XMFnNVD5Lrt95z4Y9QXx7SWStgSnrHQ970CZgO4
         uzsKOxe7FZi2xoGDsiCPz1gLf9uotpUEtrCPWnF71r8636wl9J9e+nHvFTqDweWoYmLe
         xsEJFPxB1mRDBl0bB9MtioTiB7JKrJZgXE5ypmKOhV+cR+tKBCAAxUqeBMzyJv8NN9wF
         fS8bfgyQ3UiKglQ/zknUjQTnP9xpVZW0ZpeiD5j3O+ljenw6A7H1VpYBsbhy7evQtolX
         waww==
X-Gm-Message-State: AFeK/H1E3TrkK1F06xSPCPmvpzjs32C0utUFY1EKWt6HSDCWS8vqmWOJ1Fdrv9dHrklbzmOHt+c/WrkigzJA4Q==
X-Received: by 10.25.128.87 with SMTP id b84mr6423404lfd.86.1490190808983;
 Wed, 22 Mar 2017 06:53:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Wed, 22 Mar 2017 06:53:28 -0700 (PDT)
In-Reply-To: <900FF751-5BFD-4B17-855C-6B1C0665B712@intel.com>
References: <20170322042028.GA22848@arushi-HP-Pavilion-Notebook> <900FF751-5BFD-4B17-855C-6B1C0665B712@intel.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 22 Mar 2017 19:23:28 +0530
Message-ID: <CA+XqjF8TGbb=NZrAcRj6EfCMQ5_gmmUdP+5Wj=CE9BZXzT0Skw@mail.gmail.com>
Subject: Re: [PATCH] staging: media: Replace a bit shift by a use of BIT.
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: "Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>, LKML <linux-kernel@vger.kernel.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	Luuk Paulussen <luuk.paulussen@alliedtelesis.co.nz>, 
	Hamish Martin <hamish.martin@alliedtelesis.co.nz>
Content-Type: multipart/alternative; boundary=001a113ebfccd1a74b054b521596

--001a113ebfccd1a74b054b521596
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 5:41 PM, Dilger, Andreas <andreas.dilger@intel.com>
wrote:

> On Mar 22, 2017, at 00:20, Arushi Singhal <arushisinghal19971997@gmail.com>
> wrote:
> >
> > This patch replaces bit shifting on 1 with the BIT(x) macro.
> > This was done with coccinelle:
> > @@
> > constant c;
> > @@
> >
> > -1 << c
> > +BIT(c)
>
> Hi Arushi,
> thanks for taking time to contribute to the kernel.  There are a few
> problems with
> this patch.
>
> Firstly, I'm not sure why you sent this patch to lustre-devel, Oleg,
> James, and me,
> since it has nothing to do with Lustre.  Conversely, the actual
> maintainer(s) of this
> code would normally be better suited to review the patch.  This isn't
> totally clear
> in this case since get_maintainer.pl lists another person submitting
> minor cleanups,
> but "git log" does return some more likely candidates:
> - David Daney <ddaney@caviumnetworks.com> (original author)
> - Luuk Paulussen <luuk.paulussen@alliedtelesis.co.nz> (recent non-trivial
> patcher)
> - Kyeong Yoo <kyeong.yoo@alliedtelesis.co.nz> (recent non-trivial
> reviewer)
> - Richard Laing <richard.laing@alliedtelesis.co.nz>  " "
> - Chris Packham <chris.packham@alliedtelesis.co.nz>
> - Tim Beale <tim.beale@alliedtelesis.co.nz>
> - Hamish Martin <hamish.martin@alliedtelesis.co.nz>
>
>
> Secondly, as mentioned with the other patch you submitted, you need to
> stop and look
> at whether your changes actually make sense.  In this case, I don't think
> they do
> make sense, and this patch should probably just be abandoned.
>
>
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> > drivers/staging/octeon/ethernet-tx.c | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/ethernet-tx.c
> b/drivers/staging/octeon/ethernet-tx.c
> > index ff4119e8de42..f00186ac4e27 100644
> > --- a/drivers/staging/octeon/ethernet-tx.c
> > +++ b/drivers/staging/octeon/ethernet-tx.c
> > @@ -381,7 +381,7 @@ int cvm_oct_xmit(struct sk_buff *skb, struct
> net_device *dev)
> >           (ip_hdr(skb)->version == 4) &&
> >           (ip_hdr(skb)->ihl == 5) &&
> >           ((ip_hdr(skb)->frag_off == 0) ||
> > -          (ip_hdr(skb)->frag_off == htons(1 << 14))) &&
> > +          (ip_hdr(skb)->frag_off == htons(BIT(14)))) &&
>
> In this case, it is checking if the fragment offset in bytes is 16384,
> rather than doing
> a bit comparison, so I don't think the use of BIT() is appropriate here.
>
> >           ((ip_hdr(skb)->protocol == IPPROTO_TCP) ||
> >            (ip_hdr(skb)->protocol == IPPROTO_UDP))) {
> >               /* Use hardware checksum calc */
> > @@ -613,7 +613,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct
> net_device *dev)
> > #endif
> >               work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
> >                                         (ip_hdr(skb)->frag_off ==
> > -                                           1 << 14));
> > +                                           BIT(14)));
>
> Same.
>
Hi Andreas
Your suggestions are really fruitful.
I will keep in mind to do sensible changes.
Thanks
Arushi Singhal

>
> Cheers, Andreas
> --
> Andreas Dilger
> Lustre Principal Architect
> Intel Corporation
>
>
>
>
>
>
>
>

--001a113ebfccd1a74b054b521596
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 22, 2017 at 5:41 PM, Dilger, Andreas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:andreas.dilger@intel.com" target=3D"_blank">andreas.dilge=
r@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span c=
lass=3D"">On Mar 22, 2017, at 00:20, Arushi Singhal &lt;<a href=3D"mailto:a=
rushisinghal19971997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt=
; wrote:<br>
&gt;<br>
&gt; This patch replaces bit shifting on 1 with the BIT(x) macro.<br>
&gt; This was done with coccinelle:<br>
&gt; @@<br>
&gt; constant c;<br>
&gt; @@<br>
&gt;<br>
&gt; -1 &lt;&lt; c<br>
&gt; +BIT(c)<br>
<br>
</span>Hi Arushi,<br>
thanks for taking time to contribute to the kernel.=C2=A0 There are a few p=
roblems with<br>
this patch.<br>
<br>
Firstly, I&#39;m not sure why you sent this patch to lustre-devel, Oleg, Ja=
mes, and me,<br>
since it has nothing to do with Lustre.=C2=A0 Conversely, the actual mainta=
iner(s) of this<br>
code would normally be better suited to review the patch.=C2=A0 This isn&#3=
9;t totally clear<br>
in this case since <a href=3D"http://get_maintainer.pl" rel=3D"noreferrer" =
target=3D"_blank">get_maintainer.pl</a> lists another person submitting min=
or cleanups,<br>
but &quot;git log&quot; does return some more likely candidates:<br>
- David Daney &lt;<a href=3D"mailto:ddaney@caviumnetworks.com">ddaney@caviu=
mnetworks.com</a>&gt; (original author)<br>
- Luuk Paulussen &lt;<a href=3D"mailto:luuk.paulussen@alliedtelesis.co.nz">=
luuk.paulussen@alliedtelesis.<wbr>co.nz</a>&gt; (recent non-trivial patcher=
)<br>
- Kyeong Yoo &lt;<a href=3D"mailto:kyeong.yoo@alliedtelesis.co.nz">kyeong.y=
oo@alliedtelesis.co.<wbr>nz</a>&gt; (recent non-trivial reviewer)<br>
- Richard Laing &lt;<a href=3D"mailto:richard.laing@alliedtelesis.co.nz">ri=
chard.laing@alliedtelesis.<wbr>co.nz</a>&gt;=C2=A0 &quot; &quot;<br>
- Chris Packham &lt;<a href=3D"mailto:chris.packham@alliedtelesis.co.nz">ch=
ris.packham@alliedtelesis.<wbr>co.nz</a>&gt;<br>
- Tim Beale &lt;<a href=3D"mailto:tim.beale@alliedtelesis.co.nz">tim.beale@=
alliedtelesis.co.nz</a><wbr>&gt;<br>
- Hamish Martin &lt;<a href=3D"mailto:hamish.martin@alliedtelesis.co.nz">ha=
mish.martin@alliedtelesis.<wbr>co.nz</a>&gt;<br>
<br>
<br>
Secondly, as mentioned with the other patch you submitted, you need to stop=
 and look<br>
at whether your changes actually make sense.=C2=A0 In this case, I don&#39;=
t think they do<br>
make sense, and this patch should probably just be abandoned.<br>
<span class=3D""><br>
<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt; drivers/staging/octeon/<wbr>ethernet-tx.c | 4 ++--<br>
&gt; 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/octeon/<wbr>ethernet-tx.c b/drivers/stagi=
ng/octeon/<wbr>ethernet-tx.c<br>
&gt; index ff4119e8de42..f00186ac4e27 100644<br>
&gt; --- a/drivers/staging/octeon/<wbr>ethernet-tx.c<br>
&gt; +++ b/drivers/staging/octeon/<wbr>ethernet-tx.c<br>
&gt; @@ -381,7 +381,7 @@ int cvm_oct_xmit(struct sk_buff *skb, struct net_d=
evice *dev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ip_hdr(skb)-&gt;version =3D=
=3D 4) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ip_hdr(skb)-&gt;ihl =3D=3D 5)=
 &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((ip_hdr(skb)-&gt;frag_off =3D=
=3D 0) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ip_hdr(skb)-&gt;frag_off =3D=3D h=
tons(1 &lt;&lt; 14))) &amp;&amp;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ip_hdr(skb)-&gt;frag_off =3D=3D h=
tons(BIT(14)))) &amp;&amp;<br>
<br>
</span>In this case, it is checking if the fragment offset in bytes is 1638=
4, rather than doing<br>
a bit comparison, so I don&#39;t think the use of BIT() is appropriate here=
.<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((ip_hdr(skb)-&gt;protocol =3D=
=3D IPPROTO_TCP) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (ip_hdr(skb)-&gt;protocol =3D=
=3D IPPROTO_UDP))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Use hardware =
checksum calc */<br>
&gt; @@ -613,7 +613,7 @@ int cvm_oct_xmit_pow(struct sk_buff *skb, struct n=
et_device *dev)<br>
&gt; #endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0work-&gt;word2.s=
.is_frag =3D !((ip_hdr(skb)-&gt;frag_off =3D=3D 0) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0(ip_hdr(skb)-&gt;frag_off =3D=3D<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A01 &lt;&lt; 14));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0BIT(14)));<br>
<br>
</span>Same.<br></blockquote><div>Hi Andreas<br></div><div>Your suggestions=
 are really fruitful.<br></div><div>I will keep in mind to do sensible chan=
ges.<br></div><div>Thanks<br></div><div>Arushi Singhal <br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
<br>
Cheers, Andreas<br>
--<br>
Andreas Dilger<br>
Lustre Principal Architect<br>
Intel Corporation<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div><br></div></div>

--001a113ebfccd1a74b054b521596--

