X-GM-THRID: 6885024139738873856
X-Received: by 2002:a05:600c:20c:: with SMTP id 12mr16656593wmi.144.1603087968494;
        Sun, 18 Oct 2020 23:12:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls6665097wrc.1.gmail; Sun, 18 Oct
 2020 23:12:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9XGD24cicciBQ/CqGdxa6BcHOgwSCH94zmcP2PlvQYJI0q5ipvSwOBLUPwLMg/Yk9W+eg
X-Received: by 2002:a05:6000:1045:: with SMTP id c5mr18786008wrx.296.1603087966650;
        Sun, 18 Oct 2020 23:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603087966; cv=none;
        d=google.com; s=arc-20160816;
        b=mFag5vo2gqEUJ9O8Tv/sEGwTdi1+MOlTyQ8QK9rIrXEMPkKXMdaCB+cfu+8k+J7G2I
         Y0lXW1+o2iYKuhk1WBYHpPWMvEQSqWYztU2iIG6yyPn8Fhr+U1AoozXMNzcfm2zglZ97
         h65Hd+mta0UMl7uRvf4tsltQ2UnWQjZEsAxdvGgOB7zMmqy1sn0WGoXV3sUAnHacLn+E
         sp6ZmHTq3NaiuiE+bWxU7bjzjQ8/hetTaGAFeGesHUxTBHjfP5iU2F52v6/uGlorXOwc
         k8bKoSUmCIw4nrDi2FR/qyJzSN2QJrI1Di+dfAM0SxtuLbEUgpqOpOysYuZFu33JCp58
         ckRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NYi8t5+TnmsXuSCoom95HVjfukmMIGbb3J6gHv1L5j4=;
        b=qXYzT+ss/QbPEUj+vohaHG49MoazzWWWK8daI+lrX4I0PBoaYCFTOZiY/vMHZYRJRn
         NEuTGvUlGE2RE2cJFd9SaY1a0j+aM2YRJPqHgBQLDwABMnSXXw5GU2/8oLzZPAh3dRv3
         ixExPbTKhhM5HzJ8yO4AnAfoJ0fWEw5OZzVNI2vRlp1Pw+MjssRsCyTO63f2iefM+nfn
         49dpMFuCvcuBWjhYWdgOL73Q9vTUqnqns9hOCybbGwdRqM20sHEgMeFgsql7Qixi69So
         8PLZFeaXzvqMhSny9caLBaHiK8RusFd0q6UKaaoetfhXKqVOOZuOMM76Z00byXDfQG3t
         L80A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2K+Ka5U;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n19si316974wmk.1.2020.10.18.23.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 23:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N2K+Ka5U;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x543.google.com with SMTP id x1so8987533eds.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 23:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NYi8t5+TnmsXuSCoom95HVjfukmMIGbb3J6gHv1L5j4=;
        b=N2K+Ka5UuMs9Ay8IhrcUdDzPPxL+ZrBV9Q/ZZKSEd1AC5dm9iyzJgY7lxAJYi+Ekjb
         xOpPrcLzUvkkMDM8BmsXWFMv+Yo1TNgJOlF4ra/TUa3sjQcRgLIec3Ma33zfZvI2jgri
         xMbYwOHFzR91Pb40bRpa+OyH4WlQEioPf+Jy1903Bh9abp3k9F/kx2omOGGY6aWwQoO/
         ISQpXlOnPsSNcQc5Ov8mxWrDE6irQnffNT3SjQLTEW+LbDLW2n/YC5lIcC1Mwv2IriUm
         vDZ6Z7j70YhYBYobjQAfcIj5ZslPk98f4PjREqs3HQnvxxAbjxSiD0uN5o6VmlFIAK0M
         Z0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NYi8t5+TnmsXuSCoom95HVjfukmMIGbb3J6gHv1L5j4=;
        b=CLOaCg9khBSYLDmRmjqpKn44Lv9Tw2727EYZ35XpPL/b9Lx9BnQ56jmLBnemJVJ6pJ
         dynt4FXOgZVpjKFjMQbiPfTbjidnJDfmWWC8miswzzKFMTWhrRVlTARnyWuMXArq8rLE
         QqHowJm2hyMsX7LU/y109oZNdF4pX3C9J05IOWwH8F3cwARmfWXvGEHW3K9RB4mBlKCi
         VExADow6xIlQv4uUVGBTsKK7LGogkoBkAZHzZc5V+SWKVrxbpEmL1C6ybl75pbzZezuA
         hKuQl5oitGpelvLpNzBkSpcBC2n5cDDgZP+ScWSQQ2wkBtZc9eO3+zXu4Q+pKetN9ljd
         2iEA==
