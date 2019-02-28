X-GM-THRID: 6663027370941743104
X-Received: by 2002:a24:94c6:: with SMTP id j189mr36879ite.18.1551364760378;
        Thu, 28 Feb 2019 06:39:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:650a:: with SMTP id z10ls2381670iob.5.gmail; Thu, 28 Feb
 2019 06:39:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZzuxsmoAmKkwwS67QXGZlRuZN6LU9WedhzNOY5vNVTNstH7LJ25DWnYOx8tRyHkmlr+jP
X-Received: by 2002:a6b:3115:: with SMTP id j21mr6169356ioa.33.1551364759495;
        Thu, 28 Feb 2019 06:39:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551364759; cv=none;
        d=google.com; s=arc-20160816;
        b=olhlKpc52YMYocT5P84U4y9Rzz08OqUHdD8wJUIXWiyvQEu1+3kf4iH2ewtno0hBUa
         dOEZh0AJoPn+WiSu5j3U1MiG3wc6aQKebeAVVLsev6QRNdLm+ZCf9kmbR3aHcDgcZC+B
         k/LBaK6RmHmW1kVsyiTekQ+hrSPcAQzTUI7keAzNH88dY3a8bvcTIiC17p7b7RBNcfm/
         LKDBLuNxplqVN/sc+BpZ3WIQLOemJzlQchllmES7O6uVXO7hqoGKqFAHbYf8U5Ch8909
         Sk92yVuBh31cckBzHsjmTVpm5WgpVCkNesD9WXow9yeX6HwYk8s7xQUYjLvAMbkaLCJo
         52sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=cbjtCNf1tFW5PvAHLXZXwbJuiMVKfEiDxP0NiFZkVyg=;
        b=rOvOnNWqhFtIT/oxCpXSeQ6aQvit1UCmIbpD5bD7XOOURsqi9OEffyumLMIE9jiTIn
         wpGzjOYfcZc/hG5A7KfaeXRrmngukshbxsdgfZfoZ5KVyUhYQ/sPaXEpeRrsHsr/Eatx
         jiMw0NR//6mClYKNRQ0qdM+Kh6BOJY6aEPWVS5vZ1KTwDvtMQsgKopN4PMQdThaeVOHu
         uA1qxMJy8tRTQWWW1g8aE69Hov9XEfpGSNbZK04T9iawAE8Ro5BcVuZW2a8VFhcl05O4
         w/ajTPr1/sm3N881KocE7GzA0plkFaiKPt41ruXyvjZkhuqpt2PxVu/rmm7Xp9sHDus9
         JzKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.239 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-10.prod.phx3.secureserver.net (p3plsmtpa09-10.prod.phx3.secureserver.net. [173.201.193.239])
        by gmr-mx.google.com with ESMTPS id u1si176015itb.2.2019.02.28.06.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 06:39:19 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.239 as permitted sender) client-ip=173.201.193.239;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.239 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lf1-f48.google.com ([209.85.167.48])
	by :SMTPAUTH: with ESMTPSA
	id zMqDgcjLG2kUIzMqEgmdAt; Thu, 28 Feb 2019 07:39:18 -0700
Received: by mail-lf1-f48.google.com with SMTP id z23so3395728lfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 06:39:18 -0800 (PST)
X-Gm-Message-State: AHQUAuZsTqbVF3A92FuekCOz+Ja0isQs7UDljV35q2PneAtJIpjOUVmv
	RLpmJhFGd3EreGyinvRT3DW0JuiMfIsTmxFwuh8=
X-Received: by 2002:ac2:514d:: with SMTP id q13mr4388629lfd.30.1551364757518;
 Thu, 28 Feb 2019 06:39:17 -0800 (PST)
MIME-Version: 1.0
References: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
 <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com>
 <20190228140038.GA16345@kroah.com> <CAOMPgjh3MA0WBs+WA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ@mail.gmail.com>
In-Reply-To: <CAOMPgjh3MA0WBs+WA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 28 Feb 2019 20:09:05 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+vhdwS7CegAzCJ6Xm+bfYBrk0hnOviZPHyHZ8Ozce7dw@mail.gmail.com>
Message-ID: <CAK-LDb+vhdwS7CegAzCJ6Xm+bfYBrk0hnOviZPHyHZ8Ozce7dw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/1] staging: speakup: fix line
 over 80 characters.
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Michael Kelley <mikelley@microsoft.com>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CMAE-Envelope: MS4wfMB1F7FRBfKIiLEhcgsLu5WUqP6VSlETPjcPxAG11rWrl0M/BiRIcnlt/DDOrKQE0J0hOt2gdw8GwSJtBIYFFiAqPLoxClFMy+iWUHAPWJTlRu+d1VoZ
 iZzvM7M3f4NyLoFDAQEgzimxH6Jnf2yx7HAwDQd8AvbH1mbjAgCSrb5YzbIwpd5YpwYY+qZmRmTH1+rP8LgW8K+diAUyHW4/xFg=

On Thu, Feb 28, 2019 at 7:59 PM Bhagyashri Dighole
<digholebhagyashri@gmail.com> wrote:
>
> My apologies Greg, Above message was for one of my subordinate who wants =
to contribute to the project. I was helping her to understand the patch sub=
mission process, verifying her patch and accedentally messed up the email t=
hread during reply.
>
> My appologies, I assure this won=E2=80=99t happen again!

No top-posting, please! :)

> =E2=80=94 Bhagyashri
>
>
>
> On Thu, 28 Feb 2019 at 7:30 PM, Greg Kroah-Hartman <gregkh@linuxfoundatio=
n.org> wrote:
>>
>> On Thu, Feb 28, 2019 at 06:17:23PM +0530, Bhagyashri Dighole wrote:
>> > This looks good! If greg replies to make changes! Ask him  what kind o=
f
>> > changes you required.
>>
>> Did you just email yourself?
>>
>> confused,
>>
>> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/CAOMPgjh3MA0WBs%2BWA4BVm6zrydsxiXa-oXPUkYNRAw3mNCKArQ%40=
mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

