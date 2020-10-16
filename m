X-GM-THRID: 6883926801253400576
X-Received: by 2002:a19:dc47:: with SMTP id f7mr969809lfj.419.1602841015004;
        Fri, 16 Oct 2020 02:36:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7a0e:: with SMTP id v14ls254116ljc.7.gmail; Fri, 16 Oct
 2020 02:36:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyoWxQlzKiAcIahachsdFGDTbOnHXP31wXse4v/gm2gEgAkepgKY0LYXB+9JM3ioY4st4vX
X-Received: by 2002:a2e:9702:: with SMTP id r2mr1196095lji.360.1602841012896;
        Fri, 16 Oct 2020 02:36:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602841012; cv=none;
        d=google.com; s=arc-20160816;
        b=JYWpXYRJ+BEV8xO3WdAlxS3+xcDstimLRQTzEQQgXLI78Vu9zca4x5j9pfGKVDEyEj
         xYhES50BfG2MHQnsFWfTtxqtGDhqCbxvQjZxrZxJre5/ITVnHb3nAapIFbovki8U8V8M
         Bzt64EMaPMEPhFO35sYB+pCIZ0F53ZL+QSnlOsrkVxZNz5CqE4Y3KdWnzJjsSi3wFqn+
         K+cuc72ILOCPZlOCeKOGvL2aWkrJootBsUf+FzKANVRESgfViIXskgw67pK+3BZVm4fd
         93azWNrE1uKtLt6ZwVlLDrJHTvWm7dQtsOq90ZPM4hP7FV6V2TRSUQLnNYb1nDXX+2RO
         tLqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cccw4pLOEzoZO5QdOL8ZiRtZS8fsJR+morGU/z6lZN0=;
        b=YwtwUMj2ktl1K4rBhohwaTjF5GifGsrYcjmcRSjRTZl6+HX93Aw0A2bVf9nmihi1Sr
         mAokdfwTykByjyaMY7u3vnh4AzeeljXH9MNEwsz0CvZ+BMHZQcFFOlO8LjnaTDQrrdxd
         US9r64F0nOlifWUyLP8RJE5+ium+R3xxHhJFQ8OJQ2kNGoyt4QoC2Io4XvVPv3p0UCHo
         y6ncFu5hrbfNUdbuydqs9lMaIJp9dGJgbsDBd+WN/qSd3oVUGPe+bYRnW2VRlX4OsRPw
         qJ2lVdk4fiOlnpgcD38LSZDVg4DGlcrQWlVnY/kjY9q6rdGeaezOGsb1190f53F0lhHP
         orlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AtJ+QQIQ;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a16si60614lfr.5.2020.10.16.02.36.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 02:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AtJ+QQIQ;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id i5so1614150edr.5
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 02:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cccw4pLOEzoZO5QdOL8ZiRtZS8fsJR+morGU/z6lZN0=;
        b=AtJ+QQIQmSF0Qi5MZ9QXu6QqBv9NxEwxWdP3WZEAQnthnUdgO0obXmrbDnT1Exb2EY
         s1bVyInx4d5RwPHNEsR6yIvH8YxAn+aJ2hd5kRgd+0nkEPaT7FbeAKC5sThNPRJaeMm7
         y0HsX91heazIzufe9lcfrlcWoHyQ780bcFc8fE1UXI3dkbRVyzds++K0IaXJpf/hv9mO
         cPaH9RwYy3IcOctAROa0YvxT1looN/mIWEqydniZPo661yXJf1L7etI3jPkZHpOuZU2E
         VRFTNi0jmsS7llDBcSlkkpOspxzPQJunhaRImFDm35ovzjrGJWXftR+rAHguPwuxOiFZ
         txjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cccw4pLOEzoZO5QdOL8ZiRtZS8fsJR+morGU/z6lZN0=;
        b=EDGaKnjaZNJ9Axr3YNRk7tI0SOLa926CdW4/rpubHtxeC3iIaVJTGHHsie45l2gv9w
         J0JdIydEkE+vML06PadnyOSdzXUNeTKLS7Ptobl7bdbhV43If6/rQF/wEE271wqLWucJ
         gsWZwuGpLEhSmogRxA+IcNf0VK4KqqqYoh6ObcXdQ06lxZ+OI7QxqD6LqDDv8n3wUnyV
         PecuLA0lu5ExEM35MgXM0JJhyex+Vw5akvVQPbO/mxWd/uF6ghanNtLWUiRLTQpmi2vV
         W/i7f4rOM49waupivor/tuMZLTfRlyjNNfA6SF1d9NXoYRX59DGVSy84hhMCBgVLSpyR
         W0oQ==
X-Gm-Message-State: AOAM533jun3fImHRUA/KaWwgq1QXkNv9HTrwIIvga07o32nyCuvDKqxF
	7vE85Dxj+Fr042iwDNjGnO9AFL5IMtdtZPvqqitlAXhDauk=
X-Received: by 2002:a05:6402:151a:: with SMTP id f26mr2926695edw.386.1602841012572;
 Fri, 16 Oct 2020 02:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1602767114.git.sylphrenadin@gmail.com> <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
 <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk>
