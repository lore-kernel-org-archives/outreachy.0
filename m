X-GM-THRID: 6802879895263248384
X-Received: by 2002:a37:9e88:: with SMTP id h130mr1195569qke.145.1583947206724;
        Wed, 11 Mar 2020 10:20:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls794338qta.11.gmail; Wed, 11 Mar
 2020 10:20:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuUzk3w+TcnxX575gLDVRAcF+eoLe64Kb2NP7lRSjUZg0gEHx8Zy9ccaxLGsvujG6zHekLJ
X-Received: by 2002:aed:38ea:: with SMTP id k97mr3744130qte.66.1583947204797;
        Wed, 11 Mar 2020 10:20:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583947204; cv=none;
        d=google.com; s=arc-20160816;
        b=pBgnMTeDDvz1cef9RMPXVyzLi43kxlv8WgGO+b+xt9+rBkEIVNvqphwJdi0jlRizXh
         Suu6fLLm0EaMM7Sp4GtWXhtaTYFBeAqFCRn1GHYwZwDlJw+LmreW/x6Njxs4mTSBYMRi
         Fo2mORENfiV+yhY13Br/gntf90s+xEKGct1Yus3HbEMFg0YlC+TymErspWbbfr/zrGC8
         IBzGjJuRNUl99sDgvgD3HmqDzeIhxRE5QUn/TLFi0Vlzv/qTojxPkLmMW3urFJKD+5gW
         hfO7UL4Oaj6fKBzt9d8kVtjTaCpJqujD1klzvzBKfoNU4c4nJf6Thniomo2+kmUDcNEK
         f2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature;
        bh=zBxNAcfYEsJwCFJAxWjxpmmX8BvWbrNXtt75vPyqwRk=;
        b=EKfzFxOALxfmHVMbi9UgDNuEk3htdPDRpIOHJYSfXNYTsljbNGGkRV+k8SuO2qMOBh
         aEji0cyGEyOdG1AUgGLj+uf4gCKvlMvrynIw5z7DBCqiUEf//2PjUP9JtvStgSSDCK4i
         93SIt6kwEwG+8+sDQFJtp3F0cyvNVC0I/uzeyRlzj/WmnPkK9Q9hPnKjbsJUOGnUD4zh
         X8+QgJFsoQScciQRKpjZ3gicvmCl/D5cAOn0B1tLrj7ko+p65+JGdI4Eyhv59HMznZJu
         2Rn1NMLU0/7EBtnA5A18HcUJqWRQRNoXYKgisLFZM9hHPluKROsyQL4z2UfCV5EGvqnC
         KNFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXkvZwC2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y5si136861qkl.6.2020.03.11.10.20.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 10:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXkvZwC2;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id m5so1570767pgg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 10:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id;
        bh=zBxNAcfYEsJwCFJAxWjxpmmX8BvWbrNXtt75vPyqwRk=;
        b=gXkvZwC2C5SluF/gH4yWdyutnw7GxurMPpz9wBR2tBReI6r1WjuRYi5Wuy8lyVhua6
         cZbspuQQVM68Pwbself9X24Se0K5hxntvtIRdV9eH5VpDheicsykJhl56d+aE+UBuuQY
         /rcvU3oS0Yegbgequa3PBf4HNcQnZ9/huowPUvTt5DKSaE1UcJkpH/96R9rnx3OcMCY9
         Ea4DHbFZiC+Ccu1qAJlYQgRLeJy41DlttGgR13X/Vh5pZGKxvzMWe5jjjTtgxSgOF5ZW
         KB6rowqCm9yVeLNiKegNDGWkkMS1Rq3hTQ7+hjAOqDAh7oqHvcHqOtQtmC3BKOlRpUoN
         i3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id;
        bh=zBxNAcfYEsJwCFJAxWjxpmmX8BvWbrNXtt75vPyqwRk=;
        b=XBbX4lEsCMvNZTlNoh1TmjM6btcP+0T2S10+quPoVaPcdPK2AZjikytRR80zv4wymT
         9zkdNTw3h613xYlFNPwmqE70wnMgfn0OumaaqC1axlYMQejTuFqC83USfOctRNdR/Py1
         jIUfZPwdS823cKIAqSHMm2LktGOQBf3eFuLa5mRq5Fdz6JBfCaR3pvlVALVmO7p3TLvk
         w7ApjyqXNWzfawHjuNGxY+dzGA1TfpA1ST0plvnDAgFQE0haRV7gz79IdOrCQQVkrVJ7
         z32PTgb3zqkM6ppxwNpWavoworx/kSH4w3eAiTYGtf5qbcv34ngbOAiOvO1Wvrg8gpZ6
         ujxA==
