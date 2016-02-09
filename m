X-GM-THRID: 6249367928124211200
X-Received: by 10.129.158.2 with SMTP id v2mr16876041ywg.42.1455057639109;
        Tue, 09 Feb 2016 14:40:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.232 with SMTP id m8ls1024129igx.33.canary; Tue, 09 Feb
 2016 14:40:38 -0800 (PST)
X-Received: by 10.50.43.193 with SMTP id y1mr6688892igl.6.1455057638716;
        Tue, 09 Feb 2016 14:40:38 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ob0-x243.google.com (mail-ob0-x243.google.com. [2607:f8b0:4003:c01::243])
        by gmr-mx.google.com with ESMTPS id ug8si43988igb.3.2016.02.09.14.40.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 14:40:38 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) client-ip=2607:f8b0:4003:c01::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4003:c01::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x243.google.com with SMTP id wg8so159913obc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 14:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=pyqp+8v36o9/xT6nZPdR6iUEamuIteJuro10bekx3SA=;
        b=KVTlbztTHygdQb5ULo5rnH6FOf82QnMiOHpE/nTMG++IiKE5Q+qo/oMvqYi3COZyEb
         WCmBYLWBhjwLV4AQMc4LuT9rRf6ZAh4UEiNb/5Usj114C1S88XaD/rbd8Q1YUgqTjcOM
         /X1WbRJrCOdIVefzlmBDqlxhrBlfsxe+wtu1T7YSE6fQqvECjOdN1P1c2A3KD8byDPY6
         uf/SF3XOmcIQhLG1fvnUshOvp3Pa6BEcp1oyvEDvEslw80Sz7KtzNt7Tfv9lIWlomMEd
         BOPXe+UKNuvyb5I0yYBKGKM4VDHpz2WfevretEMwZGbXLbBDlFyLIqMeq6zXlXTWOz5g
         AoBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=pyqp+8v36o9/xT6nZPdR6iUEamuIteJuro10bekx3SA=;
        b=Hon4Ku4wcTpaIdS+6FwAhrdlYT6xn63kt1FmPzXZjZUF0nPbFiRBhWaWkcDZQuelll
         +7xcgTMLVVkpnB5tdBVLeB2Bf9f/F2cHcXusXpUvjlXeCSwdk4PqozY+scH8YriguG7j
         fEhV/keq+oGtl5hgsQ3m7qMiPn7/aBUD+upajIE6SrtPjiYcQz7qGuS1AnC1KttQvp1F
         pByMFbuQbpT94jSTOWwSxS9Zgrd1e6ZFkooj+qmWuNKsAw9c/0fZwzR1Abg0U6H2Jfln
         H7ODReR/9Iq5ChOfBkwjl+FhrSK/lslDfqCW8+qCkFvpivikUSO20b4JTJkLFVd6KJS9
         F6SA==
X-Gm-Message-State: AG10YOTWtNmlgVpQuQ+ecJ98giXWLw6toUDtaJoXWrxrWuLL1WVsK8xMdSPrhmbd/10byT7A7TLImYDBuTPzCg==
MIME-Version: 1.0
X-Received: by 10.60.135.98 with SMTP id pr2mr33326801oeb.65.1455057638421;
 Tue, 09 Feb 2016 14:40:38 -0800 (PST)
Received: by 10.202.170.195 with HTTP; Tue, 9 Feb 2016 14:40:38 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602092334080.2066@localhost6.localdomain6>
References: <20160210013122.GA12148@janani-Inspiron-3521>
	<alpine.DEB.2.02.1602092300180.2066@localhost6.localdomain6>
	<37a3f0ea-26e5-4d78-8730-81b7ed756644@googlegroups.com>
	<alpine.DEB.2.02.1602092334080.2066@localhost6.localdomain6>
Date: Tue, 9 Feb 2016 17:40:38 -0500
Message-ID: <CANnt6X=xBEHw5q1U2fC9xOP+=2GSfrK4W58UHP_H3yDoCv8YTg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Use
 kmalloc_array instead of kmalloc
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=047d7b417921aa813c052b5e015e

--047d7b417921aa813c052b5e015e
Content-Type: text/plain; charset=UTF-8

The best solution would be to put:

>
> - kmalloc(sizeof(T)*F, FLAG)
> + kmalloc_array(F, sizeof(T), FLAG)
>
> where T is declared as a type metavariable.  This way one can see
> immediately that you have thought about the order in which to put the
> arguments.
>

Thanks, Julia. I will send another version for this

Janani.

