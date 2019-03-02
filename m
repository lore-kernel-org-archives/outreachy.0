X-GM-THRID: 6663442013681090560
X-Received: by 2002:a50:aa70:: with SMTP id p45mr1065208edc.6.1551485764034;
        Fri, 01 Mar 2019 16:16:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:f182:: with SMTP id gs2ls2216022ejb.5.gmail; Fri, 01
 Mar 2019 16:16:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqz1Nf+9STiYXarsIQmQ+Wkz8MPXNwXFF1YMgTFfaqcHGoa9MP3kOYiG9M4el0SiD7p3/XzC
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr889478ejb.0.1551485763286;
        Fri, 01 Mar 2019 16:16:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551485763; cv=none;
        d=google.com; s=arc-20160816;
        b=ooXJdQvfiVXMkAni/aqCkLLMCHHTUN0B0mSn2Z2nzJateeGrIFvtmZao8MGUhknmjy
         KtN05vN8OQGS1Zi5bIYfAnUkfRzo0gBjoo8NhT5z1ePSlKnzgCdZ9i4ybl4zqD/dtpPH
         qvbQwmLqZreXgQSk2BRQ8bXGqpFo47X0aCmADHvsE8y0QYW04NVWUrZZ5+6KTZf+9POV
         6LACgzXKgbzdE+xYwcS4z0N/Myr3ERyQC+E7+0H4lfLQJ+AS8KwKwCvTkpHs21bOyrCq
         Nmi6CZF4WfNCErR8lBlEnGgVbJe2URC23y7Gq8OfA0rfTkDCZGaz42ZyuxlWVmqkvzst
         Qm0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=de6wWsM9ZY65sE78iYEYzYVuRU7U3DZx4fS++9F6f3g=;
        b=iMU1f+/xW7sjfI5Y9N5BYHrQTjszuas2d4yKXxex6LB3JO2UMJjbhBRdiX4DpKr5Nk
         UoqiZGXBWmp8MUQfX+RINJmWuDRfufljHhslOMYJLOpxKhZCQy6hlEbgw8gOltWXFJIx
         1OBx0o8wMoz6AO6pnF6qpdWKBOQ6T5ZNoG7v3oeJed/yMFOOjOXPEXVrKK0sE/njYYBS
         G4FsNvEeDeRxEAhMRNIj8LuG+K2nH/DwuFtOpfT0KZgqjC5RxRBOllEiav9Zdx8jJp9Z
         R+8FRru0OGQROSn5PBJV2UEY67zB47pj7oQzmr993rSdkWC61yQa+PjFCbc0WqAMVN4o
         h76A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UuQA5Z58;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h5si62998ejq.0.2019.03.01.16.16.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 16:16:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UuQA5Z58;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id m12so21513295edv.4
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 16:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=de6wWsM9ZY65sE78iYEYzYVuRU7U3DZx4fS++9F6f3g=;
        b=UuQA5Z58VmewlHK71PFanN6fd2IurhxQsnTPdMxR+69/hiImgNWrrrkMa8iMY5p8CA
         GjsKXikus5lxhlFTnmkGFnA/WxwChTL+vz5nbtkDn4LTSMOdoKYd99l/KOzHn2V6lNwi
         YFn5AyUA+/G0MMlZFFN2PtubiP3yaiJj6B3ywQhpZ1xl6VgvgLho/cYztTBC+AGeWUyy
         yMJqXLLCIVWvTN/EUD1oFd0QAj3F5L9yjqobkygeR6+2DQ0qXIGb5jhL1azRi5r//RyG
         b94E0lOziJey7Ye8g00A4a03xi1zcdvYDYeYDCpbC9XCp6gl5pi1oP1RB8K1vSprg2Ab
         MBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=de6wWsM9ZY65sE78iYEYzYVuRU7U3DZx4fS++9F6f3g=;
        b=ldvMwBF46Q+JS5ZVXvP2ID8GSljzZWpuPRv9lcqxqyVzY8toZ0ghW+HejoQuR8i/eo
         LdjsTrVzHxVxxD9/03Pz17R+gRpD9pV4vOWU6/kYKZ7pVGUFKpybhS7uHVjTtSIe5PJz
         jhV7GPRXFY5KGodUOZFTY0i410E7hgslY5JfA6YlnW14rk9bKspVyuQbemrnZMpFiEZr
         dAnuQqW5N6miSu8hkNLBtuxmzA+a4UHGkiUHO1gt1LxSeLzKaYIQ7ULuhHz28EVQo+sv
         WfIkJxd+IEm3/Jr3ryzICGkiFD5XPnYsEPboRuJr/HS9K/5mVWIrE2PisACYxj75TIZ/
         xEAQ==
