X-GM-THRID: 6463670591377375232
X-Received: by 10.13.238.7 with SMTP id x7mr3247818ywe.39.1504942578725;
        Sat, 09 Sep 2017 00:36:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.4 with SMTP id l4ls2642405ita.7.gmail; Sat, 09 Sep 2017
 00:36:18 -0700 (PDT)
X-Received: by 10.200.14.79 with SMTP id j15mr2875641qti.51.1504942578040;
        Sat, 09 Sep 2017 00:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504942578; cv=none;
        d=google.com; s=arc-20160816;
        b=HGAziAGojB2x97HX3Q6b0ThNvyj1JTBd70HHaF830GWeQXszcihOBbiiZonPyoaZ8P
         66Dhde+/DOIkDnQPgz6xo62oLWcsLDr6bh3hC3ZsfHPswAWDFfK7CKkcJ/5MxKTZ+3R4
         ph3kupu1123+8M4VCKHaoDVXp+W+MHBUJCWQql4CBAsqYeuwwhwQBLUY/6PoJGeu/jXt
         73Qw4lxhUFUovJrSCBMqvW6JBiMoaVO33N/kRJ/WmO+Id+DqTaaCPpiLGR6oo8OmL+qX
         l84Pdo++5lDG+2giX9n9YNGBFq6ZLSxgul8S+/oh5Xw0RnOfK1MtFuQ50e6YejMIE8Gw
         /Wdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=vwtS46r5iWCNg5mWWyYkWbGRy8PHKOK/cqz/Xr8ZZmM=;
        b=ZfJ+74KaHtSfK45NkkTIJ5sPDpOdEXJrzGshlhMfT3kyL8bc5QIvWMzja+9HZI0CXy
         o+03AOUEs534JAUNsWDfvPlbWPDiA4VNlg3T5t5iRxPIixlFfdYuoGTEQK4jgINtiFRQ
         N0GNtf5AnWXhxvDX/zuLGm8y0V1l8wdgxowLi090LbVrHT7POLHOAYivWuzRRFVfAxSZ
         VFB+dpCJEjhuTerAZO0cxR/PXGLP4FHWwsfkWcf4Hke0TpbPgbNgIUSYafQLUsqugoIP
         VipnAac/r1ciicSZmHgelFihb6XahQ+Eb+owTjoiqOsHrKcumWTe4oKgnbONNf5tadBi
         yPEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYXG1mKs;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id g196si156334vke.3.2017.09.09.00.36.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYXG1mKs;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id s15so1263884uag.0
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 00:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=vwtS46r5iWCNg5mWWyYkWbGRy8PHKOK/cqz/Xr8ZZmM=;
        b=GYXG1mKsjsnGWmuV+lRxc8m+bmsO0yJM6Pvdq1s+3Wbvqbq58k52MlfY0AUk4CxXkX
         PP12QKuOciAaYXAQaV7t9arH0JNslZ+fNu+duOsvXJ7i5cT/oN2xVqwSZsoboSOO2YzR
         00iBso92b3qRQDGXJAOyEIi3ylqr6WyAKUrTZl8efDmP0bhMka7XVhz3SROCumqqMGGD
         OrJo/7NhWMfXIfWlVrTGHm2jqmUCsaFtpMUpoBI++RSxTWWfERQOiC7t0rh3hBuEJf+/
         9/kOoGn+yAqZcmypkIKh+iYE9h8XwICzM1pY3WFkk3otL5atpDqipg0c5we0QZgVXZ5J
         hctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=vwtS46r5iWCNg5mWWyYkWbGRy8PHKOK/cqz/Xr8ZZmM=;
        b=AOuX9zA+7I3i2IHcAHSjudWM+f9aqgIz3o2IpnvAPMzp9uE2P1TTaPS6FWh8X8AXo6
         pDzOF9gsZxdELjksybah15Wr38riO8MGxOgPc8Wpw4DU0e+knMwbN9RR0WoFFf30lh+J
         1dVB89vs68tgTS71lPRscB2OCVmi9h3xI0/SfGbEIxCaxLNaPITS5tZT9nQ9+uD5HwAO
         TwMmvBEgROIVk871+aaVzejk9LHecUM9wGoRyIxLBGdnifwPU36/hdDR1UpSVaBu4Sox
         rN1HfYVia9PzJ3/uuSvqLLkwVm1kpc5mcPbFrgIkcHLXaECWbFLQ1HT704X464WcwYNt
         2ipA==
X-Gm-Message-State: AHPjjUgsl+0ODuGwWrFV98ZlPMAqRG/0mrwpeA+j4jr3k/bfgkDr9lD5
	oeRdH4ttNslDplplnDkLiYwkHuaZpQ==
