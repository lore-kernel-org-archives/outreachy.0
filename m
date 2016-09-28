X-GM-THRID: 6335483864335515648
X-Received: by 10.28.29.13 with SMTP id d13mr728913wmd.19.1475096042166;
        Wed, 28 Sep 2016 13:54:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.18 with SMTP id u18ls46883wmd.14.canary; Wed, 28 Sep
 2016 13:54:01 -0700 (PDT)
X-Received: by 10.194.175.166 with SMTP id cb6mr1880632wjc.15.1475096041473;
        Wed, 28 Sep 2016 13:54:01 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id e21si777564wmc.2.2016.09.28.13.54.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id b71so3792664lfg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 13:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=K9iIUONKgOCxBDtLQUpsxFwVC761deo9ZpMqBNyOT2s=;
        b=XdZ0uv28zg3yeA/kK45ygY+vWpqh9BdVj9TVuF6bmBNsx/Unm83zA2kO2EZQtg0qB4
         IXC+BUBsPmQblMnui+sZeRSn1vWcReDp+CzNdoMXzSSGaTQMzQKHLLZposzfxaB3gJsG
         r0W6xDCW9Q8I1ntA6Bh7ygRAkFPbqWDGOVaxvEar6ekZLGaC7tEpgXcMCiAv5nYlNLnX
         1JQNH5zZkf0Ap423FXV3KH3vX+L/CFfSMK592sdvc8l573Z0HQM8ar2GmLSPM7kuhJmV
         fz8XH780jIZVXaDTIOKnyYRL0hOjTvpG/DTV8F98uG85hJQGzWK+iBpNVS5D8XnGgYZe
         oSIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=K9iIUONKgOCxBDtLQUpsxFwVC761deo9ZpMqBNyOT2s=;
        b=V0oNiOP3NJR8Lspdkwdm2dwcyqmbWc3sK0kT70qDI7QxH5SrqjLS3Ju5U0RxTnEBQg
         guevTTtVh8v4NyR5dCZWfOyxeWX2wYVRsVJErSkCLqNfpuUmKgTNj4JDcaS2PHKDokYE
         SIeBtNeVCfhSnwJKpRRwLpBchYSP6/+QmqW+iL/IaML/zSIMjzkSqFanY+jJhVbe14lr
         hP4Mzemn5hz8vYsV+JgSKXX4t+WNNy9aTqvpzREo8uqmt+puWfd1sxNvUvgaIz3na2Zv
         ll4IQKK+QCWLX/gPiU857ZXsXyOzgOocg79I3G668okQngxer4plVNDwiQNgUNf0DcNj
         tjUw==
X-Gm-Message-State: AE9vXwPeVULTxb0uR1OkZDzSBmnKSm9YtjHg1k6V4urbphjzwtfrYigffyc1bMOKaVsC9ond1xAKemYtWoNr8g==
X-Received: by 10.25.167.209 with SMTP id q200mr13179013lfe.122.1475096041141;
 Wed, 28 Sep 2016 13:54:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.59.103 with HTTP; Wed, 28 Sep 2016 13:54:00 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609282247380.3211@hadrien>
References: <20160928203302.GA19044@fireworks> <alpine.DEB.2.10.1609282247380.3211@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Wed, 28 Sep 2016 23:54:00 +0300
Message-ID: <CALta04xP+sSdDcU7zMffUmWODwp5ScMV-+DBXAjgHC0__MvexA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: rtw_xmit:
 Move constant of the right side
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary=001a114030088aba8d053d978f36

--001a114030088aba8d053d978f36
Content-Type: text/plain; charset=UTF-8

Yes, I am working on this :)

Georgiana

