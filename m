X-GM-THRID: 6374319834458488832
X-Received: by 10.107.57.137 with SMTP id g131mr2464642ioa.84.1484138083843;
        Wed, 11 Jan 2017 04:34:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.76 with SMTP id j73ls1191384ita.19.gmail; Wed, 11 Jan
 2017 04:34:42 -0800 (PST)
X-Received: by 10.36.3.212 with SMTP id e203mr5502881ite.26.1484138081045;
        Wed, 11 Jan 2017 04:34:41 -0800 (PST)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id n132si2021833ith.0.2017.01.11.04.34.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Jan 2017 04:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id o138so2560770ito.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Jan 2017 04:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8cWm91LWw8McpWekES8TcwUsBUIoHUaRd52X4zzgc30=;
        b=lWhRrAIAC57IXeNvbfil3G8yvhbnfBiWq2khu3jx/GihM7ljk/JlVpcao786nWI+q/
         PUM7TUtus5bunnXpL2zYff+fwLrDJjomMHTyFM/GhESjrODvCHm8O+y11I2bViOUFwj8
         1DbNory116jArczyLslqUYp8fCOEa9VU4W/uSYF1Vqch47+SfUc+kYz2XnhQmutbaeO0
         M7vIvcjPlALddaVg7G5GqznqPbWdlot0fvAn4raA5WbdPPUzmA9pLDkHJTRifehrPlVa
         LbuAqIbYT1hrA783iiwShZAfTYWK8j7I8coGwiZRHfkis/kyrVpPD8MK9fjMNQIA5ozT
         WzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8cWm91LWw8McpWekES8TcwUsBUIoHUaRd52X4zzgc30=;
        b=V7Bj1Tg8oZuzUx4HFXQ7c7rptHAcSSpajkPEXcMuBRtuX0rWyahET7FgTP7aX1G0R0
         C4pQFNKvUgVpBXwuEEhZBtpAW/3MT6Z8EvZDkboAdIenB9jQvMDZcbm8SnRw4NllmJb1
         LjbFJMxEK6lwn9eGzn5r0ZFvlbnWlIz2bjbi9iQIpWJLCa/vCa2d4C4MOTCIT3ogYqkH
         L6bqOq2tlOoQNQxTxrNcyVce7neSCI3f9ByY3oX8UotFa4NjB+XJRE4U3XCLuK+YseYw
         eUUIDZns8iNLsjjT+3GzNtHECZJlaWiEwbBSBcLBEXueV1u+GE7yQVbea4UficCVfrp4
         k2uA==
X-Gm-Message-State: AIkVDXLGr0vRX0kUZuwkaDHPKjSW9SEANcO3exDAmKqWZFd47qZ122HoU4vC83Ccet/2q5U3Y09zYj681dG3IA==
X-Received: by 10.36.204.9 with SMTP id x9mr4857334itf.123.1484138080601; Wed,
 11 Jan 2017 04:34:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.189.193 with HTTP; Wed, 11 Jan 2017 04:34:39 -0800 (PST)
In-Reply-To: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
References: <c81ecc02-03b8-4a0a-ad9b-6de06226e5de@googlegroups.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Wed, 11 Jan 2017 18:04:39 +0530
Message-ID: <CAO393ABwnrHCPLUiBjWP=a8d1Z5oURvweZL=qWUKvd-7H0Jj=A@mail.gmail.com>
Subject: Re: [Outreachy kernel] COMMAND NOT WORKING
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c05a63217b3a00545d0d387

--94eb2c05a63217b3a00545d0d387
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 11, 2017 at 5:46 PM, Arushi Singhal <
arushisinghal19971997@gmail.com> wrote:

> *I have tried the command :*
> git clone -b staging-testing git://git.kernel.org/pub/scm/l
> inux/kernel/git/gregkh/staging.git
> *But this is showing the output:*
> Cloning into 'staging'...
> fatal: unable to connect to git.kernel.org:
> git.kernel.org[0: 198.145.20.140]: errno=Connection refused
> git.kernel.org[1: 199.204.44.194]: errno=Connection refused
> git.kernel.org[2: 149.20.4.72]: errno=Connection refused
> git.kernel.org[3: 2001:4f8:1:10:0:1991:8:25]: errno=Network is unreachable
> git.kernel.org[4: 2620:3:c000:a:0:1991:8:25]: errno=Network is unreachable
>
>
>
> *Can anyone help me out?*
>

