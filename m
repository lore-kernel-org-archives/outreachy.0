X-GM-THRID: 6751148085003419648
X-Received: by 2002:a63:ce51:: with SMTP id r17mr14645862pgi.16.1571903226618;
        Thu, 24 Oct 2019 00:47:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3fc3:: with SMTP id m186ls147322pga.11.gmail; Thu, 24
 Oct 2019 00:47:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz2hma65NWhexj/lWfI/hyy8kmmUU9PLqhvla8uZWc0fpBugDBvuCfcsK6Tsmjwd+EWhGmj
X-Received: by 2002:a63:cf46:: with SMTP id b6mr14943131pgj.90.1571903225428;
        Thu, 24 Oct 2019 00:47:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571903225; cv=none;
        d=google.com; s=arc-20160816;
        b=T/dgQroX6kytan+ajkH0wtUFgvZw7ohsxBLBYhHjU+P63c8+knRPKlg9TZelE//8C1
         d/cPg399UPE2h4btc3z9TwrKcU9377w71rdw3aluQlsOsCsDvtc7X619Ed43Xs9gqeeS
         Hi/yFtJC1uU8qjosu5WEY/2NP7VjDIQ/EMsU/vJVeiHsxrISdSt+x7Gkp+4ioox+PpzU
         hBTN+YZbmUBSxvp3/lSgL+zeGTwAtfUjon0DHne6KzTJUwaM/r7f4AAPPu8ImfDLePaK
         6RF3vkJivXXKfSBpoRDceKECcd8W0k0GCHuwP+UwRzdWLoN5E6xgor4cDr8S8Fu6jlLF
         fXLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ECTz36GcsWamHKd6QnXg+Deiz+Fe7RjogMTcwEni5rY=;
        b=YOoT+c4u31GQ00sWtzsH+Z43u8naCd9Z9jhzYDqTHYcWhtimAX7gzHIEX5EomhOpCp
         dto8ObMmIVL/s1Q9NsdmTXBi5IrMI4VtKV9JfPaD3uymOjVODooUh7GwU5Y5G90jN0cS
         Za4aX+POMDJkUuOxiVFOa6yqspUflM1TStpW0JRAvjssW2ehQkmW8oK76V3cKC0o+lGz
         hcnYUxEla7ZL/I9LSXSJERC+d2AhUcND96aakjt3sLcxhWjHmzOe7NszoKmOJq95n3Oq
         iNmtQABemymui0FILvgTedTQwZQBUD8xWESRC9S8bJtIzIp55oeMFVM4FuTunfA/8YyE
         w6zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A94SGyk2;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id g12si1186439pfi.5.2019.10.24.00.47.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 00:47:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A94SGyk2;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id v10so15602562vsc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 00:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ECTz36GcsWamHKd6QnXg+Deiz+Fe7RjogMTcwEni5rY=;
        b=A94SGyk2vYuoxrhrWXoqSzBYJKJ2O2oTxfoCfENdnMz9BASDHaMUfiB1cIEujLez/k
         EHx4JjZFskSx18QgKKTZr5sspZZ7HrVBYpRRd3/LcIzNc9V/MTtXAof11SJYFo4HxB7+
         PC0AtfKtqLKvda8UsIkbzj4z2g3V+4QcrKJh/dtE6psgg+WFyyrJhXUKlSRK2G1Q1Knp
         X2rBa89bSxLKiFZTeBS6TB6vjcTlISyFC4OQY03oABVlx9RoHWFw88q+4Wbj1b2KGf/B
         H0cSJyAt60mmSEoEkGgbyA6qn8TAZQlUjJ0LWccVS/skes9l2H/0Hb4W/nrZLmbXJE0o
         XC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ECTz36GcsWamHKd6QnXg+Deiz+Fe7RjogMTcwEni5rY=;
        b=I2DihzH9FHM/OmdcStX07Hb8XLNMOGFQ5Z5R8gXUZH7OVu/M65cXgp6AHWZVZtuBEb
         QSrSz5mEonB6dZFnqxKKzzRMoDl004pYjEkM3cjT6Pm3bRfjBX+0WJAH3SIxJoTE/X03
         BV+CtVvF18DixFw+LmKS+Bcll0u3LDZ+YSnvCrGCNJsxEJrYjaiGoaSdTDMfVafuOaOn
         6jT6HBnE91Jen0Amm5Kn0fj3CFy/7qzTBmaxjSWcbWAMGdnv2MX+wQ86sPA82qs1lBzL
         D0ue3+5LJfVkTL4T0AaBLpQ+2HgE2VedhZZP7CQlQvu+OPBf/K/ZWhrzfKeq4Tdp1oln
         /WSg==
