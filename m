X-GM-THRID: 6802570683700215808
X-Received: by 2002:a7b:c3cb:: with SMTP id t11mr2433397wmj.154.1583847656501;
        Tue, 10 Mar 2020 06:40:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls6833183wrc.1.gmail; Tue, 10 Mar
 2020 06:40:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtyn/HcYHsmE/zXVgKLPXyUw8VvUhbzhM2hvpatzKRYRxRoZhAYzo7ABRSUFbE0BnsWdaIc
X-Received: by 2002:a5d:514a:: with SMTP id u10mr7812630wrt.360.1583847655327;
        Tue, 10 Mar 2020 06:40:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583847655; cv=none;
        d=google.com; s=arc-20160816;
        b=fWlqizcf9DfVxKwVteFjkfUndnMKiu/epwwGyNyLYigyHQlRO13l/ax3LTN5gvVfVV
         RhgOIqNfWdUZsrB945cVFPOyBpJ+/0x+MKjhzwglcaoKq43m3DbKZNJUBZXzzzwPEQyD
         Gv+3Yj3yR3mDKxI9auyXnyF6mS05+sY6+BO8vHRpQY1CMWe5RCLgGo6lRSE6/mF7lha/
         WiPTcrgMhtvCkVhxhZ6/dqdDUz+Tzz1hg0FhRJNSghSCKk9tTB+9pJBQod2XuUqG4fPX
         c3TuGLTjwB7NwN5cxlof8bdsEpI5h4lCTzIWbUmxj+1A3y6vugDQYF182g3Gdh2n1K7h
         86gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wsbsTwMxztnx0iaAdy64iP+TjSHzsVuuHSeYzD4VJKw=;
        b=iCv9luGtLvppj+lwJZsAeF6cdZO2xdjwgjrPjM4X2BpBZUvEQJMLCpWTm7oRD6AFdx
         p8j/NjX6hYs3wzj9MaD/+xfsNkuW5KhNIf6z+XyXIaBEv+ERuuoHqWGwt8qIVe8qAqmL
         7jjwMGqGVP2405DbtKnH+Gaqxj7l7Fatc+dQiEU2MCW0m/C13FCi0K9HN7Grqbcz77eQ
         116FTyhIuBtAE/4SN5PaBS8MO749uQTpe5komlPEov1P8gpu5K19CkEzCCcHfFNJT7c+
         UwBH2v2hZFdMDltXPIhdhe4vc94PairEKasn+ug5j0SdNuUkrH6RifZ1Y9S5u7HVei79
         Nm8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=b4GZWNrh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id q202si109341wme.2.2020.03.10.06.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:40:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=b4GZWNrh;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x334.google.com with SMTP id a5so1459384wmb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 06:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wsbsTwMxztnx0iaAdy64iP+TjSHzsVuuHSeYzD4VJKw=;
        b=b4GZWNrhiLElzZTrEt3sKWr1VhOoyIOUzM0U+FYhzMphH2E0ew+oELTYKhWPjlzbkf
         wcgYUdFr/RoYfYpZisldmB4PkU55CWPg4KLMd179d5Pz8J49igB8pSzHN+Cf/qwVz6ql
         kZMHjhzfLV6HRW2B9YCLt4CvZZZt4sejsOA1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wsbsTwMxztnx0iaAdy64iP+TjSHzsVuuHSeYzD4VJKw=;
        b=RrpAkEnnmLJZmxfTXk6g5cRolvlAC06U6X/RPUUdVZZTg79Z0nzFiuU2WYBh5XuyBt
         AvBgi3mQzCxFTh4IkRH2NIX41bLvxuQ4OdQF55FgcJ64V5xZII5hnjgFYLTew/y45mSy
         oLsS4BLrUL/WT77Zj6UodJICnVGpUMOaWsrbvVhy99u8WichSDBGx1gtaIg0vSFh1c1t
         zOkQALoQSj0tiiO/jhgl6wcMMDbedG1Vga2BtG6bhAHI4kIGm2zNUzG4qPuaaz69XjN3
         ABcWXa5AouXvZSr8dTbQJy9QykJ1D+u1nZ5M8xUyOoH0yo5mlLWkZXxIHcrK5G24+XQA
         n9Bw==
X-Gm-Message-State: ANhLgQ0oo9eNl65U9JxEviSFwJ6w/4Qg/B382bYYGY5LVb4ZS3rRpuxZ
	2Z6ptUwwNq3wOUqoCUFJpN3qMiy3ppIAEw==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr2431973wmj.54.1583847655141;
        Tue, 10 Mar 2020 06:40:55 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id q2sm7062275wrv.65.2020.03.10.06.40.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 06:40:54 -0700 (PDT)
Date: Tue, 10 Mar 2020 14:40:52 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: remove unused code and improve readability
Message-ID: <20200310134052.GD3202@supernova>
References: <20200310132814.8269-1-lu@pplo.net>
 <20200310133520.GA3366746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310133520.GA3366746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 02:35:20PM +0100, Greg KH wrote:
> On Tue, Mar 10, 2020 at 02:28:12PM +0100, Lourdes Pedrajas wrote:
> > 
> > Here's a set of patches that performs code cleanup in the file
> > drivers/staging/vt6655/power.c
> > 
> 
> I don't think you created this with 'git format-patch --cover-letter' :(

It's git-send-email. Also yes, the file is not correct :(
Forgive me, thanks for your patience.

