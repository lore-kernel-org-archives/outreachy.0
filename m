X-GM-THRID: 6949289318658605056
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a19:6518:: with SMTP id z24mr12394389lfb.512.1618038644296;
        Sat, 10 Apr 2021 00:10:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls202780lfa.0.gmail; Sat, 10 Apr
 2021 00:10:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwjsPD+R87UG7jEGzdEMTUwWy/Ch9jj8qZF83ge0vHecTkAmz221rgOjTKFArb5Vo4UUaqY
X-Received: by 2002:a19:c750:: with SMTP id x77mr7104952lff.310.1618038642517;
        Sat, 10 Apr 2021 00:10:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618038642; cv=none;
        d=google.com; s=arc-20160816;
        b=iZNKCCGOiMdU/EZB54/lFpmrJ7oytnXiKUfBxbUOGJ5zin5kIe2QW4EsXTUwCdCIaG
         gqqMTEKxO+Xcel96mVghTsE8ESA+nMr43U9ygz4Q3f07s9heGFDt3inX8AyYO04cwCis
         Stf3OHwH3RuL5TSKL6HR0yTtYSCr0sGOI19re89He66Nv6gaYI0UKdWhveaqoWFs1iAJ
         Hbk//Udh0dsySQfoDxZwUOXhqBPGP7oAw7gePHXtnvIUn3wv32pxo+egj5KgxRkQlFtU
         0jbHgcuUPVwL28zugwVALGjWX99+3upavDcD2INSSf8jqqklkUp9ud8l0pPz23H5VlEO
         ZmDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4htXgx5eHSb9vRRKhJbmHu5EQ5QSPuLL7B8l5ZIxO1o=;
        b=jUWLHXZcsFd23g7Uhas1bhG+aQRLNjp5J4UEBfgfEubxhC1kkmyUqAmt1HqsQkyRAk
         z95Ix2BFZn8PDCE3z1BurXV3K1FrInEj67wTDzC9aSMdAcdKkYVrJBTNY35/NROzpQm0
         UZ1VNpCrvMocCGlMNujU0xouCCoX8IJ7kLjkUZS4Cp4e15ydkSTmrJMoxbNN45GnC47y
         QkaLhuE5NhXOFqnpq6cXvCyir5Dsnr2vOSv0cLFUAVrMBuic1eJDa3tzCg2rnSQhKY3A
         8CClVS4c9PUW/xJtq/CyLfLIdHr6U57esEK2qvp6xfUkDLAbTUU7k+BXocyov36UjeFj
         N/9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VKbtkGXk;
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <siddmohamed19@gmail.com>
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id z3si338965lfu.12.2021.04.10.00.10.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 00:10:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VKbtkGXk;
       spf=pass (google.com: domain of siddmohamed19@gmail.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=siddmohamed19@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x234.google.com with SMTP id y1so9020185ljm.10
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 00:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4htXgx5eHSb9vRRKhJbmHu5EQ5QSPuLL7B8l5ZIxO1o=;
        b=VKbtkGXksy36dTFoeM7SJkND/DNhnv7e6TVRMSYYJ3GBHKGkVmIxFanNpPV5syHZKq
         houf+zXnPqPyfgVRw0W7yIq8TsyIxEDvf3hXOVhmDxiBoWowAGxkAs2UdDDs2L9s1p6g
         tQWVWnhmThogPjC5HBUcm+RvPS07VYcJ4Ta+9NFqpl0CAawBiGFacZGij0VljyUL64ej
         G7o9vPstQbFTHSTzNGnHqDY3CE4/St1AgLeaDmSOHXlZa6LHYTLmWSjXmQGjtSzuJijG
         FtIk0zh5FflVtVhABlZutQ+eDZSMUehxGlFMWVjdauZ0jEUJRTIKWVr+xwCjomwnorLk
         H8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4htXgx5eHSb9vRRKhJbmHu5EQ5QSPuLL7B8l5ZIxO1o=;
        b=K9MO7lwaOaGJftWYqUirFONljGW1MiDARGzgYDqFQdKq1P6tv1q6f2UcYeJfM0x2SK
         T7ejzw70OCfaVdurkDj8JEbKlqdEv7a835VOMC2y6Vm/IThiU6gIdvBZ0K/RgH49kyw6
         YtJ62b5/hsTiofuDF144kFUUGFrLjp5ug28oN85vpT2Uk953BpCQYk3zaU17cica+sKJ
         hU+tNZvOEN0yghKWsBY3vc2wiBb/1bGoZwrkX++vD6lC7giPZMTAc1ZbKCEE+nwAWVok
         HufbLVF41nOUsCOtY0NCFltC0yDc29Hh1lM9N9xlJ+Nl4osrbyzyVPjy3VwQrUb1qtva
         nUaw==
X-Gm-Message-State: AOAM532w2EkyddCJY/dewQIwymUEMJ4ofUO01b55bcO1w7KDLzAEhrWQ
	910eYwaZ2QpNGm3gRGcPzoWb1emuF9YJtx6v6k8=
X-Received: by 2002:a2e:9953:: with SMTP id r19mr3892292ljj.413.1618038642262;
 Sat, 10 Apr 2021 00:10:42 -0700 (PDT)
MIME-Version: 1.0
References: <0e9eb226-2111-4afa-a2c5-5a6cec9537c0n@googlegroups.com> <24523675.kZeo3ZrSie@localhost.localdomain>
In-Reply-To: <24523675.kZeo3ZrSie@localhost.localdomain>
From: Mo Jauhar <siddmohamed19@gmail.com>
Date: Sat, 10 Apr 2021 12:40:30 +0530
Message-ID: <CAHLYjjWkFfRrtf93JunVJt5GGX2HBOjgSB-Aqbu5sfPzwOC2eA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Help Needed] Driver Modification on Native Linux
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000081475d05bf98faba"

