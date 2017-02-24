X-GM-THRID: 6389890697918414848
X-Received: by 10.46.80.82 with SMTP id v18mr548551ljd.27.1487976360936;
        Fri, 24 Feb 2017 14:46:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls239751ljd.17.gmail; Fri, 24 Feb 2017
 14:46:00 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr680499lfe.18.1487976360067;
        Fri, 24 Feb 2017 14:46:00 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id i76si197557wmh.1.2017.02.24.14.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id z127so2369456lfa.2
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=R/CZU7obXlz1wYjSJbC3nxIFdTmiehDAJX6dwzViif8=;
        b=iUSseSkK/3FbqOHF2zSCe9HtE9svyQuQdU3NcKMnMTOr/2bHJRUXcPgEBdztmhOOye
         eHO0KM5BrdCJ7kjfeE4PzXO4uXVg/1JBR1r+tm9s63OshfbVgrNkgA1oiLC/W2ib5dDp
         NWQK/jGbuaSDFDVsYb8wfp5gTnyKQMOAX8aFmLCBZWoyx0M4OsfMBw6Xh9/oOzCrTIGj
         1SLtGnaegnxtIrl+z0T1gmtUQAOFSghKQ432nEUj3vrehxBXwOaadmQZevXf56MFgZrX
         Bs4A0aCdaHDxyLWRo4M/UcVTECMdseTAX8U6IHOeLG4slxhhw5400fDWuycl1INdnNU+
         rbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=R/CZU7obXlz1wYjSJbC3nxIFdTmiehDAJX6dwzViif8=;
        b=c91Xi3w7EtidHH4BiblGXV7H4CUHUNdgjnoHGF2oHWqj3SWuzGAUma6EfbhyVIunwl
         u1nzQsZWG8DoPcg0WuKuu811d+rFeGPGcHaZTUW+6kek7lhODhDMuAkdmQaxNnXgrQ34
         ozf9wNLHYlWfVUrFQ8rAArXa3KQS50RGb2dTBxZRlY3YOPgx6D7RO4alFDHBapaHkO09
         jSvKgfoYpBfzXZASnkH0JCG/I998FMhxB9tv5xBY1I2wfvqdur3YaT8yi7YCioX2y4gB
         24pP2dt4ppDtie/1S7sTzF56d+0AbfirDLO5l5vKnXc1UlR7/xG585pxSgOClu2aCyrw
         7RYQ==
X-Gm-Message-State: AMke39kCh0QDvRe4JDMNBRiJLjlS/h9auuH7Fh0svbSF8vOPvXGZIT9SpmVLM7kdF36+pSZNiLvzbl0FzERksA==
X-Received: by 10.46.87.89 with SMTP id r25mr1313546ljd.31.1487976359506; Fri,
 24 Feb 2017 14:45:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Fri, 24 Feb 2017 14:45:58 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702241748000.3089@hadrien>
References: <20170222111918.GA25063@arushi-HP-Pavilion-Notebook>
 <20170224163130.GA29645@kroah.com> <CA+XqjF_sihk6_UhgLzUH6FVSFMu02Vadp1tjatQft-UJ14SJeA@mail.gmail.com>
 <alpine.DEB.2.20.1702241748000.3089@hadrien>
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sat, 25 Feb 2017 04:15:58 +0530
Message-ID: <CA+XqjF91bd_er+idvUBPZCTYFHaxF6Mgf1oQ6vTz9gmk6ggC6Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: xgifb: function prototype
 argument should have an identifier name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arnaud.patard@rtp-net.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f403045f80f857c0f805494e7ef7

--f403045f80f857c0f805494e7ef7
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 10:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 24 Feb 2017, Arushi Singhal wrote:
>
> >
> >
> > On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> >       On Wed, Feb 22, 2017 at 04:49:19PM +0530, Arushi Singhal wrote:
> >       > function prototype arguments like 'struct vb_device_info
> >       *','unsigned
> >       > long' etc. should have an identifier name.
> >       >
> >       > Signed-off-by: Arushi Singhal
> >       <arushisinghal19971997@gmail.com>
> >       > ---
> >       > Changes in v3:
> >       >   - By mistake one irrelevant line was added which is removed
> >       in this
> >       >     patch.
> >       >   - write the changes done in previous version in correct
> >       format.
> >       >   - make the commit subject more relevant and accurate.
> >
> >       This patch doesn't apply to my tree at all :(
> >
> > Why this is so?
>
> Maybe someone else made a change on the same lines as yours.  Check that
> your tree is up to date.
>
Is all the changes being done by someone before?

>
> julia
>
> > thanks
> > Arushi
> >       sorry,
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
> com/d/msgid/outreachy-kernel/CA%2BXqjF_sihk6_UhgLzUH6
> > FVSFMu02Vadp1tjatQft-UJ14SJeA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--f403045f80f857c0f805494e7ef7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Feb 24, 2017 at 10:18 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
<br>
<br>
On Fri, 24 Feb 2017, Arushi Singhal wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Feb 24, 2017 at 10:01 PM, Greg Kroah-Hartman<br>
&gt; &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundati=
on.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, Feb 22, 2017 at 04:49:19PM +0530, Ar=
ushi Singhal wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; function prototype arguments like &#39;=
struct vb_device_info<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*&#39;,&#39;unsigned<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; long&#39; etc. should have an identifie=
r name.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Arushi Singhal<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:arushisinghal19971997@=
gmail.com">arushisinghal19971997@gmail.<wbr>com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Changes in v3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0- By mistake one irrelevant=
 line was added which is removed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0in this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0patch.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0- write the changes done in=
 previous version in correct<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0format.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0- make the commit subject m=
ore relevant and accurate.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0This patch doesn&#39;t apply to my tree at a=
ll :(<br>
&gt;<br>
&gt; Why this is so?<br>
<br>
</span>Maybe someone else made a change on the same lines as yours.=C2=A0 C=
heck that<br>
your tree is up to date.<br></blockquote><div>Is all the changes being done=
 by someone before? <br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; thanks<br>
&gt; Arushi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sorry,<br>
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
ps.google.com/d/msgid/outreachy-kernel/CA%2BXqjF_sihk6_UhgLzUH6" rel=3D"nor=
eferrer" target=3D"_blank">groups.google.<wbr>com/d/msgid/outreachy-kernel/=
<wbr>CA%2BXqjF_sihk6_UhgLzUH6</a><br>
&gt; FVSFMu02Vadp1tjatQft-UJ14SJeA%<a href=3D"http://40mail.gmail.com" rel=
=3D"noreferrer" target=3D"_blank"><wbr>40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
&gt;</font></span></blockquote></div><br></div></div>

--f403045f80f857c0f805494e7ef7--

