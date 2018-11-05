X-GM-THRID: 6620354100879949824
X-Received: by 2002:a9f:2e10:: with SMTP id t16mr21032475uaj.24.1541444906361;
        Mon, 05 Nov 2018 11:08:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:6248:: with SMTP id p8ls702716uao.0.gmail; Mon, 05 Nov
 2018 11:08:25 -0800 (PST)
X-Google-Smtp-Source: AJdET5eBCdPQ0C8uVixsutX5FGcI/+bn2fj1XybRjs52Lxrhruhk0b+r2Cl2StnzajyAWmEmfyuR
X-Received: by 2002:ab0:14e6:: with SMTP id f35mr21039376uae.26.1541444905542;
        Mon, 05 Nov 2018 11:08:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541444905; cv=none;
        d=google.com; s=arc-20160816;
        b=w/2CA4hRiBcAVjQQpFFzU2KjSCzylxexdsSoPurcCuuIVPgfwx8mplC4hnYDCW/Wct
         Kf8QmQONb2YFrPyKopxXD9edPlSkgdzcIQq+sSQMVLKK3S9EMHKsCRZ+rdUJqj3g9QZW
         x2VAWecuOz0Jit2JbPKNMLfk6+TSTXMCC0l7IZ4RMNQiiblv30W13H7ydV0JzdwfNhM4
         6FzvUJ2yiWVM+oMVRWVoDASpi+4PBBJepWXeg5QKOoOkjRHwgvEbiQdeE6/NmI0i5T6h
         U8jbaQGCDZpE05LGzxGrz52OPLfp294Gy09lxTvLDpN4kZmir9M5MkgmcnKnwb2ca1or
         tDFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nqvC3f/5MROHYlzkfEuDZ+A+WEzDKPnJUZW8qsnVCZs=;
        b=vEoF5uD94Pop1A4qIHA9ppf5yaIHwKIze8CrtAoVkZZYMptPCt4woPUwlIpml+6eCU
         j+pmv1xh+6b3SnBUfVhrUjnilkO1NX38x8FXrCR9I3bx4QzQXSHE2LkIu/PZQMqcNUOw
         ujvmrzJaQTSa344BPiJfHcreHv/BpOq5x9UC+dbpormzAHyhvJtVbrexHbLnJWqQncmu
         4VuQ2wX9lfwyYWeJ0m1Ldb2KgmLwsVJ3OVzLnHPV6C/byJQR51SdNc1R5hLfJ8QiBoyl
         nvgLhKpUB955xOEviBNLuFDjcDd793agLG+J4iuSPUgVMgS8NTl50ttJLutKLHuUqKUW
         s4qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HTYv0dhn;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h203si543542vkh.0.2018.11.05.11.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 11:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HTYv0dhn;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id n4-v6so4916956plp.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 11:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=nqvC3f/5MROHYlzkfEuDZ+A+WEzDKPnJUZW8qsnVCZs=;
        b=HTYv0dhnTifBVXezAdt43krbQqT87o3IXvNfwx+ns4b739OLIylc4Wjnn7gldZXbwb
         bgkiPWF088KKgBKCKXPKbf6J9w+nRP2iA7hVloiNRxGBi8MHpPDxZqoK8+kTuM0m8Lka
         5J/tyBINCUINk/MN6/5fCTf/WXeg7Xn9j4YCsgaim924DoK7FOv7gl85G7oyQ3qOypWI
         CpIeWyTsJeGKQOEBpQPqYZVoOWQIn/SvlAetoKyLPYjQToYklDQvrR2t6H1ts8X0+FaK
         x4tW6DIp1wXH5GnLbWmOxbHecP/brMIUvApnKpq926l0GNpVYEYN+AjXMXwvR7JRsxMS
         UQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=nqvC3f/5MROHYlzkfEuDZ+A+WEzDKPnJUZW8qsnVCZs=;
        b=WghOEaStiJAbGc3b93OOeqH/Jwi3kQCJa2pgDqYeOBseaFbwDVtPIPlZ63LWRInMBx
         8nfatcQxVApXixIeh1TTcJdW9cyg9OqTiFT6PkzijAz5msx9wkGfN9eqTPrRQDAhoS3q
         Xrdo2zC+2y9VmrIYhA+8B5DE3qO/JO/w4Pegp2e8odGNC8i3wYbI/4ImJ9aKXxZuY8Vu
         mXZcJjxtokOn2GgxuHZzxLxZScBrVLYJxywy9W9Q9tD0iUIndWkU0Cv7nJzsRO7n9YkJ
         JIHn5Ny21fLZ2LcGjhmAgQfxKYli0zvpSTyw9m/fWAx1PsHmwjojByqAL7rrvvtZpps6
         vlPg==
