X-GM-THRID: 6622006698553901056
X-Received: by 2002:a1c:574e:: with SMTP id l75mr1396988wmb.23.1542393357304;
        Fri, 16 Nov 2018 10:35:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1a87:: with SMTP id a129-v6ls2174023wma.8.gmail; Fri, 16
 Nov 2018 10:35:56 -0800 (PST)
X-Google-Smtp-Source: AJdET5ckiYvfu3/i49hNf5MqeQzq5i6pUHa51cl+b6CseIMgz0zGoBY81gmj2pCSw5kDxjvj5dQ/
X-Received: by 2002:a7b:c018:: with SMTP id c24-v6mr1423078wmb.7.1542393356344;
        Fri, 16 Nov 2018 10:35:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542393356; cv=none;
        d=google.com; s=arc-20160816;
        b=xLv5iFPxhaIvhTGi1bTQwyGmWRWPbFAVzyzqmLoKmkdjKNf9EvTFGTBpiR3QDN6sIQ
         T4Qqr5lNyb2A+FWic517FTsSFZ5dO4Jk6ukIQWr0wHr0MxbX9QQSESLRS15/mX1F7rDN
         f9EUKL7H9eUzHAxY4OFTqrN/UszIVnag2v5qtHpB6Rtmv60P6NtBrxIX+Hl1KInDk2fu
         U1GmxbY8DCeoG1158hJzvREXNU8BnudpxBLnNkI/0bfs32KZqZ/F4pvUbCjT1qjm/47N
         fubOgJsbdMJU2FIKB0H04OBEOr3M+ea+rbmVSrZzpPgvhziSwBJb657padL+cxqmrhVo
         IOrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mLSO8CH8Wyu4iZrILnmuwMn/8WH6N1xgKViX5zY3w6M=;
        b=a8jXo0Z0BvTbC+x5wPiAH5gbciVE0DjdjDSTtae2iGP8y+W4J5aUWZwb8YUIsi9z/3
         FiUtUDvuYqv6FXMDPb04+W8A5Ndna/gi55oxpSsJ6wQ/M/X3o7KYwbkLygcvh3wxw7I2
         wf/LkHbZQcAKZCHcWpLH3hUs6Oj3BOe8O8aoU6bPQQqzXqCxBfeQ1ZW/5NCpSewNOaZc
         Pn20vH2Jfr8IM3P4Nln4AJkMLdRdLUmEaCEI+ViwMbL4I4ThLvmlt9ocdVyzRckPy3mk
         prDukngGhu9Mf8HZf5cPTtCeo4pKyp3r24XCHo3NyUXvooeUoeams3s3iAKiCbLx8632
         6Fpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=usEGL1of;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id p15si484861wrm.5.2018.11.16.10.35.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Nov 2018 10:35:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=usEGL1of;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id x30so15720098edx.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Nov 2018 10:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mLSO8CH8Wyu4iZrILnmuwMn/8WH6N1xgKViX5zY3w6M=;
        b=usEGL1of4Ra6PFp/Y80YOrkWFu0C0LUoaE9Pi7mH0vMoxV+Tc6GlbDZ5UK7iQaa7oH
         aP32/9btKSK0qlGhKwoZ+ChC5/xxsq0D3oJGu3FmAgXAai2Fvy7MisiPFPRANXadJATr
         6FJyc48DUuD/RR51AKj03YY3fH9/B17sU2HRkzLDtW3l7h7lDI3zm5Qfqr4oTELZnFDX
         G/yOc3L9B9Nd5b3wZ3spLTm9E/RTE/Zpid6gAKrpr09V0VkISmBINASruqK6ut+PPu9R
         1ah+1r6p4EXBjiurvtd7QG8Uk2vTBKKOW1iBKadkKhtixvBaH1BPvGtICCGrOa4xLtu4
         yveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mLSO8CH8Wyu4iZrILnmuwMn/8WH6N1xgKViX5zY3w6M=;
        b=Xd6c0gKMA0xIUlhA6wdumpzen4bbp7R5BcH7wNbPfOfb2eRK//o/fEhwrAGYsgYIWx
         3brEqS1O87Nw2Hk0EWWocMHMfzHA4F7tx2fgua8GJise3Au7mIHcMgCubTdL2ITU3Ywc
         f01WvZwYblNby9pNNDpGdwJyzfSNMa3SQAiRa5q/q4BTmkLVg2or3EAcuCi2vk78bPXa
         wsWt1D45rTXXKq3ybdckUCAQnEyt5aOnemkGll7UyFUlbWJ2MS5Fg82Gg40Ya+juJUKc
         +nzdYxTeHy5m3Lm7sIwRhM2TRM9AHR5OhpN7EUqQHSBUrBTQqcaSj8Me+6c9jsjMv1BK
         9alA==
