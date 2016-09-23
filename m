X-GM-THRID: 6332397835299848192
X-Received: by 10.28.208.13 with SMTP id h13mr57633wmg.1.1474611371073;
        Thu, 22 Sep 2016 23:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls138053wmg.25.gmail; Thu, 22 Sep
 2016 23:16:10 -0700 (PDT)
X-Received: by 10.28.127.210 with SMTP id a201mr57600wmd.23.1474611370765;
        Thu, 22 Sep 2016 23:16:10 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-lf0-x236.google.com (mail-lf0-x236.google.com. [2a00:1450:4010:c07::236])
        by gmr-mx.google.com with ESMTPS id e21si126721wmc.2.2016.09.22.23.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 23:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) client-ip=2a00:1450:4010:c07::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:4010:c07::236 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x236.google.com with SMTP id l131so85043744lfl.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Sep 2016 23:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7Ix9mSvSAyGolDLajXCrpm/xvMfYQza+d5KT9mxYyiE=;
        b=q4dEdgeyzkITU5lR/vHgxuVAxkBcdwzttO+34wz0mMfbuo67ecP8VnxND6lFFfoTXP
         Hick8nbOfdF9/h/MSEqa1d2FkS8qD9CKQoqwPB4AvYxYnG9y+wb/kDYPDUXuJbprS0nM
         iyLJHJ6Omzy6kxLBBATAADt8Nevyv0H2ULq5WeexgP9xdJDDw7n0Qrva62xBR/XyqGZI
         quycuHfHSN43565qQreGVQrzQfNqi6ffujQo67DdiGpstRf1LcaFnJo8OzCYoDdYkuGT
         v0Rc/WlGSqFJuhlYKxKNF4GSJG9Ugu7NDP2KVZ2sOEWUKPVx5j6Y7PKetaEMCbXe4o52
         l/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7Ix9mSvSAyGolDLajXCrpm/xvMfYQza+d5KT9mxYyiE=;
        b=VwLyR/0ELeYf6bzXAtYCP64CdO665N68ApWzeY+Pp7YUaUQYSTkIHUHL7Wf7GO1QNy
         xv5VilrpqCrbe2tZHvnsIY/Z5WJa3NyeT07g6L0d6cl1/UzOvRYBG/cvkNmZBcCUyBzi
         2lNwtdGnseHC0NoQv3h5V3xm+pmQd9H1W5/tnF9un/ol7OezSL1GYDIlZo7HshTqZllp
         YcG+MmhrfKnpNTK/yu0FTlOVu+h/Z09mXrLjQ68X/TmDJM2UihfJ/5AWIYSBUExkl3jt
         959758+gpE7zs3wgb0wC9yrMuJmTRddg7O6GWSbqOuKy2k6/QGY3jBYpOhFYwPg+p/xn
         rvXg==
X-Gm-Message-State: AE9vXwOATjh2msl8c8Ak7IHPDgCH2MxpOAqfKoAKJX8RNTAkuhX1upHfcztPNnCx62Xav/pkFTmnLqWySaQQ5Q==
X-Received: by 10.25.205.69 with SMTP id d66mr1909943lfg.127.1474611370472;
 Thu, 22 Sep 2016 23:16:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.59.103 with HTTP; Thu, 22 Sep 2016 23:16:10 -0700 (PDT)
In-Reply-To: <20160922071416.GA22392@kroah.com>
References: <20160920125740.GA13784@fireworks> <20160922071416.GA22392@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Fri, 23 Sep 2016 09:16:10 +0300
Message-ID: <CALta04zjnynf1zqzmD6RhjTzSFCeouLRNoCLv3_BNECvwWJYrg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: hal: rtl8188e_cmd: Use
 ether_addr_copy() instead of memcpy()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114123eaeb3c4b053d26b62e

--001a114123eaeb3c4b053d26b62e
Content-Type: text/plain; charset=UTF-8

Thank you for the review. I submitted a second version of the patch.

Georgiana

On 22 September 2016 at 10:14, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Sep 20, 2016 at 03:57:40PM +0300, Georgiana Rodica Chelu wrote:
> > The checkpatch.pl found the warning:
> > WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> > addresses are __aligned(2)
> >
> > Checked if the the Ethernet addresses are __aligned(2) by using pahole
> > tool. The type of pwlanhdr is struct ieee80211_hdr and pahole shows that
> > addr1, addr2, and addr3 are aligned to u16.
> >
> > struct ieee80211_hdr {
> >       __le16                     frame_control;        /*     0     2
> > */
>
> Your changelog here is line-wrapped, can you fix it up please?
>
> thanks,
>
> greg k-h
>

--001a114123eaeb3c4b053d26b62e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the review. I submitted a second versio=
n of the patch.<br><br></div>Georgiana<br></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 22 September 2016 at 10:14, Greg KH <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_b=
lank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Tue, Sep 20, 2016 at 03:57:40PM +0300, Ge=
orgiana Rodica Chelu wrote:<br>
&gt; The <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bla=
nk">checkpatch.pl</a> found the warning:<br>
&gt; WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet<br>
&gt; addresses are __aligned(2)<br>
&gt;<br>
&gt; Checked if the the Ethernet addresses are __aligned(2) by using pahole=
<br>
&gt; tool. The type of pwlanhdr is struct ieee80211_hdr and pahole shows th=
at<br>
&gt; addr1, addr2, and addr3 are aligned to u16.<br>
&gt;<br>
&gt; struct ieee80211_hdr {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0__le16=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0frame_control;=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 /*=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A02<br>
&gt; */<br>
<br>
</span>Your changelog here is line-wrapped, can you fix it up please?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a114123eaeb3c4b053d26b62e--

