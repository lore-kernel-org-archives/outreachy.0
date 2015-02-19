X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.45.197 with SMTP id p5mr278817lbm.18.1424315146969;
        Wed, 18 Feb 2015 19:05:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.165 with SMTP id g5ls83329lae.68.gmail; Wed, 18 Feb
 2015 19:05:46 -0800 (PST)
X-Received: by 10.112.171.37 with SMTP id ar5mr272415lbc.16.1424315146505;
        Wed, 18 Feb 2015 19:05:46 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ta1si6309506wic.1.2015.02.18.19.05.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 19:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so45222262wib.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 19:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Tfxhg6JRBV1fsP6mZptAFTLx1mIaEFYTZEA526Mpwwo=;
        b=Pb1Nzbhf1gC4937/J/+8KfNcocUV/vqVCkDGdg/9Ds0ZO9DtBzVxAJIfu8P8IWGJXb
         JoZYcjFyjosBB2WrjJmrBOb+wozxTHroeFaioBi/jCM8EEHz6LHBlyWAh2BSS1H2+ISs
         EYcPSqIxsvfX5CrINPnIzdR6cAkeXYANeLlWYWA8HFGm5AeAX3lrfi52CexSnokxwY3q
         HFnp6mTy6fn80m+GfzX6CKVXm93YsIcw5+ueyAftUfEGeVQmbRJPzhexFs7iQhphRBQs
         yAJ7Ixm02tEffOgX1HnszKGT4h4saX0ZQvs7zpIifiEG3e5Dvg1PB5lg2jA8YbTgitOu
         iZ8w==
MIME-Version: 1.0
X-Received: by 10.180.75.70 with SMTP id a6mr5862920wiw.19.1424315146388; Wed,
 18 Feb 2015 19:05:46 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Wed, 18 Feb 2015 19:05:46 -0800 (PST)
In-Reply-To: <54E512AD.4040303@gmail.com>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
	<54E392AB.2020405@gmail.com>
	<CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>
	<57794805.aPSQI7lfOj@wuerfel>
	<54E4C770.8090301@gmail.com>
	<CAK-LDbJAJGtD=4tw7D8v0AT-RBiX-Hdn0drK01UqfnhNdgbt8A@mail.gmail.com>
	<54E512AD.4040303@gmail.com>
Date: Thu, 19 Feb 2015 08:35:46 +0530
Message-ID: <CAK-LDbLMqPrkKyVuu8TX6jx4xXZom7J-R9gvR0Hi+NOBBFJyTw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Arnd Bergmann <arnd@arndb.de>
Content-Type: multipart/alternative; boundary=f46d04389521594a1f050f6836de

--f46d04389521594a1f050f6836de
Content-Type: text/plain; charset=UTF-8

