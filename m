X-GM-THRID: 6620354100879949824
X-Received: by 2002:a9d:5908:: with SMTP id t8mr17200086oth.17.1541441287167;
        Mon, 05 Nov 2018 10:08:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1b7:: with SMTP id e52ls576457ote.9.gmail; Mon, 05 Nov
 2018 10:08:06 -0800 (PST)
X-Google-Smtp-Source: AJdET5eDaFg+zQMuY6TsJuczw+QCLf4pCe7c1JlJDpjA0zc+3pZSxOBLcHwSMVpUl3oEWeaGSY3S
X-Received: by 2002:a9d:c6:: with SMTP id 6mr4382215otk.51.1541441286333;
        Mon, 05 Nov 2018 10:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541441286; cv=none;
        d=google.com; s=arc-20160816;
        b=zdTdbWNZ3GTQ4Ea1EvGGS3pFRKTe5qeIrOSPA0LL+Q0GMJHYtUW0lbDVQLysp/UIhT
         H27ZP9jPo4jygm9f+uPCJNAnXD3anckvyXl91mcC4QS93WzGqrwD8No1wwletJ5QODSc
         mySO38YaKfdIc8RQ5OSlcrrgMgW4YS2kajttIC0mIj//dhQMq2TDVy78ABNxbOoavgSI
         itYenQyUHaRvKuSTTgugpy59kHnGT0/4xUrJyuvAz3LfoZuzBpSEoK31VIlp7fP0Ko4Z
         m4OvUxlLrulrZIJWJLNjsUpq/8En6kI1DWkCiijR6xshL9Q8nzBYA+qDjE21dH/dQGlF
         ytGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4cRNiqiAsO1at2d1NjZFhOA2VrFu9TLJqx9udi7rjZg=;
        b=x0m80eIk8G0BXjX6YwDpZuUhbSeenUQLdTG/OdB+ARsXtce9ZbbpE/DpWokxRPgicZ
         GcXwdI5BpWO2c7+RH38WLp/UixI9jvnMRuyRZaR6xpmlvne4spJR8ENdgaRf0toOv1d6
         MBfpJY11IdqP+DhEbnY8Igs6PszG0mS5nxTHG+AWPb2QeWTGsp4yE5QBFirSRuIA8AsB
         8iN+uJxHEKK2zhLIaKjvb1faBtxyKxNPltmzTcEzcXoX/FZ1jO4J++3TGYFYrSNFcdHl
         lo+K+IJ8e2JYbwzI8vXGJMDs9R2Rb+/BoeiowIHRtU71/wlQ6EJaE0/6PBp8W9Pzj/vc
         J4ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5LD2H1h;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id s8si941160otb.2.2018.11.05.10.08.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 10:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5LD2H1h;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x729.google.com with SMTP id 131so16401022qkd.4
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 10:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4cRNiqiAsO1at2d1NjZFhOA2VrFu9TLJqx9udi7rjZg=;
        b=B5LD2H1hHEI0JZWhLVGqt5059F9UAAI6YB3oH+jA4WSXc9JTY+XTz6UC+VcwsYYymF
         DDtAu9xZaVozYtAqG8uMb9uwEnPs07OHJ+9GOjHlRKeo4P3bL+6o0GHX3JBWvJ647XrW
         T0bWYMS8ARK061lbB9Q7TvLCRLGvHi0XI+flDaR6dFPlOM8t70hExzBoe8qUetyIvaN9
         Vq3UQwt9wWtITjWYOcs/oUPrNfFd7BFksVe3IpKwmV4oxW16sQWcJ8c0LeV/LKGvt/M7
         S68RA/ngFP/zrwcXLCsfYPyqT+nJ6vyS0Gm3xrOs6CijhxU+IQEPJJE/cWuFey6+ZB/S
         Oa5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4cRNiqiAsO1at2d1NjZFhOA2VrFu9TLJqx9udi7rjZg=;
        b=F8x2YoeRKFPdwXM1zDbH8SyODopR34kI6fEXxT91t6NKlrY6wjvthm680Nj8tH15V7
         V+QW6ARvtvapbqH9qVFYjOP3d6x9EHphJQCUL5GQq7M9+wXhkLtbWNQ+8GF6+Ld1Meev
         VXyPWuztMXwEyhIdh8+YvH/9Hmxa+tONpManWa0iNywujvQRgb8LtUm/GzqnOhOsohcK
         eVSzuVvRVI+D5nG2HYlPPGyK8u3XzAIH9pMcwbMsM8JSIKcLZSOLesBcevBVbwJuERNM
         7EftdP0QE9jaYHk0mLw5D1Lm1J+Ul+BfIQUt1ao5MKkGk8zsJJMOkMLBNkMtG14nQIRn
         LQIA==
