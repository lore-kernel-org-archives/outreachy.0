X-GM-THRID: 6802585330019991552
X-Received: by 2002:a9d:5888:: with SMTP id x8mr17258537otg.361.1583863680075;
        Tue, 10 Mar 2020 11:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d0e:: with SMTP id 14ls3558022oin.9.gmail; Tue, 10 Mar
 2020 11:07:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvqZ6iPJcv76mFedsb092C7omLo8EA6BxcHgyKPETSAiT3HarOXgSmCkQAe5pXSKqWNvRpt
X-Received: by 2002:aca:53cb:: with SMTP id h194mr1106321oib.108.1583863678038;
        Tue, 10 Mar 2020 11:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583863678; cv=none;
        d=google.com; s=arc-20160816;
        b=AewZoAvuIeLgotuPSRv6JWCFvt1sztbhKUJNln2kWn7w+prAYJOpox9BLTQ1WnZ3IW
         yvS4mxBt80X4uP7WWygtLbhs5v2HcFCUk32oehkVqPxqUlsIUE+w+76rjoGm3SU73P3r
         yqYOQQFvhtwEKtHpTZ0AW5fqY3upTygqP/+XNyk49MwZnNF9AXSgOxDxDH09/8KbXMvX
         BgIJmMbPUzr3Go7jnW1jNkip3fJzAgNh/k875ZLzdPiTL7TbCLCM2z4qAi0LOQCEw7pu
         ja7C7PoLMb69RN47oQImPtKXIkd3eILYEV14heQiJuZwnwtc7tU9spg0HrQ9IwWBU7zu
         9xWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=chy7RGO984jG6r8wnPlRDJ0U0qySObQ33ylkq4TbA/w=;
        b=uc5ZbJZFva1zVqal/7qKx8yuPJL5Rv2faOVNvd3S7PFcLVdd4W4ppw4iQbtaMq15pw
         y9E9aVTPlSKzU2Gq84LEEI9BwFaFn0Jv8rAVacHrrNNRIhUlzMzAt1dEj5EMUZfzjwZK
         rfmLgXXeINwoh/ufJR3JuYFfHfyKqv9ClDWHki5TP0IWAjlHJ5F5erIzcqUpFbZvIieH
         tTDKuQVsiOpk/HBIX/pf02QZzbHd+e8Cuox9eSB6ojvr4MtdrbH9A6Wf4xQ9Ple8g6xU
         H/I06P6h2zgHavuUdKft/TmrYeYwq59n9hrU77X6yZIENDX45Av+PKWDc4tFzR359igb
         7v6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=hZiPuQ0X;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a63si237740oib.4.2020.03.10.11.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:07:57 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=hZiPuQ0X;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1044.google.com with SMTP id a18so750441pjs.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 11:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=chy7RGO984jG6r8wnPlRDJ0U0qySObQ33ylkq4TbA/w=;
        b=hZiPuQ0XG5mTsaQnFPtzynPF9KP7BdvORWepSqzWzLwHs4aAZiPX85scGtojKyxfGx
         OPpAexq8rODGUXsMO1c86Q2ZsiWvnix/n5CRq7S1ftkqmFV2H8S1Z+RrdeQ/jZFWoBXv
         XEiVYqHCem4R+oKkRYE1J/o8qR+sjC0VGPZFLtFDuY1Ius03BL+hCno+Tn/vi9RpvKQL
         GlKRNCFJdxr0pW/c4/n+HzxF+SAFu0aQ4BAjAR9aXy1rwss7ze2Asp54yDSrcqSFerML
         cgNukTI0eO77o8JKhSLGTPfbv9GEkgHM1QqKNFmPTsn2PRHimbjl5da+w+jfCfTKQKT+
         Bh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=chy7RGO984jG6r8wnPlRDJ0U0qySObQ33ylkq4TbA/w=;
        b=SAOQp/T04ZtsW21Bmonex+E5oPRmLRvUdsVUTpcjC6DpvVx36UvKbW01hlubfVvNQ8
         pcGVDT9VgYZXqXve7epmqp3Yswp1RvYHCaj1LQyn9pirNB2+79DnZNjEroiV3f4hLC8Q
         TPJWIm09QMpMFG3uyDw0VAbN57taa0lUCh5F6T25XHb5IWdEuzmZtGstJUdfuj/TvdO1
         /X17GhfRau4D81OEuw9CVqpnPTFEeexzyJR+9AY14/6Kq5IQOwfTGNVlLxvw9W1D66Pr
         LgjczDB5rehVTxwG0zdIjWUDrG5fLbB8NdxbBTiplL4KH3tCryINrCiASKUwQ5U5xgg9
         TKHQ==
X-Gm-Message-State: ANhLgQ3qwT7CVvS8x9FXn8Q+8rr571BNWnJn82D+R1R9XP7HcD535T/9
	SXltK4VGlVKXb3bN3Nb7Npc37g==
X-Received: by 2002:a17:902:db83:: with SMTP id m3mr22961564pld.166.1583863676246;
        Tue, 10 Mar 2020 11:07:56 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id a9sm47738757pfo.35.2020.03.10.11.07.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 11:07:55 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 23:37:49 +0530
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
 <20200310184033.007d0230@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310184033.007d0230@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 06:40:33PM +0100, Stefano Brivio wrote:
> Kaaira,
> 
> On Tue, 10 Mar 2020 19:55:03 +0530
> Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
> 
> > The patchset removes a few unecessary spaces in some files in the
> 
> "unnecessary"

Thanks, I'll change the spelling errors.

> 
> > driver. It also removes an unused structure and uneccessary variable
> 
> "unnecessary" :)
> 
> > declaration. It also assigns a bool instaed of a digit to a boolean
> 
> "instead"
> 
> > variable.
> > 
> > Kaaira Gupta (6):
> >   staging: wfx: data_rx.c: remove space after cast
> >   staging: wfx: change 1 to bool
> >   staging: wfx: dat_tx.c: remove space after a cast
> >   staging: wfx: data_tx.h: remove space after cast
> >   staging: wfx: remove variable declaration
> >   staging: wfx: remove unused structure
> 
> And as you're posting this series for the second time, you should
> indicate this with v2 (check out the "--subject-prefix" option of git
> format-patch), and indicate the change history for these patches -- see
> other recent discussions on this list for examples of how it's done.

Hey! No, I am not posting this series for the second time. As was
pointed out in my earlier patchset( which included 5/6 and 2/6 of this
patch set) that I have to create a patch set of related changes or
changes in the same driver, hence I sent this different patch set.

> 
> I would also suggest that you give reviewers the time to answer your
> questions, before re-posting. You had a question on 2/7, and I
> understand it's getting late in your timezone... but you asked it just
> three hours ago.

As for this, thanks for understanding. But that patch was different from
any of the patches I Have sent here. That was for a change in vt6656.

Thanks for your time!

> 
> -- 
> Stefano
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310184033.007d0230%40elisabeth.