--00000000000081475d05bf98faba
Content-Type: text/plain; charset="UTF-8"

Thanks Fabio. I was just doing the modules installation and was missing the
kernel installation. That's why I wasn't getting that message. Now it is
resolved. Thanks a lot for your help.

On Sat, Apr 10, 2021 at 11:59 AM Fabio M. De Francesco <
fmdefrancesco@gmail.com> wrote:

> On Saturday, April 10, 2021 12:31:45 AM CEST Mo Jauhar wrote:
> > Hello everybody,
> >
> > I am following the step, *Make a driver change* in the tutorial but am
> > stuck. My addition of print() statements inside the probe functions of
> > modules does not show up in the log when I reboot my machine.
> >
> > Here is what I am trying to do:
> > 1. Pick a module from the result of *lsmod*
> > 2. I picked up *xhci-pci* and added a *printk("I can ...")* in its
> > *xhci-pci.c* file, inside *xhci_pci_probe()*
> > 3. I reboot
> > 4. Check the log file using *dmesg | less *and search for *"I can ..."
> > *and I am unsuccesful.
> >
> > I have tried to do the same with *realtek *but I am still not successful.
> >
> > Thanks in advance for your help. Please have a nice day!
> >
> > Regards,
> > - Mohd Ali Jauhar
> Hello Mo,
>
> 1) Check if you are really running your kernel (not the distribution's
> one). The command "uname -r" will give you that information (you should
> see
> the value of CONFIG_LOCALVERSION, which you set before compilation,
> appended at the end of the output).
> 2) Do you see your module with "lsmod"? If not, did you "modprobe" it?
> 3) Did you run  "make -jN && make modules_install && make install" and
> then
> update your grub2 config file?
>
> Fabio
>
>
>
>
>

--00000000000081475d05bf98faba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Fabio. I was just doing the modules installation an=
d was missing the kernel installation. That&#39;s why I wasn&#39;t getting =
that message. Now it is resolved. Thanks a lot for your help.=C2=A0</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, =
Apr 10, 2021 at 11:59 AM Fabio M. De Francesco &lt;<a href=3D"mailto:fmdefr=
ancesco@gmail.com">fmdefrancesco@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Saturday, April 10, 2021 12:31=
:45 AM CEST Mo Jauhar wrote:<br>
&gt; Hello everybody,<br>
&gt; <br>
&gt; I am following the step, *Make a driver change* in the tutorial but am=
<br>
&gt; stuck. My addition of print() statements inside the probe functions of=
<br>
&gt; modules does not show up in the log when I reboot my machine.<br>
&gt; <br>
&gt; Here is what I am trying to do:<br>
&gt; 1. Pick a module from the result of *lsmod*<br>
&gt; 2. I picked up *xhci-pci* and added a *printk(&quot;I can ...&quot;)* =
in its<br>
&gt; *xhci-pci.c* file, inside *xhci_pci_probe()*<br>
&gt; 3. I reboot<br>
&gt; 4. Check the log file using *dmesg | less *and search for *&quot;I can=
 ...&quot;<br>
&gt; *and I am unsuccesful.<br>
&gt; <br>
&gt; I have tried to do the same with *realtek *but I am still not successf=
ul.<br>
&gt; <br>
&gt; Thanks in advance for your help. Please have a nice day!<br>
&gt; <br>
&gt; Regards,<br>
&gt; - Mohd Ali Jauhar<br>
Hello Mo,<br>
<br>
1) Check if you are really running your kernel (not the distribution&#39;s =
<br>
one). The command &quot;uname -r&quot; will give you that information (you =
should see <br>
the value of CONFIG_LOCALVERSION, which you set before compilation, <br>
appended at the end of the output).<br>
2) Do you see your module with &quot;lsmod&quot;? If not, did you &quot;mod=
probe&quot; it?<br>
3) Did you run=C2=A0 &quot;make -jN &amp;&amp; make modules_install &amp;&a=
mp; make install&quot; and then=C2=A0 <br>
update your grub2 config file?<br>
<br>
Fabio<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000081475d05bf98faba--