X-Google-Smtp-Source: ADKCNb484jweqZC3xaAi3rL/xhjnvASXU2B6RNM1tZ8BV/D0ZDNTcttXTOKXHWf8gulbvvufh296giV7m0z+MvU1oQ8=
X-Received: by 10.159.51.81 with SMTP id a17mr3697026uac.103.1504942577708;
 Sat, 09 Sep 2017 00:36:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Sat, 9 Sep 2017 00:36:17 -0700 (PDT)
In-Reply-To: <20170909071451.GA27010@kroah.com>
References: <1504940442-27511-1-git-send-email-harshasharmaiitr@gmail.com> <20170909071451.GA27010@kroah.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Sat, 9 Sep 2017 13:06:17 +0530
Message-ID: <CANMOCy3=Gi8uJJfjAoBUiAfdO3RhNO0pRu3Jmm-RwCp9zi=kSA@mail.gmail.com>
Subject: Re: [PATCH] staging: unisys: visorbus: Declared char * array as
 static const
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="f403043ec394c074880558bcbf39"

--f403043ec394c074880558bcbf39
Content-Type: text/plain; charset="UTF-8"

Hi,
Sorry! this patch can be dropped as they cannot be static constant because
both cases are assigning entries in array to pointers on stack which
eliminates the possibility of static.
Thanks for your feedback.

Regards,
Harsha Sharma

On Sat, Sep 9, 2017 at 12:44 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Sat, Sep 09, 2017 at 12:30:42PM +0530, Harsha Sharma wrote:
> > State explicitly that individual entries in array will not change.
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >  drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/unisys/visorbus/visorchipset.c
> b/drivers/staging/unisys/visorbus/visorchipset.c
> > index 6d4498f..6f2a010 100644
> > --- a/drivers/staging/unisys/visorbus/visorchipset.c
> > +++ b/drivers/staging/unisys/visorbus/visorchipset.c
> > @@ -1162,7 +1162,7 @@ static ssize_t deviceenabled_store(struct device
> *dev,
> >       struct controlvm_message_packet *cmd = &req->msg.cmd;
> >       char env_cmd[40], env_id[40], env_state[40], env_bus[40],
> env_dev[40],
> >           env_func[40];
> > -     char *envp[] = {
> > +     static const char * const envp[] = {
>
> Are you _sure_ about this?  Why make it static?  That seems a bit "odd",
> don't you think?  You need a lot more changelog text to get everyone to
> agree that this is ok to do...
>
> Also, you forgot to cc: the actual maintainers of this code...
>
> thanks,
>
> greg k-h
>

--f403043ec394c074880558bcbf39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Sorry! this patch can be dropped as they cannot be=
 static constant because both cases are assigning entries in array to point=
ers on stack which eliminates the possibility of static.</div><div>Thanks f=
or your feedback.</div><div><br></div><div>Regards,</div><div>Harsha Sharma=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sa=
t, Sep 9, 2017 at 12:44 PM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto=
:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Sat, Sep 09, 2017 at 12:30:42PM +0530, Harsha Sharma wrote:<br>
&gt; State explicitly that individual entries in array will not change.<br>
&gt;<br>
&gt; Signed-off-by: Harsha Sharma &lt;<a href=3D"mailto:harshasharmaiitr@gm=
ail.com">harshasharmaiitr@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/unisys/<wbr>visorbus/visorchipset.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/unisys/<wbr>visorbus/visorchipset.c b/dri=
vers/staging/unisys/<wbr>visorbus/visorchipset.c<br>
&gt; index 6d4498f..6f2a010 100644<br>
&gt; --- a/drivers/staging/unisys/<wbr>visorbus/visorchipset.c<br>
&gt; +++ b/drivers/staging/unisys/<wbr>visorbus/visorchipset.c<br>
&gt; @@ -1162,7 +1162,7 @@ static ssize_t deviceenabled_store(struct device=
 *dev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct controlvm_message_packet *cmd =3D &am=
p;req-&gt;msg.cmd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char env_cmd[40], env_id[40], env_state[40],=
 env_bus[40], env_dev[40],<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0env_func[40];<br>
&gt; -=C2=A0 =C2=A0 =C2=A0char *envp[] =3D {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0static const char * const envp[] =3D {<br>
<br>
</span>Are you _sure_ about this?=C2=A0 Why make it static?=C2=A0 That seem=
s a bit &quot;odd&quot;,<br>
don&#39;t you think?=C2=A0 You need a lot more changelog text to get everyo=
ne to<br>
agree that this is ok to do...<br>
<br>
Also, you forgot to cc: the actual maintainers of this code...<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--f403043ec394c074880558bcbf39--

