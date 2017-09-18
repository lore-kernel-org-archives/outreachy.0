X-GM-THRID: 6466889326390149120
X-Received: by 10.101.76.1 with SMTP id u1mr22513079pgq.79.1505770387549;
        Mon, 18 Sep 2017 14:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.215 with SMTP id k84ls11469834ioo.47.gmail; Mon, 18 Sep
 2017 14:33:06 -0700 (PDT)
X-Received: by 10.107.164.86 with SMTP id n83mr9122113ioe.108.1505770386811;
        Mon, 18 Sep 2017 14:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505770386; cv=none;
        d=google.com; s=arc-20160816;
        b=VGzpJfZA9PKsnf/CfpDvQZFD4bERcyOoUB73nl99gi+jRxzJcN7sE4phLg7IzM613o
         qCLFDYUT/Ht0y4774ZwTY7iyPLH/imYbM05p28CmJCXKvMLo+at9qWt6p4BddPz0yHVy
         r3jf7+Vrqhw/zz/7QihYkIkJNurrDcYnSFme00Qm4UsPkBIR/0r9K9xVl+qtTx5OMcfv
         BNh7jZf1SSt5hSmdwehkUbum8DhhpOhkQ7g9l88vrHkd67LqeZnGu7ndnYlCloQVcz+e
         Z7grtoQ5EqsNafjbSsIn1Pp1/xYvGWVTojAXM2q8vdO+hzuZY7GxMXl6K13z6UkKlxKM
         JJTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=8w5t8AF+5RkLDkSnNHLq12vdMQFhqf1YCQHMYW9HXWg=;
        b=bVFZaS0HKSc6iEQCUVmaSnDzh8VuOfCqDyhbyJ5gwz2T/0rBf0REgFTxlmYOpH1+i3
         TItEigV+lzk9Y1Nm/L1D2S9i35PR7r3QDGu5kjoSpp/C/Q2z4C9xXGvFPEBCvqlZ6sZF
         044yqWr2YFw+VCB5hgJ2Z5t9o3qOF5mjMYtfe/uzCjoqGj4YbU1qUgekHAFls3av2d4h
         2vgdjBE+75ByBI2H8VzILlkWqjg8KwXnPCijeiviVo6xJKZ/DoHTs1Wqx2lLZoLxEMQ9
         FjPvB1rrKquPZT03ZkPrUe19SXiem3uu8CaLzkCD2oLmasgaCm0AusiQQiEG7f/Y0L/D
         UwUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AFPWG0bS;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id t84si386934ywf.14.2017.09.18.14.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 14:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AFPWG0bS;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id o77so1157707qke.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 14:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8w5t8AF+5RkLDkSnNHLq12vdMQFhqf1YCQHMYW9HXWg=;
        b=AFPWG0bS2ccQF0bPj9c4a09TjvxjF1nBBDR/blCqsoKreNxFNaRlRrNvezAOvhbw6P
         lXUd7Fgnq1uga2EyfUcMh9oAXcV5sMKFoR8fPKCzhiepxAB5g2QFC6PL+WfN+tp/z9fJ
         EJqjbiix9D+zU3mT58xw7CXHP8y+SFOZ96pmy9DCCxfYuhga42PwxaDg03cNcv9qtyD5
         lHIUYSr8lz5WXNlrI8bJpR4hdlm5dGBIXEr2Nybq0eQQnpP6sx0ezrYmcdo426mTkk3x
         m47G81P4ZZw8qUhQBzXOLZoY10khD+z21Suv1mwXHKhSDo32mJi9hhBsZilTLozLmBil
         SuFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8w5t8AF+5RkLDkSnNHLq12vdMQFhqf1YCQHMYW9HXWg=;
        b=T7DmpUZo+IPIGZB4Je/YQ2+2MD48TsqVPaqoH4KV9+L5NOu1i1sJmahsbZnwQQgXkB
         1JcJhVC41CBMpED+FOlTx5pLtQLsyYbkIJ8orKYH+x7VVDs8Rae54EsdmKV31jtxQZNx
         zexrf0LrtPlCm4x+Gp3Q95eSKYy13WV1v+77xeQdg0eBwahG56UkLpfoJ2qU/IspSAIm
         IxPSNKpT5DHuRQGdJT1jg/bBPJ+Bpjfu/2zVc/PTx01zaDIourpVY46QKoTmq/1QZUZO
         nJt8U/ZkKv6pEWQj6dMJycl5mx/F4G0arg51H61joxu1ufRSKkubtsf9nuX8YbJT8265
         wgHg==
