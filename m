X-GM-THRID: 6475592721521180672
X-Received: by 10.28.71.131 with SMTP id m3mr230007wmi.19.1507905887976;
        Fri, 13 Oct 2017 07:44:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.66 with SMTP id x63ls285874wma.10.gmail; Fri, 13 Oct
 2017 07:44:47 -0700 (PDT)
X-Received: by 10.28.143.13 with SMTP id r13mr241516wmd.30.1507905887030;
        Fri, 13 Oct 2017 07:44:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507905887; cv=none;
        d=google.com; s=arc-20160816;
        b=og61GoZg4LvvJne8TbwTpgah1w6EsQuB5ES0QJGPOuboRYMb7m2nRfS3nHLDdbiU6r
         DXCAGAuE/smYB4xlbhdZoRw0Ec/J3IclEwwelSIChSs0bqScaBFgu9dQ3i449ixfiE+9
         PNEwiDPar3p2gn7vM2h9dUUhtfDuAyBEJr2ei8Cg/UVyiJE9DsvsCSd7Ndf882Ty7Y6O
         JM/zu5p8V6MzeFTa7cOSu7rlNVfRIsQ4XnJHoT0gC/odF+atzzPKe/owzW0UnRH9vMXY
         lUnAB5+ZqSSZTGHtXdrq1NWoakJ+QdbiPYKEt9bSp/Pf0A4bDZ7qJEbuqSH6/UiSlw5Z
         opMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=lfuW2PMO8jjfQyHYbVgJnNXC7iaMatXcAZppshICwPI=;
        b=qADFC8Dx0FnmvaWreWqGmcaO+JNZTFT3d1B2+tqJa3yCQbC/h/ibDq57f9raZt3THD
         qlonjxPaoKWgXDCfpiXVyEDASo9yXzokUV/a3BjeVAqDDlwTAx7ck8CnpuyIqRd24Q39
         Tjf9ODQTCOmGa4p8OHdG2QFistPTownXNFCTHxubY6d1S6Xigm0mtv4YnGeCmruuXKzt
         oMHekU3aKCYua4DgHoEdyV3hrMOmCsB3Y3FwEvCMvIEAzY5LFMZUXzVgIA1bYtUt/6xK
         ktHisN9zwqJ9YGY7izJJ8lYtaaGNCK0U8bO1s8DHeOIBGDyczxLceiZtLEI/oLMggLVW
         ba9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YBV8nh/4;
       spf=neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id 200si154753wmj.0.2017.10.13.07.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:44:46 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YBV8nh/4;
       spf=neutral (google.com: 2a00:1450:400c:c09::22c is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x22c.google.com with SMTP id m72so21987791wmc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 07:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lfuW2PMO8jjfQyHYbVgJnNXC7iaMatXcAZppshICwPI=;
        b=YBV8nh/4RrJnVyBYk2+jAUe90zuX9QWJyw1l6jqo2eVXeSmipAlTlNPVfXLN8El2Uh
         LeJABSco93wTD+BiCqMFdZjRrTHF+zyHlx9X4Vc2Di7UYsFQ0yiJR8VzPRtrUiMNMjjE
         glRbG7rQ67rCwYkiyMdHQgHxV6sIcU5ulFfAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=lfuW2PMO8jjfQyHYbVgJnNXC7iaMatXcAZppshICwPI=;
        b=Vf1wD9OqNHYBqxCvE8O7ZoRcxUyCoPr+kFVfqVAX3JraCOiDJmauqmsu/rw0nV64S+
         9XOigHFIMJQLGB49EfZDpE3HgAsXDBr9UR51cpBn/DSc92R+RscLSsxIAI/7OXzVccbZ
         q68QjHNgvzvMd5pAiGZhRaUZbrLvqhuomnSF10SLIG9/S2ykB9jFKUu7lMCp52nacBco
         vQu3LWH5YYE7j+3MjHXH6voiBlR6aVZwdC2U8c81MYQijKgiisTQpKWiuZlig+0JZK3C
         lsn/Z+Ths5dQKCAyJH8PGXyRZoionD0RtXKJeAySKdpaZYnlnwmioeUAAuHFh3cEvNpD
         wSZQ==
X-Gm-Message-State: AMCzsaX+wZCWy6uWfIGZKPFLJ4ZJ/V1UAiFO6ndvXT/JMcO6juUFQSof
	SL+Z8CKia+xGJjjfv3uZcvy2Sg==
X-Google-Smtp-Source: AOwi7QC3PURkhPA18M1WPcqQqyP2koHf+ciAMkpFOPH03V2EnVOiubbcJWVqBOqlzeJcs/S2rPa9OQ==
X-Received: by 10.80.216.12 with SMTP id o12mr2550410edj.10.1507905886351;
        Fri, 13 Oct 2017 07:44:46 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id d3sm901935edd.41.2017.10.13.07.44.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Oct 2017 07:44:45 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 13 Oct 2017 16:44:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org,
	jani.nikula@linux.intel.com
Subject: Re: [PATCH v13 0/3] Move backlight helper functions from
 tinydrm-helpers to linux/backlight
Message-ID: <20171013144443.x4n4bdelxtiv6e4i@phenom.ffwll.local>
References: <cover.1507890285.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507890285.git.meghana.madhyastha@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

Hi Meghana,

On Fri, Oct 13, 2017 at 04:09:27PM +0530, Meghana Madhyastha wrote:
> Move drm helper functions from tinydrm-helpers to linux/backlight for
> ease of use by callers in other drivers.

I've been a bit overloaded past few days, so didn't get around to looking
at any of your patches yet, but just a quick suggestion on process: Please
don't resend complicated patches this quickly. It takes various reviewers
a while to grasp the latest updates and complications, often they first
need to find a bit of time to really think things through. So if you
resend multiple times per day it gets overwhelming and confusing for
reviewers. E.g. on your work here I think about 4 different people
comment, but all in different threads, so harder to get towards some
consensus.

Your enthusiasm and drive is great here, but please keep in mind that the
people reviewing your patches do this more or less in their spare time
(Sean&me blocked some time for outreachy, but can't go through it all
every day).

I think Sean volunteered to take a detailed look at your series, pls ping
him on irc to coordinate patch reworks (if that's still needed).

Thanks, Daniel

> Changes in v13:
> -Rebase against drm-misc
> -Put devm_backlight_put back
> 
> Meghana Madhyastha (3):
>   drm/tinydrm: Move helper functions from tinydrm-helpers to backlight.h
>   drm/tinydrm: Move tinydrm_of_find_backlight to backlight.c
>   drm/tinydrm: Add devres versions of backlight_get
> 
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 95 --------------------------
>  drivers/gpu/drm/tinydrm/mi0283qt.c             |  3 +-
>  drivers/gpu/drm/tinydrm/mipi-dbi.c             |  5 +-
>  drivers/video/backlight/backlight.c            | 68 ++++++++++++++++++
>  include/drm/tinydrm/tinydrm-helpers.h          |  4 --
>  include/linux/backlight.h                      | 55 +++++++++++++++
>  6 files changed, 128 insertions(+), 102 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

