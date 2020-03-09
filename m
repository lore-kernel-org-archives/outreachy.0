X-GM-THRID: 6801966173715955712
X-Received: by 2002:adf:e485:: with SMTP id i5mr11197175wrm.81.1583771228347;
        Mon, 09 Mar 2020 09:27:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:cd01:: with SMTP id w1ls6159808wrm.0.gmail; Mon, 09 Mar
 2020 09:27:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtue85ixhnrAHg5jARrqhFNanvj8gzZKPFRhBSC5sc9Reem99k3rDQyuZbk5IlQGnJCmjii
X-Received: by 2002:a5d:62cb:: with SMTP id o11mr11836825wrv.403.1583771227071;
        Mon, 09 Mar 2020 09:27:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771227; cv=none;
        d=google.com; s=arc-20160816;
        b=VGKHY7G7FfzbqppB25hCmiQIcsTe8kUW3fRQYlj1vbag1HmbMABs45zcSNX2Vgzul1
         0N+YoKkGa6bD9yvgmmWrOuCSQNy8Zx0jZ4A6MQTlOmKwGPdnx9xEhnsMp7wBrKcJprO9
         MmPNcc84CZ/zc97ZFJ6GoPQ2iOEQEd4olBob6Cz2cvhfZrndnbfmJ5t1Z5tnBL1NJBUv
         Gs8wrxGrziIu0FT7sSUOnoylSw1wqb1W+je+1m4mJvtHroID9FWRoOHuxvR5378kmogf
         hDWqigMPSI/iUBz32uIRo5P61HxlQzVnl1LapjKC6pJkBu9wmugbIvtOJjPrrk8EwnlV
         VjSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R74RRGtGGk/2dB/W3/9orB/r+KlSortMpP4eX6SmNao=;
        b=PMuSl6hzkNyc6ZkmzMvBavyBfvSj4mipnlzjfzjdRyVi3w0LXa6yRnIRmnOWR/zYrS
         v3KFAAq1Tzr2sut7m+zC/A6EXfBTWuvUaRBJp4nDMTkXYLMaorml1e8XqLilWb/MamHe
         EAX3jOfjYTvv6yU9Xld8vbwf8EvFZ2Zb9/ioK+byfLcv7tPniSxEmMaWmosqMEAsfv20
         9gWe4YUfTQrJCWhA+BkeYpTVZ/Tl+ZwnUfPepHNJ4uLLwICR4AaOyWrSxYpi1k4fci8I
         gQQvP91Fvucqm/zM+L4EVDqWSXWoX1ObaTIVfLZQ9ZRfFYw06K7eFkG2cfV5PoaCPHDo
         f5sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GcutRx2H;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w20si20692wmk.0.2020.03.09.09.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:27:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GcutRx2H;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x543.google.com with SMTP id m13so12723497edb.6
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R74RRGtGGk/2dB/W3/9orB/r+KlSortMpP4eX6SmNao=;
        b=GcutRx2HmBd53b+4sDwNn3t9Y5emjCMycBGNJK+QrtNAyMfsfEq6BAyJ3rggMb/2c+
         K37XMkJuSMTM0VHZXJdnAO0GaMGgu/Xb3L9eqXvozCRNlw9tEyGrTfpUvsh3bTOqWWix
         MHeWVzT8N9Zr1A7PsGkOB/nAFfnNcDED7l/Q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R74RRGtGGk/2dB/W3/9orB/r+KlSortMpP4eX6SmNao=;
        b=aTnDD4zlncMyvMbSjKjgvJOCcKKkjfOLVkQKr33cGwgtk8DPBPn5DeDBSbMXPOhPam
         f3aUAajGBTNiUhN/bb1x058NIYI5KBEtogaIWEeEGKa5aFabJ087xkgbYPUt3sWxxAkz
         BF5N1gwReEFq4ka2d3OST08lVQN/WUAFlHqUjmZ8flyhZtdVoIJOlpPL73oPC8rVOt6U
         pY27tUoy24pwOog99xzufFsz2Tql2frObrFfXv0B95gwyybUIYSbXX8Wkc67tdfYsZ5a
         BBmnaL+On/jTy5mz0BVEZXBtRKmPIxn03G/9hY/2DLVFKvci7k3dcBWGKLl9eE1Igk5g
         I9eg==
X-Gm-Message-State: ANhLgQ3txBsvVs2e2ogV/dPQeUvw/s/u4rNpawii25RbxGZDR6+X8ffn
	5aQ4lj0k+IB/B0mEG0rgmbK/Zw9rWaI=
X-Received: by 2002:a05:6402:2290:: with SMTP id cw16mr17126143edb.75.1583771226743;
        Mon, 09 Mar 2020 09:27:06 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id y4sm2305298ejm.77.2020.03.09.09.27.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 09:27:06 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:26:55 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
Message-ID: <20200309162655.GA3949@supernova>
References: <20200308222218.16031-1-lu@pplo.net>
 <20200309125327.422a1807@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200309125327.422a1807@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> On Sun,  8 Mar 2020 23:22:18 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> However, you should at least Cc: the maintainers returned by
> get_maintainer.pl.
> 
Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
but I was wondering if this was really correct. So thank you for the hint!

