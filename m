X-GM-THRID: 6200081911391453184
X-Received: by 10.112.145.3 with SMTP id sq3mr186320lbb.7.1443586853166;
        Tue, 29 Sep 2015 21:20:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.1 with SMTP id i1ls15281lfb.15.gmail; Tue, 29 Sep 2015
 21:20:51 -0700 (PDT)
X-Received: by 10.112.144.99 with SMTP id sl3mr184526lbb.12.1443586851072;
        Tue, 29 Sep 2015 21:20:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c1si757045wiv.3.2015.09.29.21.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 21:20:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id gb1so176094012wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 21:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=5tpXEy9UNMZhA+noVaKI0SWefR5KEyiDnONnq6O0ohg=;
        b=YJoIuKshIxxZFSigIeZpYZl6gOOtxACfZvzfFT6gwdqEmE4oa8SwaMruahf+JugCjN
         4eQJk8WEEaBUD9y+sdMNzZ5eOFcknBu2Cc2dEHZ7K2IcFk4QyrR3WprokCGAgwhWVx99
         7W7Yc/Yf+S3OQIz5TxTjApMcPhVcyS3ASgM82mAKpkD0wYe6vImbjKXlK6nkm8yerphc
         WaVpGuYXyyMNa4H1iiKteON9MEUf/o0GgqrnKgE3/XbkipD/77dKDyvMoeVY+DIYpcwb
         hqHqTEcdvPgW/QI8mZgwf+u5uh/+nqbei+UJxkFE5tIUNb+/xcQNbiLWbG5s9ip35Yks
         8LhQ==
MIME-Version: 1.0
X-Received: by 10.194.90.20 with SMTP id bs20mr1709884wjb.87.1443586850943;
 Tue, 29 Sep 2015 21:20:50 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 29 Sep 2015 21:20:50 -0700 (PDT)
In-Reply-To: <20150930041851.GA21970@kroah.com>
References: <20150929232413.GA16457@ubuntu>
	<20150930015931.GA14259@kroah.com>
	<CAKHNQQFAUaJfbySZ_r-ZtFAz9B7ih0Vmezgz3Qv7-khTB-2WYA@mail.gmail.com>
	<20150930041851.GA21970@kroah.com>
Date: Wed, 30 Sep 2015 09:50:50 +0530
Message-ID: <CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visorbus:
 visorchipset: Converted arrays to static const
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bd9175673fcc00520ef4157

--047d7bd9175673fcc00520ef4157
Content-Type: text/plain; charset=UTF-8

This was a warning message by compiler only that I need to convert char *
to static const char * const. I just did that without noticing env_selftest
which is directly related. and then when I compiled, it worked. Compilers
aren't very reliable, I see.

Thanks, Greg!

On Wed, Sep 30, 2015 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Sep 30, 2015 at 09:41:14AM +0530, Shivani Bhardwaj wrote:
>
> <snip>
>
> For some reason you sent this only to me, which is a bit rude to
> everyone else on the mailing list.  I'll be glad to respond if you
> resend it to everyone.
>
> thanks,
>
> greg k-h
>

--047d7bd9175673fcc00520ef4157
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This was a warning message by compiler only that I ne=
ed to convert=20
char * to static const char * const. I just did that without noticing=20
env_selftest which is directly related. and then when I compiled, it=20
worked. Compilers aren&#39;t very reliable, I see.<br><br></div>Thanks, Gre=
g!</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, S=
ep 30, 2015 at 9:48 AM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gre=
gkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Sep 30, 2015 at =
09:41:14AM +0530, Shivani Bhardwaj wrote:<br>
<br>
&lt;snip&gt;<br>
<br>
For some reason you sent this only to me, which is a bit rude to<br>
everyone else on the mailing list.=C2=A0 I&#39;ll be glad to respond if you=
<br>
resend it to everyone.<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--047d7bd9175673fcc00520ef4157--

