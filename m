X-GM-THRID: 6330587655423655936
X-Received: by 10.13.230.79 with SMTP id p76mr7424346ywe.5.1473958401960;
        Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls3672304otd.19.gmail; Thu, 15 Sep
 2016 09:53:21 -0700 (PDT)
X-Received: by 10.157.23.171 with SMTP id j40mr6917545otj.41.1473958401520;
        Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id d206si360634ywh.3.2016.09.15.09.53.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id n66so3740843qkf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3Rdw6PF6HNfvJa07S3dGEQL1236BVCQhO5gQ7yDI22U=;
        b=giim91qkRjcg/JQBZmquOK6GDQ8Y7mnxg4HmdwxEf7nvP/2AWmRIit/hpwQ5sPH1ND
         IlIT3kzJOO6IbuqRq0eK1aPkAX+R7TB2ZYipXyhQk7WDekCGr3b2mEwQt8Z3KQI7/end
         h/E9L8hD+LBC6IS4be6CHpVAiJgezTXxdRzF/8QG0cefDWphcvLhsmCaQOVvA3irkohV
         O2leYjTUW2/qQcidkhmRRYP/y3tIrih2lEW2XuHnh/52QnMQrYVp/dVOodxYiW8CQV1+
         qyK2si99ez0dtX5xZLBeGPOlaAqODf8APnoMh92hdS10q8E9su24IY7bXOC+OYoM/se0
         x3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3Rdw6PF6HNfvJa07S3dGEQL1236BVCQhO5gQ7yDI22U=;
        b=cih16pBlih9VNwUMIkwExTNy0hYgFyctjGk4bCnZtTxyTVhm2VMF7HF1l0eFbM4QJ5
         +4sN/NOK6ka4g42mkTBRNZxhlNuKk8KpHpMl4M+gMIAaB8Bqt++HeqAYMzY3GBvO9eG0
         xV3Nmn6Q+LU+qToKd7znOir4Sm034qKD4jrTw4yTi24aHS97dsCLRIqa+oMVW7KKfMk7
         qBI8f+rdKrdcO+UMvTl+rSFT5pnD6DtoatgnTfkWezOO415jCz4cX4+/ZVwlSyx6uBW2
         CVSH855TqpXbWV9YwV+WTHdiJfTrN8LeJ836kO+NfEfmDmVhX8og5+x/xu0XZJDeyrIq
         CYLQ==
X-Gm-Message-State: AE9vXwNKHjKP7xqJEs4rporgFuSExXCeQ16qkS1dB5z1KKO3m7/dTM2pom68YDFVDABD6h7I3K6Pny1w4XwbGg==
X-Received: by 10.55.126.195 with SMTP id z186mr11351797qkc.76.1473958401352;
 Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Thu, 15 Sep 2016 09:53:21 -0700 (PDT)
In-Reply-To: <20160915163855.GD30633@kroah.com>
References: <eb4ec0a3-54df-4a86-a7d5-85c77aea38c2@googlegroups.com> <20160915163855.GD30633@kroah.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 15 Sep 2016 22:23:21 +0530
Message-ID: <CAAbeOSubG2DO2mzsudDyr2PcArn=W22JAF+20xFevff9L2SdRQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubts Regaarding the checkpatch.pl
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c05d030ed2a03053c8eaef1

--94eb2c05d030ed2a03053c8eaef1
Content-Type: text/plain; charset=UTF-8

>I'm sorry, but I can not parse this, can you rephrase it?

When we run checkpatch.pl on our staging directory then it shows
- Errors
- Warnings
- Checks

So I want to know if we solve the check using checkpatch.pl tool then it is
consider in our patches
or Only those checks is consider which is solved using  *cocci* script
because this script also fixes those
checks

Thanks,


On Thu, Sep 15, 2016 at 10:08 PM, Greg KH <gregkh@linuxfoundation.org>
wrote:

> On Thu, Sep 15, 2016 at 08:53:18AM -0700, Anchal Jain wrote:
> > In checkpatch.pl tool only considers those patch which fixes the
> > warning and errors.
>
> What do you mean by this?
>
> > Those patch fixes the CHECK using checkpatch.pl tool. It is considered
> > in the patch or not?
>
> I'm sorry, but I can not parse this, can you rephrase it?
>
> thanks,
>
> gre gk-h
>

--94eb2c05d030ed2a03053c8eaef1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><br>&gt;I&#39;m sorry, but I=
 can not parse this, can you rephrase it?<br><br>When we run <a href=3D"htt=
p://checkpatch.pl">checkpatch.pl</a> on our staging directory then it shows=
 <br></div>- Errors<br></div>- Warnings<br></div>- Checks<br><br></div>So I=
 want to know if we solve the check using <a href=3D"http://checkpatch.pl">=
checkpatch.pl</a> tool then it is consider in our patches<br></div>or Only =
those checks is consider which is solved using=C2=A0 <b>cocci</b> script be=
cause this script also fixes those <br></div>checks<br><div><br><div><div>T=
hanks,<br></div><div>=C2=A0<br></div></div></div></div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Thu, Sep 15, 2016 at 10:08 PM, Gre=
g KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" ta=
rget=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On Thu, Sep 15, 2016 at 08:53:18AM -0700, Anchal Ja=
in wrote:<br>
&gt; In <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blan=
k">checkpatch.pl</a> tool only considers those patch which fixes the<br>
&gt; warning and errors.<br>
<br>
What do you mean by this?<br>
<br>
&gt; Those patch fixes the CHECK using <a href=3D"http://checkpatch.pl" rel=
=3D"noreferrer" target=3D"_blank">checkpatch.pl</a> tool. It is considered<=
br>
&gt; in the patch or not?<br>
<br>
I&#39;m sorry, but I can not parse this, can you rephrase it?<br>
<br>
thanks,<br>
<br>
gre gk-h<br>
</blockquote></div><br></div>

--94eb2c05d030ed2a03053c8eaef1--