X-Gm-Message-State: APjAAAVymE5C+7cbT7qcD6byjc6deZSQjsdMSc3x9rYdcWKlsso+qXHq
	fH5RE/m2KoPWO7rWZmsO0DntyHzWQi7RQP5D8Iw/rpv1
X-Received: by 2002:a67:6bc1:: with SMTP id g184mr8000529vsc.161.1571903224542;
 Thu, 24 Oct 2019 00:47:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191023234427.GA4613@ik-ubuntu> <alpine.DEB.2.21.1910240645570.2771@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910240645570.2771@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Thu, 24 Oct 2019 08:46:50 +0100
Message-ID: <CANR89jZA3yy124EDWogZkVoqtRKmx-0+npxP6=_=yTcmTmHKLw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] Staging: comedi: Remove wrapper
 function declarartion
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: abbotti@mev.co.uk, gregkh@linuxfoundation.org, 
	hsweeten@visionengravers.com, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000051f87b0595a33d12"

--00000000000051f87b0595a33d12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Julia


Thanks for the reply. I see what you mean, the kernel compiles when I make
changes to three files, for each of two of the functions. The other
function is static, so it compiles on a change of only one file


Please Julia, I=E2=80=99ve two questions:

A) So I should change three files for a function, then make a single
commit, for that, and that will be a patch of the patch set, right?


B) I will now have three patches for this patch set, and as obviously the
previous patch set won=E2=80=99t be accepted, so my next patch set submissi=
on,
won=E2=80=99t be a patch set review( PATCH v2, 1,2,3,4,5,6,7/7) since I wil=
l be
having only three patches now, right?. So I need to make a fresh patch set
of three submission


You=E2=80=99re superstar


Kind regards

Evan

On Thu, 24 Oct 2019 at 05:47, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 24 Oct 2019, Evan Chime wrote:
>
> > Remove wrapper function "comedi_buf_map_put" declaration
> > as part of remove all wrappers in drivers/staging/comedi/TODO
> >
> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> > ---
> >  drivers/staging/comedi/comedi_internal.h | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/comedi_internal.h
> b/drivers/staging/comedi/comedi_internal.h
> > index df3b1af109f7..73131e625fe5 100644
> > --- a/drivers/staging/comedi/comedi_internal.h
> > +++ b/drivers/staging/comedi/comedi_internal.h
> > @@ -23,12 +23,10 @@ struct comedi_device
> *comedi_alloc_board_minor(struct device *hardware_device);
> >  void comedi_release_hardware_device(struct device *hardware_device);
> >  int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);
> >  void comedi_free_subdevice_minor(struct comedi_subdevice *s);
> > -
>
> Removing this blank line is not relevant to your change.
>
> >  int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevic=
e
> *s,
> >                    unsigned long new_size);
> >  void comedi_buf_reset(struct comedi_subdevice *s);
> >  bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
> > -int comedi_buf_map_put(struct comedi_buf_map *bm);
>
> It looks suspicious that you are removing a prototype here and calls
> afterwards.  Does the kernel compile after you apply this patch and befor=
e
> you apply the remaining ones?  The kernel should compile before and after
> every single patch, not before and after every series.
>
> julia
>
> >  int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long
> offset,
> >                         void *buf, int len, int write);
> >  struct comedi_buf_map *comedi_buf_map_from_subdev_get(
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20191023234427.GA4613%=
40ik-ubuntu
> .
> >
>

--00000000000051f87b0595a33d12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:17px=
;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)=
"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:1=
7pt">Hello Julia</span></p><p class=3D"p2" style=3D"margin:0px;font-stretch=
:normal;font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quo=
t;;color:rgb(69,69,69);min-height:20.3px"><span class=3D"s1" style=3D"font-=
family:&quot;.SFUIText&quot;;font-size:17pt"></span><br></p><p class=3D"p1"=
 style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;=
font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D"s1"=
 style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">Thanks for the =
reply. I see what you mean, the kernel compiles when I make changes to thre=
e files, for each of two of the functions. The other function is static, so=
 it compiles on a change of only one file</span></p><p class=3D"p2" style=