On 28 September 2016 at 23:48, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 28 Sep 2016, Georgiana Rodica Chelu wrote:
>
> > Constants should be on the right side of comparisons.
> >
> > Issue found by checkpatch.pl script.
> >
> > Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
> I wonder if there is some more meaningful way to describe 0x888e.
>
> julia
>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > index 1d2817b..1392899 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> > @@ -451,14 +451,14 @@ static s32 update_attrib(struct adapter *padapter,
> struct sk_buff *pkt, struct p
> >
> >       pattrib->pktlen = pktfile.pkt_len;
> >
> > -     if (ETH_P_IP == pattrib->ether_type) {
> > +     if (pattrib->ether_type == ETH_P_IP) {
> >               /*  The following is for DHCP and ARP packet, we use cck1M
> to tx these packets and let LPS awake some time */
> >               /*  to prevent DHCP protocol fail */
> >               u8 tmp[24];
> >               _rtw_pktfile_read(&pktfile, &tmp[0], 24);
> >               pattrib->dhcp_pkt = 0;
> >               if (pktfile.pkt_len > 282) {/* MINIMUM_DHCP_PACKET_SIZE) {
> */
> > -                     if (ETH_P_IP == pattrib->ether_type) {/*  IP
> header */
> > +                     if (pattrib->ether_type == ETH_P_IP) {/*  IP
> header */
> >                               if (((tmp[21] == 68) && (tmp[23] == 67)) ||
> >                                   ((tmp[21] == 67) && (tmp[23] == 68))) {
> >                                       /*  68 : UDP BOOTP client */
> > @@ -469,7 +469,7 @@ static s32 update_attrib(struct adapter *padapter,
> struct sk_buff *pkt, struct p
> >                               }
> >                       }
> >               }
> > -     } else if (0x888e == pattrib->ether_type) {
> > +     } else if (pattrib->ether_type == 0x888e) {
> >               DBG_88E_LEVEL(_drv_info_, "send eapol packet\n");
> >       }
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160928203302.GA19044%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114030088aba8d053d978f36
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, I am working on this :)<br><br></div>Georgiana<b=
r></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 28 Sep=
tember 2016 at 23:48, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:=
julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Wed, 28 Sep 2016, Georgiana Rodica Chelu wrote:<br>
<br>
&gt; Constants should be on the right side of comparisons.<br>
&gt;<br>
&gt; Issue found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" tar=
get=3D"_blank">checkpatch.pl</a> script.<br>
&gt;<br>
&gt; Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.=
chelu93@gmail.com">georgiana.chelu93@gmail.com</a>&gt;<br>
<br>
</span>Acked-by: Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">j=
ulia.lawall@lip6.fr</a>&gt;<br>
<br>
I wonder if there is some more meaningful way to describe 0x888e.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c b/drivers/=
staging/rtl8188eu/<wbr>core/rtw_xmit.c<br>
&gt; index 1d2817b..1392899 100644<br>
&gt; --- a/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c<br>
&gt; +++ b/drivers/staging/rtl8188eu/<wbr>core/rtw_xmit.c<br>
&gt; @@ -451,14 +451,14 @@ static s32 update_attrib(struct adapter *padapte=
r, struct sk_buff *pkt, struct p<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pattrib-&gt;pktlen =3D pktfile.pkt_len;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (ETH_P_IP =3D=3D pattrib-&gt;ether_type) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (pattrib-&gt;ether_type =3D=3D ETH_P_IP) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 The fol=
lowing is for DHCP and ARP packet, we use cck1M to tx these packets and let=
 LPS awake some time */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 to prev=
ent DHCP protocol fail */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u8 tmp[24];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_rtw_pktfile_rea=
d(&amp;pktfile, &amp;tmp[0], 24);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pattrib-&gt;dhcp=
_pkt =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pktfile.pkt_=
len &gt; 282) {/* MINIMUM_DHCP_PACKET_SIZE) { */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (ETH_P_IP =3D=3D pattrib-&gt;ether_type) {/*=C2=A0 IP header */<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (pattrib-&gt;ether_type =3D=3D ETH_P_IP) {/*=C2=A0 IP header */<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (((tmp[21] =3D=3D 68) &amp;&amp=
; (tmp[23] =3D=3D 67)) ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0((tmp[21] =3D=3D 67)=
 &amp;&amp; (tmp[23] =3D=3D 68))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=
=A0 68 : UDP BOOTP client */<br>
&gt; @@ -469,7 +469,7 @@ static s32 update_attrib(struct adapter *padapter,=
 struct sk_buff *pkt, struct p<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (0x888e =3D=3D pattrib-&gt;ether_type) =
{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else if (pattrib-&gt;ether_type =3D=3D 0x888e) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_88E_LEVEL(_d=
rv_info_, &quot;send eapol packet\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20160928203302.GA19044%40fireworks" rel=3D=
"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/outre=
achy-kernel/<wbr>20160928203302.GA19044%<wbr>40fireworks</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114030088aba8d053d978f36--