X-Gm-Message-State: AGRZ1gIBpGkE7BC1YnwpQ2R7oT9xdMHT+ckCvYsycgoS/AnjrzVn24dK
	Z3v0/rufo/1glC746XAysr4=
X-Received: by 2002:a17:902:343:: with SMTP id 61-v6mr22467950pld.327.1541444904409;
        Mon, 05 Nov 2018 11:08:24 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id d186-v6sm9121665pfg.2.2018.11.05.11.08.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 11:08:23 -0800 (PST)
Date: Tue, 6 Nov 2018 00:38:17 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, Gao Xiang <gaoxiang25@huawei.com>,
	Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org, code@wizofe.uk
Subject: Re: [Outreachy kernel] Re: [PATCH v3 2/2] staging: erofs: Modify
 conditional checks
Message-ID: <20181105190817.GB9326@himanshu-Vostro-3559>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541421259.git.digholebhagyashri@gmail.com>
 <b36253c9dacce060a90e84f3e8d854749800d720.1541421259.git.digholebhagyashri@gmail.com>
 <3ac63350-6bfc-0dba-2649-ad7f91dd94c9@huawei.com>
 <alpine.DEB.2.20.1811051650270.31780@hadrien>
 <CAOMPgjgoseN=+1ezv+xDZSoWpUxnsA3f70NisjAwZN=113fj7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMPgjgoseN=+1ezv+xDZSoWpUxnsA3f70NisjAwZN=113fj7w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Nov 05, 2018 at 11:37:53PM +0530, Bhagyashri Dighole wrote:
> Hi Gao,
> 
> In PATCH version v1 which is first stage of contribution, I modified data.c
> for all alignment changes and all conditional checks. As per discussion on
> email for this patch, It was concluded that I need to re-submit patch for
> single change at a time.
> 
> So, I created PATCH v2. In this patch, I modified data.c only for single
> conditional check and single alignment change and committed accordingly. As
> per Gao’s suggestion to do all alignment change in a first patch and all
> conditional changes in another patch, I modified and created PATCH v3.
> 
> PATCH v3 is divided into two patches.
> 1) PATCH v3 1/2 has all alignment changes.
> 2) PATCH v3 2/2 has all conditional changes.

I saw two variants for 2)

check your `sent` box once and you will understand what the problem is.

> Also, I mentioned what changes each version of patch represents under ‘—-‘
> symbol.

But I didn't see for one of the variants for 2)

> I am not able to understand, where I am making mistake? Can you please help
> me?

When someone says to resend a patch use subject as [RESEND PATCH ... ..]

See how development goes out here https://lkml.org/

> @Julia Lawall <julia.lawall@lip6.fr>  How can I include Reviewed-by in
> patch submission? we are allow to do that? If yes, then from where I can
> get that information?

Julia misunderstood I guess due identical patches and now when you send
a new version add Gao's `Reviewed-by` tag with proper changelog and
versioning.

Lastly, Please don't top-post and don't bomb the outreachy mailing list.


@Ioannis Valasakis,

If you're following the list, then please understand what reviews you
get carefully. You made the exactly same mistake in new series as Julia
pointed and was earlier pointed by me.

You're lucky to have Julia, Greg, Sasha *patiently* replying and perhaps you
know about their mainline work. So, please rest their time and effort.


Otherwise, in future very likely :P 
=> => https://lore.kernel.org/lkml/20170829142011.76w67w64a7lheef4@piout.net/


Thanks!
-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