Hello Arushi !
You could try using http:// instead of git:// , source for the answer and
more explanation - http://askubuntu.com/questions/333343/git-cloning-error.
I think this list isn't active right now since it's not close to the
application round , feel free to reach out to me though :)

Thanks,
Shraddha


>
> *Thanks and RegardsArushi Singhal*
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/ms
> gid/outreachy-kernel/c81ecc02-03b8-4a0a-ad9b-6de06226e5de%
> 40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/c81ecc02-03b8-4a0a-ad9b-6de06226e5de%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--94eb2c05a63217b3a00545d0d387
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Jan 11, 2017 at 5:46 PM, Arushi Singhal <span dir=3D"ltr">&lt;<=
a href=3D"mailto:arushisinghal19971997@gmail.com" target=3D"_blank">arushis=
inghal19971997@gmail.<wbr>com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><b>I have tried the command =
:</b><br>git clone -b staging-testing git://<a href=3D"http://git.kernel.or=
g/pub/scm/linux/kernel/git/gregkh/staging.git" target=3D"_blank">git.kernel=
.org/pub/scm/l<wbr>inux/kernel/git/gregkh/staging<wbr>.git</a><br><b>But th=
is is showing the output:</b><br>Cloning into &#39;staging&#39;...<br>fatal=
: unable to connect to <a href=3D"http://git.kernel.org" target=3D"_blank">=
git.kernel.org</a>:<br><a href=3D"http://git.kernel.org" target=3D"_blank">=
git.kernel.org</a>[0: 198.145.20.140]: errno=3DConnection refused<br><a hre=
f=3D"http://git.kernel.org" target=3D"_blank">git.kernel.org</a>[1: 199.204=
.44.194]: errno=3DConnection refused<br><a href=3D"http://git.kernel.org" t=
arget=3D"_blank">git.kernel.org</a>[2: 149.20.4.72]: errno=3DConnection ref=
used<br><a href=3D"http://git.kernel.org" target=3D"_blank">git.kernel.org<=
/a>[3: 2001:4f8:1:10:0:1991:8:25]: errno=3DNetwork is unreachable<br><a hre=
f=3D"http://git.kernel.org" target=3D"_blank">git.kernel.org</a>[4: 2620:3:=
c000:a:0:1991:8:25]: errno=3DNetwork is unreachable<br><br><b>Can anyone he=
lp me out?<br><br></b></div></blockquote><div><br></div><div>Hello Arushi !=
<br></div><div>You could try using http:// instead of git:// , source for t=
he answer and more explanation - <a href=3D"http://askubuntu.com/questions/=
333343/git-cloning-error" target=3D"_blank">http://askubuntu.com/<wbr>quest=
ions/333343/git-cloning-<wbr>error</a>. I think this list isn&#39;t active =
right now since it&#39;s not close to the application round , feel free to =
reach out to me though :)<br></div><div>=C2=A0<br></div><div>Thanks,<br></d=
iv><div>Shraddha<br><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><b>Thanks and Regards<span class=3D"m_-38008201520983=
17941gmail-HOEnZb"><font color=3D"#888888"><br>Arushi Singhal<br></font></s=
pan></b><span class=3D"m_-3800820152098317941gmail-HOEnZb"><font color=3D"#=
888888"><br></font></span></div><span class=3D"m_-3800820152098317941gmail-=
HOEnZb"><font color=3D"#888888">

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@g<wbr>ooglegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/c81ecc02-03b8-4a0a-ad9b-6de06226e5de%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">http=
s://groups.google.com/d/ms<wbr>gid/outreachy-kernel/c81ecc02-<wbr>03b8-4a0a=
-ad9b-6de06226e5de%<wbr>40googlegroups.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/op<wbr>tout</a>.<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"m_-3800820152098317941gmail_signature"><div dir=3D"ltr">Shraddha<br></=
div></div>
</div></div>

--94eb2c05a63217b3a00545d0d387--