In-Reply-To: <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Fri, 16 Oct 2020 15:06:39 +0530
Message-ID: <CACAkLuosRhn=HY=2AaKH7rr=7JjN-S05vnWG7a9tE2+G3xbK7w@mail.gmail.com>
Subject: Re: [Outreachy][PATCH 3/3] staging: comedi: Replace snprintf() with scnprintf()
To: Ian Abbott <abbotti@mev.co.uk>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	hsweeten@visionengravers.com
Content-Type: multipart/alternative; boundary="0000000000002f97be05b1c681dc"

--0000000000002f97be05b1c681dc
Content-Type: text/plain; charset="UTF-8"

On Fri, 16 Oct, 2020, 2:44 PM Ian Abbott, <abbotti@mev.co.uk> wrote:

> On 15/10/2020 20:18, Sumera Priyadarsini wrote:
> > The show() methods should return the number of bytes printed into the
> > buffer which is the return value of scnprintf(). snprintf() returns the
> > potential number of bytes that could be written which may be greater
> > than the actual length to be written.
> >
> > Replace snprintf() with the safer scnprintf() in comedi_fops.c.
> >
> > Issue found with Coccinelle.
> >
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
>
> The patch is fine, but there are a couple of problems.
>
> 1) Patches for "staging" should be Cc'ed to devel@driverdev.osuosl.org .
>

My bad, I'll keep this in mind for future patches.


> 2) It appears to be part of a patch series, but I have no clue about the
> other patches in the series because I haven't seen them.  The patch
> doesn't look like it depends on any other patches in a series, so it
> should be a standalone patch, not part of a series.
>

I am not exactly sure why this happened, but now that you point it out, the
patches seem a bit disjoint in my mail as well. I think it's because I
Cc'ed the different patches differently. :(

The patch series comprised a series of changes across staging to replace
snprintf()  with scnprintf(). But I got a review about the recent
incorporation of 'sysfs_emit()' in the kernel and I should use that
instead, so I'll be sending a V2 shortly.

Thanks,
Sumera

-- 
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
>

--0000000000002f97be05b1c681dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 16 Oct, 2020, 2:44 PM Ian Abbott, &lt;<a href=
=3D"mailto:abbotti@mev.co.uk">abbotti@mev.co.uk</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On 15/10/2020 20:18, Sumera Priyadarsini wrote:=
<br>
&gt; The show() methods should return the number of bytes printed into the<=
br>
&gt; buffer which is the return value of scnprintf(). snprintf() returns th=
e<br>
&gt; potential number of bytes that could be written which may be greater<b=
r>
&gt; than the actual length to be written.<br>
&gt; <br>
&gt; Replace snprintf() with the safer scnprintf() in comedi_fops.c.<br>
&gt; <br>
&gt; Issue found with Coccinelle.<br>
&gt; <br>
&gt; Signed-off-by: Sumera Priyadarsini &lt;<a href=3D"mailto:sylphrenadin@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">sylphrenadin@gmail.com</a>&=
gt;<br>
<br>
The patch is fine, but there are a couple of problems.<br>
<br>
1) Patches for &quot;staging&quot; should be Cc&#39;ed to <a href=3D"mailto=
:devel@driverdev.osuosl.org" target=3D"_blank" rel=3D"noreferrer">devel@dri=
verdev.osuosl.org</a> .<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">My bad, I&#39;ll keep this in mind for future patche=
s.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<br>
2) It appears to be part of a patch series, but I have no clue about the <b=
r>
other patches in the series because I haven&#39;t seen them.=C2=A0 The patc=
h <br>
doesn&#39;t look like it depends on any other patches in a series, so it <b=
r>
should be a standalone patch, not part of a series.<br></blockquote></div><=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">I am not exactly sure wh=
y this happened, but now that you point it out, the patches seem a bit disj=
oint in my mail as well. I think it&#39;s because I Cc&#39;ed the different=
 patches differently. :(</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>The patch series comprised a series of changes across staging to replace s=
nprintf()=C2=A0 with scnprintf(). But I got a review about the recent incor=
poration of &#39;sysfs_emit()&#39; in the kernel and I should use that inst=
ead, so I&#39;ll be sending a V2 shortly.=C2=A0</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Thanks,=C2=A0</div><div dir=3D"auto">Sumera</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">
-- <br>
-=3D( Ian Abbott &lt;<a href=3D"mailto:abbotti@mev.co.uk" target=3D"_blank"=
 rel=3D"noreferrer">abbotti@mev.co.uk</a>&gt; || MEV Ltd. is a company=C2=
=A0 )=3D-<br>
-=3D( registered in England &amp; Wales.=C2=A0 Regd. number: 02862268.=C2=
=A0 )=3D-<br>
-=3D( Regd. addr.: S11 &amp; 12 Building 67, Europa Business Park, )=3D-<br=
>
-=3D( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || <a href=3D"http://www.mev.=
co.uk" rel=3D"noreferrer noreferrer" target=3D"_blank">www.mev.co.uk</a> )=
=3D-<br>
</blockquote></div></div></div>

--0000000000002f97be05b1c681dc--

