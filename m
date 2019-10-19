X-GM-THRID: 6746702482716491776
X-Received: by 2002:a19:f018:: with SMTP id p24mr9898490lfc.51.1571512858648;
        Sat, 19 Oct 2019 12:20:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:107c:: with SMTP id y28ls283847ljm.7.gmail; Sat, 19
 Oct 2019 12:20:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrE5KeX0eU4ZpwPna2lt5E8Ph8HZqBjOAZv9ItGEtXLZrINKZHecu1n+vvHIVYFp/W2P4n
X-Received: by 2002:a2e:95d9:: with SMTP id y25mr10129617ljh.217.1571512857603;
        Sat, 19 Oct 2019 12:20:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571512857; cv=none;
        d=google.com; s=arc-20160816;
        b=NFtKHxEG6d99/7BjqiP0GViteVEz3dD9mA24EmtmeKRhsThNweFU3c60ZSGOvGIjWv
         8yQjhkyIVW3ShVuvWSWpgQ/WeUWDnJhzr6iqWNlf6fIuCSlcLv6gnvqUwUXg0rPifEM+
         TBFZG99AUJf4+Vaeegnz7hSkcxSsPD9u3fH1qF4tRnyAMIjNHT7LVEXKt060WwdErtZ/
         xcZ+Wm0I7iW040dOxby42BzMrpAkHKOFQkRnt+3HqgEemMb04vzYm7jJkwlNwqtAWwGQ
         Ed+PRhpW8B2RkJoZ6wqA8WCTWVIGCxgvy5YC8Do6YlayEDOBQwJiI0kyQhMB3gGIy3le
         KuGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3x/zNyDsDrSy7bz0yyioPnwmZ39R3Cm8qeiE2nzk9hk=;
        b=BCtxLIlkQK+iqUwnmXFRAj7NTtLzcDUA2q4rikSvlA3f5OorZU7jjYgDvIrzcJ9ZBz
         Pjg0/88T5POY3PdDBp8g2LrIHYKKG5JLupvInNabqwkww69fZ6OXPVDdbOvIt61ZtD5U
         vLve20OR7tvsprIvxNkgLPeGmkeM6rTqiy+yOl0NkFIgUinxzFnTNEJHvPscg1lW1YTl
         PNaQP5jzrD7bt4Y72noAztm+KADEDocDgr1ga6ztqV+CYem6Vk4I99Qa/s+AZXU9n4de
         jvpv/M/vIsLjzgylrEHiaFtEFjQGoBzQLcRLtCU9PCf8hap8xm8M546wA8LcVTonN2bK
         jPSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h10si490994lfm.2.2019.10.19.12.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 12:20:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,316,1566856800"; 
   d="scan'208";a="406985643"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2019 21:20:56 +0200
Date: Sat, 19 Oct 2019 21:20:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: evan chime <chime.evan.dri.devel@gmail.com>
cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel]
In-Reply-To: <CANR89jbxRS1yZe_-QSUmyLc-CSYdo-+Et3dVc=w92H=Sh0qjZQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910192119320.5888@hadrien>
References: <CANR89jbxRS1yZe_-QSUmyLc-CSYdo-+Et3dVc=w92H=Sh0qjZQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-871416604-1571512857=:5888"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-871416604-1571512857=:5888
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 19 Oct 2019, evan chime wrote:

> Hello guys 
>
> Please how do you find a clean up to do in the kernel 

Please check the tutorial, from the "Find a driver to clean up" section:

https://kernelnewbies.org/Outreachyfirstpatch

Please read everything in the tutorial very carefully.  There are a lot of
useful hints and conventions that must be respected.

julia
--8323329-871416604-1571512857=:5888--

