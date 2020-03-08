X-GM-THRID: 6801796609244921856
X-Received: by 2002:a25:8411:: with SMTP id u17mr13575196ybk.8.1583673757642;
        Sun, 08 Mar 2020 06:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls1853092ybi.0.gmail; Sun, 08 Mar
 2020 06:22:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsU/+3cPywQMxW3IoSHaH6qzmwhX3ZqEiMfdAOGglck73cc0/DxzJ+EDy38QftlOoZSpcJm
X-Received: by 2002:a25:6b4b:: with SMTP id o11mr13806945ybm.257.1583673756356;
        Sun, 08 Mar 2020 06:22:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583673756; cv=none;
        d=google.com; s=arc-20160816;
        b=BregQIsYqw4PygaajhUmXo9Y75LrMbDrWiKtfFapOLgAKEzfLhy4S3LBcmr7LCjlBc
         D9p4Go34J32MoRAUbMZcjVW+EYRDlk9+bx5g2rECHb7K4Yu4zRykQ8ueMJ531CNQ1+zf
         eliEdGINpVGFl7fDFjvhch3rnTsNoOw4piiL5oFfaJpFwfn218zheEVxMOorwq/Iwpqz
         4pMqfzosVEawFWMOut/J8HkP1kzcaTKH+msdAcpm8BK7F2hV6haijY1Hzrne8cgIMmDp
         ZyP3AmhM3C9dFkFFI4GM3lw40b85GsXTgGr6HHCDMg3xIYjbroDr8hpAe2qapcleXkWZ
         nXyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=KQlDfpHkVr3fGSMZiJzJzX5hgoPtv/3ZHDv6FqaAIEE=;
        b=EPRnfO5YnIkAnIhXvbE5Z2u0GS2eL0GUe0davEYyOySlwAJff8LOr8BjUIeU4VhUUT
         8OtRk7h2hp0w77ZDHl//Q5hGx/OuNkLdWSI0Ls/oAV/h+/u7yXZQLLfrcE6DEfHQ7Zkg
         u8DoySFPeksaAGJ0h3aOgSZr+ki4G+cA4etWvX+aCuRqGWObr+72t3hJDaqVpNFbcypN
         PeORcqgvmJ+THhNCceXOeaSyuTeWRDra60pg9UPzN9uo3hJIg3dfPyKivFVIVF35rvyw
         SwVY1b7Y8J6OOx6StVsDAzgTIesdTwUh0dKLVJbsAEz9uHU9SI+8qUy7bK+RMemYhGuN
         yEvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F84A9gwi;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id w18si512950ybe.0.2020.03.08.06.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F84A9gwi;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102f.google.com with SMTP id gv19so3227022pjb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 06:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KQlDfpHkVr3fGSMZiJzJzX5hgoPtv/3ZHDv6FqaAIEE=;
        b=F84A9gwiW1dum9yR5hxgBoIrL832LQKpt4t8uCFYdj8sM8MvTjSjFKWPXxPvy4XktZ
         xO61bXs4KxQLF+zEqYJRw40Ff/kDI1ODV8DKHVIU/c0ZuoLujHBljtalk/GabDWlgCw/
         Uql3+oiHJGEOd+sSsWj8iril/5fq/LlR29YJMv5Lm1wkZQX9K3VUWs/86I7obkaFOIOj
         w9KxNorWVHsVploxTCtSZzFBcXEIn7HEXqlsLrlUKgrJQn3MAvfmM5xxgzY9J06/v1b+
         k3mbG0gJMQ1yksMd45ImaKf8EhAodgSaGxRgWcdyzFDA2gXhc4IaG7zfFfzYTOaka4mw
         57kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KQlDfpHkVr3fGSMZiJzJzX5hgoPtv/3ZHDv6FqaAIEE=;
        b=SLb9XzfY56xPJ4hrQ7p8+zZgdGSNththshJ+v2ZEQZeDjCKwtrusr0kr/wFnxZabag
         5dIl3PVinCzNDTJvLpiLE1ZnmpdGGVzlMdgN0FjHQMT733WRe72hW4uutXoWazyqSeYs
         oDAlrb2UvoVNeHgvu7nPh1v6/KWmger2db/YXIIHwhJnnLyX4BReeYYOAD7ljMCucQso
         o9dksBXz/05FASv754YP+VjhveObW5xCxb6jYAsvn/RHWYaxjmGnQb4dkRfjtnYLk1xm
         XMoLs5dXAfOc47YyC+gg7QPKH3FESBSdXP4Pzh7LZkFBfqdaGlW5pZ9LLQtuZQWiU/E4
         cwlA==
X-Gm-Message-State: ANhLgQ2/zFe15qQ2P6qhrakryUrik7xrGT6nRhbahE9cVb69Cu2kDrF+
	Z4R0nrvZ8yAixtKpUyWSxji2axHhHnc=
X-Received: by 2002:a17:90a:db4b:: with SMTP id u11mr13781436pjx.105.1583673755329;
        Sun, 08 Mar 2020 06:22:35 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from Shreeya-Patel ([113.193.39.44])
        by smtp.googlemail.com with ESMTPSA id x3sm15386162pjq.5.2020.03.08.06.22.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 06:22:34 -0700 (PDT)
Message-ID: <2a6b1fbc0e445f2034e107b21601894c51a7648d.camel@gmail.com>
Subject: Re: [Outreachy kernel] Using 4.18.0-rc7+ kernel
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Julia Lawall
	 <julia.lawall@inria.fr>, Vaishali Thakkar <vthakkar@vaishalithakkar.in>, 
	helen@koikeco.de, Greg KH <gregkh@linuxfoundation.org>
Date: Sun, 08 Mar 2020 18:52:26 +0530
In-Reply-To: <20200308133311.6d8ad490@elisabeth>
References: 
	<CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
	 <20200308133311.6d8ad490@elisabeth>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-08 at 13:33 +0100, Stefano Brivio wrote:
> Hi Shreeya,

Hi Stefano,

> 
> On Sun, 8 Mar 2020 16:54:30 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > Since the compilation process is very lengthy and takes a lot of
> > time
> 
> I just touched this topic with another applicant: if you use all the
> available threads on your CPU this is going to be significantly
> faster.
> 
> The tutorial mentions this. Another thing that might help you is the
> 'nproc' command. For example, on my laptop:
> 
> $ nproc
> 4
 
Thanks for your help. I will use this command to check the available
CPU threads on my system.

> 
> this tells me that there are four available CPU threads.
> 
> Instead of 'make', I would then use 'make -j4', which speeds up
> compilation considerably. If you want to ensure your system is more
> responsive, you might decide to leave one thread "for yourself", e.g.
> 'make -j3'.
> 
> -- 
> Stefano
> 

Thanks


