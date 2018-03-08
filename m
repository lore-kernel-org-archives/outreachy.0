X-GM-THRID: 6528705081880084480
X-Received: by 10.46.5.200 with SMTP id 191mr1716729ljf.25.1520477868815;
        Wed, 07 Mar 2018 18:57:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.126.11 with SMTP id z11ls351656ljc.7.gmail; Wed, 07 Mar
 2018 18:57:47 -0800 (PST)
X-Google-Smtp-Source: AG47ELsLE3UCcd/HDS0v37HIFkuKTb/VJyuwtUwSaHIfcFZUW13CRFDHUVn35EIOmpoF+SL1HGJZ
X-Received: by 10.46.17.17 with SMTP id f17mr1637181lje.29.1520477867368;
        Wed, 07 Mar 2018 18:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520477867; cv=none;
        d=google.com; s=arc-20160816;
        b=ta7SShqQ3o4v3J67u5ll7L8ScTCvJLG0nw98QzvnqFY+kP0GmlqfyQmytQHNQkn+or
         W1Ho5JlZjzlT4PqkoiLvlVd1Gxnqj2bBT1YN8UGGiTh+WdEhMYxuklf0uXaF5cybwmnL
         u8kyexq5qZBwyTkk1uZjl/TAEZ0HXftQypslD8MqEV+S6VmNlXRAZySfTHnZxu95sanb
         jXpnWQq3QgBnO0jRlXvH7hnlkmcqKPP+pwePWhOITMAfrp/+7pUb0TkYsGNzdRSOU0Mu
         H8NxJAr8uauIFfM5OJIAbCy8GQNRcCdwLpFAcFatNC9ELfpSJscZNqYnxAfNKnN4yfBW
         lg6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=vOqTgXsgHrJnaA4nOeDx/mKjaysmdzPvtnWjd2oQzng=;
        b=oA4OdaZ2y+TTiEDtVP+1W+wmXGb6zgIZO/B5rQ6lOEYQXowIxI3wQRRhbsHTqJ9Lev
         UWXqLXjyeB+QZ3l5wGQQpf3O51ZUrfNRJrtdlidsYkXeC7ePWriy2sHNb33umKiTp7cQ
         0bZc4o3AMR0O/SfMoZ8gSlagouvyjmk32f1SzqZbGZjVFP0tgrWZitBlw4b7LiWlqiHn
         /qv6z4hifvX/zMpoTHp93ttfyqMf/+QRjnVJQ1XX+bfO2Y+HznDGIn8DJO0Cx4+sAxgd
         EnvXY5h7suykMmOpiofjP8lYb0szqzQrkubNJ6buE+Y6KqbLnYpI0Yws3P4pHque58wy
         CQkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OLyIxYx+;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x230.google.com (mail-lf0-x230.google.com. [2a00:1450:4010:c07::230])
        by gmr-mx.google.com with ESMTPS id 7si416880ljw.5.2018.03.07.18.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 18:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) client-ip=2a00:1450:4010:c07::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OLyIxYx+;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::230 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x230.google.com with SMTP id i80-v6so6286099lfg.5
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Mar 2018 18:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vOqTgXsgHrJnaA4nOeDx/mKjaysmdzPvtnWjd2oQzng=;
        b=OLyIxYx+zXLUry0+wRXrlRyKGWc6t5tJEAB+QiTnPnq1iBSPAyWsyIHs79R8HidiBc
         wgQRB0tGkLGm4q4d87RGe5ogJKtyOWLQOyKmxlCuVEG5ul2RR/XTULVj4lKZ8kTWEGDd
         kSUZe0uZoIRceSVy1TtI9+hsNcnsclsI1KjkR/1unQJF2nCl1r7lvhkgxWN3bQI/7LwY
         NOVL3BhqQh5dgFosZuNq9++WmjCTnd7gT61o8yoSndgyyjaD40sM20H2c1vqsRj7cCTw
         7Gy7n3otohcnxmEG2R8UXtJea4M8GzMW9T3fHYATIvOehfyfAC7wdT6v/zD2KnnhgOZU
         MLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vOqTgXsgHrJnaA4nOeDx/mKjaysmdzPvtnWjd2oQzng=;
        b=FBtzhPnBeFwURlzsL7k4JGnHasuwR6HmDLi+VofM5cRTkAqcX5P3JK/GYRW2k1/hFc
         v44gUEVsauKpTSog98p/IVK9SwhK/FyhL5Y9YLLzYL2vGydNqKZAHzuWTpcX/hnCpKYJ
         jKB+qjiRI3ZAEAYNSgtkJg23dlFx/lycqwpLG59uVYP4zsFvENpcbu9hF4ofEaY3fuMG
         fVHHadjWxysOQm71qVtlqT3EdWyirzEr33maPpyr76KXDPPFHUBuoaM0nTHi7zpVmdgv
         NTwRj1DeQuJR3tNPUSSEbzqNJEloW+ab/N3CxKE/ivmpFzsxXK+Ur6jIIayV2OYNejJQ
         eCwQ==