X-Gm-Message-State: ANhLgQ3Jp5uuNSoS7OgRrmlR/8ANE3IV0uNyfFPWxBqP0UrzGg6N2aG3
	R7KuDiLTBsQjAt10z1NgTT4=
X-Received: by 2002:a63:348b:: with SMTP id b133mr3878534pga.372.1583947203689;
        Wed, 11 Mar 2020 10:20:03 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from ?IPv6:2409:4042:2ea7:d9bb::5f4b:d113? ([2409:4042:2ea7:d9bb::5f4b:d113])
        by smtp.gmail.com with ESMTPSA id b70sm12204657pfb.6.2020.03.11.10.20.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 10:20:02 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:49:55 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com> <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com> <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com> <20200311134418.468f571a@elisabeth> <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com> <20200311153151.7e94f566@elisabeth> <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com> <alpine.DEB.2.21.2003111606110.6155@hadrien> <CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----EYQXXMQAV83TXAYAUQBSDUVX4LTLDK"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c: remove an unneeded variable
To: Julia Lawall <julia.lawall@inria.fr>
CC: Stefano Brivio <sbrivio@redhat.com>,Greg KH <gregkh@linuxfoundation.org>,outreachy-kernel@googlegroups.com
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Message-ID: <EF2BA246-481A-4EDA-B008-AD638FB2850B@gmail.com>

------EYQXXMQAV83TXAYAUQBSDUVX4LTLDK
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