X-Gm-Message-State: AHPjjUi3tLZxw5SHP1OC2uVC3DWTrtZMfYzNVxaqQrXxizrsGZ2oAj+5
	8EEks/z/jpjVKzhtRJIdBlt82Vo9KI5KOjZXXyk=
X-Google-Smtp-Source: AOwi7QDm+1LajNwywEHdT55uX1bRyUfymFwU5Wj8eOG/6qzTJlhuMz1gpQU8uCl+noJIPtdBuzTFc4kf1SF9j7ABpmk=
X-Received: by 10.55.11.145 with SMTP id 139mr22599131qkl.123.1505770386414;
 Mon, 18 Sep 2017 14:33:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Mon, 18 Sep 2017 14:33:05 -0700 (PDT)
In-Reply-To: <20170918093349.GB9461@kroah.com>
References: <20170917231319.gmp3cl4bpagcyvgi@fireworks> <20170918093349.GB9461@kroah.com>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Tue, 19 Sep 2017 00:33:05 +0300
Message-ID: <CALta04zFFG2mU=228-dSGQeYLUKk=qB3Sg1wTg=HNTN23YZZRg@mail.gmail.com>
Subject: Re: [PATCH] staging: lustre: lustre: Use kstrtoull instead of simple_strtoull
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, jsimmons@infradead.org, 
	andreas.dilger@intel.com, oleg.drokin@intel.com
Content-Type: multipart/alternative; boundary="001a114c24c6fedf5505597d7cc4"

--001a114c24c6fedf5505597d7cc4
Content-Type: text/plain; charset="UTF-8"

On 18 September 2017 at 12:33, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Sep 18, 2017 at 02:13:19AM +0300, Georgiana Chelu wrote:
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
>>
>> Because simple_strtoull function is obsolete, replace it with
>> kstrtoull. To make the change, some code refactoring was necessary.
>>
>> The lprocfs_write_frac_helper() convert a string to a float. To keep
>> the functionality, split the string into begin (the digits before '.')
>> and end (the digits after '.'). Then, apply kstrtoull both on begin and
>> end, and build the number.
>
> Doesn't this seem a lot more complex and error-prone?  I recommend just
> leaving it as-is, there is a reason that simple_strtoull is still in the
> kernel tree :)
>
> thanks,
>
> greg k-h


I understand your point. I felt that my implementation was
more complex than I expected, but I wanted a feedback.

Thank you,
Georgiana

--001a114c24c6fedf5505597d7cc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On 18 September 2017 at 12:33, Greg KH &lt;<a href=
=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; w=
rote:<br>&gt; On Mon, Sep 18, 2017 at 02:13:19AM +0300, Georgiana Chelu wro=
te:<br>&gt;&gt; Signed-off-by: Georgiana Chelu &lt;<a href=3D"mailto:georgi=
ana.chelu93@example.com">georgiana.chelu93@example.com</a>&gt;<br>&gt;&gt;<=
br>&gt;&gt; Because simple_strtoull function is obsolete, replace it with<b=
r>&gt;&gt; kstrtoull. To make the change, some code refactoring was necessa=
ry.<br>&gt;&gt;<br>&gt;&gt; The lprocfs_write_frac_helper() convert a strin=
g to a float. To keep<br>&gt;&gt; the functionality, split the string into =
begin (the digits before &#39;.&#39;)<br>&gt;&gt; and end (the digits after=
 &#39;.&#39;). Then, apply kstrtoull both on begin and<br>&gt;&gt; end, and=
 build the number.<br>&gt;<br>&gt; Doesn&#39;t this seem a lot more complex=
 and error-prone?=C2=A0 I recommend just<br>&gt; leaving it as-is, there is=
 a reason that simple_strtoull is still in the<br>&gt; kernel tree :)<br>&g=
t;<br>&gt; thanks,<br>&gt;<br>&gt; greg k-h<br><br><br>I understand your po=
int. I felt that my implementation was<br>more complex than I expected, but=
 I wanted a feedback.<br><br>Thank you,<br>Georgiana<br></div>

--001a114c24c6fedf5505597d7cc4--

