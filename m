X-GM-THRID: 6617138679585439744
X-Received: by 2002:a1c:b5cc:: with SMTP id e195-v6mr1157856wmf.17.1540704342075;
        Sat, 27 Oct 2018 22:25:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8984:: with SMTP id l126-v6ls714892wmd.4.canary-gmail;
 Sat, 27 Oct 2018 22:25:41 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dxATUPAWVBSD3+dyYS6p1x2rnKikMsxQ9FlCTUp6EpCnrt7oZsHNssUbgz6ugpfqbH1TUX
X-Received: by 2002:a1c:f704:: with SMTP id v4-v6mr429059wmh.20.1540704341272;
        Sat, 27 Oct 2018 22:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540704341; cv=none;
        d=google.com; s=arc-20160816;
        b=GzDqrF05AcNO+78bI2T3cfuakfnPvsbfY3N5LOz93H6x8KrHsG5b8e+Y93mDLfDIZf
         uMCdR19lTUV+CZKnkOqCS3GjBVy/cREqZd19oMNlly5CYgNTXKFdaQqMi3QLbpn5DIJx
         GdtAsOSJmaYNJNyry62PdcwuY9FcqU3VNC9bDMoxSm4E0RJfJPk9Mud/Go3IllXzmrKl
         ZGZ4yZ4FuzyV7j7Kfij7oIPx+ARzyXnC8HBZGdeBekjp04erp6agSL+oVZM6H4XqMLtg
         DZyy0AkMFMqz8ZNJils8vaubuCOooMfps+6mWMRbBqUvV235q5ez8rnuaYAwtqc58/Fg
         cb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=G3xkDH7wC3ZVtEp30qcssHy3vyisF84FxPR1e4lFCWI=;
        b=iTcrXvwPo96Q2WHpKIIYGSPDgLvU5TwEaXvhlEoSJkov3TKRl4qRInrpYL92Dwj0ef
         mVntnqkvfMWGJpNKfT7ZGUXGHcrAc334U+GPZP4a3fyfTjmR91l0WWNs1mgeGt0yhu2f
         75lYrbgCN54xDgOevmLtJaEJEz+5UV2S911oGRgewblUWd1zGRvabFpG6ARzgKqn8zLj
         RS5Qm7tODeNgwWEFpcdaJ3/xFV5ZGI1Qbr19TacUO1opdPePWNfENUnDDI1FEEyjjpce
         3a5CNiKZZ5nRPVyUMFObsbrw745ZSP8Wbn1j5QUFJQ2L+6GvOSyMvxmLRkcuchnknLgn
         Q9Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h74-v6si381971wmd.4.2018.10.27.22.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 22:25:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,434,1534802400"; 
   d="scan'208";a="353118090"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 06:25:40 +0100
Date: Sun, 28 Oct 2018 06:25:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sasha Levin <sashal@kernel.org>
cc: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com, 
    hverkuil@xs4all.nl, mchehab@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH vicodec 1/1] media: vicodec: Add empty
 callbacks to prepare for the request API
In-Reply-To: <20181027234134.GK2015@sasha-vm>
Message-ID: <alpine.DEB.2.21.1810280625090.2450@hadrien>
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com> <20181027234134.GK2015@sasha-vm>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 27 Oct 2018, Sasha Levin wrote:

> On Sat, Oct 27, 2018 at 11:37:19PM +0300, Dafna Hirschfeld wrote:
> > Add the callbacks `_req_validate` `_req_queue` of the struct
> > `media_device_ops` as empty functions.
> > Those will be implemented later.
>
> Hi Dafna,
>
> In general, unless it's a very complicated functionality, we usually
> don't add code that doesn't have any users.
>
> It's fine to do it as part of a patchset where the usage comes in later
> patches, but in cases such as these where there are no users,
> maintainers will usually not take the patch.

I guess she was asked to do this as a small task by the video people?

julia