X-Gm-Message-State: AOAM530wmUD8igIv5Wl9+mWNS8wvrO3JGKHTp2l0b4sqY3Z2M3NdyNTu
	jueECgbxxqPdtp1vEtvEZ5p/++CHPKgyiQfLWJg=
X-Received: by 2002:a50:d7d8:: with SMTP id m24mr16308803edj.388.1603087966435;
 Sun, 18 Oct 2020 23:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201018180954.GA39024@ubuntu204> <CACAkLuoOgLe5pH5WsKqybZ92DcHiKM0eOCPuqm7wKMkeOC7s5Q@mail.gmail.com>
 <20201018184550.GA53720@ubuntu204> <CAPW4XYaGEv-LOxcR=dZ9QWwtsck3nvmkC2Jb=JMc+Q2LRrRSjg@mail.gmail.com>
 <20201019012710.GA76378@ubuntu204>
In-Reply-To: <20201019012710.GA76378@ubuntu204>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Mon, 19 Oct 2020 11:42:34 +0530
Message-ID: <CACAkLupe6Xf+0aA0k2v+maPhXtCmfgnxw5W5Mg9p1VYc9d9LzA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Use sysfs_emit for
 show(device *...) functions
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Helen Koike <helen@koikeco.de>, outreachy-kernel@googlegroups.com, 
	Ian Abbott <abbotti@mev.co.uk>, H Hartley Sweeten <hsweeten@visionengravers.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000c87ce205b2000021"

--000000000000c87ce205b2000021
Content-Type: text/plain; charset="UTF-8"

On Mon, 19 Oct, 2020, 6:57 AM Deepak R Varma, <mh12gx2825@gmail.com> wrote:

