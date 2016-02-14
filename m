X-GM-THRID: 6250898457474629632
X-Received: by 10.129.134.135 with SMTP id w129mr11354521ywf.24.1455462684415;
        Sun, 14 Feb 2016 07:11:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.153.70 with SMTP id ve6ls1211374obb.99.gmail; Sun, 14 Feb
 2016 07:11:22 -0800 (PST)
X-Received: by 10.182.142.8 with SMTP id rs8mr11836308obb.33.1455462682857;
        Sun, 14 Feb 2016 07:11:22 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x22e.google.com (mail-ob0-x22e.google.com. [2607:f8b0:4003:c01::22e])
        by gmr-mx.google.com with ESMTPS id k15si732786igt.3.2016.02.14.07.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:11:22 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) client-ip=2607:f8b0:4003:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22e.google.com with SMTP id gc3so80933259obb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=aPyV8hesYkBxh7N720buUqAmGzLpSfqKR/7gV3IL7gk=;
        b=o9pk5q5my1WZJ+SxNbFDhf1ZW9P0hjaNehETF5CYANkuvNy7gcgCNSq1FefrejJKBL
         FLDGUm1PQEUHmtjIk+Xvt0KHortNxNZOuYcHSaCbxyhCehqqy4kPDH+eaK73WeZwHCc5
         MrfpUATOWdd3nPEYLHl9LEN4ZTByP87tVrQesYhn9tsd717mvKFwpFxmAe0pK2K6wUaM
         ymwL+LbJ+q91kVcnWmo1D7Onl7YLm9idM1JXnnfbkdePezAVnFA6qS+9xMpHbuFj6wzr
         5Bjq7UrQgTWg+tuUtmzreccYdffSUEkV3bIq3RFrkJWXYodSli1FZ7YV78wnXl5JCaMw
         pq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=aPyV8hesYkBxh7N720buUqAmGzLpSfqKR/7gV3IL7gk=;
        b=O70QfjgTUpa5yj5yqvvB52gJCaewSfrNUjWlhQwUzIXuuhFmNw8HtaHkdA2p7GuvFL
         Cb+EZF2cuvc/5fRuO64j0kkoFn0Zmpcn5wBWlBs8uzXwlrL8bjlvnZQV50gTUGxazPZm
         7tw6SvTV0+EBzDrG0soBLhrO3IOM0Uvxpe7Vhxv/XjK22NAocE0hU2Urh9+0a2LHXdhp
         4PwoMzWWy1cIfiN7leB76jDJpG6lDvNz5DHBLMYsEN9lV/s/3P1ZE8TEI3g5QssdMBeo
         7Bl2O+N758pvO5Bl3lDHQZF2A9Fb/qzdQ6VTH5/cHtWeh1yRpyuanOKNtvBTB0pF+dey
         JLvw==
X-Gm-Message-State: AG10YOSuXgB13Bb058l0R07qjZPuNYHoEEaMbQjpq3xm0jmv/JP+/jBfd4MNwBGj8xlFh0uNlj/KBzm0JjZSJw==
MIME-Version: 1.0
X-Received: by 10.182.133.4 with SMTP id oy4mr5125272obb.65.1455462682683;
 Sun, 14 Feb 2016 07:11:22 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Sun, 14 Feb 2016 07:11:22 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602140837380.2039@localhost6.localdomain6>
References: <20160214025751.GA24385@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602140837380.2039@localhost6.localdomain6>
Date: Sun, 14 Feb 2016 10:11:22 -0500
Message-ID: <CANnt6X=PC3kY0oEw6vB1BDCAuS_AT8Tsg=SCZPY833abpeNk2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Place constants on
 the right side of comparisons
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=e89a8ff252582f6fa3052bbc50dd

