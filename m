X-GM-THRID: 6608897994052861952
X-Received: by 2002:ac8:2bb8:: with SMTP id m53-v6mr11313800qtm.58.1538822282619;
        Sat, 06 Oct 2018 03:38:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:aee3:: with SMTP id n35-v6ls4008855qvd.11.gmail; Sat, 06
 Oct 2018 03:38:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63OG90fLq0sE4IHMp36UxEli2VnBga5E5rhyKWmlvF94xzPrayNwLhZV+c2wKqxCKKfdAS6
X-Received: by 2002:a0c:aee6:: with SMTP id n38-v6mr11086969qvd.17.1538822281874;
        Sat, 06 Oct 2018 03:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538822281; cv=none;
        d=google.com; s=arc-20160816;
        b=YWWwBsm5EKpWNiWzgvfH/qpTPyjMp1vGm5sk+vu0NeyaHWhP0d6uiz02AQrM4/FaX4
         jWZ0Y8d6BuqWR40iWR381WVqTR4omG6f9TrNqV5fMgVBXD+LzKxMKWtnrkmrQi6ocW1j
         1K2najaPxD+luEFBmxOGRf7vxg8jLWEWknJg1j9IzWy57N3ytqb9F4hDHS017cuhbJul
         vwm7TzetJuvePWZzZxJn/kn3IJBDrKw76uUeLV3dl1NwHWuKcxzQmd8SqIrj7KnaNVPk
         YHnGh6HhvYE5KVLhE+FdUof3qFJ8eG4mdcTfgID6ylk9EBJ4KHi/h/3lQUK8RcHbNuYn
         ju5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M5kMCyQud4Crtb4zM3Erc6Ur4+ngatZ6L3Fl2XGG71w=;
        b=wB/B89WliovJ372F9v6TRDt6V8Q2n1hiUIC+7iDsmzvTZk+60ANLNSPQpMj5TOh4ZY
         NKdFY4eSB9mkhxR37XiVTYP+886s/Wost3V0rkaW1HVblhI5r1dNDaZA2Q+yXyaMMctR
         B2PCBnS/my3ekctjUh6NkNUZjFkRnWXemSt4L076Dvv+y3oZANLWnGgSWUs3qMs8zhlF
         DC4VQE0OIdWZ2XU7GuCFCh1KZpLjrSD7RoypkQlKXEg0vXM7Ilrs4+F79BjWKWII9zTK
         /cHpNYuwJGiFWsGaqAIvtDrJdd/tu17kk3Ucetc2Ibc+jnMjT6UuAlXDJvLcBdFyKTXI
         psVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cv0md0yc;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id 12-v6si646430qkp.1.2018.10.06.03.38.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 03:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cv0md0yc;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id z16-v6so12561607iol.6
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 03:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M5kMCyQud4Crtb4zM3Erc6Ur4+ngatZ6L3Fl2XGG71w=;
        b=cv0md0yc3rVvhnqWLZyxHe5ia7dCNonDa4i3kw+/OdGKAIsOep0j1MRwat/n4gfANQ
         ren7ioKdBfENz/gzi/bYIzx8qA+kYsdoP0GCP9DZCnw4Pqx45Q150Ho1wi3NBj14Nbun
         YAIgPomzMls1gWcEx6gBnyXdLNtyDV9UKEJmInv2wlhU/pf7z7RdEalyS3ZIxEgub2Br
         TbJKxtaWo+oNWDZFo6Nho1yWrMpUmU9tep8L+pJbed0bdqkvtlyOLBa2MfBBaQC0c3Yz
         FzxMpLEwu5cPtWWJpo2JFK9ViTmEtadKYPp9tTEA58pO3ktw0enoQD6+fCNJsBr+u33Y
         5/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M5kMCyQud4Crtb4zM3Erc6Ur4+ngatZ6L3Fl2XGG71w=;
        b=NlzMkNlxfRJxrnWOv+9JXOJX5qA+0HekObahWdA4E3hzhRxuMD8vXAyKHw+4Ba9vHp
         zTOsyAMEZgqjMFiuWcyBBm+3tBgmSdZ9O+UaEXWMcCYolkHw3U1xP1MnO0WDdOxaI+dz
         dnsRz5kr4goNxEbA8k6i0E0crKTkTEgA6Gkl31SxukFBD12m7NKwgDA7l9Mh3sVXjNFL
         yzRwZYNiJUaRZXYH1uBxIRqlOGoAvrE34KxptfK5I6Vw3O6BT9Bl/I+5iq51sZinyEP5
         FK40HGeclvqILW28pMEWfH2QFXf7uMvabWjEXza/+5C9E5hXpeFcYlumXS2EBfSbOm5m
         G+Xg==
