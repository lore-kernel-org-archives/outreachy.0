X-GM-THRID: 6329500500280475648
X-Received: by 10.98.205.131 with SMTP id o125mr16685401pfg.12.1473702420012;
        Mon, 12 Sep 2016 10:47:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls11551751otc.12.gmail; Mon, 12 Sep
 2016 10:46:59 -0700 (PDT)
X-Received: by 10.31.162.198 with SMTP id l189mr16738901vke.6.1473702419572;
        Mon, 12 Sep 2016 10:46:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id 83si1109006ywc.4.2016.09.12.10.46.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id b204so2814378qkc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=lKK9wyoPkqDXcbPgOH70d6N8Mdjiashr7LN2tILT+F8=;
        b=Yg8owFbTE1nHFVtOzvgVlUhSmqL1y/oJEz+cRGmX/hI4XZFfsm5/claQhgVtef+dMw
         IumWH/MF70LpQxqMYy99Nj3MNRRfGuKi95Jz3Npn/PACrU7fzCosIhf3L6t/ZqmrmnVe
         hGxzWqr0FJ/ih5T4NDN9HThcejDgpQ1wIIWLKVsz1J2NSiziK9zzOZgjgFZHGt7eFXg0
         uZDXeSD863aYJvj4jBHcNzApOshenW/RkA7Aw6BfPMjX6CNvLu2MxMBM6HnHj86jOIHf
         LMSEdyGzD5BsGx78EFkQ+JuHcHpky+/QO9mp6f4ftffiBGVsrQUoNhIa8f2YlNlWC0RP
         /+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lKK9wyoPkqDXcbPgOH70d6N8Mdjiashr7LN2tILT+F8=;
        b=kKCJLY2+jrSTeM5hDy0E2+hjqb2Lzvq6YDCRW7HXKCcuvpGw1l1ja9ML+nuRTWNHAs
         Mitl1oIQ5BhB57rftfyoNjRC18dS1vEV9Aj5ZYKYzGyeBjRU65CSTb97z3316Od1FnN9
         mifjn+Mwhe+aJMxy834GMZSEGK3VVZXiZAe2nO1ytDaJfS+MZp6/X8fG1XrIbM8kK37n
         9XOwsHmPDC0nPNUFtwXXxKvHO7ZyVXeohi8OvGrVLjTpvZHJ6KBjI9l1cmi4MwtxFcRO
         /V/OK6pJFFWyxNocKjkji4EtjaKUFLRJ0sJpRFK0m2kxhOh9mx8BaEpd0YauqygLYdRq
         XIvg==
X-Gm-Message-State: AE9vXwPNQA7nmdIPaiqNXTLtmXyaSTsptNkFm+N0NQrJxe+qwm1jeXSRkwS8gD1qEebvc0TPufviRC+QHoZGag==
X-Received: by 10.55.79.22 with SMTP id d22mr21822171qkb.95.1473702419309;
 Mon, 12 Sep 2016 10:46:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.151 with HTTP; Mon, 12 Sep 2016 10:46:28 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609121938240.29099@hadrien>
References: <20160912173343.11114-1-gs051095@gmail.com> <alpine.DEB.2.10.1609121938240.29099@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 12 Sep 2016 23:16:28 +0530
Message-ID: <CAOCi2DFUU3B+MF4NDtr=vqjOd4kZgFJfK9-SnoavzyAjnygsfQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Moving begin & end comment quotes to
 separate line
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	wsa+renesas@sang-engineering.com
Content-Type: multipart/alternative; boundary=001a114a7bfa35585b053c53158c

--001a114a7bfa35585b053c53158c
Content-Type: text/plain; charset=UTF-8

Thank you for your patience Julia! I'll keep all these pointers in mind
while sending the next patch. Should I send another patch with a new commit
message and subject?

Best,
gargi

