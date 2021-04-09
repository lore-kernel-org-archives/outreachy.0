X-GM-THRID: 6949155933016555520
X-Received: by 2002:a9d:4d0e:: with SMTP id n14mr13049362otf.316.1617989732239;
        Fri, 09 Apr 2021 10:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls2354338oti.1.gmail; Fri, 09 Apr
 2021 10:35:31 -0700 (PDT)
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr12623388oto.151.1617989731533;
        Fri, 09 Apr 2021 10:35:31 -0700 (PDT)
Received: by 2002:a05:6808:b23:b029:13d:54d2:e375 with SMTP id t3-20020a0568080b23b029013d54d2e375msoij;
        Fri, 9 Apr 2021 10:16:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuP9Wbv2zd4dD/ukE8wYcZC415d3/ChIx3CQuAiYJKq+XR0e7lTrRhJAfuRonWCQqqC2ul
X-Received: by 2002:a05:6808:4c1:: with SMTP id a1mr10491434oie.37.1617988565222;
        Fri, 09 Apr 2021 10:16:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617988565; cv=none;
        d=google.com; s=arc-20160816;
        b=GPV8+0H8gkdUcFMEe9i+K+DCldPBoaJ5f3ItaOw+bBldotH6IklmDu60sw0bHhRi5J
         vf/VWHiFm/TD+au6XxCTybk7xAicGMSULBTzV1rOL1UburwFUI0mCDeal1e6YvdG1SYt
         jkFfDrtkv59wjRRd3rO8Cp0PN5tOpHPhRDtVSWCOyaWc7qsgAD61EqxTJZdTNl3Gnhax
         j/NdkQoTPSZVbBptmi8mn55ZKkNY+2gE5/CwsovL/jMfAPS3wDzAhPVvm4BLAXCjJvfu
         SmYmlcbETQq5zKDNDVjh1IaeFAqbMKtU2am2C/v6Xx7HRVm0/Boke2nSUNoQOv2LDPPe
         LRVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=6PX5vyD+vfMPVc8BqyefgeXvfVQ9PSjsDAFJqgELW7Q=;
        b=XKFkEWVvI/guA4UiS35dKWZUcpNV7SBO5MG7h4FzVjYPxPnH9iOdqTHcg9exP5gYTM
         1AVdOPAVua7lxWpORmpwNZlplR+wM17zGqIW+1f5JpeRbA/w0zQ+3rlCgRJDSaXBP5B5
         PJx5rssYqajwf7ESUU2cZqgayZzKEtwv8gR5ACmSFHjtZOTK9yn+DXp8DZuvZGZr4j4Y
         jvLtVf39CI7hVJl+pd13BGyZNaI0XezwjUPsWYU5S9/Bt7bJXwOU0P+reW+luGfzZ4lF
         K2tYgQZ3I2xkrTr4N5apslsbw7V4+ePuvmhT0rIt5yxXegdf1qvOEes+QfqWBtI+gzSt
         85Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <ezequiel@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id b17si271287ooq.2.2021.04.09.10.16.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 09 Apr 2021 10:16:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id 9177C1F46A0F
Message-ID: <88e48e7bb5679b913e3f223d29b566ce8c18e9c3.camel@collabora.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: Ezequiel Garcia <ezequiel@collabora.com>
To: ascordeiro <alinesantanacordeiro@gmail.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 14:15:56 -0300
In-Reply-To: <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
References: <20210409135404.GA26172@focaruja>
	 <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
	 <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Fri, 2021-04-09 at 14:00 -0300, ascordeiro wrote:
> Em sex, 2021-04-09 às 13:44 -0300, Ezequiel Garcia escreveu:
> > Hi Aline,
> 
> Hi Ezequiel,
> > 
> > On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro wrote:
> > > Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
> > > and #define HANTRO_PP_RED_WRITE_S in lower case, according with
> > > code style.
> > > 
> > 
> > Where is this written in the Coding Style?
> 
> I found this in section 12, about Macros, Enums and RTL in both
> references:
> https://www.kernel.org/doc/html/latest/process/coding-style.html
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst

It seems this

"""
CAPITALIZED macro names are appreciated but macros resembling functions may be named in lower case.
"""

It's just a suggestion, not a big deal. In general, if checkpatch.pl
is not complaining, it's not worth the trouble.

So let's skip this fix.

Thanks a lot!
Ezequiel


