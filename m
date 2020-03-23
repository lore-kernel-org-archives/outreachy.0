X-GM-THRID: 6807107593039773696
X-Received: by 2002:a9d:6e0a:: with SMTP id e10mr573667otr.22.1584976640568;
        Mon, 23 Mar 2020 08:17:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls398849oif.3.gmail; Mon, 23 Mar
 2020 08:17:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuytGlgqwZh2JZN096SdCcMa+7YqauU9lIXUfUdnUgwcBC5enT+obuI9PQiDLUW8ZPgCGfl
X-Received: by 2002:aca:fd0d:: with SMTP id b13mr17724182oii.179.1584976639523;
        Mon, 23 Mar 2020 08:17:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584976639; cv=none;
        d=google.com; s=arc-20160816;
        b=A7GUDw8YFeYYgag0TDiiu9Z7lFw7Gy4WY1LfF3qqEkFGMidXPAxj+sicXREKlfFa2C
         zGDkevWnyw6wlfzkDxuxuwhFOD5Y9TWMblFk8OcyTfmvCDGRs8UajMO9rM3qp05/UVDq
         RjXjBBOvkSDUc8zC2keLXBC9Y6VGS1OJrgKsWSBNtj3lGHcBXvKvy6Z4VTRDKkAtoPUY
         g/u4VT22eWBW93nw1nLyUbkpCaMiGA41kAjpoC6wM+tXH5XmACs/v7XV/g984UttP/C9
         UCLq7Hla1QYTtoMUyP7GAv7/ZMnjGNr9SX5WvD3ukuEgKRjQ3J2Zlgb3HvLL+lEZNHEN
         4YVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Y5WxcqTugnAo9X+DA9YOBgJCfSv0O7b15VIBu8XZa4A=;
        b=0tABM3O/8ipup/lHPPuuW0JoF42UtEf5ARkQjUXc4+wbLKhN6syQ4rMThOvntDzTSa
         BcmKubKWpl87i1Z1Ij9Q2uTq4TpX7mwwiD7JINmGhnaanbsY3+INizrNu1SY/RjAlBQi
         mDp6uPRSA8CYh/bMpJ12typLINJnSKR0eayfgcRLNlyCl8vjQEkQQLUAp+iLva/GlEcM
         ur/r2B+X8X9Cf+bLysQtbQLo0zBiilt5iK4JUJBeJZS8yEiMcgbADN9oLRU9517W6UBg
         YgpGmgxfHEQXq0qnm8zpjuyJO7kkeOv5I7lfaReSAD/csPlq2bOCkGU+juGs+BLgCWXI
         xODQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dwq6Y3oh;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m132si942157oig.3.2020.03.23.08.17.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 08:17:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dwq6Y3oh;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t3so7359533pgn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 08:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Y5WxcqTugnAo9X+DA9YOBgJCfSv0O7b15VIBu8XZa4A=;
        b=dwq6Y3oh/SSqSVYxAanGu7uxp0yDphGU1TNq+c4SKtXqlb9zuvHXCaH0gOHVf+5owJ
         +P2Pu9mYk41+q9pQeY0ykRWhajyOPs3Brrxy+so9T94idHN72XXDNXUEUsaEKpfWaZv6
         vXzcQmMJelkP9IhglFwx6U1FyWlfxLLQLk4n+rdMmAmGPeUIWdsPEsshDHuXFHrb30pf
         bWFyUZLg0RGBpwL+pnvpXAPtVFCrdoB/eRXRGKJPUM8TxGIO4wWHes/GEVprU7BTahs7
         p+u4Vv8vxKVlnacXkB5mR7RxVqCxF5Y7aHmMVqykJpLC1piO3Ffh4bU1tZIe1/WLMlUu
         9M2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Y5WxcqTugnAo9X+DA9YOBgJCfSv0O7b15VIBu8XZa4A=;
        b=Il/4ZTSNZ7fC7IRSB+T7RVAWS76l7ALurU76S8rJMzEgS2v1a4HXsLiHzTb0UbcA+F
         bQxn6o4LDrWFTxFRnwDyFUqHUXxbioCfWjnwCivr94TOQkRHLUypSyAmp/t/mSNxuWc8
         aPDHIekOxxP1Q5WQKSnPT4DWDuS7Rt+aQLnMqLH6x10e34dvuLfArzougr4U4iFMtUrl
         4L9dEOKnbxCVhGN+tCnqlhwsdAGs16+6mDIiqIttQ+0QEix08+2lCJoZpThndIbdQLTt
         u3YC8qs+L+1xR4LLjRY2OjwZY6VmJbLwguuX6c854qaTZIlR24bWkkTMQ4M2I0nlbuau
         mkMg==
X-Gm-Message-State: ANhLgQ0ejZRjPYaahwVSP+e6afM5qeES4789AZOn/V7fsBa+YyikfKcc
	RWNP3skQOO4Wrm1fgmff9zA=
X-Received: by 2002:a63:8b41:: with SMTP id j62mr21702334pge.18.1584976638849;
        Mon, 23 Mar 2020 08:17:18 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id i187sm13502225pfg.33.2020.03.23.08.17.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 08:17:18 -0700 (PDT)
Date: Mon, 23 Mar 2020 20:47:12 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	kieran.bingham@ideasonboard.com,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald <pmeerw@pmeerw.net>,
	linux-iio <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v2] media: staging/intel-ipu3: Reformat pointer
 initialization
Message-ID: <20200323151710.GA22110@deeUbuntu>
References: <20200322185350.GA12377@deeUbuntu>
 <CAHp75VcP1O_QwepgAHPBaTLcr_3=ynV6hsmcgvYnBCz7DdoWxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHp75VcP1O_QwepgAHPBaTLcr_3=ynV6hsmcgvYnBCz7DdoWxw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 23, 2020 at 01:35:58AM +0200, Andy Shevchenko wrote:
> On Sun, Mar 22, 2020 at 8:54 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Reformat pointer initialization to make it more readable as per the
> > coding standards. Problem detected by checkpatch.
> 
> > -       struct imgu_v4l2_subdev *imgu_sd =
> > -               container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
> > +       struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
> > +                                                       struct imgu_v4l2_subdev,
> > +                                                       ctrl_handler);
> 
> I'm sorry I don't see benefit of this change, actually an opposite.

Hello Andy,
Thank you for your comment. To me, it helps quickly and clearly spot
*imgu_sd. Also the initialization looks more structured. But that's just
me.

I will wait to see if anyone else wants to share their thoughts, and
then circle back to you on next steps. Is that fine?

Deepak.
> 
> -- 
> With Best Regards,
> Andy Shevchenko

