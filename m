X-GM-THRID: 6800771854723186688
X-Received: by 2002:a92:811c:: with SMTP id e28mr1515393ild.22.1583469295194;
        Thu, 05 Mar 2020 20:34:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9981:: with SMTP id a1ls112793jal.2.gmail; Thu, 05 Mar
 2020 20:34:02 -0800 (PST)
X-Google-Smtp-Source: ADFU+vvXR+wcP5PPus0rPZI1uRYE0Vr9LhFxDk9lr7YVRFPYliEh6G3izaldunhcEngPoTQFBGEZ
X-Received: by 2002:a05:6638:1b4:: with SMTP id b20mr1172884jaq.119.1583469242585;
        Thu, 05 Mar 2020 20:34:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583469242; cv=none;
        d=google.com; s=arc-20160816;
        b=PquAW/8E7O8LcOfYZUyTZFgisHo9z7fn/XOIdPTDPkheSHvJ+xGaC/wkYlRNKOW4FK
         k1yb2YJ/9gzbO5hvpXHn+oi8xgbaG4GY2wqL+Zz/EDomWfta3gjizI33b1Xm2nypnl2x
         NPEXYZ49gSHelxOdeii0r1q04mqhr4QWm1On5R8LsdRZ6HoOGIFWpPFuZxN+u7gqe6wB
         17rAg9FeCZe9FbBivm7ErKCA6c4hnnNcExESkGzK3A68l8grc8o0nYoRCFc6V9TbZJ3d
         E5iCqTfl4IP2Q1fJd317aAPz8qq7tpOcbKTsAUZprvHNTcpwioSp2IUAOE+KQTeqCdny
         GKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=41+DerRS1sT7Ogd6c0+ixXkDhT6S+/m0EWV7vA/JrOY=;
        b=CRJpczW9Sa7xjYgjE4Dh75NSX7Y4L/kxBzbpdlV9GsULRgg6XsSi74u9iyu7Djp8U7
         5VPJvA2oaPTPG5R5L5rBgtjDFlvkEJaTWhT0p4u1qTGC7sUfmvSzO4xZRk8JLKW9o348
         7qQIMJQBHbwKWiu1vWbregZNic1krG1WXqeJqAqQATXhwXUQBaJJRED6df65ZaYw3OCQ
         v7Qah1QYva0CC/4T3FliKJ9py+7qz/+ZxVgoxSlKeLeVFtnbMc+lTfLiXbyIUvtKRU2/
         3hGwWA+KE+RZnSeomUfwuWKPPff4X81HH+zp3Tg2RXajm6JxslebILHVVu8e22LbeYbo
         o2pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lXbERHe8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id b16si87625ion.0.2020.03.05.20.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 20:34:02 -0800 (PST)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lXbERHe8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-il1-x12b.google.com with SMTP id q87so597417ill.6
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2020 20:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=41+DerRS1sT7Ogd6c0+ixXkDhT6S+/m0EWV7vA/JrOY=;
        b=lXbERHe8aWyDUHBNuCTSwuslVyDLvZZKAY/rol47XpPCA4ee6mRsKcxNRufdB+wIit
         SvkUTorsc+elPPfeONAWuO3Q6ydoaSWL6KTlAcKaU3Kkbhlg0xKKD1t3zv04wytgnZfm
         MUUQ9oVHKO+H2qXS6i3EAIhj2iqoSHPopYlysv9nK0Y6GvZpx8MsDLF4SL3rKRa0A5vz
         GjUN+lejSLBA9s2GKeBunUK+3pECqpj+1h6VwaMVUO1UlorSBUbHtUwTwKc0bEaMElIH
         KN9WexVcAlnyQUH48/dBuDsIK2hE7lWaur6nS4WaHYSm87hr/FAtAp2FMzMlA9XSwBpD
         9SPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=41+DerRS1sT7Ogd6c0+ixXkDhT6S+/m0EWV7vA/JrOY=;
        b=B+9UruijXQrjxUSA+FQPlffz0SEV6AB2n3cb8+SgDr5LbKySOF95fxVjQ5u/BbEuRH
         YWluGjDIT95kzTFvMNFIgrps3cyzlWoDbMUz0Z1G6JAymfIdNp/pIte8jPv5owZwrGd5
         82F0z6zFeebieAdEu1vw9vM4dIHhBQqh/aEDATaZLdHANQmCPRJ0gQjsP8tNfSz+YtbL
         w9Nf97smfEidpFCXjxiDgxtCH5YHeFcktFNvyHVpZgqhtC1VmSAIlXBOqAdVxIVX+0JQ
         fas5WlimQPGMa+tPqCkRWZ4+PflJMFkbmOLMntPzKcWBeQkx/NL8jrPUciYP6zUDPe6y
         Kw/g==
X-Gm-Message-State: ANhLgQ0GSD0X+aBVxt3y1PKh9bT/YtIsJIG0WDUXkXdqdVpDx0u9DehQ
	MuHJy5fH2Sl+ImILeaRsYuIca7PjaWIHEEFeNWMExg==
X-Received: by 2002:a92:51:: with SMTP id 78mr1451774ila.121.1583469242284;
 Thu, 05 Mar 2020 20:34:02 -0800 (PST)
MIME-Version: 1.0
References: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>
 <20200305182833.GA2106984@kroah.com>
In-Reply-To: <20200305182833.GA2106984@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Fri, 6 Mar 2020 10:03:50 +0530
Message-ID: <CANTOzWH1FNBWVAuzg8Eu7svt3ZrcWA3NqOhYhGo-xU87J5R_+Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Issue with checkpatch.pl
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b2fe2f05a0282968"

--000000000000b2fe2f05a0282968
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 5, 2020, 11:58 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 05, 2020 at 10:37:51PM +0530, Payal Kshirsagar wrote:
> >         I am trying to find files to cleanup using following command
> > ~/git/kernels/staging$ perl scripts/checkpatch.pl -f
> > drivers/staging/android/* | less
> > and I am getting a prompt as "Must be run from the top-level dir. of a
> > kernel tree"; I am running the command already from the top level , I am
> > not understanding how to solve it please help me regarding the same.
>
> This works for me, are you sure you have a "real" kernel in that
> location?
>
> odd.
>

Yes, I am running it in my original kernel.
Still not getting any solution:)

>

--000000000000b2fe2f05a0282968
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Thu, Mar 5, 2020, 11:58 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfou=
ndation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">On Thu, Mar 05, 2020 at 10:37:51PM +0530, Payal Kshirsa=
gar wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I am trying to find files to cleanup =
using following command<br>
&gt; ~/git/kernels/staging$ perl scripts/<a href=3D"http://checkpatch.pl" r=
el=3D"noreferrer noreferrer" target=3D"_blank">checkpatch.pl</a> -f<br>
&gt; drivers/staging/android/* | less<br>
&gt; and I am getting a prompt as &quot;Must be run from the top-level dir.=
 of a<br>
&gt; kernel tree&quot;; I am running the command already from the top level=
 , I am<br>
&gt; not understanding how to solve it please help me regarding the same.<b=
r>
<br>
This works for me, are you sure you have a &quot;real&quot; kernel in that<=
br>
location?<br>
<br>
odd.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Yes, I am running it in my original kernel.</div><div dir=3D"auto">Stil=
l not getting any solution:)</div><div dir=3D"auto"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"></blockquote></div></div></div>

--000000000000b2fe2f05a0282968--

