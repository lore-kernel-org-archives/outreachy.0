X-GM-THRID: 6809167002234519552
X-Received: by 2002:a67:2dc5:: with SMTP id t188mr13538727vst.3.1585681658273;
        Tue, 31 Mar 2020 12:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3d5:: with SMTP id 79ls976890uau.8.gmail; Tue, 31 Mar
 2020 12:07:37 -0700 (PDT)
X-Google-Smtp-Source: APiQypKoKtBuctY0TONhYd72VoTyj2h/gxcuBtXytC4LK2xoxJbUAzvU7ZUsWXnD7J2cItydYVjq
X-Received: by 2002:ab0:2248:: with SMTP id z8mr2700148uan.13.1585681656947;
        Tue, 31 Mar 2020 12:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585681656; cv=none;
        d=google.com; s=arc-20160816;
        b=J7owOjXcObvWkDpk0plKcJ0bUAzMcfWDjP+rarX5cq/8TARuwLL0QJYGdpc/w2tVaK
         /IaZNJTbJORQv5SHwgItnZY1/IdLrWjlr3JUYIefh4Si4T2ROaS8SMsb1kpOgxWCgb72
         2ATr7hvrEIdsoQKDUmhnCVb/QHe2DNnFDpq/PfkdOgVtO68QqyNfht67KLU8ATfaQYRv
         A4Xuz262tgZTZrCZxDlTcRQB4HQ60/WUanRUF34uHBhjpto5L11TG7wJPqGkgwF4dsEq
         cF8Ep8aBcOKgP1P2P/VT+qxaumPJafyQXR3E1q+sP3ZSw8K8t2WqpQoD0HiRNyYTyFWH
         OE6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=bbquF2+BeTP8qvGV0W/4NbjChg5JozzaR6zrpdF16Ko=;
        b=nfyy4t4r1GwZdO7r0/cW0Kuj6lyzS0/RzG7cKXnUreJjzeV9B1w7BUBH5hnt0uvJaE
         7OH91dr5b4d0Zbioox7UCoYXtuXXMzWEY5LX6sKFTzlvPsV+X9Zvotqvm0tI3UUTWdo6
         YRIxC7Pca/dOB61RUK8gMHWspLPwG8zargZbxnI0jwJ9UJ8zXgi0OmTY+nb0COLtCv3x
         Ay468R3Jn0vNrW3uPIB7xiE87ilVJVGU/Otp2SzGcNCwUe1uyRLEtL78ykrWAmiAk+pS
         blCfVCXoBOWDjyEAMFZVIpvHet2LUzd/0micpDAy0LgiwQOZ8Bv2V8jSFiO7TRV3DQPE
         tC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sOtnhHO7;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id d20si310981vsf.2.2020.03.31.12.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sOtnhHO7;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id kx8so1488856pjb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 12:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bbquF2+BeTP8qvGV0W/4NbjChg5JozzaR6zrpdF16Ko=;
        b=sOtnhHO7E0BajOSqdyZ4de0jJ+gX0Stoh/YaxUiE8tdmBlOT9D7YXmvT9E0VAD/Nal
         xrWBFavCUX1CL8ZWQH14oBm2Z3H63k1yhMYS8UMgG4oURrTrcxHXWkXF4JE4O/R0IVS1
         PYCidwcim1Kw0ZtLUJ16HN/6fOMGXMlxVgA1cAP5go5O1NJ39ACG6hINjiqpHadXuvuk
         h7pqanbkPeEUZe4ZoHokncXaFaSsGlasNP/aYJDrL2ZD4pXi6IUpuRlAOalK7ZOhw+h/
         mwda7fly2ag7jJ1XrrzDqWt1AImXr0HgXBZMsiQnTbKBd0X8Ysf/uj/dXxTdwIh1amZ6
         kbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bbquF2+BeTP8qvGV0W/4NbjChg5JozzaR6zrpdF16Ko=;
        b=d+wznhE1vq5Z8Z33KQIBI2KCeoqhoMff9h1PSXE1ymuGZyB+rQmyxKxaGw2H3uzCUg
         NVl0P5R+vrm154UUZh6D7I3VXgehnJv1CnWyVyz4KDj8uAJPZak+tt9cwnZh3e77nrcT
         srlAZh6d07f30p9z4JAhyfLDfHlJkU7iNk2V8Dy1fUhr/NW0OP1DiuX4p74eRM0LOiaf
         O9hp9fb3qoeEgaGrvL2qZ5zmrR1Xj/KE1ioCoy+qAHZPnZOOZEBAoftTCk4hI9j5NzRC
         vJ5qAkHiJrFH82cMN5oQtC58rQqXQ1NwR1kvqm6sJCfFS/Drez9q6lFDAILfH5h0l/yy
         PTqg==
X-Gm-Message-State: AGi0PuYzRXjjURpeCHS8rlKj/YbD0z8hNuLwa2ExGjCPtPBfEcrGZf9O
	KsWJAlO5MnzWxdMTjTvehJK7fbNM9/0=
X-Received: by 2002:a17:90a:77cc:: with SMTP id e12mr422284pjs.134.1585681655861;
        Tue, 31 Mar 2020 12:07:35 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.231.91])
        by smtp.gmail.com with ESMTPSA id p4sm13020786pfg.163.2020.03.31.12.07.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 31 Mar 2020 12:07:35 -0700 (PDT)
Date: Wed, 1 Apr 2020 00:37:28 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH] staging: qlge: Remove
 extra blank lines
Message-ID: <20200331190721.GA19185@ubuntu>
References: <20200330051343.7841-1-debsoumyajit100@gmail.com>
 <20200330200724.1ad30b76@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200330200724.1ad30b76@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 30, 2020 at 08:07:24PM +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 10:43:43 +0530
> Soumyajit Deb <debsoumyajit100@gmail.com> wrote:
> 
> > Remove unnecessary extra blank lines to improve code readability and to
> > adhere to the Linux Kernel coding style.
> > Reported by checkpatch.pl
> > 
> > Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
> 
> This looks good to me, but why isn't it in a series with the next patch
> you sent? They touch the same driver with similar purposes...
> 
> -- 
> Stefano

Should I resend this patch along with the other patches concerning the same
driver as a patch series?

--
Soumyajit

>


