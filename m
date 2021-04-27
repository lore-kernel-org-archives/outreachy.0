X-GM-THRID: 6955730517423554560
X-Received: by 2002:a17:902:b68a:b029:e9:7643:6335 with SMTP id c10-20020a170902b68ab02900e976436335mr24877939pls.2.1619532111317;
        Tue, 27 Apr 2021 07:01:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3fc1:: with SMTP id m184ls8221057pga.5.gmail; Tue, 27
 Apr 2021 07:01:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx65x08+tMOaXXXDXhHMxsJPBVvb1zHUvVbQH7G+jNUz4Gs2qUGCVIuV3LPlw3Mk/lgRy6l
X-Received: by 2002:aa7:9798:0:b029:25d:e0c7:471b with SMTP id o24-20020aa797980000b029025de0c7471bmr23225564pfp.11.1619532109711;
        Tue, 27 Apr 2021 07:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619532109; cv=none;
        d=google.com; s=arc-20160816;
        b=Yxq1X7fH1ozfCcUIIAdGOni7GRgAyfs0r7nXcEigBNTPZyJQpuogDdn67EdYVf1+zW
         7YJB9TYQSU2td5AsAVQk5CX4XrwYhHG0q42UtscR55WFG8/BZJmrs02rQLkZDE/KB3Cw
         9JwmmCmfMS6SYc/XRggaUoUgKh2nYO6WpCKc3Vah7oHbOxT6V1QDJgJNwMMw8Hry9bgu
         6M9pIPSYtiq453i7279lZLMZ5MGpw44HJnDqYsm/hJor5K9n+6ij2s765IX1S778YQpW
         NxqQpWPVjIP8Iq22UD1nUNLN3w1tm+1gQQQJmlETFImhgxE7rgWxDN1Wg/Ou2ppx+Vrc
         7U4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=5oezZwmN9sGbSwNpx+/G/J/tHgNwc64YjzTNEg1fUnc=;
        b=jnVzVKZ9i/jsBzV15VmmPL1GM3ZjcYZqV+/KMSr5g/apYSeldrsIUQC9kvYvwNZsau
         6ghX9SOG17eENwTeSRa7miK5oBTo2HwvNBThceKRZaBWpbMbZZkWuQ7b8uYVGC9HtArs
         233cOWOVk+9DSqZtaxS23cqlfUs7j4tcgRags1Xo3OlzQs3xn8JRhRG2nndHb70TNm98
         IF58XkwKquysv2Kk/rUqy2/N53v/0jN5DXjgWrJqNOtYvdWKGbaYrhgQ/jGAJp1oUDLr
         bdhc44TALQUQFFEVq2x3YXkt8tUewsUJ3yS6qMusU5CAq51vP+Zph3T6B+uMn27X+Y/7
         inhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-08.prod.phx3.secureserver.net (p3plsmtpa07-08.prod.phx3.secureserver.net. [173.201.192.237])
        by gmr-mx.google.com with ESMTPS id r141si1331387pgr.5.2021.04.27.07.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 07:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) client-ip=173.201.192.237;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.237 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-ua1-f53.google.com ([209.85.222.53])
	by :SMTPAUTH: with ESMTPSA
	id bOHblTYSJVPnYbOHcls8x7; Tue, 27 Apr 2021 07:01:48 -0700
X-CMAE-Analysis: v=2.4 cv=Hu6zp2fS c=1 sm=1 tr=0 ts=6088194c
 a=nvrhNPqt7iNyxjAkBxserw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-ua1-f53.google.com with SMTP id s2so18678752uap.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 07:01:47 -0700 (PDT)
X-Gm-Message-State: AOAM532+NrtpdYUIc35M8Vreld4TVn+p6jTyRU70WxlLOBcayFHakP3B
	exccTOvmaoAshGm+EK5egrJHUE1mnOJ6CbC9JDk=
X-Received: by 2002:ab0:7686:: with SMTP id v6mr3802383uaq.99.1619532107444;
 Tue, 27 Apr 2021 07:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
 <alpine.DEB.2.22.394.2104270910230.31629@hadrien> <4286858.zKxzTp498l@linux.local>
 <alpine.DEB.2.22.394.2104271016330.32852@hadrien> <9d5c58a73781b0e40f0d925bd3de1a0bec598cd0.camel@gmail.com>