>
> julia
>
> >
> > Janani
> >
> >       >
> >       > Signed-off-by: Janani Ravichandran <janani....@gmail.com>
> >       > ---
> >       > Changes since v1:
> >       >  * Corrected an error in commit message.
> >
> >       "an error" is not very explicit.
> >
> >       julia
> >
> >       >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
> >       >  1 file changed, 2 insertions(+), 2 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >       b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >       > index 28ad63a..fb344d1 100644
> >       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> >       > @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct
> >       ieee80211_device *ieee,
> >       >          bool                        bMatchWinStart = false,
> >       bPktInBuf = false;
> >       >          IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is
> >       %d,pTS->RxIndicateSeq is %d, WinSize is
> >       %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
> >       >
> >       > -        prxbIndicateArray = kmalloc(sizeof(struct
> >       ieee80211_rxb *) *
> >       > -                        REORDER_WIN_SIZE, GFP_KERNEL);
> >       > +        prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
> >       > +                        sizeof(struct ieee80211_rxb *),
> >       GFP_KERNEL);
> >       >          if (!prxbIndicateArray)
> >       >                  return;
> >       >
> >       > --
> >       > 2.5.0
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> >       Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> >       it, send an email to outreachy-kern...@googlegroups.com.
> >       > To post to this group, send email to
> >       outreach...@googlegroups.com.
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20160210013122.GA12148%4
> >       0janani-Inspiron-3521.
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/37a3f0ea-26e5-4d78-8730-
> > 81b7ed756644%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>

--047d7b417921aa813c052b5e015e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><span dir=3D"ltr"></span><span class=3D""></span>The best solution woul=
d be to put:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
<br>
- kmalloc(sizeof(T)*F, FLAG)<br>
+ kmalloc_array(F, sizeof(T), FLAG)<br>
<br>
where T is declared as a type metavariable.=C2=A0 This way one can see<br>
immediately that you have thought about the order in which to put the<br>
arguments.<br></blockquote><div><br></div><div>Thanks, Julia. I will send a=
nother version for this<br><br></div><div>Janani. <br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<br>
julia<br>
<div><div class=3D"h5"><br>
&gt;<br>
&gt; Janani<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Janani Ravichandran &lt;=
<a href=3D"mailto:janani....@gmail.com">janani....@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes since v1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0* Corrected an error in commit me=
ssage.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;an error&quot; is not very explicit.<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0drivers/staging/rtl8192u/ieee8021=
1/ieee80211_rx.c | 4 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A01 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8192u/i=
eee80211/ieee80211_rx.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/rtl8192u/ieee80211/ieee802=
11_rx.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 28ad63a..fb344d1 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8192u/ieee8021=
1/ieee80211_rx.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8192u/ieee8021=
1/ieee80211_rx.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -601,8 +601,8 @@ static void RxReord=
erIndicatePacket(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_device *ieee,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0bool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0bMatchWinStart =3D false,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bPktInBuf =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0IEEE80211_DEBUG(IEEE80211_DL_REORDER,&quot;%s(): Seq is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0%d,pTS-&gt;RxIndicateSeq is %d, WinSize is<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0%d\n&quot;,__func__,SeqNum,pTS-&gt;RxIndicat=
eSeq,WinSize);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0prxbIndicateArray =3D kmalloc(sizeof(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ieee80211_rxb *) *<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0REORDER_WIN_SIZE, GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0prxbIndicateArray =3D kmalloc_array(RECORDER_WIN_SIZE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sizeof(struct ieee80211_rxb *),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_KERNEL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (!prxbIndicateArray)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.5.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Google Groups &quot;outreachy-kernel&quot; g=
roup.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0it, send an email to <a href=3D"mailto:outre=
achy-kern...@googlegroups.com">outreachy-kern...@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:outreach...@googlegroups.c=
om">outreach...@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
thttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/20160=
210013122.GA12148%4" rel=3D"noreferrer" target=3D"_blank">groups.google.com=
/d/msgid/outreachy-kernel/20160210013122.GA12148%4</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A00janani-Inspiron-3521.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
</div></div>&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@=
googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/37a3f0ea-26e5-4d78-8730-" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-kernel/37a3f=
0ea-26e5-4d78-8730-</a><br>
&gt; 81b7ed756644%<a href=3D"http://40googlegroups.com" rel=3D"noreferrer" =
target=3D"_blank">40googlegroups.com</a>.<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; For more options, visit <a hre=
f=3D"https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blan=
k">https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt; </div></div></blockquote></div><br></div></div>

--047d7b417921aa813c052b5e015e--