X-Gm-Message-State: APf1xPCBJuCPUDNSaXXgpCC3cmlb8RZr+6tuUTpYo3NjODZiJxtcoiXX
	3Wq+CP/JYr3XsZWjbc52mNnjWG5T4yxa1+0UYEI=
X-Received: by 10.46.49.10 with SMTP id x10mr16349266ljx.5.1520477867011; Wed,
 07 Mar 2018 18:57:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.26.203 with HTTP; Wed, 7 Mar 2018 18:57:46 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1803072039260.2814@hadrien>
References: <20180303161456.GA20194@seema-Inspiron-15-3567>
 <20180307.103901.1771176275743006915.davem@davemloft.net> <CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
 <alpine.DEB.2.20.1803072039260.2814@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Thu, 8 Mar 2018 08:27:46 +0530
Message-ID: <CA+XqjF_9sMh2G6wX4SW75iXbUw=Bt6J0AE4_rjqrNB_UAKcZtA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] net: ethernet: Drop unnecessary continue
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: David Miller <davem@davemloft.net>, jdmason@kudzu.us, 
	Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	oss-drivers@netronome.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="f4f5e805a8b426f0b30566ddd767"

--f4f5e805a8b426f0b30566ddd767
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 8, 2018 at 1:11 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 7 Mar 2018, Arushi Singhal wrote:
>
> >
> >
> > On Wed, Mar 7, 2018 at 9:09 PM, David Miller <davem@davemloft.net>
> wrote:
> >       From: Arushi Singhal <arushisinghal19971997@gmail.com>
> >       Date: Sat, 3 Mar 2018 21:44:56 +0530
> >
> >       > Continue at the bottom of a loop are removed.
> >       > Issue found using drop_continue.cocci Coccinelle script.
> >       >
> >       > Signed-off-by: Arushi Singhal
> >       <arushisinghal19971997@gmail.com>
> >       > ---
> >       > Changes in v2:
> >       > - Braces is dropped from if with single statement.
> >
> >       Sorry there is no way I am applying this.
> >
> >       Just blindly removing continue statements that some static
> >       checker
> >       or compiler warning mentions is completely unacceptable.
> >
> >       Actually _LOOK_ at this code:
> >
> >       >               if(cards[i].vendor_id) {
> >       >                       for(j=0;j<3;j++)
> >       > -
> >        if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
> >       {
> >       > +
> >        if(inb(ioaddr+cards[i].addr_offset+j) != cards[i].vendor_id[j])
> >       >                                       release_region(ioaddr,
> >       cards[i].total_size);
> >       > -                                     continue;
> >       > -                       }
> >       >               }
> >
> >       The extraneous continue statement is the _least_ of the problems
> >       here.
> >
> >
> > Hello David
> >
> > Yes you are correct.
> >
> >
> >       This code, if the if() statement triggers, will release the
> >       ioaddr
> >       region and then _CONTINUE_ the for(j) loop, and try to access
> >       the
> >       registers using the same 'ioaddr' again.
> >
> >       That's actually a _REAL_ bug, and you're making it seem like
> >       the behavior is intentional by editing it like this.
> >
> >       And the bug probably exists because this entire sequence has
> >       misaligned closing curly braces.  It makes it look like
> >       the continue is for the outer loop, which would be fine.
> >
> >       But it's not.  It's for the inner loop, and this causes the "use
> >       ioaddr after releasing it" bug.
> >
> >
> > Yes I know it's for the inner loop.
> > But I am not able to find, where I am wrong here
>
> Arushi,
>
> You are preserving the current behavior and David is telling you that the
> current behavior is incorrect.  He doesn't want a patch that changes the
> code but preesrves the current (wrong) behavior, because that somehow
> contributes to the illusion that the incorrect code is correct.
>

Thanks Julia :) for explaining it further.
Arushi

