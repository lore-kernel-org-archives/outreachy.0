X-GM-THRID: 6478777723718205440
X-Received: by 10.28.238.220 with SMTP id j89mr130433wmi.6.1508580480577;
        Sat, 21 Oct 2017 03:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.171.79 with SMTP id r15ls931998wrc.1.gmail; Sat, 21 Oct
 2017 03:07:59 -0700 (PDT)
X-Received: by 10.223.156.196 with SMTP id h4mr665212wre.5.1508580479764;
        Sat, 21 Oct 2017 03:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508580479; cv=none;
        d=google.com; s=arc-20160816;
        b=1D56Jqnv4RssGqUnBZM6ve4W0mGVMo007zO0E9VYqlYUGFUZbNm6mCvzl5KL4Xf0jx
         xIbBJb5JMdRKGtomCJ3sudGs3Yf6oLDFcZKUt90ZC56ve8Y/y63m1WuVpzynJruH24Y3
         BxXNkgOjmWP1bnL+ojwYBNxkPAGiK1kuApXwwaTsu/Ib5Nq7f2kdXOT8a91Dmc4pUMq8
         pCV+6CagY+BeO44cQNyuuXtC+AnxhNwSjsjt+Wphv+isG5yAj/EyBgtvS5oGysJB6I8Y
         xsIriT+A7jcnttzltIZ4DLz+amwVzkHO+svOmsQLeu5cQPzT1Mdg1Y5KpMVjq7bWXIod
         fyvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=ZmraBfmUTax/UzAPMLAZguLMcGswxDK03WwCoEXz4L0=;
        b=0S+771ImzPRrL0MRjjODc1Cye+B71gJCWp4D3NoYOkM2jPVa+gqb0aWhDWYKFQlhqN
         z9XBvvVb3oO+D/SfUznHGdO0bKZSm9ltKbURnYvq2gDxHBAkDTiSkli2xH3ptq0fBT8E
         5Ag+AkJBpV9B1QHwT9Y30s2UVuUyAoHXGSlYPMbzLzcHqR73MCWPryuhjvrzlKM/s9xn
         UgP7VwZgqtLOEDnDGOth3MvAFB6dAhRBTgeuhePPqqI5DbpmXoIA9Mk0TbAzsNobA3GD
         tWu512FsD/rslHxERI0vC7MfvHdBJRU1nDiqKz4Hu9v47bGH5jIB9lprJAJ2eyEy0uBg
         oeSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBAzKXu2;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=jhovold@gmail.com