X-Gm-Message-State: ABuFfojTmtftrakJE6OAg7IVOYPy6YsoiaO6B78exIXZPyorcJjHWR3z
	KbYL6aZwYKzzoQWLR2Dl7EV9BvdcBRrV9mvL1lNfLeNr
X-Received: by 2002:a5e:8809:: with SMTP id l9-v6mr9579230ioj.272.1538822281139;
 Sat, 06 Oct 2018 03:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1538752705.git.mamtashukla555@gmail.com>
 <20181005181050.GC30924@himanshu-Vostro-3559> <CAK-LDbL_OWoAfuXNBhLFUN33M6LJp=pPW9Q_9KUj+ooENidRZg@mail.gmail.com>
In-Reply-To: <CAK-LDbL_OWoAfuXNBhLFUN33M6LJp=pPW9Q_9KUj+ooENidRZg@mail.gmail.com>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Sat, 6 Oct 2018 16:07:47 +0530
Message-ID: <CAMNCNOUrfriM30mpT-z_uUh9-PbSOXLjvgRT8oX-n-OHK1zHrw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] staging: vt6655: Fix coding style issues
To: vthakkar@vaishalithakkar.in
Cc: Himanshu Jha <himanshujha199640@gmail.com>, outreachy-kernel@googlegroups.com, 
	forest@alittletooquiet.net, gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000709d5405778cfbba"

--000000000000709d5405778cfbba
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 6, 2018 at 12:37 AM Vaishali Thakkar <
vthakkar@vaishalithakkar.in> wrote:

> On Fri, Oct 5, 2018 at 11:40 PM Himanshu Jha
> <himanshujha199640@gmail.com> wrote:
> >
> > On Fri, Oct 05, 2018 at 09:09:26PM +0530, Mamta Shukla wrote:
> > > Fix issues found using checkpatch.pl for vt6655 staging driver.
> > >
> > > Mamta Shukla (4):
> > >   staging: vt6655: Add blank line after function/struct/union/enum
> declarations
> > >   staging: vt6655: Add spaces around '*'
> > >   staging: vt6655: Add spaces around '-'
> > >   staging: vt6655: Remove space after cast
> > >
> > >  drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++--------------
> > >  1 file changed, 15 insertions(+), 14 deletions(-)
> >
> > Don't put a cover letter for these checkpatch changes.
> > It doesn't convey any additional info about the patch
> > series and therefore isn't required.
>
> >Himanshu, we recommend to use cover letter even for cleanup patches
> >for Outreachy applicants because it helps them to practice and understand
> >how patch series works. So, I would still prefer to have it.
>
> >Mamta, I think in this case you can probably put what sort of
> checkpatch.pl
> >issues your patch series is handling rather than just saying that it is
> fixing
> >checkpatch.pl <http://checkpatch.pl> issues.
>
> I will add required description in cover  letter.


> > > Also, adding spaces could be squashed into a single patch.
>

I will merge PATCH 2 and PATCH 3  and will send revised version of this
patch series.

>
> >I agree.
>
> > Just remember these for future..
> >
> > Otherwise, ACK for whole series!
> >
> > --
> > Himanshu Jha
> > Undergraduate Student
> > Department of Electronics & Communication
> > Guru Tegh Bahadur Institute of Technology
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181005181050.GC30924%40himanshu-Vostro-3559
> .
> > For more options, visit https://groups.google.com/d/optout.
>


