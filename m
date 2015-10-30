X-GM-THRID: 6208227682236235776
X-Received: by 10.129.89.193 with SMTP id n184mr7063466ywb.56.1446227711269;
        Fri, 30 Oct 2015 10:55:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.197 with SMTP id ta5ls444661obc.95.gmail; Fri, 30 Oct
 2015 10:55:10 -0700 (PDT)
X-Received: by 10.182.65.67 with SMTP id v3mr7374955obs.38.1446227710661;
        Fri, 30 Oct 2015 10:55:10 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id lo7si170134igb.3.2015.10.30.10.55.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 10:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id w7so15008990igp.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 10:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=90hoUtNXowAsaq34K0fDVdh640xRrl5tUnc7GAToAmw=;
        b=fyLnFdogMr671ugRdGzbePo2s/UFQrHpsxKaAl/norwjCOI1o215I/dzTVZbzVFkOI
         uNCk2Wqin4iiVwEMiszWXK/rFn5aWYNsNCg4RtiSriESRuXnolNZaSyWWIGYBiXbR6cJ
         3wcejKzblhMpMgjuwPEJDolZPHMzU0LdWvvAKILXoWHO3QyUMXp+qj16pR5uLPWTi+WZ
         CiIH7Zt44vVBC+6C5lcYz4Pc9sWutWhSxchP+XU4vxzWZbgKWIlj5AAFO7cfNALr+6iG
         bpedaSfpr5I2cCITlSGkimPmHX5S9Z2FValjRcOca8vXTQHH7lf8C/JnvfXvFKme17wn
         MKPw==
MIME-Version: 1.0
X-Received: by 10.50.44.107 with SMTP id d11mr4715210igm.49.1446227710496;
 Fri, 30 Oct 2015 10:55:10 -0700 (PDT)
Received: by 10.107.63.194 with HTTP; Fri, 30 Oct 2015 10:55:10 -0700 (PDT)
In-Reply-To: <CABeXuvrS6bRH0cxP8Uan35vtWZxZLJvcut2ZWvrM=1bYKrjoPQ@mail.gmail.com>
References: <1445465834-24407-1-git-send-email-deepa.kernel@gmail.com>
	<CABeXuvqm1ATS-nqq9rjWnDOa=P_a3Up3Pe=vvd1gVVxYadsoQg@mail.gmail.com>
	<5042503.magIZkzosx@wuerfel>
	<7242161.l7i2pe44H0@wuerfel>
	<CABeXuvrS6bRH0cxP8Uan35vtWZxZLJvcut2ZWvrM=1bYKrjoPQ@mail.gmail.com>
Date: Fri, 30 Oct 2015 10:55:10 -0700
Message-ID: <CABeXuvrMNR0vs6iH2Hb5xbeobhzuHQrCSnMdme19AKyNVviuEA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH] usb: usbtest: Add new
 ioctl interface
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, y2038@lists.linaro.org
Content-Type: multipart/alternative; boundary=047d7b5dbaaaf2d4c60523562094

--047d7b5dbaaaf2d4c60523562094
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 25, 2015 at 7:58 PM, Deepa Dinamani <deepa.kernel@gmail.com>
wrote:

>
>
>
> On Sat, Oct 24, 2015 at 1:38 AM, Arnd Bergmann <arnd@arndb.de> wrote:
>
>> On Saturday 24 October 2015 00:19:06 Arnd Bergmann wrote:
>> > > 3. Contact usb list about usbtest ioctl uses and about proposed new
>> ioctl.
>> >
>> > Yes, but don't make this one a priority. Adding a new ioctl is just the
>> > icing on the cake, and that patch mainly serves to highlight the fact
>> > that the original API was implemented poorly and how it should have
>> > been done instead. It's more important for us to avoid making things
>> > worse with the 64-bit time_t change.
>> >
>>
>> I've given this a little more thought now: I think we should support both
>> variations of the current interface in both the kernel and in the official
>> copy of the user space tool, for maximum compatibility.
>>
>
> If timeval remains as is, I don't see how user space needs to change.
> Agree that kernel module can support both so that either binary would work.
>
>
>
>> If we add another ioctl, that means we have to support all three variants
>> in both kernel and user space for the foreseeable future, that's only
>> worth it if we can add some real value in the new interface. Instead of
>> a new ioctl, we could also choose to add a debugfs interface that might
>> be easier to use. Still, that is only a mild improvement to a rarely used
>> driver and a lot of work, so don't spend too much time on that one.
>>
>
> Ok. will let this one be for now.
>
>>
>>         Arnd
>>
>
>
I looked at the spreadsheet(sheet 3). Nothing else actually needs timeval
being exposed to userspace.
Either whatever uses timeval, is only using it internally or uses time_t to
user.

I submitted a v2 of the patch that doesn't require a new timeval struct
accordingly.

-Deepa

--047d7b5dbaaaf2d4c60523562094
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Oct 25, 2015 at 7:58 PM, Deepa Dinamani <span dir=3D"ltr">&lt;<=
a href=3D"mailto:deepa.kernel@gmail.com" target=3D"_blank">deepa.kernel@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br><div dir=
=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><spa=
n>On Sat, Oct 24, 2015 at 1:38 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span>On Saturday 24 October 2015=
 00:19:06 Arnd Bergmann wrote:<br>
&gt; &gt; 3. Contact usb list about usbtest ioctl uses and about proposed n=
ew ioctl.<br>
&gt;<br>
&gt; Yes, but don&#39;t make this one a priority. Adding a new ioctl is jus=
t the<br>
&gt; icing on the cake, and that patch mainly serves to highlight the fact<=
br>
&gt; that the original API was implemented poorly and how it should have<br=
>
&gt; been done instead. It&#39;s more important for us to avoid making thin=
gs<br>
&gt; worse with the 64-bit time_t change.<br>
&gt;<br>
<br>
</span>I&#39;ve given this a little more thought now: I think we should sup=
port both<br>
variations of the current interface in both the kernel and in the official<=
br>
copy of the user space tool, for maximum compatibility.<br></blockquote><di=
v><br></div></span><div>If timeval remains as is, I don&#39;t see how user =
space needs to change.<br></div><div>Agree that kernel module can support b=
oth so that either binary would work.<br><br></div><span><div>=C2=A0<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
If we add another ioctl, that means we have to support all three variants<b=
r>
in both kernel and user space for the foreseeable future, that&#39;s only<b=
r>
worth it if we can add some real value in the new interface. Instead of<br>
a new ioctl, we could also choose to add a debugfs interface that might<br>
be easier to use. Still, that is only a mild improvement to a rarely used<b=
r>
driver and a lot of work, so don&#39;t spend too much time on that one.<br>=
</blockquote><div><br></div></span><div>Ok. will let this one be for now. <=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<span><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<span><font color=3D"#888888"><br>
</font></span></font></span></blockquote></div><span><font color=3D"#888888=
"><br></font></span></div><span></span></div></blockquote><div><br></div><d=
iv>I looked at the spreadsheet(sheet 3). Nothing else actually needs timeva=
l being exposed to userspace.<br></div><div>Either whatever uses timeval, i=
s only using it internally or uses time_t to user.<br></div><div></div><div=
><br></div><div>I submitted a v2 of the patch that doesn&#39;t require a ne=
w timeval struct accordingly.<br></div><div><br></div><div>-Deepa <br></div=
></div><br></div></div>

--047d7b5dbaaaf2d4c60523562094--

