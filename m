X-GM-THRID: 6674230099683835904
X-Received: by 2002:a5d:6189:: with SMTP id j9mr1244010wru.0.1553967010755;
        Sat, 30 Mar 2019 10:30:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd83:: with SMTP id y3ls739096wmj.6.canary-gmail; Sat,
 30 Mar 2019 10:30:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdhS4lTFsySwl5eONzHUeyLcd1eM1+k0LuJnko1BWd50TyLTFGqbLqal8dYgnTFezQ0qid
X-Received: by 2002:a1c:f514:: with SMTP id t20mr158688wmh.18.1553967009932;
        Sat, 30 Mar 2019 10:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553967009; cv=none;
        d=google.com; s=arc-20160816;
        b=mgFC1hhDXKJ+G/5+Kzgm/EIwtECyajErAFlXfA4lQB/o9rPupZGf5z8RqHJORjnOdx
         /MG7jvwWGRE1SXWdlhWnm7GszDmfsMNh88gsO8UAjQs/N8A7UmTQfBC4sOSzSzrs0Oui
         hdZLEaqaTPQnKLEEXwbuGYMEPxt4uiLdG5Zs2/o/i3xc67jXQWjtwMqavQfTw1eo4pPq
         WfAQBqquYY6ggs7qJFpmqpkQT/sTprZNXpks6KZpVBuljp2TK48wFd0FDGYLoJZ+2W52
         zoY3iPRcp0WgCXCz+QUgOZ41+Qa/yWKZ4pzvujCC9ieDRTK+xp9CXjm81aAsY4+498fy
         8D+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Fd0wVocgEtdUzvR0ZSsalxSD8flXCoh4E4Jtp0LohnQ=;
        b=VFYAAXX+ZD2Vsslm+1+KVIFAJ36wnm8Nyo0LtXah5maB5mD+4nPiF96Vacx6fUcIWZ
         DwZVom+XZRPsNE1kNpwjq+ia79CCMVMAG576zz0ZtZC0R2IUsJ1ZSN+oNEFj1QTNEOwL
         2xxwKtWRHrDv2Rxu/xzYrfnb6H7dMXt5EFhtatBLtLqwWu//YW9CrYS0X8U2tJeLh9G0
         kcVinxwGq4AKPwdCcCZl4oYJNcIulLWmphsybkTVcSr0RYBI911qTNKhm+RKcaYg8CA6
         6yWhKubAgNM2dJ3Ca5p7SmWz6oXe4pPXxl7Qi4I+cjnlo2LHAZq+RsLYdBj9/TtH56kc
         jGcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p14si124624wmh.2.2019.03.30.10.30.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:30:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376473372"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 18:30:09 +0100
Date: Sat, 30 Mar 2019 18:30:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: wilc1000: Modify return
 statement
In-Reply-To: <CAO-bXGDmAJVPyODMynGrPTuttnKkJbivpaVYQSUYAOmj8v4e+Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903301829490.2608@hadrien>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com> <alpine.DEB.2.21.1903301805410.2608@hadrien> <CAO-bXGDmAJVPyODMynGrPTuttnKkJbivpaVYQSUYAOmj8v4e+Q@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1548873216-1553967009=:2608"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1548873216-1553967009=:2608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 30 Mar 2019, Sanjana Sanikommu wrote:

>
>
> On Sat, 30 Mar 2019, 22:35 Julia Lawall, <julia.lawall@lip6.fr> wrote:
>       The cover letter should also be v3.
>
>
>      Shall I change the version number for only cover letter or send again
> the whole series in v4?plz let me know.

Sendng the whole thing again as v4 would be more clear.

julia


>   
> Sanjana.
>
>       julia
>
>       On Sat, 30 Mar 2019, Sanjana Sanikommu wrote:
>
>       > This patchset does the following things.
>       > 1.Modify return statement in wilc_spi.c
>       > 2.Modify return statement in host_interface.c
>       >
>       > Changes in v3:
>       > Make a patch series.
>       >
>       > Changes in v2:
>       > Adjust spaces for last argument in return statement
>       host_interface.c.
>       > Adjust space for last argument in return statement in
>       wilc_spi.c.
>       >
>       > Sanjana Sanikommu (2):
>       >   staging: wilc1000: wilc_spi.c: Modify return statement.
>       >   staging: wilc1000: host_interface.c: Modify return
>       statement.
>       >
>       >  drivers/staging/wilc1000/host_interface.c | 31
>       +++++++----------------
>       >  drivers/staging/wilc1000/wilc_spi.c       | 10 +++-----
>       >  2 files changed, 13 insertions(+), 28 deletions(-)
>       >
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190330170116.4761-1-sa
>       njana99reddy99%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAO-bXGDmAJVPyODMynGrPTu
> ttnKkJbivpaVYQSUYAOmj8v4e%2BQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1548873216-1553967009=:2608--