X-Gm-Message-State: APjAAAX+w0AYY32UEc73876LkcXAd+eCnOJwJwZPBuc0wNTJTzQfmEFe
	pgbisuYgrL1HI/CdSWBPTMnC0qL7i/kaA8M0xw==
X-Received: by 2002:aa7:c413:: with SMTP id j19mr6197607edq.200.1551485762889;
 Fri, 01 Mar 2019 16:16:02 -0800 (PST)
MIME-Version: 1.0
References: <20190301151801.7886-1-jbi.octave@gmail.com> <20190301151801.7886-2-jbi.octave@gmail.com>
 <20190301153935.GA3877@kroah.com> <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com>
 <20190301200104.GA19353@kroah.com>
In-Reply-To: <20190301200104.GA19353@kroah.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Sat, 2 Mar 2019 00:15:25 +0000
Message-ID: <CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: mt7621-dma: add SPDX
 GPL-2.0 or later version license identifier
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c56e880583116d78"

--000000000000c56e880583116d78
Content-Type: text/plain; charset="UTF-8"

Thanks . I have just changed it. I take good note.

*Jules*
*..*
BCS West Yorkshire Secretary
Positive action combined with positive thinking results in success - Shiv
Khera


On Fri, 1 Mar 2019 at 20:01, Greg KH <gregkh@linuxfoundation.org> wrote:

> A: http://en.wikipedia.org/wiki/Top_post
> Q: Were do I find info about this thing called top-posting?
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?
>
> A: No.
> Q: Should I include quotations after my reply?
>
>
> http://daringfireball.net/2007/07/on_top
>
> On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave wrote:
> > Some people say  GPL-2.0+ has deprecated (
> > https://www.drupal.org/project/lightning/issues/2938910 ) but I will
>
> That is drupal, not the kernel.
>
> > change it to GPL-2.0+.
> > I tried looking  on  https://spdx.org/licenses/
>
> That's a nice place to read as well, but we are using an "older" version
> of spdx.
>
> Always read the in-kernel documentation, we write it for a reason :)
>
> Look at Documentation/process/license-rules.rst please, it shows that
> you should use the "GPL-2.0+" marking.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190301200104.GA19353%40kroah.com
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000c56e880583116d78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks . I have just changed it. I take good note.</d=
iv><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
><div><b><font size=3D"2" color=3D"#0078d7">Jules</font></b></div></div><di=
v><div><font size=3D"1" color=3D"#0078d7"><b>..</b></font></div><div><font =
size=3D"1" color=3D"#000000">BCS West Yorkshire Secretary</font></div><div>=
<span style=3D"color:rgb(51,51,51);font-family:&quot;helvetica neue&quot;,H=
elvetica,Arial,sans-serif"><font size=3D"1">Positive action combined with p=
ositive thinking results in success - Shiv Khera</font></span></div></div><=
div><b></b></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/div></div></div></div></div></div></div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 1 Mar 2019 at 20=
:01, Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linux=
foundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">A: <a href=3D"http://en.wikipedia.org/wiki/Top_post" rel=3D"n=
oreferrer" target=3D"_blank">http://en.wikipedia.org/wiki/Top_post</a><br>
Q: Were do I find info about this thing called top-posting?<br>
A: Because it messes up the order in which people normally read text.<br>
Q: Why is top-posting such a bad thing?<br>
A: Top-posting.<br>
Q: What is the most annoying thing in e-mail?<br>
<br>
A: No.<br>
Q: Should I include quotations after my reply?<br>
<br>
<br>
<a href=3D"http://daringfireball.net/2007/07/on_top" rel=3D"noreferrer" tar=
get=3D"_blank">http://daringfireball.net/2007/07/on_top</a><br>
<br>
On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave wrote:<br>
&gt; Some people say=C2=A0 GPL-2.0+ has deprecated (<br>
&gt; <a href=3D"https://www.drupal.org/project/lightning/issues/2938910" re=
l=3D"noreferrer" target=3D"_blank">https://www.drupal.org/project/lightning=
/issues/2938910</a> ) but I will<br>
<br>
That is drupal, not the kernel.<br>
<br>
&gt; change it to GPL-2.0+.<br>
&gt; I tried looking=C2=A0 on=C2=A0 <a href=3D"https://spdx.org/licenses/" =
rel=3D"noreferrer" target=3D"_blank">https://spdx.org/licenses/</a><br>
<br>
That&#39;s a nice place to read as well, but we are using an &quot;older&qu=
ot; version<br>
of spdx.<br>
<br>
Always read the in-kernel documentation, we write it for a reason :)<br>
<br>
Look at Documentation/process/license-rules.rst please, it shows that<br>
you should use the &quot;GPL-2.0+&quot; marking.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20190301200104.GA19353%40kroah.com" rel=3D"nore=
ferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kerne=
l/20190301200104.GA19353%40kroah.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div>

--000000000000c56e880583116d78--