-- 
Mamta Shukla
Pune Institute  of Computer Technology
Pune
m: 9158516957
e : mamtashukla555@gmail.com

--000000000000709d5405778cfbba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sat=
, Oct 6, 2018 at 12:37 AM Vaishali Thakkar &lt;<a href=3D"mailto:vthakkar@v=
aishalithakkar.in">vthakkar@vaishalithakkar.in</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On Fri, Oct 5, 2018 at 11:40 PM Himanshu Jha<br>
&lt;<a href=3D"mailto:himanshujha199640@gmail.com" target=3D"_blank">himans=
hujha199640@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Oct 05, 2018 at 09:09:26PM +0530, Mamta Shukla wrote:<br>
&gt; &gt; Fix issues found using <a href=3D"http://checkpatch.pl" rel=3D"no=
referrer" target=3D"_blank">checkpatch.pl</a> for vt6655 staging driver.<br=
>
&gt; &gt;<br>
&gt; &gt; Mamta Shukla (4):<br>
&gt; &gt;=C2=A0 =C2=A0staging: vt6655: Add blank line after function/struct=
/union/enum declarations<br>
&gt; &gt;=C2=A0 =C2=A0staging: vt6655: Add spaces around &#39;*&#39;<br>
&gt; &gt;=C2=A0 =C2=A0staging: vt6655: Add spaces around &#39;-&#39;<br>
&gt; &gt;=C2=A0 =C2=A0staging: vt6655: Remove space after cast<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 drivers/staging/vt6655/rxtx.c | 29 +++++++++++++++---------=
-----<br>
&gt; &gt;=C2=A0 1 file changed, 15 insertions(+), 14 deletions(-)<br>
&gt;<br>
&gt; Don&#39;t put a cover letter for these checkpatch changes.<br>
&gt; It doesn&#39;t convey any additional info about the patch<br>
&gt; series and therefore isn&#39;t required.<br>
<br>
&gt;Himanshu, we recommend to use cover letter even for cleanup patches<br>
&gt;for Outreachy applicants because it helps them to practice and understa=
nd<br>
&gt;how patch series works. So, I would still prefer to have it.<br>
<br>
&gt;Mamta, I think in this case you can probably put what sort of <a href=
=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.p=
l</a><br>
&gt;issues your patch series is handling rather than just saying that it is=
 fixing<br>
<a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">&gt;c=
heckpatch.pl</a> issues.<br>
<br></blockquote><div>I will add required description in cover=C2=A0 letter=
.<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; &gt; Also, adding spaces could be squashed into a single patch.<br></b=
lockquote><div>=C2=A0</div><div>I will merge PATCH 2 and PATCH 3=C2=A0 and =
will send revised version of this patch series. <br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
&gt;I agree.<br>
<br>
&gt; Just remember these for future..<br>
&gt;<br>
&gt; Otherwise, ACK for whole series!<br>
&gt;<br>
&gt; --<br>
&gt; Himanshu Jha<br>
&gt; Undergraduate Student<br>
&gt; Department of Electronics &amp; Communication<br>
&gt; Guru Tegh Bahadur Institute of Technology<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181005181050.GC30924%40himanshu-Vostro-3=
559" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/outreachy-kernel/20181005181050.GC30924%40himanshu-Vostro-3559</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font f=
ace=3D"arial, helvetica, sans-serif">Mamta Shukla</font><div><font face=3D"=
arial, helvetica, sans-serif">Pune Institute=C2=A0 of Computer Technology</=
font></div><div><font face=3D"arial, helvetica, sans-serif">Pune</font></di=
v><div><font face=3D"arial, helvetica, sans-serif">m: 9158516957</font></di=
v><div><font face=3D"arial, helvetica, sans-serif">e :=C2=A0<a href=3D"mail=
to:mamtashukla555@gmail.com" target=3D"_blank">mamtashukla555@gmail.com</a>=
</font></div></div></div></div>

--000000000000709d5405778cfbba--

