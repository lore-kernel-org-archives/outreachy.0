X-GM-THRID: 6948788358969556992
X-Received: by 2002:a25:d292:: with SMTP id j140mr19785326ybg.492.1617989527157;
        Fri, 09 Apr 2021 10:32:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:da84:: with SMTP id n126ls425619ybf.3.gmail; Fri, 09 Apr
 2021 10:32:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZMY4p3WnsCmVdJHiA4tYP5PXuLfp93Mv1zHq9W36r7zO+/cL20TpShxs025Iuv1NoLOQ6
X-Received: by 2002:a5b:b52:: with SMTP id b18mr18037471ybr.394.1617989526291;
        Fri, 09 Apr 2021 10:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617989526; cv=none;
        d=google.com; s=arc-20160816;
        b=HhqHWdQj3z9ppWOmlzdslJL7sB6hOC9/RCxhYILg1GmcndZDGEudY2Pp7bUcYOTVMI
         tfajPLXY6aly9tt1OoJr+siMGl1wxOBM9r8Mjuf2I1qlt8YL5YH42ntW4eBxheMXKeH6
         R+yudhzpE+g0VHWit/bjtqAK7FfCCl+F/nAYY/PA0fFJUcod86S5EzgRB7QWGNo0SmpA
         r13i4YVkEV7cf0uNUBE+g94Ejg7V8j5dxD8bQ9Wp5sJCQHITAhLlDskt+keU97m3/wJO
         4xqcBVEnKBJSzIb7syos9NdLPUjOumQqvjABIbYmwaeAKNfL8IrMILtowv4EL4Q0uLxp
         9bPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=nV2M8/c+10AGjw2yP0rJTp7y36CrYygcmUernbLPOs4=;
        b=cUlH571any9QGO1ecUy1hzIjN0AoZB1rxv4haZdWF0HjjBca56S4ekeHn8FftU3yPs
         shOPdMRmqr/rhXZSijDurZJN1aQzsHgiaD9D+A0dxP2496H3vErwgVqaskjJQyqkSjvu
         TT3w01jrTgs1M26o/yw2I5bnND0+UH+szI50LzBjivqE7V3nI6DXJkgkN29S11i26hKa
         KY7W3IQcXKH/OR5vYsMD4UxoAa1E5vXYM8glH+WBOMq2XuK5A3OdobmK6v0/HKVIm4Vv
         OUg6U4/z48e936dPMRH7xtjGoqAIdXt9d6g84XKT5jD+w0n+jS/CUH0crlGDHphySssv
         +1sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S2lThKmR;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com. [2607:f8b0:4864:20::82d])
        by gmr-mx.google.com with ESMTPS id i10si220936ybj.3.2021.04.09.10.32.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:32:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) client-ip=2607:f8b0:4864:20::82d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S2lThKmR;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82d as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82d.google.com with SMTP id i19so4755297qtv.7
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 10:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=nV2M8/c+10AGjw2yP0rJTp7y36CrYygcmUernbLPOs4=;
        b=S2lThKmRbSi4ET8sSkfgwAosLA9Py1DDkaOQYihAN3a8vGnnb+juWQb6b7WZxNC6n7
         e2kpy/3DMJhEatfnsDmottKR/DgES7P4lQrtY0f8ycC+Cy5HIHDrJOi/9ZMe/bIKLHKo
         l2gdfwD9yzea+JaVVpRGQMLAO3iz25KvRNBC3s09gu06TOXbgFwLhtlzt7AiguJXa/P/
         kUxpMpZ+8gLyA/OaVNNYWpFSVjzIqMEt360rEuBOPDCirjUVzzfcboTbWVJCDhb7ZVUN
         AHRr1UbdD4bVeBfrcgbXSYJ4nl6Xfx8MjWGJioh6Jf2PDfpHaTrnLUiJijBhYNwWpeiK
         KwAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=nV2M8/c+10AGjw2yP0rJTp7y36CrYygcmUernbLPOs4=;
        b=nxmCYn67SJOaYVwLFR0ezu5E/HGdcykG13fk7+Mfe5t2l+O3pLcEZq0kRzH0EN+01S
         z0K23KyYzqBtOrlcUZYwdXCm3uCuVA1MyARLB/HGrRsKfLZf/kc251CuvG+DP9ZydwCh
         PtlYgR3jrOCW2rKaU8emiHAihPTggENufizhX3psC8RALWk+vpfevFZabHxS1RDoJnb4
         BDwQWQdX3kfmNo4iFSdvMvdfQq1wnxziNkb6LstwUFpuOzUXCkNhh0c+Z8qHciBEScuQ
         yGvLo6BK3e7SVxnjWNnWklAwUvsvyEZ5Mks58V2tHbFT10owpspZAfVDp99fL7waZpIr
         pOiA==
X-Gm-Message-State: AOAM533m7c6+hjyr5qv9UCiCaXv6qqzkIL3ssg6ZnQy5HiAjo6ISjp9C
	Fk2lEmc7uNSw94rIVkeLKeM=
X-Received: by 2002:a05:622a:1701:: with SMTP id h1mr13790042qtk.86.1617989525749;
        Fri, 09 Apr 2021 10:32:05 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id k126sm2247988qkb.4.2021.04.09.10.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 10:32:05 -0700 (PDT)
Message-ID: <d61f00228802cbc49531424d3446745c9b27afc7.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH 1/2 v3] staging: media: hantro: Align
 line break to the open parenthesis in file hantro_hw.h
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 14:32:01 -0300
In-Reply-To: <09b7bddcba779ac1ed0c71cebf206f9bb4009f47.camel@collabora.com>
References: <cover.1617970550.git.alinesantanacordeiro@gmail.com>
	 <03fb1d7b8066fd6fb6086fff18cf29b9afd9ac17.1617970550.git.alinesantanacordeiro@gmail.com>
	 <09b7bddcba779ac1ed0c71cebf206f9bb4009f47.camel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-09 às 13:45 -0300, Ezequiel Garcia escreveu:
> Hi Aline,
Hi Ezequiel,
> 
> On Fri, 2021-04-09 at 09:24 -0300, Aline Santana Cordeiro wrote:
> > Aligns line break with the remaining function arguments
> > to the open parenthesis. Issue found by checkpatch.
> > 
> > Signed-off-by: Aline Santana Cordeiro <  
> > alinesantanacordeiro@gmail.com>
> > ---
> > Changes since v2:
> >  - Rename the commit messages properly
> > 
> > Changes since v1:
> >  - Send patchset without the cover-letter
> 
> Why did you remove the cover letter? What was wrong with it?

I got confused and as I used the same message as commit for the three
files - cover-letter, patch 1/2, and patch 2/2 - they were sent in only
one e-mail on patch 0/2, and the files modified weren't marked as patch
1/2 and patch 2/2, so I though it was wrong and sent v2 in a wrong way.

> Thanks!
> Ezequiel
> 
 Thank you!
Aline


