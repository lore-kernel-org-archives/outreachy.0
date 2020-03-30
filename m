X-GM-THRID: 6808898651661795328
X-Received: by 2002:a2e:8ed9:: with SMTP id e25mr5941074ljl.219.1585563296673;
        Mon, 30 Mar 2020 03:14:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:58f1:: with SMTP id v17ls3080568lfo.8.gmail; Mon, 30 Mar
 2020 03:14:55 -0700 (PDT)
X-Google-Smtp-Source: APiQypIjkC5l4/Vq+To/lY/T1UjANgUHjgYlBGygr7QyArdRtX2LTUZ7qxM5jKKjK8i1D+51ZRG7
X-Received: by 2002:ac2:4c88:: with SMTP id d8mr7814393lfl.100.1585563295218;
        Mon, 30 Mar 2020 03:14:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585563295; cv=none;
        d=google.com; s=arc-20160816;
        b=nzcMIU0lxLNqlfqUMvcduvmDMUWWCtnL4mfccJNtxpJkyEL3XffT19Selinbnj7apO
         cLmqcL6QmCNFcYpLtVpaymlZCqLmykLKL6cZGUpPsCv3pKVGEWZbfycmsZI5uy8d+QU+
         ZH5+Zy05DLMUyt1/+r4ETir3tsGt/cT31kbApuyp7j7xpcECv+hgX/xOYo8KskWmx1cn
         zHXk6TIVIbAO5tlxD1W3TYXJ69TSDqDALHUpulH3lrSK6kd4fc/sm+o3sZCZ/rpDaXBY
         HFTjNoRxW/+r+dTKdceTZzdPVUEGqt3nNjR/ivJcMlDeEkyRdjpD0dgMhaMPlFD4xVCK
         bCdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0eE9sJr7MnRY+2kaKofVoQrY0lKM9f3xXCZmbXwc0Ws=;
        b=vwE7+8ca28fbN8i47vKOZN+zDfdx6xJFEgMPw0H2ACDcFay+bDZWI59DD0TnLlN2p9
         4oZOqjHvTKps72CiIq9u2fmYzZLX1FE0gr3MdNvatVTdcfSjYC3+wVLpWP0cy3C7SoUN
         AZbrKHPE95BQxvJtUM55M2afJzPgXcl+E+Wo3akNUhxayqaohtFO30hveMjLpK24+ChS
         tV636lpcC6S/p9pYb/iIElEr66c8QLhVv+OgSoPSoat0zOGgCR9piJUxuu0/oDWjlQs6
         zKHgjC5u/5p7HfbfMxbAs2csbNoLK7fl9lV3gynWN7Snrcmgwom7uCbJ/3R8Nwy5OCPz
         Q5+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4Y4N6HN;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id s22si578681ljp.0.2020.03.30.03.14.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r4Y4N6HN;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id p14so17404169lji.11
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 03:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0eE9sJr7MnRY+2kaKofVoQrY0lKM9f3xXCZmbXwc0Ws=;
        b=r4Y4N6HNTi2S/y/K8hVTNCahuwlsET3NimsMjd+hXjWYnvwZQO8XtnlEvYQI60katr
         QKRT3HXiAejYPExJ+bxQh8XnIYxEXAoFDxZefWlBDWcFHzmoeq0ONmqkM6NYX1ocMAK7
         SHrCHbuoY9KjvW0rj8sFap1pJCRZSfCpvVOIfLunyFcUxIULgWzQx60/03HGXUF2LHhF
         IBBCRg4Vxmjm1iPxalnUcKRkyTdFgFaZeUNGaCQA9/ZbkKHu85IflNa5sa4g+a5/uyAr
         z37a+hQ3ZWMPjJfohw7aj0m+jcCla1+in7sYvs2hrc8/BoIP2v3aNX2lD7H9Pz7riW+u
         myuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0eE9sJr7MnRY+2kaKofVoQrY0lKM9f3xXCZmbXwc0Ws=;
        b=ZhGQUm/qUe6hlIU1ClSHWfqVYvS0ZaoTYjX8dltL2vGK+n/uYLxPKzyBcvmux5XBxB
         YKo36W08EEv6zAcRwJC5xQE8/8TorhsjGR8owjcGGi9VCdSP1CHxoJtfwRL28UDvUwcM
         Lxlr/B2CJ9vuYXsGRQFp5kSbam65pTrGKuXjnfs40VSC619RbvFCAoXMwCl1R8oj5QgA
         KREozqdPtV3i0/MAA9oylYgebg4ob2P5WSk2n64VMDsRIWtt0mAixTW4XjG0tiAjStj1
         hxlcM4qatLszJW/TBlnSkf9qD9MA739VX74FPEB9qudyYJZUZ9uFu3jYODImrjmwXLTh
         A1ow==
