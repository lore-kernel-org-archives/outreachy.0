X-GM-THRID: 6473105457256857600
X-Received: by 10.129.113.132 with SMTP id m126mr1343010ywc.125.1508339705615;
        Wed, 18 Oct 2017 08:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.89.138 with SMTP id n132ls343453ywb.42.gmail; Wed, 18 Oct
 2017 08:15:04 -0700 (PDT)
X-Received: by 10.129.112.206 with SMTP id l197mr1353544ywc.40.1508339704827;
        Wed, 18 Oct 2017 08:15:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508339704; cv=none;
        d=google.com; s=arc-20160816;
        b=mxGok1nAp337L5EEvF9xPbAxAfhMiabhz8i6oG5HIbWaHwgbppqcZMErh763Q5HIxk
         tco2ctK+JpUckXEuoU9NrJDgYZ8RaT+KcJvcd/t9ygARucjXpSGahtHNjBfx3X3SbvVk
         rjW9G2q5Pj1J2hxG/wvUOFpwDr42oWdfIRca9HV70j4sW+PYxuZLz9xi2+0sPMwuGKg6
         gh6ZxO10R27MXqP42VXv3PZ5SL+CM6eLdb/eksvFBuRZEcp9TxDDsJZGN1vAZSwG25Wp
         jOMC3QzBesqbMqQcELfmV10TFRQTjsnOAJJRzLcpRqArGzqq2GgxJf19wiRuQHh/osuq
         VuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=eLgaRyEwdGPXZMzLj8N9Jome905ZYYvZFIGbbroChsU=;
        b=bWfku4IqRyr/d/4Q+l8nWjCcDYUCyVVuULuoyAnSpLOWlsWLfw1ZbPIthqYuyxtUJL
         Hj5gLdTUOhzSQQh1X4q2xXU7TGvQ5LYlHU63Bv1eFS707hMTEQhGnP/7iJ+JnQy1sa2M
         y533Opq37HjiHN6FdqSChZb5OaiGicHJnYBMXj0icJqEYQKs/EYuTDoevi5DIje3MiA4
         /FgsyC0TrCygsQovWdY04iB+8rrs1Ji8l8XDK9TEsJ8F53MQLuRi8NvULH7p5LaDxVtD
         4EhySniMiZPNeJwAcl1sfUqBX+p2TTyIoZH4aildHC6CcVR6ZV+MPD5mQ7TyJa15xCUc
         RMMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oxHBIy4n;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id g2si612051ywa.2.2017.10.18.08.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 08:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oxHBIy4n;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id m189so6632718qke.4
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 08:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=eLgaRyEwdGPXZMzLj8N9Jome905ZYYvZFIGbbroChsU=;
        b=oxHBIy4nfW4tkHyxRIS6vChziweFED3H6vLwesMqrtnBT8EkAw9ZV/VQ4lF29X6j/v
         xsCP8Ap2moEpsL62cR+YddQ14yFf5zkfUobpzynj5W66EWM3yjAdDSU0J/96eL6gLFFm
         fMzN3gCSFlqSsbJyKfW5s7LY9nGJBwsSkAaVQQzxYBVBj91f762eXZ1JIVOTNEJqBcOR
         6XIvPm4C/ydngg1oYxvOIx+4r9NqzgID/oETUEDX7/xLNGDDEJFhUYcdmjMbUCs2nKLM
         iBqfcMUYZ69YdKuDI4moS785+LVKy5PiHFNsC3o3H9uJNQMtuWrN/YBqrb8AqRy27bv5
         p3JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=eLgaRyEwdGPXZMzLj8N9Jome905ZYYvZFIGbbroChsU=;
        b=aguAmeS3AUgoelM4/dq+PUV+gd6LKz5dwQy0LopkZ9G6d9dCRPhf7Dj0sWbihHG0ef
         TIF+ToFORjXCRpNc0UZkaL2IBdn0L1UoGz/R0t+kK/b1DcdhGsLuRnMeZkJKbbojo4qu
         ebG+K4UrLlKPQxILbueiCntbMsCt46S8o1B9wR3XY2yLFM9b7kt0HBepDOU+/kXH8+PL
         Wp7DNo0nI8gw+LN6gu2zaQO3SXFgAGLbJ9lVkPLGQPwGaLVgmmd/u+vpkr/bm6lFqXxi
         jfgDiJDChoKVYn6aqfYzpa/tI8cnKgYsUscicGoj8+wNULYqoCCzySOc7l4gvnV5d9xL
         i2DA==
X-Gm-Message-State: AMCzsaX1h+T9R533ZNH8jQOv41L4PTiWJ5/bCBz3+W04A/FYFlN9IV9t
	J3tpzMmCYfP+wjNFJmxocF5t6HpUXyuIQFAz1J4=
X-Google-Smtp-Source: ABhQp+SK9PHmwMxWrV9Suoklulyp+cVTBYpMBGpU4j+pYDr/Uf6KS5JkHMKYy54E54cv95tPFmglagd6INW5NfL13Js=
X-Received: by 10.55.103.15 with SMTP id b15mr2963909qkc.224.1508339704478;
 Wed, 18 Oct 2017 08:15:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.62.216 with HTTP; Wed, 18 Oct 2017 08:15:03 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710181658000.15834@hadrien>