=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-f=
amily:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span =
class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></s=
pan><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-si=
ze:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69=
,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font=
-size:17pt">Please Julia, I=E2=80=99ve two questions:</span></p><p class=3D=
"p1" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:nor=
mal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69)"><span class=3D=
"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">A) So I sho=
uld change three files for a function, then make a single commit, for that,=
 and that will be a patch of the patch set, right?</span></p><p class=3D"p2=
" style=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal=
;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"=
><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17=
pt"></span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;=
font-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color=
:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quo=
t;;font-size:17pt">B) I will now have three patches for this patch set, and=
 as obviously the previous patch set won=E2=80=99t be accepted, so my next =
patch set submission, won=E2=80=99t be a patch set review( PATCH v2, 1,2,3,=
4,5,6,7/7) since I will be having only three patches now, right?. So I need=
 to make a fresh patch set of three submission</span></p><p class=3D"p2" st=
yle=3D"margin:0px;font-stretch:normal;font-size:17px;line-height:normal;fon=
t-family:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><sp=
an class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt">=
</span><br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font=
-size:17px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb=
(69,69,69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;f=
ont-size:17pt">You=E2=80=99re superstar</span></p><p class=3D"p2" style=3D"=
margin:0px;font-stretch:normal;font-size:17px;line-height:normal;font-famil=
y:&quot;.SF UI Text&quot;;color:rgb(69,69,69);min-height:20.3px"><span clas=
s=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-size:17pt"></span>=
<br></p><p class=3D"p1" style=3D"margin:0px;font-stretch:normal;font-size:1=
7px;line-height:normal;font-family:&quot;.SF UI Text&quot;;color:rgb(69,69,=
69)"><span class=3D"s1" style=3D"font-family:&quot;.SFUIText&quot;;font-siz=
e:17pt">Kind regards=C2=A0</span></p><p class=3D"p1" style=3D"margin:0px;fo=
nt-stretch:normal;font-size:17px;line-height:normal;font-family:&quot;.SF U=
I Text&quot;;color:rgb(69,69,69)"><span class=3D"s1" style=3D"font-family:&=
quot;.SFUIText&quot;;font-size:17pt">Evan</span></p></div><div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 24 Oct 201=
9 at 05:47, Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.=
lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Thu, 24 Oct 2019, Evan Chime wrote:<br>
<br>
&gt; Remove wrapper function &quot;comedi_buf_map_put&quot; declaration<br>
&gt; as part of remove all wrappers in drivers/staging/comedi/TODO<br>
&gt;<br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/comedi/comedi_internal.h | 2 --<br>
&gt;=C2=A0 1 file changed, 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/stagin=
g/comedi/comedi_internal.h<br>
&gt; index df3b1af109f7..73131e625fe5 100644<br>
&gt; --- a/drivers/staging/comedi/comedi_internal.h<br>
&gt; +++ b/drivers/staging/comedi/comedi_internal.h<br>
&gt; @@ -23,12 +23,10 @@ struct comedi_device *comedi_alloc_board_minor(str=
uct device *hardware_device);<br>
&gt;=C2=A0 void comedi_release_hardware_device(struct device *hardware_devi=
ce);<br>
&gt;=C2=A0 int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);<br=
>
&gt;=C2=A0 void comedi_free_subdevice_minor(struct comedi_subdevice *s);<br=
>
&gt; -<br>
<br>
Removing this blank line is not relevant to your change.<br>
<br>
&gt;=C2=A0 int comedi_buf_alloc(struct comedi_device *dev, struct comedi_su=
bdevice *s,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
nsigned long new_size);<br>
&gt;=C2=A0 void comedi_buf_reset(struct comedi_subdevice *s);<br>
&gt;=C2=A0 bool comedi_buf_is_mmapped(struct comedi_subdevice *s);<br>
&gt; -int comedi_buf_map_put(struct comedi_buf_map *bm);<br>
<br>
It looks suspicious that you are removing a prototype here and calls<br>
afterwards.=C2=A0 Does the kernel compile after you apply this patch and be=
fore<br>
you apply the remaining ones?=C2=A0 The kernel should compile before and af=
ter<br>
every single patch, not before and after every series.<br>
<br>
julia<br>
<br>
&gt;=C2=A0 int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned lo=
ng offset,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0void *buf, int len, int write);<br>
&gt;=C2=A0 struct comedi_buf_map *comedi_buf_map_from_subdev_get(<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20191023234427.GA4613%40ik-ubuntu" rel=3D"=
noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-k=
ernel/20191023234427.GA4613%40ik-ubuntu</a>.<br>
&gt;<br>
</blockquote></div></div>

--00000000000051f87b0595a33d12--