X-Gm-Message-State: AGRZ1gLhKj2Q8ywpmHW9eSgsD1TkOtXCFkV+kdPJEDC8kEx39QLyv8Sy
	PKSxW9zY2D0S3MN2ojuMQHdm2liZ6q+1EmdXYCc=
X-Received: by 2002:ad4:510f:: with SMTP id g15mr23029734qvp.46.1541441285608;
 Mon, 05 Nov 2018 10:08:05 -0800 (PST)
MIME-Version: 1.0
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
 <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com> <alpine.DEB.2.20.1811051650270.31780@hadrien>
In-Reply-To: <alpine.DEB.2.20.1811051650270.31780@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Mon, 5 Nov 2018 23:37:53 +0530
Message-ID: <CAOMPgjgoseN=+1ezv+xDZSoWpUxnsA3f70NisjAwZN=113fj7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: erofs: Modify
 conditional checks
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>, linux-erofs@lists.ozlabs.org
Content-Type: multipart/alternative; boundary="0000000000004558ca0579eec49e"

--0000000000004558ca0579eec49e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gao,

In PATCH version v1 which is first stage of contribution, I modified data.c
for all alignment changes and all conditional checks. As per discussion on
email for this patch, It was concluded that I need to re-submit patch for
single change at a time.

So, I created PATCH v2. In this patch, I modified data.c only for single
conditional check and single alignment change and committed accordingly. As
per Gao=E2=80=99s suggestion to do all alignment change in a first patch an=
d all
conditional changes in another patch, I modified and created PATCH v3.

PATCH v3 is divided into two patches.
1) PATCH v3 1/2 has all alignment changes.
2) PATCH v3 2/2 has all conditional changes.

Also, I mentioned what changes each version of patch represents under =E2=
=80=98=E2=80=94-=E2=80=98
symbol.

I am not able to understand, where I am making mistake? Can you please help
me?


@Julia Lawall <julia.lawall@lip6.fr>  How can I include Reviewed-by in
patch submission? we are allow to do that? If yes, then from where I can
get that information?

Regards

On Mon, Nov 5, 2018 at 9:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Mon, 5 Nov 2018, Gao Xiang wrote:
>
> > Hi Bhagyashri,
> >
> > On 2018/11/5 22:50, Bhagyashri P. Dighole wrote:
> > > Fix coding style alignment issues detected by checkpatch.pl
> > > Use ! for NULL test rather than explicitly comparing to NULL.
> > >
> > > Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> > > ---
> > > Changes in v3:
> > > - Split patch in two patches. Each patch have similar
> > >   kind of changes. One patch for all alignment fixes and
> > >     second patch for all conditional check fixes.
> > >
> > > Changes in v2:
> > > - Fix for one alignment issue and one conditional check issue.
> > >
> > > Changes in v1:
> > > - Fix for all issues in data.c
> >
> > As the Greg said before, there are too many patchset v3... :(
> > Apart from its content, could you please resend the whole patchset
> > by using a proper version number...
> >
> > It is really confusing for me as well...
>
> Bhagyashri,
>
> When you resend, you should include the Reviewed-by that you received.
>
> julia
>
>
> >
> > Thanks,
> > Gao Xiang
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/3ac63350-6bfc-0dba-264=
9-ad7f91dd94c9%40huawei.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000004558ca0579eec49e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div><span style=3D"color:rgb(49,49,=
49);word-spacing:1px;background-color:rgb(255,255,255)">Hi Gao,</span><br s=
tyle=3D"color:rgb(49,49,49);word-spacing:1px"><br style=3D"color:rgb(49,49,=
49);word-spacing:1px"><span style=3D"color:rgb(49,49,49);word-spacing:1px;b=
ackground-color:rgb(255,255,255)">In
 PATCH version v1 which is first stage of contribution, I modified=20
data.c for all alignment changes and all conditional checks.</span><span st=
yle=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(253,253,25=
3)">=C2=A0</span><span style=3D"color:rgb(49,49,49);word-spacing:1px;backgr=
ound-color:rgb(255,255,255)">As per discussion on email for this patch, It =
was concluded that I need to re-submit patch for single change at a time.</=
span></div><div dir=3D"auto"><span style=3D"background-color:rgb(255,255,25=
5)"><br style=3D"color:rgb(49,49,49);word-spacing:1px"></span><span style=
=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)"=
>So,
 I created PATCH v2. In this patch, I modified data.c only for single=20
