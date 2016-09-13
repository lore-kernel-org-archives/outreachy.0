X-GM-THRID: 6329698324214448128
X-Received: by 10.66.231.104 with SMTP id tf8mr14186pac.15.1473761940871;
        Tue, 13 Sep 2016 03:19:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls896222otd.20.gmail; Tue, 13 Sep
 2016 03:19:00 -0700 (PDT)
X-Received: by 10.157.45.54 with SMTP id v51mr19597356ota.45.1473761940465;
        Tue, 13 Sep 2016 03:19:00 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id c75si1259753ywh.0.2016.09.13.03.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 03:19:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id e5so6789114qtb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 03:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=joAOsrDs8FHgKq6Guiet5onBLsA9hk40wp6EZT5rRnk=;
        b=EG4fk1ZYWQR0IUdhDGOLor51KL3kqcLuhXJ9ZGZImE5VQ1+sUSMyIlMa1mFbN9c4dI
         wLLhfQ0fFZUS13jwh5bklyzVZfrG7E/twR/lc/Xlj9fF23byD9hcEXDmMllNppAO7BZm
         YJPiwYfSdby/JRuxtmKkqj0KswUeEtQEJ1oEIykVsPsD2F7xcJmhzAtZB800HErP3HXz
         hh1+0GXoU+OvJYGQ0IffQN5Ym2RquLTPeGcOtQaa++bwoylmFXUgeewvBeMMdiBJVUKq
         akO8KhaL/4o5q/7gayNUbcGgWYN3hL8t6fUOx0yVaAFIjlP11BkBtMl5ZS62vTkJfsf5
         K3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=joAOsrDs8FHgKq6Guiet5onBLsA9hk40wp6EZT5rRnk=;
        b=R5g92PZhN+bHb/YAobBh5neSC5TqIoNi3sHa0A3bSei6VZLP476v9131iJML2F3duL
         7ET7fkyGNzc0kTlcA8iSeIsafA3BMEiW/hQviF8sAXBc0NgZRrYa2m6Dyhsx+y9n+qr3
         qnNQNa4vBU6CH8lASg8hZ090H1iy7Zcg/kS95ZNq8IU7Dt7mdwz9ajSJb3cysY6cOOg/
         BGfTYFakq3sjUvkEYfritFxmoDh7VGy6tgTav5H/2yYrgX1+l87i2Uv6hv7BS3GlBOAV
         9pnRKrSOMCwigf1G+nMQpvKjzNNartWswhAtUWWuiPdi7zK+WUVoT8CXAKFuMeMk8WdM
         w9+Q==
X-Gm-Message-State: AE9vXwMO+o2wmGuT5AQBd2Bw9aGObDKGxHiJAZPo5KrRLtSOj70TTJiuqJ0+XJT/AhDOiFUfNTYsGElCLYxIXQ==
X-Received: by 10.237.41.131 with SMTP id o3mr20542244qtd.57.1473761940233;
 Tue, 13 Sep 2016 03:19:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Tue, 13 Sep 2016 03:18:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609131155250.3355@hadrien>
References: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
 <2284008.DIPsHg5UWl@wuerfel> <alpine.DEB.2.10.1609131135160.3355@hadrien>
 <e2fdc076-900a-4a25-9e5a-49d693bd3c74@googlegroups.com> <alpine.DEB.2.10.1609131155250.3355@hadrien>
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Tue, 13 Sep 2016 15:48:39 +0530
Message-ID: <CAFrQyDFbBCrTbOV5RWsNEeAam4cakuNfB1zyHXRLPfi=HEoNyg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: comedi_pcmcia:
 Removes unnecessary blank line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, arnd@arndb.de, 
	Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
	gregkh@linuxfoundation.org, badbuddha91@gmail.com, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary=94eb2c0bfb5cee83b4053c60f082

--94eb2c0bfb5cee83b4053c60f082
Content-Type: text/plain; charset=UTF-8

I followed the tutorial : https://kernelnewbies.org/Outreachyfirstpatch

So I think what I have is the same as the one your suggesting.Perhaps,I'll
try running the command you suggested to be completely sure.

Thanks,
Namrata



On Tue, Sep 13, 2016 at 3:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 13 Sep 2016, Namrata A Shettar wrote:
>
> > Yes I realize that this may be wrong.Thank you for your inputs!
> >
> >  Also,The version of the kernel I am using is : 4.8.0-rc2+
>
> You should be using what you get by doing the following command:
>
> git clone -b staging-testing git://git.kernel.org/pub/scm/
> linux/kernel/git/gregkh/staging.git
>
> Maybe this is what you already have?
>
> julia
>
>
> <http://groups.google.com/d/msgid/outreachy-kernel/e2fdc076-900a-4a25-9e5a->

--94eb2c0bfb5cee83b4053c60f082
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I followed the tutorial : <a href=3D"https://ker=
nelnewbies.org/Outreachyfirstpatch" target=3D"_blank">https://kernelnewbies=
.org/<wbr>Outreachyfirstpatch</a><br><br></div>So I think what I have is th=
e same as the one your suggesting.Perhaps,I&#39;ll try running the command =
you suggested to be completely sure.<br><br></div><div>Thanks,<br></div><di=
v>Namrata<br></div><div><br><br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Tue, Sep 13, 2016 at 3:27 PM, Julia Lawall <span di=
r=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">jul=
ia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
span class=3D""><br>
<br>
On Tue, 13 Sep 2016, Namrata A Shettar wrote:<br>
<br>
&gt; Yes I realize that this may be wrong.Thank you for your inputs!<br>
&gt;<br>
&gt; =C2=A0Also,The version of the kernel I am using is : 4.8.0-rc2+<br>
<br>
</span>You should be using what you get by doing the following command:<br>
<br>
git clone -b staging-testing git://<a href=3D"http://git.kernel.org/pub/scm=
/linux/kernel/git/gregkh/staging.git" rel=3D"noreferrer" target=3D"_blank">=
git.kernel.org/pub/scm/<wbr>linux/kernel/git/gregkh/<wbr>staging.git</a><br=
>
<br>
Maybe this is what you already have?<br>
<br>
julia<br>
<span class=3D""><br></span><a href=3D"http://groups.google.com/d/msgid/out=
reachy-kernel/e2fdc076-900a-4a25-9e5a-" rel=3D"noreferrer" target=3D"_blank=
"></a></blockquote></div><br></div></div>

--94eb2c0bfb5cee83b4053c60f082--