On Feb 19, 2015 4:01 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>
> On 02/18/15 13:08, Vaishali Thakkar wrote:
> > On Wed, Feb 18, 2015 at 10:40 PM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:
> >> On 02/18/15 05:50, Arnd Bergmann wrote:
> >>> On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar wrote:
> >>>> On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <
jes.sorensen@gmail.com> wrote:
> >>>>> On 02/17/15 05:11, Vaishali Thakkar wrote:
> >>>>> Your use of put_unaligned_le16() if good, the main issue is the
above
> >>>>> assignment as you mention. Since you got rid of the tim_bitmap_le =
> >>>>> portion, the *dst_ie++ = is going to assigning random garbage since
> >>>>> tim_bitmap_le is not set.
> >>>>>
> >>>>> One way to solve the problem would be to make that line say
> >>>>>
> >>>>>                 if (tim_ielen == 4) {
> >>>>> -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
> >>>>> +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
> >>>>>                 } else if (tim_ielen == 5) {
> >>>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
> >>>>> +                       put_unaligned_le16(pstapriv->tim_bitmap,
dst_ie);
> >>>>>
> >>>>> and hopefully eliminate the tim_bitmap_le variable completely.
> >>>>
> >>>> Yes. This makes sense. And as there is only one use of tim_bitmap_le
> >>>> variable this will eliminate it completely. Should I go for v2 now,
with this
> >>>> change?? I have one more such case in rtl8723au driver also. I think
now
> >>>> I can go for it also.
> >>>
> >>> Yes, please submit the change for both drivers as separate patches.
> >>
> >> As Arnd says, please use two patches. The reason is that the two
drivers
> >> are completely independent and also have separate maintainers (me
owning
> >> rtl8723au fwiw).
> >
> > Sorry I didn't get you.
> >
> > Yes, I know both drivers are independent. So, I will send 2 different
patches.
> > Here, I sent only one patch for rtl8188eu. I didn't send any patch for
> > rtl8723au.
> > I am working on it and supposed to send it now.
>
> Sorry if I wasn't clear here.
>
> The key is to make the changes in two commits. In general you can post
> them as part of a multi-commit patch set if you are fixing something in
> a large number of places, or changing an API etc. For more independent
> changes like these, posting them individually is preferred.
>
> I hope this makes more sense.

Yes. Ok. I will send this patch as a series of patches. One for
put_unaligned_le16

function and other one for removing use of variable.

> Jes
>

--f46d04389521594a1f050f6836de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p><br>
On Feb 19, 2015 4:01 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"mailto:jes=
.sorensen@gmail.com" target=3D"_blank">jes.sorensen@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; On 02/18/15 13:08, Vaishali Thakkar wrote:<br>
&gt; &gt; On Wed, Feb 18, 2015 at 10:40 PM, Jes Sorensen &lt;<a href=3D"mai=
lto:jes.sorensen@gmail.com" target=3D"_blank">jes.sorensen@gmail.com</a>&gt=
; wrote:<br>
&gt; &gt;&gt; On 02/18/15 05:50, Arnd Bergmann wrote:<br>
&gt; &gt;&gt;&gt; On Wednesday 18 February 2015 07:02:34 Vaishali Thakkar w=
rote:<br>
&gt; &gt;&gt;&gt;&gt; On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen &lt;<a=
 href=3D"mailto:jes.sorensen@gmail.com" target=3D"_blank">jes.sorensen@gmai=
l.com</a>&gt; wrote:<br>
&gt; &gt;&gt;&gt;&gt;&gt; On 02/17/15 05:11, Vaishali Thakkar wrote:<br>
&gt; &gt;&gt;&gt;&gt;&gt; Your use of put_unaligned_le16() if good, the mai=
n issue is the above<br>
&gt; &gt;&gt;&gt;&gt;&gt; assignment as you mention. Since you got rid of t=
he tim_bitmap_le =3D<br>
&gt; &gt;&gt;&gt;&gt;&gt; portion, the *dst_ie++ =3D is going to assigning =
random garbage since<br>
&gt; &gt;&gt;&gt;&gt;&gt; tim_bitmap_le is not set.<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; One way to solve the problem would be to make tha=
t line say<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (tim_ielen =3D=3D 4) {<br>
&gt; &gt;&gt;&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*dst_ie++ =3D *(u8 *)&amp;tim_bitmap_le;=
<br>
&gt; &gt;&gt;&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*dst_ie++ =3D pstapriv-&gt;tim_bitmap &a=
mp; 0xff;<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0} else if (tim_ielen =3D=3D 5) {<br>
&gt; &gt;&gt;&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(dst_ie, &amp;tim_bitmap_le, 2);<b=
r>
&gt; &gt;&gt;&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0put_unaligned_le16(pstapriv-&gt;tim_bitm=
ap, dst_ie);<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; and hopefully eliminate the tim_bitmap_le variabl=
e completely.<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; Yes. This makes sense. And as there is only one use o=
f tim_bitmap_le<br>
&gt; &gt;&gt;&gt;&gt; variable this will eliminate it completely. Should I =
go for v2 now, with this<br>
&gt; &gt;&gt;&gt;&gt; change?? I have one more such case in rtl8723au drive=
r also. I think now<br>
&gt; &gt;&gt;&gt;&gt; I can go for it also.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Yes, please submit the change for both drivers as separat=
e patches.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; As Arnd says, please use two patches. The reason is that the =
two drivers<br>
&gt; &gt;&gt; are completely independent and also have separate maintainers=
 (me owning<br>
&gt; &gt;&gt; rtl8723au fwiw).<br>
&gt; &gt;<br>
&gt; &gt; Sorry I didn&#39;t get you.<br>
&gt; &gt;<br>
&gt; &gt; Yes, I know both drivers are independent. So, I will send 2 diffe=
rent patches.<br>
&gt; &gt; Here, I sent only one patch for rtl8188eu. I didn&#39;t send any =
patch for<br>
&gt; &gt; rtl8723au.<br>
&gt; &gt; I am working on it and supposed to send it now.<br>
&gt;<br>
&gt; Sorry if I wasn&#39;t clear here.<br>
&gt;<br>
&gt; The key is to make the changes in two commits. In general you can post=
<br>
&gt; them as part of a multi-commit patch set if you are fixing something i=
n<br>
&gt; a large number of places, or changing an API etc. For more independent=
<br>
&gt; changes like these, posting them individually is preferred.<br>
&gt;<br>
&gt; I hope this makes more sense.</p>
<p>Yes. Ok. I will send this patch as a series of patches. One for put_unal=
igned_le16</p><p>function and other one for removing use of variable.=C2=A0=
</p>
<p>&gt; Jes<br>
&gt;<br>
</p>
</div>

--f46d04389521594a1f050f6836de--