References: <1507196802-4143-1-git-send-email-srishtishar@gmail.com>
 <20171018123117.GA11890@kroah.com> <CAB3L5ozhby6izgNjoBZS6BwzOgpVcoH1fErt8PN3JhptFv0FGA@mail.gmail.com>
 <alpine.DEB.2.20.1710181658000.15834@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Wed, 18 Oct 2017 20:45:03 +0530
Message-ID: <CAB3L5ow53Tp4nucKeRiZSTMoaBocSTbpfa20TqOURV76X75YqQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: rtl8188eu: core:
 rtw_ap: Use list_for_each_entry_safe
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="001a1148269e4940e2055bd3b48c"

--001a1148269e4940e2055bd3b48c
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 8:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Wed, 18 Oct 2017, Srishti Sharma wrote:
>
> >
> >
> > On Wed, Oct 18, 2017 at 6:01 PM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >       On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma wrote:
> >       > This is a cleanup patch and doesn't change runtime behavior.
> >       It
> >       > changes an open coded list traversal to use
> >       list_for_each_entry_safe.
> >       > Done using the following semantic patch by coccinelle.
> >
> >       You have sent me two different patches, with this same subject.
> >
> >       And you have sent me lots of different patches for this same
> >       driver, I
> >       don't have any idea which order to apply them in.  Please resend
> >       them
> >       all, in an ordered patch series, properly numbered, so I know
> >       what to do
> >       here.
> >
> >
> > I had sent them individually because in a patch series they would have
> the
> > same subject, as all of them are making similar changes in different
> files
> > of the driver. One patch for all files would probably be too long, What
> do
> > you suggest I do in this situation ?
>
> I don't have the specific change handy, but maybe you can incorporate
> more information about the affected file or about the change itself in teh
> subject line.  All subject lines need to be unique.


I think if I add the file name for every file in the subject, even after
saying use list_for_each_entry_safe for all of them, that should make them
unique , right ? As this is what we did last time to make it unique, but I
should have then sent them as  a patch set.

Regards,
Srishti



>
>
julia
>
>
> >
> > Regards,
> > Srishti
> >
> >       thanks,
> >
> >       greg k-h
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.
> com/d/msgid/outreachy-kernel/CAB3L5ozhby6izgNjoBZS6Bw
> > zOgpVcoH1fErt8PN3JhptFv0FGA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a1148269e4940e2055bd3b48c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Oct 18, 2017 at 8:29 PM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><=
br>
<br>
On Wed, 18 Oct 2017, Srishti Sharma wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Oct 18, 2017 at 6:01 PM, Greg KH &lt;<a href=3D"mailto:gregkh@=
linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Thu, Oct 05, 2017 at 03:16:42PM +0530, Sr=
ishti Sharma wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; This is a cleanup patch and doesn&#39;t=
 change runtime behavior.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; changes an open coded list traversal to=
 use<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry_safe.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Done using the following semantic patch=
 by coccinelle.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You have sent me two different patches, with=
 this same subject.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0And you have sent me lots of different patch=
es for this same<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0driver, I<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0don&#39;t have any idea which order to apply=
 them in.=C2=A0 Please resend<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0them<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0all, in an ordered patch series, properly nu=
mbered, so I know<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0what to do<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0here.<br>
&gt;<br>
&gt;<br>
&gt; I had sent them individually because in a patch series they would have=
 the<br>
&gt; same subject, as all of them are making similar changes in different f=
iles<br>
&gt; of the driver. One patch for all files would probably be too long, Wha=
t do<br>
&gt; you suggest I do in this situation ?<br>
<br>
</span>I don&#39;t have the specific change handy, but maybe you can incorp=
orate<br>
more information about the affected file or about the change itself in teh<=
br>
subject line.=C2=A0 All subject lines need to be unique.</blockquote><div><=
br></div><div>I think if I add the file name for every file in the subject,=
 even after saying use list_for_each_entry_safe for all of them, that shoul=
d make them unique , right ? As this is what we did last time to make it un=
ique, but I should have then sent them as =C2=A0a patch set.</div><div><br>=
</div><div>Regards,</div><div>Srishti</div><div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">=C2=A0<br></blockquote><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Regards,=C2=A0<br>
&gt; Srishti=C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0thanks,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0greg k-h<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CAB3L5ozhby6izgNjoBZS6Bw" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.<wbr>com/d/msgid/outreachy-kernel/=
<wbr>CAB3L5ozhby6izgNjoBZS6Bw</a><br>
&gt; zOgpVcoH1fErt8PN3JhptFv0FGA%<a href=3D"http://40mail.gmail.com" rel=3D=
"noreferrer" target=3D"_blank">40<wbr>mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
&gt;</font></span></blockquote></div><br></div></div>

--001a1148269e4940e2055bd3b48c--