It does not adding [Outreachy Kernel] automatically in my system :(

On March 11, 2020 9:22:54 PM GMT+05:30, Payal Kshirsagar <payalskshirsagar=
1234@gmail=2Ecom> wrote:
>On Wed, Mar 11, 2020, 8:37 PM Julia Lawall <julia=2Elawall@inria=2Efr>
>wrote:
>
>>
>>
>> On Wed, 11 Mar 2020, Payal Kshirsagar wrote:
>>
>> >
>> >
>> > On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio <sbrivio@redhat=2Ecom>
>wrote:
>> >       Payal,
>> >
>> >       On Wed, 11 Mar 2020 19:16:21 +0530
>> >       Payal Kshirsagar <payalskshirsagar1234@gmail=2Ecom> wrote:
>> >
>> >       > On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio
>> >       <sbrivio@redhat=2Ecom> wrote:
>> >       >
>> >       > > There are other graphical or text-based clients
>(Evolution,
>> >       pine,
>> >       > > sylpheed, KMail, many others) that can also be used for
>this
>> >       purpose=2E I
>> >       > > would suggest that you look at screenshots, maybe play
>with
>> >       some of
>> >       > > them, find one you're comfortable with, and set it up=2E
>> >       > > I followed every step of setting up the gmail as
>mentioned
>> >       in tutorial, I
>> >       > > don't know why this is happening;(
>> >
>> >       I guess you set up git to play along with GMail, and that's
>fine
>> >       to
>> >       send patches -- I see it's working properly=2E
>> >
>> >       But, for this discussion, are you sure you are using an
>actual
>> >       email
>> >       client (and not a browser connected to gmail=2Ecom)? That is,
>are
>> >       you
>> >       using one of those programs I mentioned below?
>> >
>> >       Yes I am using the Gmail not in a browser=2E
>> >
>> >                                       Sir I am having trouble with
>> >       adding [Outreachy Kernel] [PATCH] prefix to the subject, I am
>> >       not able to add these two at the same time=2E
>>
>> You should never add [Outreachy Kernel] to anything=2E  When you send
>> messages to the mailing list, that will get added=2E
>>
>> I agree with Stefano that your way of responding to messages causes
>> problems=2E  If you look above, there is no way to see what you wrote
>and
>> what Stefano wrote=2E
>>
>> What program do you use to read and respond to your mail?
>>
>
>An android app Gmail=2E
>
>julia
>>
>>
>> >                 Please suggest me something=2E
>> >
>> >       --
>> >       Stefano
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>Groups
>> > "outreachy-kernel" group=2E
>> > To unsubscribe from this group and stop receiving emails from it,
>send an
>> > email to outreachy-kernel+unsubscribe@googlegroups=2Ecom=2E
>> > To view this discussion on the web visithttps://
>> groups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR
>> > CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%40mail=2Egmail=2Ecom=2E
>> >
>> >

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------EYQXXMQAV83TXAYAUQBSDUVX4LTLDK
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>It does not adding [Outreachy Kernel] automaticall=
y in my system :(<br><br><div class=3D"gmail_quote">On March 11, 2020 9:22:=
54 PM GMT+05:30, Payal Kshirsagar &lt;payalskshirsagar1234@gmail=2Ecom&gt; =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8e=
x; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Wed, Mar 11, 2020, 8:37 PM Julia Lawall &lt;<a href=3D"mailto:julia=2El=
awall@inria=2Efr">julia=2Elawall@inria=2Efr</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 =2E8ex;border-left:1px #cc=
c solid;padding-left:1ex"><br>
<br>
On Wed, 11 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio &lt;<a href=3D"mailto:sb=
rivio@redhat=2Ecom" target=3D"_blank" rel=3D"noreferrer">sbrivio@redhat=2Ec=
om</a>&gt; wrote:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;Payal,<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;On Wed, 11 Mar 2020 19:16:21 +0530<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;Payal Kshirsagar &lt;<a href=3D"mailto:paya=
lskshirsagar1234@gmail=2Ecom" target=3D"_blank" rel=3D"noreferrer">payalsks=
hirsagar1234@gmail=2Ecom</a>&gt; wrote:<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; On Wed, Mar 11, 2020 at 6:14 PM Stefan=
o Brivio<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&lt;<a href=3D"mailto:sbrivio@redhat=2Ecom"=
 target=3D"_blank" rel=3D"noreferrer">sbrivio@redhat=2Ecom</a>&gt; wrote:<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; There are other graphical or text=
-based clients (Evolution,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;pine,<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; sylpheed, KMail, many others) tha=
t can also be used for this<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;purpose=2E I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; would suggest that you look at sc=
reenshots, maybe play with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;some of<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; them, find one you're comfortable=
 with, and set it up=2E<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; I followed every step of setting =
up the gmail as mentioned<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;in tutorial, I<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&gt; &gt; don't know why this is happening;=
(<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;I guess you set up git to play along with G=
Mail, and that's fine<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;to<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;send patches -- I see it's working properly=
=2E<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;But, for this discussion, are you sure you =
are using an actual<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;email<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;client (and not a browser connected to <a h=
ref=3D"http://gmail=2Ecom" rel=3D"noreferrer noreferrer" target=3D"_blank">=
gmail=2Ecom</a>)? That is, are<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;you<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;using one of those programs I mentioned bel=
ow? &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;Yes I am using the Gmail not in a browser=
=2E &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sir I =
am having trouble with<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;adding [Outreachy Kernel] [PATCH] prefix to=
 the subject, I am<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;not able to add these two at the same time=
=2E &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<b=
r>
<br>
You should never add [Outreachy Kernel] to anything=2E&nbsp; When you send=
<br>
messages to the mailing list, that will get added=2E<br>
<br>
I agree with Stefano that your way of responding to messages causes<br>
problems=2E&nbsp; If you look above, there is no way to see what you wrote=
 and<br>
what Stefano wrote=2E<br>
<br>
What program do you use to read and respond to your mail?<br></blockquote>=
</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">An android app Gm=
ail=2E</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =2E8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Please s=
uggest me something=2E &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;--<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;Stefano<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gr=
oups<br>
&gt; "outreachy-kernel" group=2E<br>
&gt; To unsubscribe from this group and stop receiving emails from it, sen=
d an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroup=
s=2Ecom" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@=
googlegroups=2Ecom</a>=2E<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://gro=
ups=2Egoogle=2Ecom/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR" rel=
=3D"noreferrer noreferrer" target=3D"_blank">groups=2Egoogle=2Ecom/d/msgid/=
outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR</a><br>
&gt; CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%<a href=3D"http://40mail=2Egmail=
=2Ecom" rel=3D"noreferrer noreferrer" target=3D"_blank">40mail=2Egmail=2Eco=
m</a>=2E<br>
&gt;<br>
&gt;</blockquote></div></div></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail=2E=
 Please excuse my brevity=2E</body></html>
------EYQXXMQAV83TXAYAUQBSDUVX4LTLDK--

