X-GM-THRID: 6264247085046956032
X-Received: by 10.50.136.232 with SMTP id qd8mr12524310igb.0.1458589540758;
        Mon, 21 Mar 2016 12:45:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.68.101 with SMTP id v5ls415806obt.23.gmail; Mon, 21 Mar
 2016 12:45:40 -0700 (PDT)
X-Received: by 10.182.233.170 with SMTP id tx10mr24970726obc.18.1458589540367;
        Mon, 21 Mar 2016 12:45:40 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-oi0-x242.google.com (mail-oi0-x242.google.com. [2607:f8b0:4003:c06::242])
        by gmr-mx.google.com with ESMTPS id m18si20039675igk.0.2016.03.21.12.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) client-ip=2607:f8b0:4003:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:4003:c06::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x242.google.com with SMTP id j206so6585602oig.1
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 12:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc;
        bh=17kRIl8Xp6eMXEbX4JbpsQMltj1juJmbnq1dTfVVD1c=;
        b=bXsFdVGG5yIYeXpiEbn55/2TXX75/yc7n/aaeJrvb5IEzkuDfS7mfEu622Vv3NJ6nB
         yKKN8FPjLvnNsOeODo36gTDUDAofKOxH500DbvrFZLZ7cDFzY5+EjZJpqXyqMyWwHjxx
         kbX1k/fwtZ62KM/30kE5D98Wx2I+bJbQEtpAIekc8ml6igFSTGHIDF/XFNgc6o/X8Hne
         MPLydMc1i7VyvblHlSU+aj4beuUbmWEHJOc2cUBpt9YamSZQFU1X3+tPBwqCxOgEU/V4
         9DtKenI1SXqPqamr0NtWAFZP9UwxKESd45wSnBfqywf6wh6fx4EdjWwaqz0ECgqwCezh
         APPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :date:message-id:subject:from:to:cc;
        bh=17kRIl8Xp6eMXEbX4JbpsQMltj1juJmbnq1dTfVVD1c=;
        b=OJ4Y0fb3RUVRJOj69LaitV0nMKfw9BrJitmBHndMGwxidJSsiFa7So2LxIA4o+2ktE
         2K2FzP7nO96iK8I7b8dqkHezde8phgWVjULe35oeM7qp1EG+V1mpYaQRormURVG2wI6P
         HakZqca5Vol0bmLcYGan+ty/JbWr+y6qfNijkTRJLvvEm74QbLuAjTeBVl305eekSsOr
         1BJRiYllfah7jXEoIxf80wLtAy57yiYXpnydXPc2+IKPJIqwmUDZe5OCtz8UDVYmc4U3
         8VBgztjRGpPQ7C0J8M1cZENU0kOk0dVUSG6uDmxDVMWCOuLkbHl3FISPfXOP6tkqk1X1
         Ftmg==
X-Gm-Message-State: AD7BkJKb1yCeoFzjZ8xreVICLfjC/E7SRVhP0pTHJSiYkBFUJp8HYL54BirjEcQ+p1AleFGDNGsbTA6jm39/Gw==
MIME-Version: 1.0
X-Received: by 10.202.230.15 with SMTP id d15mr15496584oih.104.1458589540038;
 Mon, 21 Mar 2016 12:45:40 -0700 (PDT)
Received: by 10.157.63.101 with HTTP; Mon, 21 Mar 2016 12:45:39 -0700 (PDT)
Reply-To: bankarsandhya512@gmail.com
In-Reply-To: <20160321192737.GA19063@kroah.com>
References: <cover.1458482776.git.bankarsandhya512@gmail.com>
	<76c8444c410c148c89a8e76d8ef0dbbf486d2e8f.1458482776.git.bankarsandhya512@gmail.com>
	<20160321192737.GA19063@kroah.com>
Date: Tue, 22 Mar 2016 01:15:39 +0530
Message-ID: <CAA3ASz=zQTYLeefJvBjLk7FqFyrMTHJzbTYLmLy=WCYQ-GhA0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: lustre: rpc: Use sizeof
 type *pointer instead of sizeof type.
From: sandhya bankar <bankarsandhya512@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1141775c68441b052e9457c2

--001a1141775c68441b052e9457c2
Content-Type: text/plain; charset=UTF-8

Hello,
  Actually as per mentor suggestion i had made changes in commit massage.
So i have not send patch v2.  I will send patch v2.



Thanks,
Sandhya


On Tue, Mar 22, 2016 at 12:57 AM, Greg KH <gregkh@linuxfoundation.org>
wrote:

> On Sun, Mar 20, 2016 at 07:53:17PM +0530, Sandhya Bankar wrote:
> > Use sizeof type *pointer instead of sizeof type.
> >
> > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> > ---
> >  drivers/staging/lustre/lnet/selftest/rpc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> You already sent this patch.  Or you sent this again with changes, yet
> did not provide a 'v2' marking and description of what changed.
>
> I'm going to drop both series, please resend in a format that explains
> what changed.
>
> thanks,
>
> greg k-h
>

--001a1141775c68441b052e9457c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>=C2=A0 Actually as per ment=
or suggestion i had made changes in commit massage. So i have not send patc=
h v2.=C2=A0 I will send patch v2.<br><br><br><br></div>Thanks,<br></div>San=
dhya<br><div><div><br></div></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Tue, Mar 22, 2016 at 12:57 AM, Greg KH <span dir=
=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank=
">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><span class=3D"im HOEnZb">On Sun, Mar 20, 2016 at 07:53:17PM +053=
0, Sandhya Bankar wrote:<br>
</span><span class=3D"im HOEnZb">&gt; Use sizeof type *pointer instead of s=
izeof type.<br>
&gt;<br>
&gt; Signed-off-by: Sandhya Bankar &lt;<a href=3D"mailto:bankarsandhya512@g=
mail.com">bankarsandhya512@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/selftest/rpc.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">You already sent this patch.=
=C2=A0 Or you sent this again with changes, yet<br>
did not provide a &#39;v2&#39; marking and description of what changed.<br>
<br>
I&#39;m going to drop both series, please resend in a format that explains<=
br>
what changed.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</div></div></blockquote></div><br></div>

--001a1141775c68441b052e9457c2--