Return-Path: <jhovold@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id d82si28249wmd.1.2017.10.21.03.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 03:07:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qBAzKXu2;
       spf=pass (google.com: domain of jhovold@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=jhovold@gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id u138so1837858wmu.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Oct 2017 03:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZmraBfmUTax/UzAPMLAZguLMcGswxDK03WwCoEXz4L0=;
        b=qBAzKXu2j+7P85i6Yn/Fc9vJX6jsRYYgUFZAwBGPVkU9dUpOQtnqcmMJmI4hE58Jv6
         oDnHYcdLB6BzKbMrdkNi7K1Q1yXNswsnbierz6kd0w0aN2yenC11Pzj4hietYNrCgkEI
         ZsAEyzTyvDJZW63GcHbMjKSRcYznfz+uJ1VsC7aeY7CvLNzXoNJFHKP7ONFNvBZruclb
         GNwWpbEvMC1UQlS05bwjn7pqXj99E5w6aiA3GBP8DYj7SpGDjoRF29f2RGivmbCMQgb4
         BPq0eIiJ3ts/zwVHr1RScr84NZH9a44AG/euOofze8w/YGXA12RQOQoociLMsNcAD+IZ
         RjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZmraBfmUTax/UzAPMLAZguLMcGswxDK03WwCoEXz4L0=;
        b=org7eLzdetQ9zxDmn2kNgtOrrXuoL1CChdpgxECDRdBqMtklW+VA633cueP/jV0tbv
         W8ZHdlPwGj6Xjqx8wCx++hk1DW5uXer2RjdZI5+FDZYWA26R8OOiRggkWyskDOuKzvlR
         9bl5fx7qQbtswZVBgotcJ54CmMkmFx4idiMe/ZXbfchyOM1YxkhUU6QylbsbLkBXwbKP
         MAoXD4WGkh0U1tkDtskgeBy8tOOzSzP2k2zZn7nNTmLNWppdrePZuLtRHgE5lIkRZT6E
         j/NR7GyUm2BfiECd15vrL6eeTvIPj2ovYBSAWSYmyynENSEVtzxP0fBG8fY94nTocBzR
         /Vyw==
X-Gm-Message-State: AMCzsaXhUikHU5/L3UcV2Lf3hG032vxS8mG7tVIVyu1lPbrcINY1S0Es
	tB8CiJY7i3aJyLyNzPIgNISDgYsM
X-Google-Smtp-Source: ABhQp+Q1NMsKPJYeln8Rd4OGvp3tKJYw7n4Q70x9xpusvjF2Ix/IPSrvxczSsXKMqOy4S1BHixbMxQ==
X-Received: by 10.28.154.137 with SMTP id c131mr1251393wme.142.1508580479501;
        Sat, 21 Oct 2017 03:07:59 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from pi ([62.168.35.106])
        by smtp.gmail.com with ESMTPSA id c37sm8425522wra.73.2017.10.21.03.07.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 03:07:58 -0700 (PDT)
Sender: Johan Hovold <jhovold@gmail.com>
X-Google-Original-Sender: <johan@kernel.org>
Received: from johan by pi with local (Exim 4.89)
	(envelope-from <johan@pi>)
	id 1e5qgf-0006DR-6D; Sat, 21 Oct 2017 12:07:25 +0200
Date: Sat, 21 Oct 2017 12:07:25 +0200
From: Johan Hovold <johan@kernel.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: pablo@netfilter.org, Julia.Lawall@lip6.fr,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/6] staging: greybus: Correct code style issues
Message-ID: <20171021100725.GB1226@localhost>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.7.2 (2016-11-26)

On Thu, Oct 19, 2017 at 08:06:22PM -0400, Frank A. Cancio Bello wrote:
> This patchset address code style issues with blank lines, aligment,
> spacing. Beside it change 'var_name == NULL' by '!var_name' and use
> kernel type instead of C99 types.

Thanks for the clean ups. Some of these are good, some fall in category
of style choices that are really up to the author of the code to decide
on (e.g. using double newlines as a separator in a source file).

Either way, you need to send these also to the public lists.
scripts/get_maintainer.pl will tell you which (you don't need to CC lkml
unless you prefer).

Thanks,
Johan

> Frank A. Cancio Bello (6):
>   staging: greybus: Remove unnecessary blank lines
>   staging: greybus: Fix alignment issues
>   staging: greybus: Use u32 instead of uint32_t
>   staging: greybus: Add space around ternary operator
>   staging: greybus: Move logical operator in previous line
>   staging: greybus: Rewrite NULL comparisons
> 
>  drivers/staging/greybus/arche-apb-ctrl.c | 37 +++++++++++----------
>  drivers/staging/greybus/arche-platform.c | 10 +++---
>  drivers/staging/greybus/audio_codec.c    | 23 ++++++-------
>  drivers/staging/greybus/audio_codec.h    |  2 +-
>  drivers/staging/greybus/audio_module.c   |  4 +--
>  drivers/staging/greybus/audio_topology.c | 55 ++++++++++++++++----------------
>  drivers/staging/greybus/authentication.c |  2 +-
>  drivers/staging/greybus/bootrom.c        | 20 ++++++------
>  drivers/staging/greybus/bundle.c         |  2 +-
>  drivers/staging/greybus/camera.c         | 16 +++++-----
>  drivers/staging/greybus/connection.c     |  4 ---
>  drivers/staging/greybus/control.c        |  1 -
>  drivers/staging/greybus/core.c           |  2 +-
>  13 files changed, 84 insertions(+), 94 deletions(-)

