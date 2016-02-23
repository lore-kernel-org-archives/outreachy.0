X-GM-THRID: 6254552091181711360
X-Received: by 10.31.165.1 with SMTP id o1mr33159946vke.12.1456253736599;
        Tue, 23 Feb 2016 10:55:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.9 with SMTP id g9ls2589629qgd.40.gmail; Tue, 23 Feb
 2016 10:55:35 -0800 (PST)
X-Received: by 10.129.132.3 with SMTP id u3mr35000578ywf.5.1456253735681;
        Tue, 23 Feb 2016 10:55:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x231.google.com (mail-qk0-x231.google.com. [2607:f8b0:400d:c09::231])
        by gmr-mx.google.com with ESMTPS id g136si1759408ywb.5.2016.02.23.10.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 10:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) client-ip=2607:f8b0:400d:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x231.google.com with SMTP id s5so71762300qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 10:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lEM/cU9L/JZFFxNfrqsg+7lDcmey4Ch0m/m6MmGTLes=;
        b=zh4XkocNHiRBJNev2eoAYNJ/qM3RQzayQS12i5yyJBK6xzzpwMK8FiRGjv5MkxouqP
         J/hjfbfrRP2WsptcF6bxSCvzoe+VZ9mL7AV2GPMn/oiD/+SOmt5Xk9V2W+bR8O4ZKzhr
         T9t+jJBv4wTFS3OlLQjIC7qmZn37YULom3s1ZzBsT3861f/qrsT2epm2GZ/3wO9tlrJE
         D6Y4thGeOeUsfXt+1lnTWtj3qDf0dzs9d/JVNgzxsE88CmRc9haEjYnpuWzMyl5fDhxP
         Y9EK2JqNHjH3fUAovpifq8c/0kQyobq2W7P898nu7kpNHcqLTOE5yyLLt03/kFt6I6uT
         +D/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=lEM/cU9L/JZFFxNfrqsg+7lDcmey4Ch0m/m6MmGTLes=;
        b=NiPb4Z3ScWpQuy5ikgybw/Qn4cCw9gR7wYWz6V1+TTFt0J8+xvVPSl66G8ML331NUb
         i97VERRti4iucGH+QhypQsoBHzkiECEFwYTtyvsJXVGfXuUJOPwDrr6Jg7XxnuqoRUiz
         Tf2e6bXx7OELss0GkGeJbGbal59lFKmnE4W+EhvZtiZo87dratcm8BQyxK5tDVkAyJpt
         uOkszjlrT3JAoXmoPHf0EJOFXVQIlGoWySaTTVB+sWeR4THptyL857CH3DPzyHRuNfN8
         QK6zRb5ZwV3hQADBpTzKXJLsZ9xjqbf9MwZ5jvE/9NplYMWTv6WNwDp0UC8uSZ3halH1
         oCrA==
X-Gm-Message-State: AG10YORPau9/H44uhI9eVDt6YrKCjMXtP7YC8OTEaSqRHEti6UMHAbU7zppmglhWSqxSgz56NNBfgEqUAiRGEg==
MIME-Version: 1.0
X-Received: by 10.55.19.170 with SMTP id 42mr29345231qkt.21.1456253735481;
 Tue, 23 Feb 2016 10:55:35 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 10:55:35 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6>
References: <20160223181623.GA20782@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602231950320.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 00:25:35 +0530
Message-ID: <CA+5yK5HbDKJoRZYOa0PuJjAOuQt68yVM-=_aGR=C7im=E5Vo3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Use
 devm_ioremap_resource() instead of of_iomap()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a113ff6ea9b3647052c747eb1

--001a113ff6ea9b3647052c747eb1
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 12:22 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> The adc driver uses of_iomap() which doesn't request the resource and
>> isn't device managed so error handling is needed. of_iomap() is mainly
>> used in cases where there is no driver or struct device so a switch to
>> devm_ functions is required.
>>
>> This patch switches to use devm_ioremap_resource() instead which
>> automatically requests the resource and is freed when the driver
>> detaches.
>
> The above doesn't explain sufficiently why the transformation is correct.
> You would have to look at the definitions of the functions involved, and
> show that in this case they do the same thing.  Do you have anoher patch
> that makes this transformation?  What kind of justification does it give?
>
> julia

I made the change based on these two patches
<https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/log/?qt=grep&q=use+devm_ioremap_resource%28%29+instead+of+of_iomap%28%29>
 and this discussion.
<http://comments.gmane.org/gmane.linux.drivers.devicetree/33334>

Amitoj

--001a113ff6ea9b3647052c747eb1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wed, Feb 24, 2016 at 12:22 AM, Julia Lawall &lt=
;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote=
:<br>&gt;&gt; The adc driver uses of_iomap() which doesn&#39;t request the =
resource and<br>&gt;&gt; isn&#39;t device managed so error handling is need=
ed. of_iomap() is mainly<br>&gt;&gt; used in cases where there is no driver=
 or struct device so a switch to<br>&gt;&gt; devm_ functions is required.<b=
r>&gt;&gt;<br>&gt;&gt; This patch switches to use devm_ioremap_resource() i=
nstead which<br>&gt;&gt; automatically requests the resource and is freed w=
hen the driver<br>&gt;&gt; detaches.<br>&gt;<br>&gt; The above doesn&#39;t =
explain sufficiently why the transformation is correct.<br>&gt; You would h=
ave to look at the definitions of the functions involved, and<br>&gt; show =
that in this case they do the same thing.=C2=A0 Do you have anoher patch<br=
>&gt; that makes this transformation?=C2=A0 What kind of justification does=
 it give?<br>&gt;<br>&gt; julia<br><br><div>I made the change based on <a h=
ref=3D"https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/log/=
?qt=3Dgrep&amp;q=3Duse+devm_ioremap_resource%28%29+instead+of+of_iomap%28%2=
9">these two patches</a>=C2=A0and=C2=A0<a href=3D"http://comments.gmane.org=
/gmane.linux.drivers.devicetree/33334">this discussion.</a></div><div><br><=
/div><div>Amitoj</div></div>

--001a113ff6ea9b3647052c747eb1--