In-Reply-To: <9d5c58a73781b0e40f0d925bd3de1a0bec598cd0.camel@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 27 Apr 2021 16:01:35 +0200
X-Gmail-Original-Message-ID: <CAK-LDbKXH27ax0uQ6pzdGpg1q=9TWs3B-0P-FWmwFGeX3=vJ2g@mail.gmail.com>
Message-ID: <CAK-LDbKXH27ax0uQ6pzdGpg1q=9TWs3B-0P-FWmwFGeX3=vJ2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Outreachy project looking for more applicants
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, 
	"Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Outreachy <outreachy-kernel@googlegroups.com>, 
	Vineeth Pillai <Vineeth.Pillai@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4xfNfuUesrS0BaTgTZvItaNZqgtwPORtgaVJeURj4YowfNZEnM9dm4CLwAPAMVO/PkRWr2c3SZZhLvqVzfgT160dmY8DJQ8OG/Kw8nRm0RfRaRFxSOV02Y
 h8ZGdLqw0fYWIsFxkZU7BG7oJN/y9Q+qM4e9D1A9FW1vvVKRR7vxod6V36kHyrTG8BI3mlJy+8BwcABJz4TTMGRYvsf1KAF/2/6XIdHb04JNff4r2FxPx2xl

On Tue, Apr 27, 2021 at 3:01 PM Aline Santana Cordeiro
<alinesantanacordeiro@gmail.com> wrote:
>
> Em ter, 2021-04-27 =C3=A0s 10:17 +0200, Julia Lawall escreveu:
> >
> >
> > On Tue, 27 Apr 2021, Fabio M. De Francesco wrote:
> >
> > > On Tuesday, April 27, 2021 9:10:44 AM CEST Julia Lawall wrote:
> > > > On Tue, 27 Apr 2021, Vaishali Thakkar wrote:
> > > > > Hi All,
> > > > >
> > > > > I quickly wanted to mention that while most of our projects
> > > > > have
> > > > > enough applicants, the following project will still be happy to
> > > > > have
> > > > > more applicants:
> > > > >
> > > > > "Create a linux scheduler test suite to understand
> > > > > functionality and
> > > > > performance of Core Scheduling"
> > > > >
> > > > > Feel free to contact the mentor - Vineeth and apply for it if
> > > > > that's
> > > > > something you're interested in.
> > > >
> > > > This looks like a really cool project :)
> > > >
> > > > julia
> > > >
> > > It is for sure. It would have been my first choice. The only
> > > problem is that
> > > it is preferable to have level 4 experience with Bash and Python.
> > > I'm afraid I
> > > have no more than 0 and 1 levels respectively with those scripting
> > > languages.
> >
> > Perhaps it is possible to learn...
> >
> > julia
>
> Hi all,
>
> I already contact Vineeth, I was trying to finish the initial tasks to
> apply to Core Scheduling Project, but I'd better to apply to it soon.
> :)

Yes, you should at least keep the application in draft/in progress
so that we have a way to see who all are interested in the
project and are planning to submit the application. Also, you should
be able to edit it until the deadline even after submitting so should
be fine. :)

> Aline
>
> >
> > >
> > > Fabio
> > > > > Thanks!
> > > > >
> > > > > --
> > > > > Vaishali
> > > > >
> > > > > --
> > > > > You received this message because you are subscribed to the
> > > > > Google Groups
> > > > > "outreachy-kernel" group. To unsubscribe from this group and
> > > > > stop
> > > receiving emails
> > > > > from it, send an email to
> > > > > outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this
> > > > > discussion on the web visit
> > > > > https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2r%2B1=
4JB-m4KuU-vy%3DDAUnv
> > > > > 6gmZkEnRyY7Fx_%3Dguk_Ew%40mail.gmail.com.
> > >
> > >
> > >
> > >
> > >
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/9d5c58a73781b0e40f0d925bd3de1a0bec598cd0.camel%40gmail.c=
om.



--=20
Vaishali