On Mon, Sep 12, 2016 at 11:12 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 12 Sep 2016, Gargi Sharma wrote:
>
> > Changes made to ks7010/eap_packet.h lines 54,63,65,67,71,77 where the
> end quotes and
> > begin quotes for the multi line comment were not in a separate line.
>
> The commit message exceeds 80 characters per line.
>
> Actually, it's not necessary to put the line numbers that are modified.
> That can be seen from the patch itself.  The idea instead is to put some
> information in the subject line about what files the patch affects.  Then
> the maintainer can orient himself before looking at the actual change.
>
> You can find what should be done using git long --oneline file
> For example, for your file:
>
> git log --oneline drivers/staging/ks7010/eap_packet.h
>
> gives:
>
> c5d9a03 staging: ks7010: cleanup file headers
> 5d7696b staging: ks7010: indent eap_packet.h
> 13a9930 staging: ks7010: add driver from Nanonote extra-repository
>
> So your subject line could be:
>
> [PATCH] staging: ks7010: adjust comment begin and end markers
>
> Your subject text is also OK, but it is a bit more verbose.  It is better
> to put the smallest number of words that will convey the idea, and put the
> full details in the main log message.
>
> julia
>
>
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/ks7010/eap_packet.h | 21 ++++++++++++++-------
> >  1 file changed, 14 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/eap_packet.h
> b/drivers/staging/ks7010/eap_packet.h
> > index 16a392a..ad5dff8 100644
> > --- a/drivers/staging/ks7010/eap_packet.h
> > +++ b/drivers/staging/ks7010/eap_packet.h
> > @@ -51,24 +51,31 @@ enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN =
> 2,
> >  struct ieee802_1x_eapol_key {
> >       unsigned char type;
> >       unsigned short key_length;
> > -     /* does not repeat within the life of the keying material used to
> > -      * encrypt the Key field; 64-bit NTP timestamp MAY be used here */
> > +     /*
> > +      * does not repeat within the life of the keying material used to
> > +      * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> > +      */
> >       unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
> >       unsigned char key_iv[IEEE8021X_KEY_IV_LEN];     /*
> cryptographically random number */
> >       unsigned char key_index;        /* key flag in the most
> significant bit:
> >                                        * 0 = broadcast (default key),
> >                                        * 1 = unicast (key mapping key);
> key index is in the
> > -                                      * 7 least significant bits */
> > -     /* HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key
> as
> > -      * the key */
> > +                                      * 7 least significant bits
> > +                                      */
> > +     /*
> > +      * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key
> as
> > +      * the key
> > +      */
> >       unsigned char key_signature[IEEE8021X_KEY_SIGN_LEN];
> >
> > -     /* followed by key: if packet body length = 44 + key length, then
> the
> > +     /*
> > +      * followed by key: if packet body length = 44 + key length, then
> the
> >        * key field (of key_length bytes) contains the key in encrypted
> form;
> >        * if packet body length = 44, key field is absent and key_length
> >        * represents the number of least significant octets from
> >        * MS-MPPE-Send-Key attribute to be used as the keying material;
> > -      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key */
> > +      * RC4 key used in encryption = Key-IV + MS-MPPE-Recv-Key
> > +      */
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
> msgid/outreachy-kernel/20160912173343.11114-1-gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--001a114a7bfa35585b053c53158c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for your patience Julia! I&#39;ll keep all these=
 pointers in mind while sending the next patch. Should I send another patch=
 with a new commit message and subject?<div><br></div><div>Best,</div><div>=
gargi</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Sep 12, 2016 at 11:12 PM, Julia Lawall <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
<br>
On Mon, 12 Sep 2016, Gargi Sharma wrote:<br>
<br>
&gt; Changes made to ks7010/eap_packet.h lines 54,63,65,67,71,77 where the =
end quotes and<br>
&gt; begin quotes for the multi line comment were not in a separate line.<b=
r>
<br>
</span>The commit message exceeds 80 characters per line.<br>
<br>
Actually, it&#39;s not necessary to put the line numbers that are modified.=
<br>
That can be seen from the patch itself.=C2=A0 The idea instead is to put so=
me<br>
information in the subject line about what files the patch affects.=C2=A0 T=
hen<br>
the maintainer can orient himself before looking at the actual change.<br>
<br>
You can find what should be done using git long --oneline file<br>
For example, for your file:<br>
<br>
git log --oneline drivers/staging/ks7010/eap_<wbr>packet.h<br>
<br>
gives:<br>
<br>
c5d9a03 staging: ks7010: cleanup file headers<br>
5d7696b staging: ks7010: indent eap_packet.h<br>
13a9930 staging: ks7010: add driver from Nanonote extra-repository<br>
<br>
So your subject line could be:<br>
<br>
[PATCH] staging: ks7010: adjust comment begin and end markers<br>
<br>
Your subject text is also OK, but it is a bit more verbose.=C2=A0 It is bet=
ter<br>
to put the smallest number of words that will convey the idea, and put the<=
br>
full details in the main log message.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Signed-off-by: Gargi Sharma &lt;<a href=3D"mailto:gs051095@gmail.com">=
gs051095@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/ks7010/eap_<wbr>packet.h | 21 ++++++++++++++----=
---<br>
&gt;=C2=A0 1 file changed, 14 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/ks7010/eap_<wbr>packet.h b/drivers/stagin=
g/ks7010/eap_<wbr>packet.h<br>
&gt; index 16a392a..ad5dff8 100644<br>
&gt; --- a/drivers/staging/ks7010/eap_<wbr>packet.h<br>
&gt; +++ b/drivers/staging/ks7010/eap_<wbr>packet.h<br>
&gt; @@ -51,24 +51,31 @@ enum { EAPOL_KEY_TYPE_RC4 =3D 1, EAPOL_KEY_TYPE_RS=
N =3D 2,<br>
&gt;=C2=A0 struct ieee802_1x_eapol_key {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char type;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned short key_length;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0/* does not repeat within the life of the keying =
material used to<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * encrypt the Key field; 64-bit NTP timestamp MA=
Y be used here */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * does not repeat within the life of the keying =
material used to<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * encrypt the Key field; 64-bit NTP timestamp MA=
Y be used here<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
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
&gt; -=C2=A0 =C2=A0 =C2=A0/* HMAC-MD5 message integrity check computed with=
 MS-MPPE-Send-Key as<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 * the key */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * 7 least s=
ignificant bits<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * HMAC-MD5 message integrity check computed with=
 MS-MPPE-Send-Key as<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * the key<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned char key_signature[IEEE8021X_KEY_<w=
br>SIGN_LEN];<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0/* followed by key: if packet body length =3D 44 =
+ key length, then the<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * followed by key: if packet body length =3D 44 =
+ key length, then the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * key field (of key_length bytes) contains =
the key in encrypted form;<br>
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
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
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
gle.com/d/msgid/outreachy-kernel/20160912173343.11114-1-gs051095%40gmail.co=
m" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>ms=
gid/outreachy-kernel/<wbr>20160912173343.11114-1-<wbr>gs051095%40gmail.com<=
/a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a114a7bfa35585b053c53158c--