conditional check and single alignment change and committed accordingly.=20
As per Gao=E2=80=99s suggestion to do all alignment change in a first patch=
 and=20
all conditional changes in another patch, I modified and created PATCH=20
v3.</span></div><div dir=3D"auto"><br style=3D"color:rgb(49,49,49);word-spa=
cing:1px"><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-co=
lor:rgb(255,255,255)">PATCH v3 is divided into two patches.</span></div><di=
v dir=3D"auto"><span style=3D"background-color:rgb(255,255,255)">1) PATCH v=
3 1/2 has all alignment changes.</span></div><div dir=3D"auto"><span style=
=3D"background-color:rgb(255,255,255)">2) PATCH v3 2/2 has all conditional =
changes.</span></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><f=
ont color=3D"#313131"><span style=3D"word-spacing:1px">Also, I mentioned wh=
at changes each version of patch represents under =E2=80=98=E2=80=94-=E2=80=
=98 symbol.</span></font></div><div dir=3D"auto"><br style=3D"color:rgb(49,=
49,49);word-spacing:1px"><span style=3D"color:rgb(49,49,49);word-spacing:1p=
x;background-color:rgb(255,255,255)">I am not able to understand, where I a=
m making mistake?=C2=A0</span><span style=3D"color:rgb(49,49,49);word-spaci=
ng:1px;background-color:rgb(255,255,255)">Can you please help me?</span></d=
iv><div dir=3D"auto"><br></div><br style=3D"color:rgb(49,49,49);word-spacin=
g:1px"><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-color=
:rgb(255,255,255)"><a tabindex=3D"-1" href=3D"mailto:julia.lawall@lip6.fr" =
id=3D"plusReplyChip-0" class=3D"gmail_plusreply">@Julia Lawall</a>=C2=A0 Ho=
w can I include Reviewed-by in patch submission? we are allow to do=20
that? If yes, then from where I can get that information?</span><br style=
=3D"color:rgb(49,49,49);word-spacing:1px"><br style=3D"color:rgb(49,49,49);=
word-spacing:1px"><span style=3D"color:rgb(49,49,49);word-spacing:1px;backg=
round-color:rgb(255,255,255)">Regards</span></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Mon, Nov 5, 2018 at 9:21 PM Julia Lawall &l=
t;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Mon, 5 Nov 2018, Gao Xiang wrote:<br>
<br>
&gt; Hi Bhagyashri,<br>
&gt;<br>
&gt; On 2018/11/5 22:50, Bhagyashri P. Dighole wrote:<br>
&gt; &gt; Fix coding style alignment issues detected by <a href=3D"http://c=
heckpatch.pl" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt; &gt; Use ! for NULL test rather than explicitly comparing to NULL.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Bhagyashri P. Dighole &lt;<a href=3D"mailto:dighol=
ebhagyashri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt=
;<br>
&gt; &gt; ---<br>
&gt; &gt; Changes in v3:<br>
&gt; &gt; - Split patch in two patches. Each patch have similar<br>
&gt; &gt;=C2=A0 =C2=A0kind of changes. One patch for all alignment fixes an=
d<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0second patch for all conditional check fixes.<=
br>
&gt; &gt;<br>
&gt; &gt; Changes in v2:<br>
&gt; &gt; - Fix for one alignment issue and one conditional check issue.<br=
>
&gt; &gt;<br>
&gt; &gt; Changes in v1:<br>
&gt; &gt; - Fix for all issues in data.c<br>
&gt;<br>
&gt; As the Greg said before, there are too many patchset v3... :(<br>
&gt; Apart from its content, could you please resend the whole patchset<br>
&gt; by using a proper version number...<br>
&gt;<br>
&gt; It is really confusing for me as well...<br>
<br>
Bhagyashri,<br>
<br>
When you resend, you should include the Reviewed-by that you received.<br>
<br>
julia<br>
<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Gao Xiang<br>
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
gle.com/d/msgid/outreachy-kernel/3ac63350-6bfc-0dba-2649-ad7f91dd94c9%40hua=
wei.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/m=
sgid/outreachy-kernel/3ac63350-6bfc-0dba-2649-ad7f91dd94c9%40huawei.com</a>=
.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div>

--0000000000004558ca0579eec49e--

