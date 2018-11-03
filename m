X-GM-THRID: 6619601914535346176
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr198254wmh.22.1541271753399;
        Sat, 03 Nov 2018 12:02:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b744:: with SMTP id h65-v6ls161410wmf.7.canary-gmail;
 Sat, 03 Nov 2018 12:02:31 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dxJ6eonQ0/UGCK3V94x6d4srSDEtYQ2Gtu4ZlxS3BSJ5YMgHbMTcXZTtO0WEge++TDf8OU
X-Received: by 2002:a1c:9902:: with SMTP id b2-v6mr186863wme.4.1541271750999;
        Sat, 03 Nov 2018 12:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541271750; cv=none;
        d=google.com; s=arc-20160816;
        b=PnrVXbJhMsx5dBxqfo5+gQpbPQWuTKiiHQdht9rBev5drxQOJECUyvxKtvnQ2X92u3
         wmYi93GIOojZrwi2wn+gDGqayAcx41WgNyo2HYc3je/kF+L6+o3yFF0BvrO71y96oQcU
         sAjNRpiXtrwlP28f47Jia6PGTJwyVR12LAax7J/8EATjJtcEyfkpO5YYyjwAe4yA7B1n
         kKTnINbQEHlcyjR/tWU53tsz0zuFJ/ofj3MypzHDvRZ4oSKHfbxSH2IUaux6HrGZyJhb
         SCnqang+X8J91c9d+Z+Pu4nzpcM2KpFFnedRBKln8dPMJhwZ5UmiS2N0IBuRRCG8Xqrk
         T2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R8Xj6gg2t/Zc0ZkJ4NeMQzUqkNnV746dEWMD44BBPCA=;
        b=K2QjJvsqik+UhQkt2AVywXgNS5xVLlPphqzeKKq+1S6CZrsHm+E0obNu51V4qIXqMa
         UYDBYOFLAXIJQixfs/CApEun/Qs7+OmRd8/ex/0RZicHgQZ9Yp5i3Jj3W42bR4KCAI9C
         z9dkTEnBCSNkIQ401TE7UYkTyVkxLJjpNq3YLhAAGygnrhoRTLkNTnZ5fthLyCYphtLJ
         KugtyszNDDhYP6u9mrU8uZ5kPIyYBjIEK30Qkg1s6RbWDKMKkMyXhgDrwa/KxKHBHWZ4
         1VVygqfNyZql4lU9GZthkStT3jVld/KJHf87qiN0Qe/qcjp1xgtWZknNTXSIs4RojqkD
         PX8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p19-v6si161152wmc.1.2018.11.03.12.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 12:02:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,461,1534802400"; 
   d="scan'208";a="284247029"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 20:02:30 +0100
Date: Sat, 3 Nov 2018 20:02:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: tungolcild@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v4 2/5] staging: greybus: shorten
 comparison to NULL
In-Reply-To: <9a45b0e8-7715-44b5-a3dc-347277102d30@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1811032001410.2416@hadrien>
References: <cover.1541246060.git.code@wizofe.uk> <f4c8e02349e53545f542f02e453bf18f340ed897.1541246060.git.code@wizofe.uk> <alpine.DEB.2.21.1811031513180.2416@hadrien> <9a45b0e8-7715-44b5-a3dc-347277102d30@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1853729290-1541271750=:2416"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1853729290-1541271750=:2416
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 3 Nov 2018, tungolcild@gmail.com wrote:

> On Saturday, November 3, 2018 at 2:13:49 PM UTC, Julia Lawall wrote:
>
>
>       On Sat, 3 Nov 2018, Ioannis Valasakis wrote:
>
>       > Shorten pointer NULL check by simple truth test
>       > Reported by checkpatch.
>       >
>       > Signed-off-by: Ioannis Valasakis <co...@wizofe.uk>
>       > ---
>       >  drivers/staging/greybus/core.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/greybus/core.c
>       b/drivers/staging/greybus/core.c
>       > index 6b1f3a27fa9d..d6b0d49130c0 100644
>       > --- a/drivers/staging/greybus/core.c
>       > +++ b/drivers/staging/greybus/core.c
>       > @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct
>       gb_bundle *bundle,
>       >  static const struct greybus_bundle_id *
>       >  greybus_match_id(struct gb_bundle *bundle, const struct
>       greybus_bundle_id *id)
>       >  {
>       > -        if (id == NULL)
>       > +        if (!id)
>
>       This seems to have the right start and end now.
>
>       >                  return NULL;
>       >
>       >          for (; id->vendor || id->product || id->class ||
>       id->driver_info;
>       > --
>       > 2.19.1
>       >
>       >
>       > --
>       > ta
>       > ioannis
>
>       You don't need to put anything down here.
>
>       julia
>
>
> Can I leave it as it is or does my signature need to be removed in order to
> be approved? :) 

I think it is ok, because diffs include line numbers, so it knows how many
lines to take into account, and ignores the rest.

julia


> And if so, should I just send a new version just for this patch or for the
> whole patchset?
> thanks!
>  
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f4c8e02349e53545f542f02e
>       453bf18f340ed897.1541246060.git.code%40wizofe.uk.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/9a45b0e8-7715-44b5-a3dc-
> 347277102d30%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1853729290-1541271750=:2416--

