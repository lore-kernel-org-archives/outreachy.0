X-GM-THRID: 6389890697918414848
X-Received: by 10.25.18.219 with SMTP id 88mr479671lfs.29.1487954024465;
        Fri, 24 Feb 2017 08:33:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.193.21 with SMTP id r21ls461946lff.34.gmail; Fri, 24 Feb
 2017 08:33:43 -0800 (PST)
X-Received: by 10.46.1.92 with SMTP id 89mr422391ljb.5.1487954023533;
        Fri, 24 Feb 2017 08:33:43 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id 14si185195wmn.2.2017.02.24.08.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 08:33:43 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id z127so11026927lfa.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 08:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lU1oBatZiOFkaMIdCx1ugOAvfoCiEnmt/6XrXuG7MtA=;
        b=rfvwWLQt2ShMWbufP5Nix0JzPqw3ev/FA++nSd8DdLPY7LUITWXQGljM4KsIwhobXW
         mdHKc+yr/+QKb5IaTch12ofFZESFpcKdIADs61JT4tp1OHeruxGTeOy6dh8sqOjkeCk6
         UInmCRsTvkP5wp2Oig9i8HtJ7ImwmU7rr2vLHh7inzIHmPBC7FZR6fHxT/VP4kWDaTyV
         gompWJb9dG7pi2tcxXTNX5WEQbz0VHNFpG3SASppHV8L4pnlC3iIBoRlYa4pH4vKEr3n
         k6zIRGlyVUhl+nOmK1xJUlToC1EQwv64DCXYTwGKGGMKBVcyUZV16Pw29DaAK78f+cd4
         IqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lU1oBatZiOFkaMIdCx1ugOAvfoCiEnmt/6XrXuG7MtA=;
        b=FFanf8NYcD5V6cIrScDOpcWElOUxvCvrb2/rUB4wH/ygPx8BO4H5uIWk9t+TvUhQFW
         AcUYpFY8hXDGyNupD6vcocfYnuHTbqE/3P6yCCF3yID+cbVvkgz/zICnBzaFcOe+CrIO
         0fTTU6KvFGnS+OUXqTTlwJe2mS8YaLFBB0MjD6p+99B4a/VCjCfiLOmR61EHp7rXCFn+
         0Py6RbCHLAP2BfQjYFih4TG3WKx3IIMuNfAQ0IStAocbBUzOMVXkS0Kx96842q86pgob
         Jp22qJQ7F3rJi4t2TupnvHt4hFK6n7xhA6Wq0vdhTw9tsX0XJu7qmfJrLgkGQG5D2lrR
         v6hw==
X-Gm-Message-State: AMke39kUoQ32mTvLvQRH3dDWRNKTOG+LBHyaNTkrSe+LmDa/gT72/Pb49p0cf2WnlgkiEu33n+4/X4VSQSDSbQ==
X-Received: by 10.25.15.198 with SMTP id 67mr977220lfp.53.1487954022996; Fri,
 24 Feb 2017 08:33:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Fri, 24 Feb 2017 08:33:42 -0800 (PST)
In-Reply-To: <20170224163130.GA29645@kroah.com>
References: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook> <20170224163130.GA29645@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Fri, 24 Feb 2017 22:03:42 +0530
Message-ID: <CA+XqjF_sihk6_UhgLzUH6FVSFMu02Vadp1tjatQft-UJ14SJeA@mail.gmail.com>
Subject: Re: [PATCH] staging: xgifb: function prototype argument should have
 an identifier name
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113f89e2fba59b0549494ab1

--001a113f89e2fba59b0549494ab1
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman <
gregkh@linuxfoundation.org> wrote:

> On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal wrote:
> > function prototype arguments like 'struct vb_device_info *','unsigned
> > long' etc. should have an identifier name.
> >
> > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> > ---
> > Changes in v3:
> >   - By mistake one irrelevant line was added which is removed in this
> >     patch.
> >   - write the changes done in previous version in correct format.
> >   - make the commit subject more relevant and accurate.
>
> This patch doesn't apply to my tree at all :(
>
> Why this is so?
thanks
Arushi

> sorry,
>
> greg k-h
>

--001a113f89e2fba59b0549494ab1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman <span dir=3D"ltr">=
&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@=
linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal =
wrote:<br>
&gt; function prototype arguments like &#39;struct vb_device_info *&#39;,&#=
39;unsigned<br>
&gt; long&#39; etc. should have an identifier name.<br>
&gt;<br>
&gt; Signed-off-by: Arushi Singhal &lt;<a href=3D"mailto:arushisinghal19971=
997@gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0- By mistake one irrelevant line was added which is remove=
d in this<br>
&gt;=C2=A0 =C2=A0 =C2=A0patch.<br>
&gt;=C2=A0 =C2=A0- write the changes done in previous version in correct fo=
rmat.<br>
&gt;=C2=A0 =C2=A0- make the commit subject more relevant and accurate.<br>
<br>
</span>This patch doesn&#39;t apply to my tree at all :(<br>
<br></blockquote><div>Why this is so?<br></div><div>thanks<br></div><div>Ar=
ushi <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
sorry,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--001a113f89e2fba59b0549494ab1--