>
> julia
>
> >
> > For example
> > BEFORE:-
> > for(i=1;i<10;i++)
> >        if (expr1)
> >           {
> >              statement;
> >              continue;
> >           }
> >
> > After My Patch
> > for(i=1;i<10;i++)
> >     if (expr1)
> >        statement;
> >
> > I am not understanding where I am getting wrong in understanding this.
> > For me both are equivalent.
> >
> > I Agree with Jakub reply:-
> > "This is an error handling path so the continue makes sense here to
> > indicate the processing can't ever fall through if more statements are
> > ever added to the loop.  But OK."
> >
> > Thanks
> > Arushi
> >
> >
> >       Please do not submit patches like this one, it makes for a lot
> >       of
> >       wasted auditing and review for people.  The onus is on you to
> >       read
> >       and understand the code you are editing before submitting your
> >       changes.
> >
> >       Thank you.
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.
> com/d/msgid/outreachy-kernel/CA%2BXqjF8_axeTnahPmokxm
> > Dnm4NmWo8QWSEmLejN4fO1nAiDaBA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--f4f5e805a8b426f0b30566ddd767
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 8, 2018 at 1:11 AM, Julia Lawall <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h=
5"><br>
<br>
On Wed, 7 Mar 2018, Arushi Singhal wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Mar 7, 2018 at 9:09 PM, David Miller &lt;<a href=3D"mailto:dav=
em@davemloft.net">davem@davemloft.net</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0From: Arushi Singhal &lt;<a href=3D"mailto:a=
rushisinghal19971997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Date: Sat, 3 Mar 2018 21:44:56 +0530<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Continue at the bottom of a loop are re=
moved.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Issue found using drop_continue.cocci C=
occinelle script.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Arushi Singhal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:arushisinghal19971997@=
gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; - Braces is dropped from if with single=
 statement.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Sorry there is no way I am applying this.<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Just blindly removing continue statements th=
at some static<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0checker<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0or compiler warning mentions is completely u=
nacceptable.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Actually _LOOK_ at this code:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if(cards[i].vendor_id) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for(j=3D0;j&lt;3;j++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0if(inb(ioaddr+cards[i].addr_<wbr>offse=
t+j) !=3D cards[i].vendor_id[j])<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0if(inb(ioaddr+cards[i].addr_<wbr>offse=
t+j) !=3D cards[i].vendor_id[j])<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0release_region(ioaddr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cards[i].total_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0continue;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0The extraneous continue statement is the _le=
ast_ of the problems<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0here.<br>
&gt;<br>
&gt;<br>
&gt; Hello David<br>
&gt;<br>
&gt; Yes you are correct.<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This code, if the if() statement triggers, w=
ill release the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ioaddr<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0region and then _CONTINUE_ the for(j) loop, =
and try to access<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0registers using the same &#39;ioaddr&#39; ag=
ain.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0That&#39;s actually a _REAL_ bug, and you&#3=
9;re making it seem like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the behavior is intentional by editing it li=
ke this.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0And the bug probably exists because this ent=
ire sequence has<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0misaligned closing curly braces.=C2=A0 It ma=
kes it look like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the continue is for the outer loop, which wo=
uld be fine.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0But it&#39;s not.=C2=A0 It&#39;s for the inn=
er loop, and this causes the &quot;use<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ioaddr after releasing it&quot; bug.<br>
&gt;<br>
&gt;<br>
&gt; Yes I know it&#39;s for the inner loop.<br>
&gt; But I am not able to find, where I am wrong here<br>
<br>
</div></div>Arushi,<br>
<br>
You are preserving the current behavior and David is telling you that the<b=
r>
current behavior is incorrect.=C2=A0 He doesn&#39;t want a patch that chang=
es the<br>
code but preesrves the current (wrong) behavior, because that somehow<br>
contributes to the illusion that the incorrect code is correct.<br></blockq=
uote><div><br></div><div>Thanks Julia :) for explaining it further.<br></di=
v><div>Arushi<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; For example<br>
&gt; BEFORE:-<br>
&gt; for(i=3D1;i&lt;10;i++)<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (expr1)<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 {<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 statement;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 continue;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt; =C2=A0<br>
&gt; After My Patch<br>
&gt; for(i=3D1;i&lt;10;i++)<br>
&gt; =C2=A0=C2=A0=C2=A0 if (expr1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 statement;<br>
&gt;<br>
&gt; I am not understanding where I am getting wrong in understanding this.=
<br>
&gt; For me both are equivalent.<br>
&gt;<br>
&gt; I Agree with Jakub reply:-<br>
&gt; &quot;This is an error handling path so the continue makes sense here =
to<br>
&gt; indicate the processing can&#39;t ever fall through if more statements=
 are<br>
&gt; ever added to the loop.=C2=A0 But OK.&quot;<br>
&gt;<br>
&gt; Thanks<br>
&gt; Arushi<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please do not submit patches like this one, =
it makes for a lot<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wasted auditing and review for people.=C2=A0=
 The onus is on you to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0read<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0and understand the code you are editing befo=
re submitting your<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0changes.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Thank you.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CA%2BXqjF8_axeTnahPmokxm" rel=3D"nor=
eferrer">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>CA%2BXqjF8_ax=
eTnahPmokxm</a><br>
&gt; Dnm4NmWo8QWSEmLejN4fO1nAiDaBA%<a href=3D"http://40mail.gmail.com" rel=
=3D"noreferrer"><wbr>40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer">https://groups.google.com/d/<wbr>optout</a>.<br>
&gt;<br>
&gt;</font></span></blockquote></div><br></div></div>

--f4f5e805a8b426f0b30566ddd767--

