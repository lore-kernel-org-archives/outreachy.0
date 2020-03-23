X-GM-THRID: 6807276568426053632
X-Received: by 2002:a50:da4a:: with SMTP id a10mr20692503edk.158.1584962844518;
        Mon, 23 Mar 2020 04:27:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls7673732edb.5.gmail; Mon, 23 Mar
 2020 04:27:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuG2Tpicsh7xkYDHXYQTyRX2Sgg82ZuA3GnJQTjxc735bN4Vrjq8sjyHzScy8wCHrsycRkt
X-Received: by 2002:aa7:cfc5:: with SMTP id r5mr6738001edy.78.1584962843269;
        Mon, 23 Mar 2020 04:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584962843; cv=none;
        d=google.com; s=arc-20160816;
        b=D+RTpISYKEo40AQBtOnhJCetS69nPeQ6h2QyVVEuhCwjJ/ggWtK71vaeflJn5kaP3J
         T8r3paT213Klc3PVdahXH3nn+2OnKjVgrvtWhdTUaK28YwPl0MMJDnQC5sTMz+wI5oZt
         HFjZd2WQEcT8YfWEHDzirsr+nUd1Gla4RKbaCQjuViYAu9lkIf4JSPwddfr/1i8vaQu1
         tZ0acPcPLFSPUAH9uCMmCi/ZwJUqbUQ+Em+lrb/no4fBQheDLraYLR9qMrIBg91C3FYv
         Z3dYyMyPW4N05JbX8chgLP1vnpn8FCdPm3pkPDtjN+Xnsr7j2GOl0a4WvFt/Q6byXZIf
         NG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qAjVBX+mIewYkyy9v2Eyjb1WY9H6GJpxos31QRVsa/8=;
        b=jQupFUrvfBciacdM3ZzmTmw/QcrQcy25VXdsAeWqf0lqwYprj74GcEFcnozqDg9crf
         MQk92psCZQSfuLNg+9JL+6b/4RvY6NH0z7yFxkXQ9S4eFBd+rJZ1u0Wsa4VJQBiGOV5/
         UyItW3Td6+8kqF9GWneecUjPZBzFyj3uJqg4XDbeRlyS0edTmvFQkm7zfNkF3Rdf3dky
         ZGAa4r9lyQy7bd/vYRXuhncLcA4TGae4Vnnhfl0VW0b9FBI84WbUk3r+7PslNOiVioli
         Vrl0w0G9iAURNyGwAxMKiJ1p4SM9Gt9j4GvBvj2UyzG+aOKk6WEN8lI02wizGncVlrWq
         EHAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpxCGgw4;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id f2si459806edm.1.2020.03.23.04.27.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpxCGgw4;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x143.google.com with SMTP id c20so9932010lfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 04:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qAjVBX+mIewYkyy9v2Eyjb1WY9H6GJpxos31QRVsa/8=;
        b=rpxCGgw4VbSnmIWhXOE8bKXjYttk+Oi4XaNgALMfodo5ounJ+Mp8Px49z3KkbNF2NM
         rs3ACNXNTjPrh7dLw/rlV52I1U5MSWadYqU17PkCtsIqerR4SSFBMCUVBS2L3kwfhcB2
         MpraRy1bOBmHEag3VSNLWy3ggyk02DDjWRJ1FOvecNQDA8B9tPv62pWnA8R+GOSgQZ3F
         tJa7Lz89LLZL+hiU+UupFNGvIiG9sA4ebooJ+An93jvuomMxHK/Y9YKJ53W8zrRY8dTq
         mnavVN8hFRZG/0hgT3/m1sgrnFYcTVyJLpILd2H0ve3/gr7fz1eDI8URzY1fCC6R0x6W
         8bZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qAjVBX+mIewYkyy9v2Eyjb1WY9H6GJpxos31QRVsa/8=;
        b=Zgpm6+GV+1xqW1y2uTt8kVdI7OuV/Z3yZuk/M6VaZ5QUd4lh4Ytn3TAQzl0WfwEWsA
         ZeOrViJFJy4TpwIhiZiAzTonNoJc4S8G29wOL6mQsStmU0cCtnq0tpqI1oDWgl8X+rx/
         o4BKu2rxBrlZ87CAVn3UMGgOBRKX5K0sfs9e+7aq9mYw2KpBouTIV/5TkjmVmeRqL16D
         D0B5fmoGensNpmI7HWR8+ASaOCCHAwktsPxbvZ3/WqEYDEBKpJa65RlM/3t61IyNzXEt
         JLOgHCE55ssH35Z1sFcciutMt+23zJh9YfZsjcl/Tt4jSYebrbojwx1E5MHF5fihyR5Q
         F0og==
