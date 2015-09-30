X-GM-THRID: 6200081911391453184
X-Received: by 10.112.144.99 with SMTP id sl3mr186968lbb.12.1443587213473;
        Tue, 29 Sep 2015 21:26:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.14 with SMTP id l14ls15326lfg.44.gmail; Tue, 29 Sep
 2015 21:26:52 -0700 (PDT)
X-Received: by 10.112.138.170 with SMTP id qr10mr194974lbb.4.1443587212857;
        Tue, 29 Sep 2015 21:26:52 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id o5si160036wib.0.2015.09.29.21.26.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 21:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id gb1so176442893wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 21:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=swTXYT1cdtVSAkDjyYouyEfvW3aex/tjF4bReyol+ls=;
        b=sw4j9po1xicMLKzvXHccgnSGfwJDunOQwiqEMqKQCU+GsbCK0rdfIsEGmjgVgngeVI
         s6Urzcvamc0BKETf9X9Tm7zfYus8i2b/g9UtRj5Y7pWrU6qBk/JUbFo9FO1oUU+UKkvh
         T7pIuDAsvlTzH7h4v7bKP+liL872L6CXVd/rCR2cbgU2pV8Dv+uur+1vCczTNs9EtCxe
         oUZ3EL1u/r6/kz4ipjUKW0sGGaWk/pOo9SdbWN5HUgqj+rSw+xSaNysRj1U+BxW2eSkd
         +jt3XMTG9MsHvXL5+N8wl+hF67vZO5QaS7ALoiORnasAEhR989DoaZHmqEe4akvvsMeJ
         ZpmQ==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr27128909wiz.66.1443587212690;
 Tue, 29 Sep 2015 21:26:52 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 29 Sep 2015 21:26:52 -0700 (PDT)
In-Reply-To: <CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
References: <20150929232413.GA16457@ubuntu>
	<20150930015931.GA14259@kroah.com>
	<CAKHNQQFAUaJfbySZ_r-ZtFAz9B7ih0Vmezgz3Qv7-khTB-2WYA@mail.gmail.com>
	<20150930041851.GA21970@kroah.com>
	<CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
Date: Wed, 30 Sep 2015 09:56:52 +0530
Message-ID: <CAKHNQQGy1mPrWEcWqHFBNz_8BiG2sFSGAL9LmHgSLS0gPn9cog@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visorbus:
 visorchipset: Converted arrays to static const
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f46d0444032e03d0a40520ef57a2

--f46d0444032e03d0a40520ef57a2
Content-Type: text/plain; charset=UTF-8

This was a warning message by compiler only that I need to convert char *
to static const char * const. I just did that without noticing env_selftest
which is directly related. and then when I compiled, it worked. Compilers
aren't very reliable, I see.

Thanks, Greg!

On Wed, Sep 30, 2015 at 9:50 AM, Shivani Bhardwaj <shivanib134@gmail.com>
wrote:

> This was a warning message by compiler only that I need to convert char *
> to static const char * const. I just did that without noticing env_selftest
> which is directly related. and then when I compiled, it worked. Compilers
> aren't very reliable, I see.
>
> Thanks, Greg!
>
> On Wed, Sep 30, 2015 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
>
>> On Wed, Sep 30, 2015 at 09:41:14AM +0530, Shivani Bhardwaj wrote:
>>
>> <snip>
>>
>> For some reason you sent this only to me, which is a bit rude to
>> everyone else on the mailing list.  I'll be glad to respond if you
>> resend it to everyone.
>>
>> thanks,
>>
>> greg k-h
>>
>
>

--f46d0444032e03d0a40520ef57a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)"><span class=3D"im"><div>T=
his was a warning message by compiler only that I need to convert=20
char * to static const char * const. I just did that without noticing=20
env_selftest which is directly related. and then when I compiled, it=20
worked. Compilers aren&#39;t very reliable, I see.<br><br></div>Thanks, Gre=
g!</span></span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Wed, Sep 30, 2015 at 9:50 AM, Shivani Bhardwaj <span dir=3D"ltr">&l=
t;<a href=3D"mailto:shivanib134@gmail.com" target=3D"_blank">shivanib134@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"im HOEnZb"><div dir=3D"ltr"><div>This was a warning message by compiler=
 only that I need to convert=20
char * to static const char * const. I just did that without noticing=20
env_selftest which is directly related. and then when I compiled, it=20
worked. Compilers aren&#39;t very reliable, I see.<br><br></div>Thanks, Gre=
g!</div></span><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Wed, Sep 30, 2015 at 9:48 AM, Greg=
 KH <span dir=3D"ltr">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" tar=
get=3D"_blank">gregkh@linuxfoundation.org</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On Wed, Sep 30, 2015 at 09:41:14AM +0530, Shivani Bh=
ardwaj wrote:<br>
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
</div></div></blockquote></div><br></div>

--f46d0444032e03d0a40520ef57a2--