> On Sun, Oct 18, 2020 at 09:21:24PM -0300, Helen Koike wrote:
> > Hi Deepak,
> >
> > On Sun, Oct 18, 2020 at 3:45 PM Deepak R Varma <mh12gx2825@gmail.com>
> wrote:
> > >
> > > On Mon, Oct 19, 2020 at 12:01:24AM +0530, Sumera Priyadarsini wrote:
> > > > On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, <mh12gx2825@gmail.com>
> wrote:
> > > >
> > > > > Convert snprintf calls in device show functions to sysfs_emit
> > > > > for PAGE_SIZE buffer safety.
> > > > > Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
> > > > >
> > > > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > > > > ---
> > > > >  drivers/staging/comedi/comedi_fops.c | 8 ++++----
> > > > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/comedi/comedi_fops.c
> > > > > b/drivers/staging/comedi/comedi_fops.c
> > > > > index d99231c737fb..5b8ba0c84a8e 100644
> > > > > --- a/drivers/staging/comedi/comedi_fops.c
> > > > > +++ b/drivers/staging/comedi/comedi_fops.c
> > > > > @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct
> device
> > > > > *csdev,
> > > > >         mutex_unlock(&dev->mutex);
> > > > >
> > > > >         comedi_dev_put(dev);
> > > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > > +       return sysfs_emit(buf, "%u\n", size);
> > > > >  }
> > > > >
> > > > >  static ssize_t max_read_buffer_kb_store(struct device *csdev,
> > > > > @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct
> device
> > > > > *csdev,
> > > > >         mutex_unlock(&dev->mutex);
> > > > >
> > > > >         comedi_dev_put(dev);
> > > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > > +       return sysfs_emit(buf, "%u\n", size);
> > > > >  }
> > > > >
> > > > >  static ssize_t read_buffer_kb_store(struct device *csdev,
> > > > > @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct
> device
> > > > > *csdev,
> > > > >         mutex_unlock(&dev->mutex);
> > > > >
> > > > >         comedi_dev_put(dev);
> > > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > > +       return sysfs_emit(buf, "%u\n", size);
> > > > >  }
> > > > >
> > > > >  static ssize_t max_write_buffer_kb_store(struct device *csdev,
> > > > > @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct
> device
> > > > > *csdev,
> > > > >         mutex_unlock(&dev->mutex);
> > > > >
> > > > >         comedi_dev_put(dev);
> > > > > -       return snprintf(buf, PAGE_SIZE, "%u\n", size);
> > > > > +       return sysfs_emit(buf, "%u\n", size);
> > > > >  }
> > > > >
> > > > >  static ssize_t write_buffer_kb_store(struct device *csdev,
> > > > > --
> > > > > 2.25.1
> > > > >
> > > >
> > > > Hi Deepak,
> > > >
> > > > I was just about to send a V2 for the previous patchset I sent which
> > > > included this file as well. No issues since I've not sent it yet-
> I'll
> > > > remove this file from my V2. But please give me a heads-up the next
> time so
> > > > we are not working on the same files. :-)
> > > >
> > > > Thanks, and regards,
> > > > Sumera
> > > >
> > >
> > > Sure. I should have informed you. My bad.
> > > I also sent in patches for the other two files as well. So you can look
> > > for other issues to fix.
> >
> > Nice work you are doing with the contribution period :)
> >
> > I just want to second what Sumera said.
> > Since Sumera had already replied in the past email thread[1] (which you
> also
> > replied, so I guess you saw her reply there), she mentioned she would
> submit
> > V2 with those changes.
> >
> > [1]
> https://groups.google.com/g/outreachy-kernel/c/-VkRW5siDic/m/vGVf6Ft0AwAJ
> >
> > In a community workflow, when a person sends a patch and people request
> > changes, we usually wait for the original author to submit v2, even if
> you
> > know how to fix it quickly.
> > And if, for some reason, you need that change now (which wasn't the
> case),
> > it is a good practice to ask the author if you can send v2 on their
> behalf.
> >
> > You can expect the same from others too. I hope this helps a bit,
> clarifying how
> > the community works :)
> >
> > Keep the nice work!
> >
> > Regards,
> > Helen
> >
>
> Hi Helen,
> That makes perfect sense. It was my bad. I should not have modified
> these files. I will remember your advise going forward.
>
> Hi Sumera,
> Once again, sorry for the overstepping. I will keep the protocol in mind
> going forward.
> For now, I am happy if you would like to get these patches on your name
> since you started with these. Absolutely fine with me.
>

Hey Deepak,

Like I said, I am okay with it.  :-)

Thanks,
Sumera

Thank you,
> Deepak.
>
> > >
> > > Thanks.
> > > Deepak.
> > >
> > > > --
> > > > > You received this message because you are subscribed to the Google
> Groups
> > > > > "outreachy-kernel" group.
> > > > > To unsubscribe from this group and stop receiving emails from it,
> send an
> > > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > To view this discussion on the web visit
> > > > >
> https://groups.google.com/d/msgid/outreachy-kernel/20201018180954.GA39024%40ubuntu204
> > > > > .
> > > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20201018184550.GA53720%40ubuntu204
> .
>

