X-GM-THRID: 6802879895263248384
X-Received: by 2002:a2e:9c4:: with SMTP id 187mr2563388ljj.89.1583941989075;
        Wed, 11 Mar 2020 08:53:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls490350ljj.11.gmail; Wed, 11 Mar
 2020 08:53:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvHvAcY7Xw7cG5j0QUp9v4gZdadyq066D5mufKfOkkgjtfbOIwk6pUp0H8/2uu+vQVKntBH
X-Received: by 2002:a2e:8141:: with SMTP id t1mr2608541ljg.232.1583941987727;
        Wed, 11 Mar 2020 08:53:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583941987; cv=none;
        d=google.com; s=arc-20160816;
        b=gQqKIlWB7CWrsM+3mkfa6l1IEVDLdfZBk5sr2ib/YkWIZluwK1r1TdrURSJ623KdT5
         v3QVm5S9C1H8BuI+aLukvLCGr9IeWTVxJI4JlLeZuEiktSBq8HNEj05DfvTqoHeTL9ET
         g/lcL3JZxcZ36OWRUgAR5xpabmF+Y05C5xlJeMSHlODCbq+tNRW7CpckN6zUzd7eivAD
         2kYil1JFwfrIPlv78Brl445sejEtZOcnw0F0G8+o1IcTnN1RGCfYus8ppQ7aplgFAg8d
         rqx/qqvi6Ie1IH5mgkfZmCAcZHC5eHj+sUo/iykKAZ2+20K2MIwwgpwbwDAhzOVR/cNB
         l6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I8X8XqpGpxEy65usWNd9B0KBPqPN7U+BjxCiD6fFBMY=;
        b=HxlsnmaZ9IxigSSIaUKVOAl0DC3FOaHrBxquQgOiLKZffUWhqcHjXmvterfGxp8C3I
         L0udwePFsochnT9ze6Gc/Z/j1E739OMuH9h1BzvuGyY+tUjybFncS05SOq2hnNjKeOkd
         ekKJY9tXyCAQjqPIdFNmr4cKmr6gTAkbHQAWSaut3CnQnTvQE+wS0J6QjJI8lx4sxPXi
         he5S+8v0JmgV/pos9bsM2l1suZBw6JjUEeL+lCCqw0aq9yl2Klom6ukbnxO0zjGONg5K
         tuRfl8/wds8JvTwIOfwX1CdeJrUhWa55eYUmFR3y3UoCNrs3zdmX5Z1vx5WZmixGGiD5
         EKng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Qg+bSoI/";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c15si98252ljn.3.2020.03.11.08.53.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 08:53:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Qg+bSoI/";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id s14so3286275wrt.8
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 08:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I8X8XqpGpxEy65usWNd9B0KBPqPN7U+BjxCiD6fFBMY=;
        b=Qg+bSoI/uvXLszZtihYUEEkR5clNrRSWrzuIBtquiDSCWYVHA/1Vay63cR7Uf09PkN
         FqMw2uXFDT1/pPqA9SiTsrVJcN0vjkPEATsUbDtVafg9kru8w+b+eRPi3e+XnYhBuVwa
         DzTdxMxvnw+IavAt56hWY4zPiKtCOaOCbB0/5967hwYtf9kgn6avlj1cXrBk505a1UmM
         ywClEJ3ndPZG4VoZ1g++6PdyEgbUZpCzjrWuL2/3iqdiwva3fCNnf+AYruda/cNiv2KX
         eEvQv/Yl1UySsUOnmpyIIwMNg81aQTbEyRxnleirkjGeY/XETbsZ9IA2MNQ9KmokJS2s
         c4Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I8X8XqpGpxEy65usWNd9B0KBPqPN7U+BjxCiD6fFBMY=;
        b=EmRNn/TSx+AUy0/KK5tQojSq17sjW3dGxBvyTgN7W4V8iWMKhfySHeP0qARSOQn7dP
         yNjPRfF+hCgFogWZOIaTZt7zC4H7Rsu3Ytbm+Mf6mHhd0E841vBXoSWmehrq0QZ/W5wJ
         7I+oxcsN19/gciTo2aDP/XEqMJnuBDlVM2UBUPp7ejvdSud5O9EsNiqRDVbFmCTDS28A
         AmhjdmleecE+EuwxF8KuVpGX2Jm73ksr+H6N5mBK9G1sT9qZcGt5ifdsB0q3hSEh7po9
         KKkOgc84QBHoCSBobnTYnewwCAGDNd9ohwKnTmAJfNBoHle6U8u7uGJTUaShxgfqLACY
         ivXw==
X-Gm-Message-State: ANhLgQ2zMUwnUxGQDptxco88oiWdKwMmG3TRAPbg1BOYiMUUw5wUynV/
	ScBb61LK5RbTdjKhywE8kcN2cwIMGT1XcQSyc9jvnSBp