X-Gm-Message-State: AGi0PubUvQAUJ11DSaBaaY38OYOVB1A0G20WEPV353v35sIz/1fp0M5U
	6MX2mc09KTpMbikkDUDVmLvx3UNaKywXMc3msi3faK/PidA=
X-Received: by 2002:a2e:94c8:: with SMTP id r8mr6697783ljh.28.1585563294911;
 Mon, 30 Mar 2020 03:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200327144229.19738-1-debsoumyajit100@gmail.com>
 <20200327144229.19738-2-debsoumyajit100@gmail.com> <20200330111251.1d2e6db6@elisabeth>
 <CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
In-Reply-To: <CAMS7mKA7g8Ea2RpkZOZ0R5mkJM+zwawB86CtBiY=D-VZhW6q0A@mail.gmail.com>
From: Soumyajit Deb <debsoumyajit100@gmail.com>
Date: Mon, 30 Mar 2020 15:44:43 +0530
Message-ID: <CAMS7mKA1nxc4S7_y73QTvNXohZ25rbV+NkDiP-p0onzvdnUP7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH 1/2] staging:
 wlang-ng: Properly align the lines of function call
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000f64f5405a20fb82a"

--000000000000f64f5405a20fb82a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Is there any issue with this patch?
Please let me know, so I can rectify them and send v2 of the patch if
needed.

On Mon, 30 Mar 2020 at 15:25, Soumyajit Deb <debsoumyajit100@gmail.com>
wrote:

> Sorry  for the inconvenience.
> Now I am also confused a bit too
> But as much as I understand,
> this patch is somewhat different from the change I wanted by casting to
> i32.
>
> This patch just addresses the warning of properly aligning the lines as
> reported by checkpatch.pl.
> While, the change of casting to i32 was for line over 80 characters
> warning, which is a different warning altogether, so that change must be
> addressed in some other patch.
> I wanted to cast to i32 so that I can shorten the line and resolve the
> warning of line over 80 character as reported by checkpatch.pl
>
> Sorry, for any misunderstanding. I am very new to kernel development and
> was confused a bit about the process then.
> Sorry for any mistake on my part.
>
>
> On Mon, 30 Mar 2020 at 14:43, Stefano Brivio <sbrivio@redhat.com> wrote:
>
>> On Fri, 27 Mar 2020 20:12:28 +0530
>> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
>>
>> > Align the lines of function call to improve code readability and to
>> > adhere to the uniform Linux Kernel coding style.
>> > Reported by checkpatch.pl
>> >
>> > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
>> > ---
>> >  drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++--------------
>> >  1 file changed, 13 insertions(+), 14 deletions(-)
>> >
>> > diff --git a/drivers/staging/wlan-ng/cfg80211.c
>> b/drivers/staging/wlan-ng/cfg80211.c
>> > index fac38c842ac5..3d17037f954e 100644
>> > --- a/drivers/staging/wlan-ng/cfg80211.c
>> > +++ b/drivers/staging/wlan-ng/cfg80211.c
>> > @@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,
>> >               freq =3D ieee80211_channel_to_frequency(msg2.dschannel.d=
ata,
>> >                                                     NL80211_BAND_2GHZ)=
;
>> >               bss =3D cfg80211_inform_bss(wiphy,
>> > -                     ieee80211_get_channel(wiphy, freq),
>> > -                     CFG80211_BSS_FTYPE_UNKNOWN,
>> > -                     (const u8 *)&msg2.bssid.data.data,
>> > -                     msg2.timestamp.data, msg2.capinfo.data,
>> > -                     msg2.beaconperiod.data,
>> > -                     ie_buf,
>> > -                     ie_len,
>> > -                     (msg2.signal.data - 65536) * 100, /* Conversion
>> to signed type */
>> > -                     GFP_KERNEL
>> > -             );
>> > +                                       ieee80211_get_channel(wiphy,
>> freq),
>> > +                                       CFG80211_BSS_FTYPE_UNKNOWN,
>> > +                                       (const u8
>> *)&msg2.bssid.data.data,
>> > +                                       msg2.timestamp.data,
>> msg2.capinfo.data,
>> > +                                       msg2.beaconperiod.data,
>> > +                                       ie_buf,
>> > +                                       ie_len,
>> > +                                       (msg2.signal.data - 65536) *
>> 100, /* Conversion to signed type */
>>
>> So... wait a moment:
>>
>> - March 21, 17:30 UTC: you ask me on IRC how to fix the checkpatch
>>   warning you're introducing now. You propose to move the comment on a
>>   line by itself. I suggest that you write a test program and find out
>>   if this conversion can be done in another way. You say you will do
>>   that
>>
>> - March 27, 10:58 UTC: you ask me on IRC if you can use a cast to "i32".
>>   I have a d=C3=A9j=C3=A0 vu, can't really remember who asked me this, a=
nd
>>   suggest that you write a test program. You say you will do that
>>
>> - March 27, 12:12 UTC: you send the same question to this list
>>
>> - March 27, 14:45 UTC: you send this patch
>>
>> ...why, exactly?
>>
>> --
>> Stefano
>>
>>