--000000000000c87ce205b2000021
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, 19 Oct, 2020, 6:57 AM Deepak R Varma, &lt;<a h=
ref=3D"mailto:mh12gx2825@gmail.com">mh12gx2825@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Sun, Oct 18, 2020 at 09:21:24PM -03=
00, Helen Koike wrote:<br>
&gt; Hi Deepak,<br>
&gt; <br>
&gt; On Sun, Oct 18, 2020 at 3:45 PM Deepak R Varma &lt;<a href=3D"mailto:m=
h12gx2825@gmail.com" target=3D"_blank" rel=3D"noreferrer">mh12gx2825@gmail.=
com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Oct 19, 2020 at 12:01:24AM +0530, Sumera Priyadarsini wro=
te:<br>
&gt; &gt; &gt; On Sun, 18 Oct, 2020, 11:40 PM Deepak R Varma, &lt;<a href=
=3D"mailto:mh12gx2825@gmail.com" target=3D"_blank" rel=3D"noreferrer">mh12g=
x2825@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Convert snprintf calls in device show functions to sysf=
s_emit<br>
&gt; &gt; &gt; &gt; for PAGE_SIZE buffer safety.<br>
&gt; &gt; &gt; &gt; Warning generated by: scripts/coccinelle/api/device_att=
r_show.cocci<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Deepak R Varma &lt;<a href=3D"mailto:mh1=
2gx2825@gmail.com" target=3D"_blank" rel=3D"noreferrer">mh12gx2825@gmail.co=
m</a>&gt;<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt;=C2=A0 drivers/staging/comedi/comedi_fops.c | 8 ++++----=
<br>
&gt; &gt; &gt; &gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<b=
r>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; diff --git a/drivers/staging/comedi/comedi_fops.c<br>
&gt; &gt; &gt; &gt; b/drivers/staging/comedi/comedi_fops.c<br>
&gt; &gt; &gt; &gt; index d99231c737fb..5b8ba0c84a8e 100644<br>
&gt; &gt; &gt; &gt; --- a/drivers/staging/comedi/comedi_fops.c<br>
&gt; &gt; &gt; &gt; +++ b/drivers/staging/comedi/comedi_fops.c<br>
&gt; &gt; &gt; &gt; @@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_s=
how(struct device<br>
&gt; &gt; &gt; &gt; *csdev,<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;dev-=
&gt;mutex);<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_dev_put(dev);<b=
r>
&gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_S=
IZE, &quot;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quo=
t;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 static ssize_t max_read_buffer_kb_store(struct de=
vice *csdev,<br>
&gt; &gt; &gt; &gt; @@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(=
struct device<br>
&gt; &gt; &gt; &gt; *csdev,<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;dev-=
&gt;mutex);<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_dev_put(dev);<b=
r>
&gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_S=
IZE, &quot;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quo=
t;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 static ssize_t read_buffer_kb_store(struct device=
 *csdev,<br>
&gt; &gt; &gt; &gt; @@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_=
show(struct device<br>
&gt; &gt; &gt; &gt; *csdev,<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;dev-=
&gt;mutex);<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_dev_put(dev);<b=
r>
&gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_S=
IZE, &quot;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quo=
t;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 static ssize_t max_write_buffer_kb_store(struct d=
evice *csdev,<br>
&gt; &gt; &gt; &gt; @@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show=
(struct device<br>
&gt; &gt; &gt; &gt; *csdev,<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&amp;dev-=
&gt;mutex);<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0comedi_dev_put(dev);<b=
r>
&gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_S=
IZE, &quot;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return sysfs_emit(buf, &quo=
t;%u\n&quot;, size);<br>
&gt; &gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 static ssize_t write_buffer_kb_store(struct devic=
e *csdev,<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; 2.25.1<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Hi Deepak,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I was just about to send a V2 for the previous patchset I se=
nt which<br>
&gt; &gt; &gt; included this file as well. No issues since I&#39;ve not sen=
t it yet- I&#39;ll<br>
&gt; &gt; &gt; remove this file from my V2. But please give me a heads-up t=
he next time so<br>
&gt; &gt; &gt; we are not working on the same files. :-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Thanks, and regards,<br>
&gt; &gt; &gt; Sumera<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Sure. I should have informed you. My bad.<br>
&gt; &gt; I also sent in patches for the other two files as well. So you ca=
n look<br>
&gt; &gt; for other issues to fix.<br>
&gt; <br>
&gt; Nice work you are doing with the contribution period :)<br>
&gt; <br>
&gt; I just want to second what Sumera said.<br>
&gt; Since Sumera had already replied in the past email thread[1] (which yo=
u also<br>
&gt; replied, so I guess you saw her reply there), she mentioned she would =
submit<br>
&gt; V2 with those changes.<br>
&gt; <br>
&gt; [1] <a href=3D"https://groups.google.com/g/outreachy-kernel/c/-VkRW5si=
Dic/m/vGVf6Ft0AwAJ" rel=3D"noreferrer noreferrer" target=3D"_blank">https:/=
/groups.google.com/g/outreachy-kernel/c/-VkRW5siDic/m/vGVf6Ft0AwAJ</a><br>
&gt; <br>
&gt; In a community workflow, when a person sends a patch and people reques=
t<br>
&gt; changes, we usually wait for the original author to submit v2, even if=
 you<br>
&gt; know how to fix it quickly.<br>
&gt; And if, for some reason, you need that change now (which wasn&#39;t th=
e case),<br>
&gt; it is a good practice to ask the author if you can send v2 on their be=
half.<br>
&gt; <br>
&gt; You can expect the same from others too. I hope this helps a bit, clar=
ifying how<br>
&gt; the community works :)<br>
&gt; <br>
&gt; Keep the nice work!<br>
&gt; <br>
&gt; Regards,<br>
&gt; Helen<br>
&gt; <br>
<br>
Hi Helen,<br>
That makes perfect sense. It was my bad. I should not have modified<br>
these files. I will remember your advise going forward.<br>
<br>
Hi Sumera,<br>
Once again, sorry for the overstepping. I will keep the protocol in mind<br=
>
going forward.<br>
For now, I am happy if you would like to get these patches on your name<br>
since you started with these. Absolutely fine with me.<br></blockquote></di=
v></div><div dir=3D"auto"><br></div><div dir=3D"auto">Hey Deepak,=C2=A0</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Like I said, I am okay with=
 it.=C2=A0 :-)=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Tha=
nks,=C2=A0</div><div dir=3D"auto">Sumera</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Thank you,<br>
Deepak.<br>
<br>
&gt; &gt;<br>
&gt; &gt; Thanks.<br>
&gt; &gt; Deepak.<br>
&gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; You received this message because you are subscribed to=
 the Google Groups<br>
&gt; &gt; &gt; &gt; &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; &gt; &gt; To unsubscribe from this group and stop receiving email=
s from it, send an<br>
&gt; &gt; &gt; &gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscri=
be@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+=
unsubscribe@googlegroups.com</a>.<br>
&gt; &gt; &gt; &gt; To view this discussion on the web visit<br>
&gt; &gt; &gt; &gt; <a href=3D"https://groups.google.com/d/msgid/outreachy-=
kernel/20201018180954.GA39024%40ubuntu204" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/20201018=
180954.GA39024%40ubuntu204</a><br>
&gt; &gt; &gt; &gt; .<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; You received this message because you are subscribed to the Googl=
e Groups &quot;outreachy-kernel&quot; group.<br>
&gt; &gt; To unsubscribe from this group and stop receiving emails from it,=
 send an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegr=
oups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe=
@googlegroups.com</a>.<br>
&gt; &gt; To view this discussion on the web visit <a href=3D"https://group=
s.google.com/d/msgid/outreachy-kernel/20201018184550.GA53720%40ubuntu204" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/20201018184550.GA53720%40ubuntu204</a>.<br>
</blockquote></div></div></div>

--000000000000c87ce205b2000021--