X-Gm-Message-State: AGRZ1gIG/fzv4NlbQT8AxtX5hTZTarnbvaiiWlHnOlbJ8+l9pkpU1GM7
	105O0t7IhRdI2ZAo24r1PzWdBz925lhc1fWJAK8TQUA=
X-Received: by 2002:a50:c08a:: with SMTP id k10-v6mr10698525edf.175.1542393355799;
 Fri, 16 Nov 2018 10:35:55 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1811100026460.2679@hadrien> <65babe95-ab4b-4001-8d70-348482770c00@googlegroups.com>
In-Reply-To: <65babe95-ab4b-4001-8d70-348482770c00@googlegroups.com>
From: Jules Octave <jbi.octave@gmail.com>
Date: Fri, 16 Nov 2018 18:35:18 +0000
Message-ID: <CAOuULM73JYOnXfR3C+5xCc9HSfSDKRiqFyFKT74oGfMcfj4HyA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: HELP WANTED: Fix -Wmissing-prototypes
 warnings (fwd)
To: ioannis@kano.me
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000013931c057acc7020"

--00000000000013931c057acc7020
Content-Type: text/plain; charset="UTF-8"

I will also work on it but currently I'm preparing for a Linux admin exam.
I will be working on it from 26th.

On Fri, 16 Nov 2018, 15:29 <ioannis@kano.me wrote:

> On Friday, 9 November 2018 23:28:01 UTC, Julia Lawall wrote:
>>
>> For those who want to keep contributing...
>>
>> julia
>>
>> ---------- Forwarded message ----------
>> Date: Fri, 9 Nov 2018 18:44:10 +0100
>> From: Borislav Petkov <b...@alien8.de>
>> To: kernel-...@vger.kernel.org, driverd...@linuxdriverproject.org
>> Cc: wang...@zte.com.cn, Greg KH <gre...@linuxfoundation.org>
>> Subject: HELP WANTED: Fix -Wmissing-prototypes warnings
>>
>> Hi all,
>>
>> gcc has a warning option
>>
>>   -Wmissing-prototypes
>>
>> which fires when a global function is missing a prototype declaration.
>> This warning is important as it catches cases when that global
>> function's prototype has been changed but its callers haven't been
>> updated. And they should be.
>>
>> Currently, if enabled, this warning triggers ~1400 times for an
>> allmodconfig build and we would like to have 0 warnings and then add
>> that option to the main Makefile.
>>
>> So helping out here would be lovely!
>>
>> And it is very easy to do: you simply build the kernel with W=1:
>>
>>         make -j<num_cpus+1> W=1 2>w.log
>>
>> choose one -Wmissing-prototypes warning in the w.log build log and fix
>> it by including the header which has the function prototype. Or you
>> declare the function static. If that function prototype is missing, it
>> needs to be added, of course.
>>
>> For every function, one should ask oneself, is it better to make the
>> function static and save ourselves the prototype and include file
>> dependency - that would be the preferred solution - or if not possible,
>> should one make the prototype visible by including the proper header so
>> that gcc sees the prototype.
>>
>> This should be a good exercise for newbies who'd like to get involved
>> into kernel development.
>>
>
> Awesome. I'll look into this.
>
> Thanks
> Ioannis
>
>>
>> Feel free to ask if there are any questions.
>>
>> Thanks!
>>
>> --
>> Regards/Gruss,
>>     Boris.
>>
>> Good mailing practices for 400: avoid top-posting and trim the reply.
>>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/65babe95-ab4b-4001-8d70-348482770c00%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/65babe95-ab4b-4001-8d70-348482770c00%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000013931c057acc7020
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">I will also work on it but currently I&#=
39;m preparing for a Linux admin exam. I will be working on it from 26th.</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, 16 Nov 20=
18, 15:29  &lt;<a href=3D"mailto:ioannis@kano.me" target=3D"_blank">ioannis=
@kano.me</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">On Friday, 9 November 2018 23:28:01 UTC, Julia Lawall  wrote:<blockquote =
class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #=
ccc solid;padding-left:1ex">For those who want to keep contributing...
<br>
<br>julia
<br>
<br>---------- Forwarded message ----------
<br>Date: Fri, 9 Nov 2018 18:44:10 +0100
<br>From: Borislav Petkov &lt;<a rel=3D"nofollow noreferrer">b...@alien8.de=
</a>&gt;
<br>To: <a rel=3D"nofollow noreferrer">kernel-...@vger.kernel.org</a>, <a r=
el=3D"nofollow noreferrer">driverd...@linuxdriverproject.org</a>
<br>Cc: <a rel=3D"nofollow noreferrer">wang...@zte.com.cn</a>, Greg KH &lt;=
<a rel=3D"nofollow noreferrer">gre...@linuxfoundation.org</a>&gt;
<br>Subject: HELP WANTED: Fix -Wmissing-prototypes warnings
<br>
<br>Hi all,
<br>
<br>gcc has a warning option
<br>
<br>=C2=A0 -Wmissing-prototypes
<br>
<br>which fires when a global function is missing a prototype declaration.
<br>This warning is important as it catches cases when that global
<br>function&#39;s prototype has been changed but its callers haven&#39;t b=
een
<br>updated. And they should be.
<br>
<br>Currently, if enabled, this warning triggers ~1400 times for an
<br>allmodconfig build and we would like to have 0 warnings and then add
<br>that option to the main Makefile.
<br>
<br>So helping out here would be lovely!
<br>
<br>And it is very easy to do: you simply build the kernel with W=3D1:
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0make -j&lt;num_cpus+1&g=
t; W=3D1 2&gt;w.log
<br>
<br>choose one -Wmissing-prototypes warning in the w.log build log and fix
<br>it by including the header which has the function prototype. Or you
<br>declare the function static. If that function prototype is missing, it
<br>needs to be added, of course.
<br>
<br>For every function, one should ask oneself, is it better to make the
<br>function static and save ourselves the prototype and include file
<br>dependency - that would be the preferred solution - or if not possible,
<br>should one make the prototype visible by including the proper header so
<br>that gcc sees the prototype.
<br>
<br>This should be a good exercise for newbies who&#39;d like to get involv=
ed
<br>into kernel development.
<br></blockquote><div><br></div><div>Awesome. I&#39;ll look into this.=C2=
=A0</div><div><br>Thanks</div><div>Ioannis=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<br>Feel free to ask if there are any questions.
<br>
<br>Thanks!
<br>
<br>--=20
<br>Regards/Gruss,
<br>=C2=A0 =C2=A0 Boris.
<br>
<br>Good mailing practices for 400: avoid top-posting and trim the reply.
<br></blockquote></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" re=
l=3D"noreferrer" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroup=
s.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/65babe95-ab4b-4001-8d70-348482770c00%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"noreferrer" tar=
get=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/65babe95-=
ab4b-4001-8d70-348482770c00%40googlegroups.com</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div>

--00000000000013931c057acc7020--