X-Gm-Message-State: ANhLgQ2xRNDRi+5SV+sEvnDkKsbIxammUOLm1/DBqq8QEBkZ2G9n+aaE
	j91G9kW4N3f5zHYwQEAvr8DExioxC5gUiaozw4N1p8n/AWE=
X-Received: by 2002:a19:8093:: with SMTP id b141mr13302032lfd.184.1584962842536;
 Mon, 23 Mar 2020 04:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200323054836.48816-1-debsoumyajit100@gmail.com>
 <20200323103652.GC452208@kroah.com> <20200323112335.GA595778@kroah.com>
In-Reply-To: <20200323112335.GA595778@kroah.com>
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Mon, 23 Mar 2020 16:57:11 +0530
Message-ID: <CAMS7mKBnbnJPs3YOQEWcNh86-GHNa9TBJ_5L2Q7Rc7CCk5yc-g@mail.gmail.com>
Subject: Re: [PATCH 0/3] Resolve indentation and space warnings generated by checkpatch
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, perex@perex.cz
Content-Type: multipart/alternative; boundary="00000000000036305a05a183eb7b"

--00000000000036305a05a183eb7b
Content-Type: text/plain; charset="UTF-8"

No problem, thanks!

On Mon, 23 Mar 2020 at 16:53, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 23, 2020 at 11:36:52AM +0100, Greg KH wrote:
> > On Mon, Mar 23, 2020 at 11:18:33AM +0530, Soumyajit Deb wrote:
> > > This patchset adds space around operators and remove space after * in
> > > pointer declarations and lastly removes uneccesary blank lines for the
> > > same from the file hp100.c present under drivers/staging/hp/ directory.
> > >
> > > Soumyajit Deb (3):
> > >   staging: hp100: Add space around operator +
> > >   staging: hp100: Remove space after * in pointer declarations
> > >   staging: hp100: Remove uneccessary blank lines and resolve
> indentation
> > >     issues
> > >
> >
> > I somehow don't see patch 1/3 here, did it get lost somewhere?
>
> Found it in my spam folder, gmail's fault, sorry for the noise.
>
>
> greg k-h
>

--00000000000036305a05a183eb7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No problem, thanks! <br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 23 Mar 2020 at 16:53, Greg=
 KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundatio=
n.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">On Mon, Mar 23, 2020 at 11:36:52AM +0100, Greg KH wrote:<br>
&gt; On Mon, Mar 23, 2020 at 11:18:33AM +0530, Soumyajit Deb wrote:<br>
&gt; &gt; This patchset adds space around operators and remove space after =
* in<br>
&gt; &gt; pointer declarations and lastly removes uneccesary blank lines fo=
r the<br>
&gt; &gt; same from the file hp100.c present under drivers/staging/hp/ dire=
ctory.<br>
&gt; &gt; <br>
&gt; &gt; Soumyajit Deb (3):<br>
&gt; &gt;=C2=A0 =C2=A0staging: hp100: Add space around operator +<br>
&gt; &gt;=C2=A0 =C2=A0staging: hp100: Remove space after * in pointer decla=
rations<br>
&gt; &gt;=C2=A0 =C2=A0staging: hp100: Remove uneccessary blank lines and re=
solve indentation<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0issues<br>
&gt; &gt; <br>
&gt; <br>
&gt; I somehow don&#39;t see patch 1/3 here, did it get lost somewhere?<br>
<br>
Found it in my spam folder, gmail&#39;s fault, sorry for the noise.<br>
<br>
<br>
greg k-h<br>
</blockquote></div>

--00000000000036305a05a183eb7b--

