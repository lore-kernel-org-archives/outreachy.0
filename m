X-GM-THRID: 6388897294904721408
X-Received: by 10.237.35.230 with SMTP id k35mr923875qtc.47.1487531792744;
        Sun, 19 Feb 2017 11:16:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.145 with SMTP id 139ls2334530ioz.20.gmail; Sun, 19 Feb
 2017 11:16:32 -0800 (PST)
X-Received: by 10.36.74.15 with SMTP id k15mr6323787itb.20.1487531791992;
        Sun, 19 Feb 2017 11:16:31 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x244.google.com (mail-it0-x244.google.com. [2607:f8b0:4001:c0b::244])
        by gmr-mx.google.com with ESMTPS id n132si1472315ith.0.2017.02.19.11.16.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:16:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) client-ip=2607:f8b0:4001:c0b::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x244.google.com with SMTP id w185so2706548ita.3
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 11:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=u7pXV3ZqbPKAWkgzowhKdfyPx15otu82ZxNmZ710mtA=;
        b=OTQ1DAy1dScz6goHWrntIcv5b99t+qu+MEKApcEGTzarSp8jJD6Lplpuxes3502P+c
         zQVQbJODxelTS8n2q8Bg4ID20mQmwQJ6FRDIBnQL2h73EROfi+dKQ+zqdc2qfOjWRFV1
         KkbeCfN0UqVrnQLMADPbpBza3jgHt+y6iFa5ZlKVHAj+yColnksaET1no99yEbj5/8rA
         YVL7n/N3e9SoWC0a7lDktN6FOksOwmcN5sgcVUgHDU81CmjekoCUiqON7VpioQCISnT1
         MgtQ2P90ZZUApHYoyZuewCD+yBQu9m0PwIIkGBb/xxmTtXyjalKZn4VeLs68RN262i5t
         jvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=u7pXV3ZqbPKAWkgzowhKdfyPx15otu82ZxNmZ710mtA=;
        b=V0Iardhudl7ef4VHybDcU0vHF7lzBQpKW0XTc0t8q3qTN7qGZ7Nodc1GnMbq08A5Ne
         XrzlkgKBlIVcuQ03CkNNbmmEdrdJSHrzhoJ9CCBysn3rv5Zk9qZspY9ZRBU3ICtY6PBr
         2taej5uKQkW8md6a5TVEya7W1GSkWWHFsdsCDzbReu0YCnIfBBQ0/eOUxgAiuPCxrbOw
         Y89KaXKlXa1DEfbua5Xc1pdu6kMrQYslhsjuke+6RV6X7o2Sf58QLl1Jlp2qnNaaz/8Q
         CuWna+m+NIcxFJBA/qJJVe5Uk67P+XP2mImrP7SWPMddjEeXgQtuIaSqqUrx31lAgCK6
         8wmQ==
X-Gm-Message-State: AMke39nABaP2l3LZg9v12semFv7MW1dQn5SpQqSk1nWEUcIDnZmtVEfVf1AeQQmF8G4I/xiV5hk0ls0QmyDIrA==
X-Received: by 10.36.66.145 with SMTP id i139mr2521410itb.6.1487531791745;
 Sun, 19 Feb 2017 11:16:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 19 Feb 2017 11:16:01 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702192012320.2363@hadrien>
References: <1487530938-17297-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702192012320.2363@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 20 Feb 2017 00:46:01 +0530
Message-ID: <CAOCi2DHdy=qa0QKSTUUbfvtjME0JKua46Ms52HfS-Oexyy1KCw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove ternary operator
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a1144b9480a076b0548e6fc78

--001a1144b9480a076b0548e6fc78
Content-Type: text/plain; charset=UTF-8

> Maybe an if would be better in cases like this where there is still
> something to test.

So I should replace the ? operator with an if statement for better
readability?

thanks,
gargi
>
> julia
>
> >
> >       //
> >       // Config TX STBC setting
> > @@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
> >       //
> >       // TODO:
> >       pHTInfo->bCurSuppCCK =
> > -             ((pHTInfo->bRegSuppCCK)?((pPee
rHTCap->DssCCk==1)?true:false):false);
> > +             ((pHTInfo->bRegSuppCCK)?(pPeerHTCap->DssCCk == 1):false);
> >
> >
> >       //
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms
gid/outreachy-kernel/1487530938-17297-1-git-send-email-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

--001a1144b9480a076b0548e6fc78
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br>&gt; Maybe an if would be better in cases like th=
is where there is still<br>&gt; something to test.<div><br></div><div>So I =
should replace the ? operator with an if statement for better readability?<=
/div><div><br></div><div>thanks,</div><div>gargi<br>&gt;<br>&gt; julia<br>&=
gt;<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 //<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 // Config TX STBC setting<br>&gt; &gt; @@ -998,7 +998,7 @@ vo=
id HTOnAssocRsp(struct ieee80211_device *ieee)<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 //<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 // TODO:<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 pHTInfo-&gt;bCurSuppCCK =3D<br>&gt; &gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ((pHTInfo-&gt;bRegSuppCCK)?((pPee<wbr>rHTCap-&gt;D=
ssCCk=3D=3D1)?true:false)<wbr>:false);<br>&gt; &gt; + =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ((pHTInfo-&gt;bRegSuppCCK)?(pPeer<wbr>HTCap-&gt;DssCCk=
 =3D=3D 1):false);<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 =C2=
=A0 //<br>&gt; &gt; --<br>&gt; &gt; 2.7.4<br>&gt; &gt;<br>&gt; &gt; --<br>&=
gt; &gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe fro=
m this group and stop receiving emails from it, send an email to <a href=3D=
"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" target=3D"_blank">=
outreachy-kernel+unsubscribe@g<wbr>ooglegroups.com</a>.<br>&gt; &gt; To pos=
t to this group, send email to <a href=3D"mailto:outreachy-kernel@googlegro=
ups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>.<br>&=
gt; &gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1487530938-17297-1-git-send-email-gs05=
1095%40gmail.com" target=3D"_blank">https://groups.google.com/d/ms<wbr>gid/=
outreachy-kernel/148753093<wbr>8-17297-1-git-send-email-<wbr>gs051095%40gma=
il.com</a>.<br>&gt; &gt; For more options, visit <a href=3D"https://groups.=
google.com/d/optout" target=3D"_blank">https://groups.google.com/d/op<wbr>t=
out</a>.<br>&gt; &gt;</div></div></div>

--001a1144b9480a076b0548e6fc78--

