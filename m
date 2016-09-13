X-GM-THRID: 6329721618764398592
X-Received: by 10.31.110.138 with SMTP id j132mr110102vkc.8.1473763515191;
        Tue, 13 Sep 2016 03:45:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.225 with SMTP id s94ls64758ioi.15.gmail; Tue, 13 Sep
 2016 03:45:14 -0700 (PDT)
X-Received: by 10.98.28.75 with SMTP id c72mr98657pfc.3.1473763514521;
        Tue, 13 Sep 2016 03:45:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id c75si1263567ywh.0.2016.09.13.03.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 03:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 38so6822786qte.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 03:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fuDxtzgq5E0L4DRlNLysuGnv6GY4RFDYmvjN8fc7Nsc=;
        b=BXu55wBOdw7ZMkh0i9KRTkN9jziVjDHh6BLO9bJ7vLywTY+zLwRrS7RL5as8ptrYFb
         zP9iPueHx/U8JcD2xdRsDE4oMzsVTPMRLrf90HrQ2EQp6KLnqj2rbh/kiXOFHzCDQjxR
         /nOK3tcKTjnSPNiSDWasO+X/jBzfHgQx0DG+zeqlrOdojW4AYAvy5yexcil/IVnNjRRa
         Rt7l4RtKhQ3QVU9oi0dLDXpqiV0PL1qjrrVOBJrD1GMMtA/lN43Fkl1gjsY3FSmCOL18
         FxRK64XsCGi5naCXtVVeRJSEekkj4Ot3pTDxXIoVgXjuqLAXEmKTi+N8m8bUMDiudZDv
         cIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fuDxtzgq5E0L4DRlNLysuGnv6GY4RFDYmvjN8fc7Nsc=;
        b=RTFLtSUuFbg+sDbbDOD1jjffbFdR4nzAtFfryHx1qiUeTN+orX8L4syA7p/H1Fe5DF
         JXtGrXRrLT/FyctTpptzRZkDbWokRZ9vgOlqkQeYrDAgd3TsbkiiwTXZEizXxJDqnhju
         7fwq3EAABpZv23+ayGmLVZKhoJj/1qSKzc1bl9BzS3nHKXtZpanCjSpRZnR7fb/wSxH7
         TZXu7CS9la0i0liRwphZC0TxjWV9IxB9jsZYtM29gZc9GS6AOCw1kN2bSSyyUjD104jq
         VMmXl8PGFmhRyJcqohJKwfHcfaEb7k0P2RtwIBIRnkK6/mQNlZJnNixUNBQW5nE0bSXC
         N7Ng==
X-Gm-Message-State: AE9vXwMiIeR68/IfULMGncAMm4Gbk3uSgj42LcdEaD67vlglsCQuKLGcYxkl62jum4ycuEI5Q2RLTIPi9/rlXA==
X-Received: by 10.237.59.51 with SMTP id p48mr12067qte.95.1473763514311; Tue,
 13 Sep 2016 03:45:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Tue, 13 Sep 2016 03:45:13 -0700 (PDT)
In-Reply-To: <5166979.RvC7fNVv5n@wuerfel>
References: <20160913075211.GA6959@life-desktop> <3010989.B07XkbaqhU@wuerfel>
 <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com> <5166979.RvC7fNVv5n@wuerfel>
From: Anchal Jain <anchalj109@gmail.com>
Date: Tue, 13 Sep 2016 16:15:13 +0530
Message-ID: <CAAbeOSuC60pWQkh8AR0+J9v8o0-r5ZnapKJn4eROWBg-4ReegA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c:
 usleep_range is preferred over udelay
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	Lidza Louina <lidza.louina@gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c19078ac1043e053c614e65

--94eb2c19078ac1043e053c614e65
Content-Type: text/plain; charset=UTF-8

Thank you, Now I understand. I will send the next version of the patch soon.

On Tue, Sep 13, 2016 at 4:06 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Tuesday, September 13, 2016 1:54:57 PM CEST Anchal Jain wrote:
> > > This gets called from cls_copy_data_from_queue_to_uart() under a
> spinlock.
> >
> > According to the documentation "Documentation/timers/timers-howto.txt".
> > In this documentation no explanation of "spinlock". What is that meaning?
>
> Holding a spinlock is one of the things that imply "atomic context",
> which is mentioned there. Other examples would be
>
> - being called from an interrupt handler
> - disabling interrupts
> - disabling preemption
>
>         Arnd
>

--94eb2c19078ac1043e053c614e65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, Now I understand. I will send the next version =
of the patch soon.<br></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Tue, Sep 13, 2016 at 4:06 PM, Arnd Bergmann <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Tues=
day, September 13, 2016 1:54:57 PM CEST Anchal Jain wrote:<br>
&gt; &gt; This gets called from cls_copy_data_from_queue_to_<wbr>uart() und=
er a spinlock.<br>
&gt;<br>
&gt; According to the documentation &quot;Documentation/timers/timers-<wbr>=
howto.txt&quot;.<br>
&gt; In this documentation no explanation of &quot;spinlock&quot;. What is =
that meaning?<br>
<br>
</span>Holding a spinlock is one of the things that imply &quot;atomic cont=
ext&quot;,<br>
which is mentioned there. Other examples would be<br>
<br>
- being called from an interrupt handler<br>
- disabling interrupts<br>
- disabling preemption<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div>

--94eb2c19078ac1043e053c614e65--