--000000000000f64f5405a20fb82a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there any issue with this patch? <br></div><div>Pl=
ease let me know, so I can rectify them and send v2 of the patch if needed.=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, 30 Mar 2020 at 15:25, Soumyajit Deb &lt;<a href=3D"mailto=
:debsoumyajit100@gmail.com">debsoumyajit100@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Sorry=C2=A0 for the inconvenience.<br></div><div>Now I am also confused a b=
it too</div><div>But as much as I understand,<br></div><div>this patch is s=
omewhat different from the change I wanted by casting to i32.</div><div><br=
></div><div>This patch just addresses the warning of properly aligning the =
lines as reported by <a href=3D"http://checkpatch.pl" target=3D"_blank">che=
ckpatch.pl</a>.</div><div>While, the change of casting to i32 was for line =
over 80 characters warning, which is a different warning altogether, so tha=
t change must be</div><div>addressed in some other patch. <br></div><div>I =
wanted to cast to i32 so that I can shorten the line and resolve the warnin=
g of line over 80 character as reported by <a href=3D"http://checkpatch.pl"=
 target=3D"_blank">checkpatch.pl</a></div><div><br></div><div>Sorry, for an=
y misunderstanding. I am very new to kernel development and was confused a =
bit about the process then. <br></div><div>Sorry for any mistake on my part=
.<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, 30 Mar 2020 at 14:43, Stefano Brivio &lt;=
<a href=3D"mailto:sbrivio@redhat.com" target=3D"_blank">sbrivio@redhat.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n Fri, 27 Mar 2020 20:12:28 +0530<br>
Soumyajit Deb &lt;<a href=3D"mailto:debsoumyajit100@gmail.com" target=3D"_b=
lank">debsoumyajit100@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Align the lines of function call to improve code readability and to<br=
>
&gt; adhere to the uniform Linux Kernel coding style.<br>
&gt; Reported by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=
=3D"_blank">checkpatch.pl</a><br>
&gt; <br>
&gt; Signed-off-by: Soumyajit Deb &lt;<a href=3D"mailto:debsoumyajit100@gma=
il.com" target=3D"_blank">debsoumyajit100@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wlan-ng/cfg80211.c | 27 +++++++++++++-----------=
---<br>
&gt;=C2=A0 1 file changed, 13 insertions(+), 14 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan=
-ng/cfg80211.c<br>
&gt; index fac38c842ac5..3d17037f954e 100644<br>
&gt; --- a/drivers/staging/wlan-ng/cfg80211.c<br>
&gt; +++ b/drivers/staging/wlan-ng/cfg80211.c<br>
&gt; @@ -359,16 +359,15 @@ static int prism2_scan(struct wiphy *wiphy,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D ieee802=
11_channel_to_frequency(msg2.dschannel.data,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NL80211_BAND_2GHZ);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bss =3D cfg80211=
_inform_bss(wiphy,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ieee80211_get_channel(wiphy, freq),<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0CFG80211_BSS_FTYPE_UNKNOWN,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(const u8 *)&amp;msg2.bssid.data.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0msg2.timestamp.data, msg2.capinfo.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0msg2.beaconperiod.data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ie_buf,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ie_len,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0(msg2.signal.data - 65536) * 100, /* Conversion to signed type */<br=
>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0GFP_KERNEL<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ieee8=
0211_get_channel(wiphy, freq),<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CFG80=
211_BSS_FTYPE_UNKNOWN,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(cons=
t u8 *)&amp;msg2.bssid.data.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg2.=
timestamp.data, msg2.capinfo.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg2.=
beaconperiod.data,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ie_bu=
f,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ie_le=
n,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(msg2=
.signal.data - 65536) * 100, /* Conversion to signed type */<br>
<br>
So... wait a moment:<br>
<br>
- March 21, 17:30 UTC: you ask me on IRC how to fix the checkpatch<br>
=C2=A0 warning you&#39;re introducing now. You propose to move the comment =
on a<br>
=C2=A0 line by itself. I suggest that you write a test program and find out=
<br>
=C2=A0 if this conversion can be done in another way. You say you will do<b=
r>
=C2=A0 that<br>
<br>
- March 27, 10:58 UTC: you ask me on IRC if you can use a cast to &quot;i32=
&quot;.<br>
=C2=A0 I have a d=C3=A9j=C3=A0 vu, can&#39;t really remember who asked me t=
his, and<br>
=C2=A0 suggest that you write a test program. You say you will do that<br>
<br>
- March 27, 12:12 UTC: you send the same question to this list<br>
<br>
- March 27, 14:45 UTC: you send this patch<br>
<br>
...why, exactly?<br>
<br>
-- <br>
Stefano<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000f64f5405a20fb82a--

