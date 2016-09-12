X-GM-THRID: 6329487812602101760
X-Received: by 10.66.184.168 with SMTP id ev8mr7475903pac.43.1473700602233;
        Mon, 12 Sep 2016 10:16:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.178 with SMTP id h47ls10967193otc.37.gmail; Mon, 12 Sep
 2016 10:16:41 -0700 (PDT)
X-Received: by 10.31.170.82 with SMTP id t79mr16643829vke.2.1473700601826;
        Mon, 12 Sep 2016 10:16:41 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id y77si1462452ywd.7.2016.09.12.10.16.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id n66so12231191qkf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=81XSCaPkAUQyk4ub9QjP9BCIJW275bstTeWQ9fddxB4=;
        b=y1W5meRu7Gn+D4XhJpaF8aO7F5z48YfCMNgdQ0xB8f0ymP3tezgQQTYJLNY7tumE79
         UsFOmHWd0b9exoL3xvXlfUxR7Mlxe/KJjE8/ocDVUwOPzAginaq+KjPDMN0dOnFshavT
         G4QWyzi5Oaly2iDCL8C8uzvVwIHHQr5NoVDnUBGS287wxolQOuG7lD+fJbVPD/xYKp9d
         /EusGTMOu0icvg9pm1iGpkrDU+eoC6Bbcs4R859rim5GEnB2SwLBMNBQtHl0J9whlL1m
         FXt1EUXrahASr/uGrHofaJwLKirZT9A9jRiEdIQOXG+HDahSKrgDB5t+3zfNhWLVcR8t
         kPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=81XSCaPkAUQyk4ub9QjP9BCIJW275bstTeWQ9fddxB4=;
        b=OQq2V43NNQY9oiU0EElJtFXiekmls8IEV8un+boj2g2jOgXbhUlsQr131Kbps4P1kt
         A+S0SC0qouHgGyyPFsqHVQOfFw6zJ5mlo0xRHr93BLpFT4KrPd75ezHJFn7hcgkTeuum
         YbuSD3Xa1GOtTvb5vS3pO+9z0jGfxeBr/0k31DD/KnkztXWU3m6BF3S1rY06Ftndovl2
         TMjGfF09rhHxCvyKlemWIxXl4CXtNlAnZkX2aDyyGVfLbZZKToiW2r+q2eXl3b3Aq6+o
         uF4bEgC/HV2FQBTTPfO8ngnaT5sIlI89Oq1oeKHvvA4tFYN2pFy1A6SyQqemM06cAbRC
         UxsA==
X-Gm-Message-State: AE9vXwOTirVuNw1XE1NmImTfbisqi1WHkIGMnQAWs+6Nldb4Uxi+19781I9pj1uiIjkCdpqbQrV2u9Qq7VHe2w==
X-Received: by 10.55.79.22 with SMTP id d22mr21640795qkb.95.1473700601612;
 Mon, 12 Sep 2016 10:16:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.151 with HTTP; Mon, 12 Sep 2016 10:16:11 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609121851050.29099@hadrien>
References: <20160912164440.9174-1-gs051095@gmail.com> <alpine.DEB.2.10.1609121851050.29099@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 12 Sep 2016 22:46:11 +0530
Message-ID: <CAOCi2DFMwY9+WPzoKMCLC4LNx7cG6U461nVAVauskRgRMk1a2w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Moved the trailing comment end quote
 to next line.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	wsa+renesas@sang-engineering.com
Content-Type: multipart/alternative; boundary=001a114a7bfadd95c9053c52a824

--001a114a7bfadd95c9053c52a824
Content-Type: text/plain; charset=UTF-8

Noted the mistakes. Sending a new patch fixing them.

Thanks!
Gargi

