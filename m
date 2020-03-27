X-GM-THRID: 6808264476634120192
X-Received: by 2002:aa7:cfc5:: with SMTP id r5mr14722316edy.78.1585327087882;
        Fri, 27 Mar 2020 09:38:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bb02:: with SMTP id y2ls6809764ede.1.gmail; Fri, 27 Mar
 2020 09:38:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv05ANEIF82tbmmu4f4kbdb7V2dX3v7y6PM5C9fPhCjrUi6jLOheNP8HuL/bc1rXcCOj/WR
X-Received: by 2002:a50:9eaf:: with SMTP id a44mr14571819edf.58.1585327086674;
        Fri, 27 Mar 2020 09:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585327086; cv=none;
        d=google.com; s=arc-20160816;
        b=0/d7FmrjNWHVlg0N1aXiS6+mcLM4mz5uvDXWEKu17X5WVQh4Vv3in/yD4HyUZAA7NR
         JarhVRAk36NSb7IlYbuXLSl8OQJBLml/lgW5vv3Bjr/3q+xF9lyQacoU5ZTUVjJG147m
         wrr82hIFJCwW2LjZ6MoP2JlHezJsBV4tngomf0f/Ymh9NFgs0pC1acDs2CVMCIh3yziq
         3x2xANqXksPc9PfExQYQf4hyYSwxCJfhWIQwWk93yG/l5Qd67ITp1kiVHPG/HgDGGtdx
         4HT9OGgytmKQiXAr94heULPv6SgTyifzZLuLtInVAryxsMCIctdhOCxNiH7OBjc9v3ah
         O6pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X1Kie6cxxYN8H1Ei27s8L7OHAwBAZR6Uge4esMhmQ80=;
        b=xINX2sTubfOXfeLf5xhoa2r5szoAXpmgD3OUAyqgdzhoHVjLQcwnV6krndfPI+G3tz
         2O7859cX+DZOCt5phWVVWUjK9NJtyLzdIp/GDcymIdS1HpJx0n7mFqApB7YA+yusKgzc
         p70hThr1V8f3N4UKEiDpjw2NN8tA+oXVtVI6Nn2dJLXSNGsGzszwQVSAvjVpIR5jq0vw
         2BB/Gi4gcYrEIPu011P+dhhM6p3pi8+LRoqvgt+RhGJrSSY0lSxRHDnc1BveSWni8cTq
         lpiNRMSVDHh+Sl2v3nLVhLPuKFFkC73sM8meG3EWgTKDud3Ag7ZUvwg3DgXBzINWgb9p
         CYjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nETVKi11;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id ck3si447296edb.5.2020.03.27.09.38.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 09:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nETVKi11;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id g12so10917406ljj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 09:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X1Kie6cxxYN8H1Ei27s8L7OHAwBAZR6Uge4esMhmQ80=;
        b=nETVKi11BYL8cQ42dEACABiJaOXSZcW56W2tWJisryaJqhjnWsiWPhoBSUdAYV4Lb6
         7OpeKKQcN8o9A07mm0ecPz3ot9xoDcB0AeQvrts5n4bnOT7NEvwKUsfCy6fyvO3gWsYl
         JWw3y2W1KdSbWwW5xgosRA0zOHzEiDrMlu7wIdNAFpd4ExQkqBFcd2jKDBV3lAUQtH9T
         GRjllS09d687iTIFPrgGdNAD2TYj5pNHSc9Yg+33YlTcDoVS/vyPy7GzMbaNvUHtK1Yj
         s4/Hva5GBhsujdyAYQTT+kRkzeI4d4dBHtZNN2zn8cuYvIzWB6sc1vl1gpSM5fQWzta/
         5d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X1Kie6cxxYN8H1Ei27s8L7OHAwBAZR6Uge4esMhmQ80=;
        b=ek02GiBy5qXynRTgTUaS5YE2PwQPvo+k3oUB0JcZRe/7MjmtVdbluKf6rTLR7GUD97
         FC7ybRwKYc2HNfRxWpemHlioGSkPcYw4vo1Bb/e058M36PYhg22EAuJpW691qITFvCZ2
         gzqB/62y8jAi8KZxncvliwF80zQW9v0uIokJHGGH2gTKjCzpE5TpDnpkr/kYXdC/zppp
         1tgPGv96JbwzOa9kqtePkEfi5LoYglcuLKEcdghoQEKSSeFtuoB5aQBNrqiTzruDdoH9
         C3kRiAipFbrqnkJreeOsJitrqn5XibpQROivVMoGQnAQUHSXmbevaA1XjX6xfETz8gwT
         4AkA==
X-Gm-Message-State: AGi0PuaNr0Hh9ZfCD1OCi/aB7Nz/h1EcS6+BSafIXAbATAMejp/hpasG
	SyY7XtLRso4G/LoU7tby334Pemc7JQNHj+JQWr08K9yYd7o=
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr9117390ljf.234.1585327086084;
 Fri, 27 Mar 2020 09:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200325214312.GA1936@simran-Inspiron-5558> <27ca4063-f34b-030d-f593-1d9a4f3c1165@linux.microsoft.com>
In-Reply-To: <27ca4063-f34b-030d-f593-1d9a4f3c1165@linux.microsoft.com>
From: Simran Singhal <singhalsimran0@gmail.com>
Date: Fri, 27 Mar 2020 22:07:53 +0530
Message-ID: <CALrZqyPKBYji7+n3YNETMtbqPURSQp8vVd4CvqNqy=bh8RsktA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Compress
 return logic
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, driverdevel <devel@driverdev.osuosl.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000d1a77f05a1d8b929"

--000000000000d1a77f05a1d8b929
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 26, 2020 at 11:57 PM Lakshmi Ramasubramanian <
nramas@linux.microsoft.com> wrote:

> On 3/25/20 2:43 PM, Simran Singhal wrote:
>
> > Simplify function returns by merging assignment and return into
> > one command line.
>
> "Simplify function returns by merging assignment and return into one line".
>
> You could change the subject also to "Simplify function return logic".
>

Thanks for your suggestion, Lakshmi. Yes, "Simplify function return logic"
could be a better subject.

Simran


>
> thanks,
>   -lakshmi
>

--000000000000d1a77f05a1d8b929
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 26, 2020 at 11:57 PM Laks=
hmi Ramasubramanian &lt;<a href=3D"mailto:nramas@linux.microsoft.com">nrama=
s@linux.microsoft.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On 3/25/20 2:43 PM, Simran Singhal wrote:<br>
<br>
&gt; Simplify function returns by merging assignment and return into<br>
&gt; one command line.<br>
<br>
&quot;Simplify function returns by merging assignment and return into one l=
ine&quot;.<br>
<br>
You could change the subject also to &quot;Simplify function return logic&q=
uot;.<br></blockquote><div><br></div><div>Thanks for your suggestion, Laksh=
mi. Yes, &quot;Simplify function return logic&quot; could be a better subje=
ct.</div><div><br></div><div>Simran<br></div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
<br>
thanks,<br>
=C2=A0 -lakshmi<br>
</blockquote></div></div>

--000000000000d1a77f05a1d8b929--

