X-GM-THRID: 6664965756693774336
X-Received: by 2002:a05:600c:21c8:: with SMTP id x8mr415796wmj.14.1551809764964;
        Tue, 05 Mar 2019 10:16:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc0e:: with SMTP id t14ls4369796wri.6.gmail; Tue, 05 Mar
 2019 10:16:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqxShFvTtacxCQ74P564E4d9f7Q09QV+hsNKK1Dg6y0vKSZAOrTJIVWLBtSti0/aaNTPzAZP
X-Received: by 2002:adf:ebce:: with SMTP id v14mr8983wrn.20.1551809764234;
        Tue, 05 Mar 2019 10:16:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551809764; cv=none;
        d=google.com; s=arc-20160816;
        b=aRr2KuzYB4JAMhGHXUJLoe0LolGReBRLlxlhzeS6pUmM6gXycFkRoL5KIeBskYW4Xd
         pX0We7uVo+bR8nZSlO9iIPeU/esMSnzym2HsPBnUdsonDqFibwoO58qCorbM72EFuyfm
         I4DvxMcnfrHLPbjNx8Q0LANNNf33Mz6PcQKBuGeKq4a5S7LWmKKL2RymqdCLbqkSzvtv
         0hNt7awJ9j9360LaYHSJHuEbQuvHJSWKKFAoNK5TH2mFowQpn3EUJg5jzHkxwqc3rYv+
         1O1DiTJ8/C/tnin8YfNzaIgWDPoaXdkALjxJ8h5u3ad1akH8CLpmJUT6GKH7OKZrUhSS
         U/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/YlOHfXayADCuDUzQoeliQj72redhlUt5ibbRgd7b6M=;
        b=aiRyYOFLKD45ysO+XRP4u3ttsOED7NNrZCJPlVtrFVIbA27cfNBE5Wigux3uV0BGax
         84jh/WCMP1qsaime3qdEMRh3soMzz6Zh7vX9WtiqKRdHr4NRu+DwZ9YJbRaZTAzGRnJV
         Yjphb92Odrm4WS5bwykbM3Pbjsl31hfJbP5qF6Il7zAahkiKk3BlzNJsj0KbfuviUe8l
         5gmCL5Gimb4vhfoUvkIKVFttsR6eektEKCb9No1HLBfTJUwVV24mLizkgUcAn8VX4EcB
         okpMyHKuvI7pjT8Yk7GwM1kSkC9Cq3aKVbs7KtLW26ziapxYRpOrA5qut+IsTbcmfufX
         7CIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si14094wmd.1.2019.03.05.10.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:16:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,444,1544482800"; 
   d="scan'208";a="372061717"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 19:16:03 +0100
Date: Tue, 5 Mar 2019 19:15:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Warning about ENOSYS
In-Reply-To: <CACw+u4H=4T8_daSPgAstpNFNUJ46zXw2DikwCeu4tzm-MQCSRw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903051912330.3701@hadrien>
References: <CACw+u4H=4T8_daSPgAstpNFNUJ46zXw2DikwCeu4tzm-MQCSRw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-548359751-1551809757=:3701"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-548359751-1551809757=:3701
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 5 Mar 2019, Debleena Sen wrote:

> I came across the following warning in
> git/kernels/staging/drivers/staging/vboxvideo/vbox_prime.c
> WARNING: ENOSYS means 'invalid syscall nr' and nothing else�
> For the following line:
> � � � � � � � � �return ERR_PTR(-ENOSYS);
>
> How should I go about fixing this issue?

One would need to know more about the context.  This return is indicating
that some error occurred.  This is probably under some condition, that
checks whether there is a problem.  The indication of a problem probably
involves some variables that hold the results of some function calls, that
may be producing inappropriate results.  All of that has to be taken into
account.

A typical example is:

x = kzalloc(sizeof(struct foo), GFP_KERNEL);
if (!x) {
  ...
  return -ENOMEM;
}

Here to see that -ENOMEM is the appropriate return value, you actally have
to look back and see that what failed is the call to kzalloc (a kernel
memory allocator).

julia

>
> Thanks,
> Debleena
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CACw%2Bu4H%3D4T8_daSPgAs
> tpNFNUJ46zXw2DikwCeu4tzm-MQCSRw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-548359751-1551809757=:3701--