--e89a8ff252582f6fa3052bbc50dd
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 14, 2016 at 2:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Sat, 13 Feb 2016, Janani Ravichandran wrote:
>
> > Constants should be placed on the right hand side of comparisons. This
> > issue was identified by checkpatch.
>
> There is a semantic patch in the kernel that makes this change for you.
> At the moment, it makes the change in some cases where it is not really
> necessary, but when you have decided that it is necessary, it could be
> safer to use the semantic patch than to do it by hand.
>
I will remember this the next time I make a similar change.

Thanks!

Janani.

>
> misc/compare_const_fl.cocci
>
> Nothing to change in the patch though.
>
> julia
>
> > Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> > ---
> >  drivers/staging/rts5208/sd.c | 20 ++++++++++----------
> >  1 file changed, 10 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> > index d6c4982..244d589 100644
> > --- a/drivers/staging/rts5208/sd.c
> > +++ b/drivers/staging/rts5208/sd.c
> > @@ -4260,10 +4260,10 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb,
> struct rtsx_chip *chip)
> >               return TRANSPORT_FAILED;
> >       }
> >
> > -     if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
> > -             (0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
> > -             (0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
> > -             (0x64 != srb->cmnd[8])) {
> > +     if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
> > +             (srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
> > +             (srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
> > +             (srb->cmnd[8] != 0x64)) {
> >               set_sense_type(chip, lun,
> SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
> >               rtsx_trace(chip);
> >               return TRANSPORT_FAILED;
> > @@ -4284,7 +4284,7 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb,
> struct rtsx_chip *chip)
> >               return TRANSPORT_FAILED;
> >       }
> >
> > -     buf[5] = (1 == CHK_SD(sd_card)) ?  0x01 : 0x02;
> > +     buf[5] = (CHK_SD(sd_card) == 1) ? 0x01 : 0x02;
> >       if (chip->card_wp & SD_CARD)
> >               buf[5] |= 0x80;
> >
> > @@ -5176,10 +5176,10 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct
> rtsx_chip *chip)
> >               return TRANSPORT_FAILED;
> >       }
> >
> > -     if ((0x53 != srb->cmnd[2]) || (0x44 != srb->cmnd[3]) ||
> > -             (0x20 != srb->cmnd[4]) || (0x43 != srb->cmnd[5]) ||
> > -             (0x61 != srb->cmnd[6]) || (0x72 != srb->cmnd[7]) ||
> > -             (0x64 != srb->cmnd[8])) {
> > +     if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
> > +             (srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
> > +             (srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
> > +             (srb->cmnd[8] != 0x64)) {
> >               set_sense_type(chip, lun,
> SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
> >               rtsx_trace(chip);
> >               return TRANSPORT_FAILED;
> > @@ -5188,7 +5188,7 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct
> rtsx_chip *chip)
> >       switch (srb->cmnd[1] & 0x0F) {
> >       case 0:
> >  #ifdef SUPPORT_SD_LOCK
> > -             if (0x64 == srb->cmnd[9])
> > +             if (srb->cmnd[9] == 0x64)
> >                       sd_card->sd_lock_status |= SD_SDR_RST;
> >  #endif
> >               retval = reset_sd_card(chip);
> > --
> > 2.5.0
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20160214025751.GA24385%40janani-Inspiron-3521
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--e89a8ff252582f6fa3052bbc50dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Feb 14, 2016 at 2:39 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n Sat, 13 Feb 2016, Janani Ravichandran wrote:<br>
<br>
&gt; Constants should be placed on the right hand side of comparisons. This=
<br>
&gt; issue was identified by checkpatch.<br>
<br>
</span>There is a semantic patch in the kernel that makes this change for y=
ou.<br>
At the moment, it makes the change in some cases where it is not really<br>
necessary, but when you have decided that it is necessary, it could be<br>
safer to use the semantic patch than to do it by hand.<br></blockquote><div=
>I will remember this the next time I make a similar change.<br><br></div><=
div>Thanks!<br><br></div><div>Janani. <br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">
<br>
misc/compare_const_fl.cocci<br>
<br>
Nothing to change in the patch though.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; Signed-off-by: Janani Ravichandran &lt;<a href=3D"mailto:janani.rvchnd=
rn@gmail.com">janani.rvchndrn@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rts5208/sd.c | 20 ++++++++++----------<br>
&gt;=C2=A0 1 file changed, 10 insertions(+), 10 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd=
.c<br>
&gt; index d6c4982..244d589 100644<br>
&gt; --- a/drivers/staging/rts5208/sd.c<br>
&gt; +++ b/drivers/staging/rts5208/sd.c<br>
&gt; @@ -4260,10 +4260,10 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, s=
truct rtsx_chip *chip)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return TRANSPORT=
_FAILED;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((0x53 !=3D srb-&gt;cmnd[2]) || (0x44 !=3D srb=
-&gt;cmnd[3]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x20 !=3D srb-&gt;cm=
nd[4]) || (0x43 !=3D srb-&gt;cmnd[5]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x61 !=3D srb-&gt;cm=
nd[6]) || (0x72 !=3D srb-&gt;cmnd[7]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x64 !=3D srb-&gt;cm=
nd[8])) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((srb-&gt;cmnd[2] !=3D 0x53) || (srb-&gt;cmnd[=
3] !=3D 0x44) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[4] !=3D=
 0x20) || (srb-&gt;cmnd[5] !=3D 0x43) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[6] !=3D=
 0x61) || (srb-&gt;cmnd[7] !=3D 0x72) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[8] !=3D=
 0x64)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_sense_type(c=
hip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtsx_trace(chip)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return TRANSPORT=
_FAILED;<br>
&gt; @@ -4284,7 +4284,7 @@ int sd_pass_thru_mode(struct scsi_cmnd *srb, str=
uct rtsx_chip *chip)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return TRANSPORT=
_FAILED;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0buf[5] =3D (1 =3D=3D CHK_SD(sd_card)) ?=C2=A0 0x0=
1 : 0x02;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0buf[5] =3D (CHK_SD(sd_card) =3D=3D 1) ? 0x01 : 0x=
02;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (chip-&gt;card_wp &amp; SD_CARD)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buf[5] |=3D 0x80=
;<br>
&gt;<br>
&gt; @@ -5176,10 +5176,10 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rt=
sx_chip *chip)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return TRANSPORT=
_FAILED;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if ((0x53 !=3D srb-&gt;cmnd[2]) || (0x44 !=3D srb=
-&gt;cmnd[3]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x20 !=3D srb-&gt;cm=
nd[4]) || (0x43 !=3D srb-&gt;cmnd[5]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x61 !=3D srb-&gt;cm=
nd[6]) || (0x72 !=3D srb-&gt;cmnd[7]) ||<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(0x64 !=3D srb-&gt;cm=
nd[8])) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((srb-&gt;cmnd[2] !=3D 0x53) || (srb-&gt;cmnd[=
3] !=3D 0x44) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[4] !=3D=
 0x20) || (srb-&gt;cmnd[5] !=3D 0x43) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[6] !=3D=
 0x61) || (srb-&gt;cmnd[7] !=3D 0x72) ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(srb-&gt;cmnd[8] !=3D=
 0x64)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0set_sense_type(c=
hip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rtsx_trace(chip)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return TRANSPORT=
_FAILED;<br>
&gt; @@ -5188,7 +5188,7 @@ int sd_hw_rst(struct scsi_cmnd *srb, struct rtsx=
_chip *chip)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (srb-&gt;cmnd[1] &amp; 0x0F) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case 0:<br>
&gt;=C2=A0 #ifdef SUPPORT_SD_LOCK<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (0x64 =3D=3D srb-&=
gt;cmnd[9])<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (srb-&gt;cmnd[9] =
=3D=3D 0x64)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0sd_card-&gt;sd_lock_status |=3D SD_SDR_RST;<br>
&gt;=C2=A0 #endif<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D reset=
_sd_card(chip);<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160214025751.GA24385%40janani-Inspiron-3=
521" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20160214025751.GA24385%40janani-Inspiron-3521</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div></div>

--e89a8ff252582f6fa3052bbc50dd--