X-Received: by 2002:adf:806c:: with SMTP id 99mr5056514wrk.78.1583941986994;
 Wed, 11 Mar 2020 08:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
 <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
 <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
 <20200311134418.468f571a@elisabeth> <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
 <20200311153151.7e94f566@elisabeth> <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com>
 <alpine.DEB.2.21.2003111606110.6155@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003111606110.6155@hadrien>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Wed, 11 Mar 2020 21:22:54 +0530
Message-ID: <CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007acdd405a0963bf6"

--0000000000007acdd405a0963bf6
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020, 8:37 PM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Wed, 11 Mar 2020, Payal Kshirsagar wrote:
>
> >
> >
> > On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio <sbrivio@redhat.com> wrote:
> >       Payal,
> >
> >       On Wed, 11 Mar 2020 19:16:21 +0530
> >       Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
> >
> >       > On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio
> >       <sbrivio@redhat.com> wrote:
> >       >
> >       > > There are other graphical or text-based clients (Evolution,
> >       pine,
> >       > > sylpheed, KMail, many others) that can also be used for this
> >       purpose. I
> >       > > would suggest that you look at screenshots, maybe play with
> >       some of
> >       > > them, find one you're comfortable with, and set it up.
> >       > > I followed every step of setting up the gmail as mentioned
> >       in tutorial, I
> >       > > don't know why this is happening;(
> >
> >       I guess you set up git to play along with GMail, and that's fine
> >       to
> >       send patches -- I see it's working properly.
> >
> >       But, for this discussion, are you sure you are using an actual
> >       email
> >       client (and not a browser connected to gmail.com)? That is, are
> >       you
> >       using one of those programs I mentioned below?
> >
> >       Yes I am using the Gmail not in a browser.
> >
> >                                       Sir I am having trouble with
> >       adding [Outreachy Kernel] [PATCH] prefix to the subject, I am
> >       not able to add these two at the same time.
>
> You should never add [Outreachy Kernel] to anything.  When you send
> messages to the mailing list, that will get added.
>
> I agree with Stefano that your way of responding to messages causes
> problems.  If you look above, there is no way to see what you wrote and
> what Stefano wrote.
>
> What program do you use to read and respond to your mail?
>

An android app Gmail.

julia
>
>
> >                 Please suggest me something.
> >
> >       --
> >       Stefano
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR
> > CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%40mail.gmail.com.
> >
> >

--0000000000007acdd405a0963bf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Mar 11, 2020, 8:37 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawa=
ll@inria.fr">julia.lawall@inria.fr</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><br>
<br>
On Wed, 11 Mar 2020, Payal Kshirsagar wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio &lt;<a href=3D"mailto:sbr=
ivio@redhat.com" target=3D"_blank" rel=3D"noreferrer">sbrivio@redhat.com</a=
>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Payal,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, 11 Mar 2020 19:16:21 +0530<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Payal Kshirsagar &lt;<a href=3D"mailto:payal=
skshirsagar1234@gmail.com" target=3D"_blank" rel=3D"noreferrer">payalskshir=
sagar1234@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On Wed, Mar 11, 2020 at 6:14 PM Stefano=
 Brivio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:sbrivio@redhat.com" ta=
rget=3D"_blank" rel=3D"noreferrer">sbrivio@redhat.com</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; There are other graphical or text-=
based clients (Evolution,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pine,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; sylpheed, KMail, many others) that=
 can also be used for this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0purpose. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; would suggest that you look at scr=
eenshots, maybe play with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0some of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; them, find one you&#39;re comforta=
ble with, and set it up.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; I followed every step of setting u=
p the gmail as mentioned<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0in tutorial, I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; don&#39;t know why this is happeni=
ng;(<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0I guess you set up git to play along with GM=
ail, and that&#39;s fine<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0send patches -- I see it&#39;s working prope=
rly.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0But, for this discussion, are you sure you a=
re using an actual<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0email<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0client (and not a browser connected to <a hr=
ef=3D"http://gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">gma=
il.com</a>)? That is, are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0using one of those programs I mentioned belo=
w? =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Yes I am using the Gmail not in a browser. =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sir I=
 am having trouble with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adding [Outreachy Kernel] [PATCH] prefix to =
the subject, I am<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0not able to add these two at the same time. =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
<br>
You should never add [Outreachy Kernel] to anything.=C2=A0 When you send<br=
>
messages to the mailing list, that will get added.<br>
<br>
I agree with Stefano that your way of responding to messages causes<br>
problems.=C2=A0 If you look above, there is no way to see what you wrote an=
d<br>
what Stefano wrote.<br>
<br>
What program do you use to read and respond to your mail?<br></blockquote><=
/div></div><div dir=3D"auto"><br></div><div dir=3D"auto">An android app Gma=
il.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Please su=
ggest me something. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Stefano<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CAJyzNhkd%2BeBh%2BDPbQWR</a><br>
&gt; CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%<a href=3D"http://40mail.gmail.com=
" rel=3D"noreferrer noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt;<br>
&gt;</blockquote></div></div></div>

--0000000000007acdd405a0963bf6--