On Mon, Sep 12, 2016 at 10:25 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> Actually, the From name in your message should be the same as in your
> Signed off by line, which should be your real name.
>
> On Mon, 12 Sep 2016, gs0510 wrote:
>
> > Checkpatch displays error that the comment endings should be in separate
> > line, should not end in the same line as the comment.
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/ks7010/eap_packet.h | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/eap_packet.h
> b/drivers/staging/ks7010/eap_packet.h
> > index 16a392a..0a9ab097 100644
> > --- a/drivers/staging/ks7010/eap_packet.h
> > +++ b/drivers/staging/ks7010/eap_packet.h
> > @@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {
> >       unsigned char type;
> >       unsigned short key_length;
> >       /* does not repeat within the life of the keying material used to
> > -      * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> > +      * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> > +     */
>
> It doesn't look like this line is lines up properly with the others.
> Also, the first /* should be on a separate line too.
>
> julia
>
> >       unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
> >       unsigned char key_iv[IEEE8021X_KEY_IV_LEN];     /*
> cryptographically random number */
> >       unsigned char key_index;        /* key flag in the most
> significant bit:
> >                                        * 0 = broadcast (default key),
> >                                        * 1 = unicast (key mapping key);
> key index is in the
> > -                                      * 7 least significant bits */
> > +                                      * 7 least significant bits
> > +                                      */
> >       /* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key
> as
> > -      * the key */
> > +      * the key
> > +     */
> >       unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
> >
> >       /* followed by key: if packet body length = 44 + key length, then
> the
> > @@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {
> >        * if packet body length = 44, key field is absent and key_length
> >        * represents the number of least significant octets from
> >        * MS-MPPE-Send-Key attribute to be used as the keying material;
> > -      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
> > +      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
> > +     */
> >  } __attribute__ ((packed));
> >
> >  #define WPA_NONCE_LEN 32
> > --
> > 2.9.2
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160912164440.9174-1-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114a7bfadd95c9053c52a824
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Noted the mistakes. Sending a new patch fixing them.<div><=
br></div><div>Thanks!</div><div>Gargi</div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Mon, Sep 12, 2016 at 10:25 PM, Julia Law=
all <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D=
"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">Actually, the From name in your message should be the same as in=
 your<br>
Signed off by line, which should be your real name.<br>
<span class=3D""><br>
On Mon, 12 Sep 2016, gs0510 wrote:<br>
<br>
&gt; Checkpatch displays error that the comment endings should be in separa=
te<br>
&gt; line, should not end in the same line as the comment.<br>
&gt;<br>
&gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">=
gs051095@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/ks7010/eap_<wbr>packet.h | 12 ++++++++----<br>
&gt;=C2=A0 1 file changed, 8 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/ks7010/eap_<wbr>packet.h b/drivers/stagin=
g/ks7010/eap_<wbr>packet.h<br>
&gt; index 16a392a..0a9ab097 100644<br>
&gt; --- a/drivers/staging/ks7010/eap_<wbr>packet.h<br>
&gt; +++ b/drivers/staging/ks7010/eap_<wbr>packet.h<br>
&gt; @@ -52,15 +52,18 @@ struct ieee802_1x_eapol_key {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char type;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short key_length;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* does not repeat within the life of the ke=
ying material used to<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * encrypt the Key field; 64-bit NTP timestamp MA=
Y be used here */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * encrypt the Key field; 64-bit NTP timestamp MA=
Y be used here<br>
&gt; +=C2=A0 =C2=A0 =C2=A0*/<br>
<br>
</span>It doesn&#39;t look like this line is lines up properly with the oth=
ers.<br>
Also, the first /* should be on a separate line too.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char replay_counter[IEEE8021X_<wbr>=
REPLAY_COUNTER_LEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char key_iv[IEEE8021X_KEY_IV_LEN];=
=C2=A0 =C2=A0 =C2=A0/* cryptographically random number */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char key_index;=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 /* key flag in the most significant bit:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * 0 =
=3D broadcast (default key),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * 1 =
=3D unicast (key mapping key); key index is in the<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * 7 least s=
ignificant bits */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * 7 least s=
ignificant bits<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* HMAC-MD5 message integrity check computed=
 with MS-MPPE-Send-Key as<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * the key */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * the key<br>
&gt; +=C2=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char key_signature[IEEE8021X_KEY_<w=
br>SIGN_LEN];<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* followed by key: if packet body length =
=3D 44 + key length, then the<br>
&gt; @@ -68,7 +71,8 @@ struct ieee802_1x_eapol_key {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * if packet body length =3D 44, key field i=
s absent and key_length<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * represents the number of least significan=
t octets from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * MS-MPPE-Send-Key attribute to be used as =
the keying material;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * RC4 key used in encryption =3D Key-IV + MS-MPP=
E-Recv-Key */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * RC4 key used in encryption =3D Key-IV + MS-MPP=
E-Recv-Key<br>
&gt; +=C2=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 } __attribute__ ((packed));<br>
&gt;<br>
&gt;=C2=A0 #define WPA_NONCE_LEN 32<br>
&gt; --<br>
&gt; 2.9.2<br>
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
gle.com/d/msgid/outreachy-kernel/20160912164440.9174-1-gs051095%40gmail.com=
" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msg=
id/outreachy-kernel/<wbr>20160912164440.9174-1-<wbr>gs051095%40gmail.com</a=
>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114a7bfadd95c9053c52a824--

