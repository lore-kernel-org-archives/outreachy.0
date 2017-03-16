X-GM-THRID: 6397080703466471424
X-Received: by 10.25.40.17 with SMTP id o17mr984079lfo.25.1489645947228;
        Wed, 15 Mar 2017 23:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.155.194 with SMTP id d185ls137432lfe.2.gmail; Wed, 15 Mar
 2017 23:32:26 -0700 (PDT)
X-Received: by 10.25.145.17 with SMTP id t17mr989802lfd.23.1489645946208;
        Wed, 15 Mar 2017 23:32:26 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id p144si162485wme.2.2017.03.15.23.32.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 23:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id j90so15892256lfk.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 23:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=z3zWr7dEwnpjV8J6SkDmlcFy4kd5OptYogyI2OOOBvA=;
        b=Db+DEf8psJSsc4hDRGX7ztlCgiH6H2SzbIx8g0TbFl9v0bgdcVmfFt/+n2nAnKxwEv
         Ra5cyiUzX28j38O4pU0KmF+jd37MtWQ7Ylo73TDRsigHuv1/7O9GW3KV72u1vK78Va03
         Odgcb/2emFsYCTD/dYdF6Gslis00hmbrKc8Bt0PVk7HdVJ2ffGBtArghr7oCaKy/bq8r
         Ub8yanlz2paewVMXYJNV5M7lKcAcbD8ElBeq1pdAciPjZu2QNdfJLwGXwxJG2TZ4XgfI
         SlOsSImUab9NKXKbau2BDRuIXDHd2VvDmeXpSAKwnMSoSEf9uKysodME0RUYBCxlyeAK
         UavA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=z3zWr7dEwnpjV8J6SkDmlcFy4kd5OptYogyI2OOOBvA=;
        b=Kx0jUb0lJGO71B1SZa58QhQ6/1Y+Mla9aFJTSLAYs1qGKnIsdyeiazAjG6OsNLB2L5
         Fnbb1XW8dlPpriqF9IMfzOYJK99IUE2EwJgpHOiKhJyLg/bI7zerJd2vkhd4h8CF0bg7
         WmtvRT0l2WZvgur4uRs/FglzZxYL0THa1TAqGkIPqtvPnHaq1dU+fCBu9Dmexqpq12Az
         xjl39FyTS8ftiw//6B/8I0uePKl/0aVGlUjZflMkMX6gh6EPSxPAe/WDmyKCG8RGS/tp
         eopSmnoyfmGdPRLMZ/0NBl8n1XdWo+POFsmLAHRxsduxKoNg39PLmMN1B5F3sXqoZIYP
         meVg==
X-Gm-Message-State: AFeK/H2wt16qNXpei0S3vFzaoV/YGlO2lNYmtZxZODaojX1PozNwORv1ZFTFGpaclvDeFBHt2q95zvRLX7MNXQ==
X-Received: by 10.25.17.153 with SMTP id 25mr2166812lfr.39.1489645945964; Wed,
 15 Mar 2017 23:32:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.170.69 with HTTP; Wed, 15 Mar 2017 23:32:25 -0700 (PDT)
In-Reply-To: <20170313220546.GB14919@kroah.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com> <20170313220546.GB14919@kroah.com>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Thu, 16 Mar 2017 12:02:25 +0530
Message-ID: <CA+XqjF9cHvR=VnPmE3mqcKfyPJLL7_sMHWde_aWVG=WbT_rTMA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] staging: checkpatch cleanups
To: Greg KH <gregkh@linuxfoundation.org>
Cc: William Hubbs <w.d.hubbs@gmail.com>, devel@driverdev.osuosl.org, 
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, 
	Samuel Thibault <samuel.thibault@ens-lyon.org>, Chris Brannon <chris@the-brannons.com>
Content-Type: multipart/alternative; boundary=001a1140379e734f38054ad339db

--001a1140379e734f38054ad339db
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 14, 2017 at 3:35 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 14, 2017 at 01:49:52AM +0530, Arushi Singhal wrote:
> > Improve readability by fixing multiple checkpatch.pl
> > issues in drivers.
> >
> > Arushi Singhal (2):
> >   staging: speakup: identation should use tabs
> >   staging: dvb-frontends: removed code in comments.
>
> What changed from v2?
>
 In this patch nothing is changed from v2 but it is a patch series so have
to write v2 everywhere.
Thanks
Arushi

>
> thanks,
>
> greg k-h
>

--001a1140379e734f38054ad339db
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 14, 2017 at 3:35 AM, Greg KH <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span class=3D"gmail-">On Tue, Mar 14, 2017 at 01:49:52AM +0530,=
 Arushi Singhal wrote:<br>
&gt; Improve readability by fixing multiple <a href=3D"http://checkpatch.pl=
" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt; issues in drivers.<br>
&gt;<br>
&gt; Arushi Singhal (2):<br>
&gt;=C2=A0 =C2=A0staging: speakup: identation should use tabs<br>
&gt;=C2=A0 =C2=A0staging: dvb-frontends: removed code in comments.<br>
<br>
</span>What changed from v2?<br></blockquote><div>=C2=A0<span style=3D"font=
-size:12.8px">In this patch nothing is changed from v2 but it is a patch se=
ries so have to write v2 everywhere.</span></div><div><span style=3D"font-s=
ize:12.8px">Thanks=C2=A0</span></div><div><span style=3D"font-size:12.8px">=
Arushi</span></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div></div>

--001a1140379e734f38054ad339db--

