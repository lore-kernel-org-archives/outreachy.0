X-GM-THRID: 6886283537092182016
X-Received: by 2002:ac8:c04:: with SMTP id k4mr842716qti.66.1603351565649;
        Thu, 22 Oct 2020 00:26:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:249:: with SMTP id k9ls254149qvt.6.gmail; Thu, 22
 Oct 2020 00:26:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwg/UdmkcRMkTpdJvpLTwMDQfks2jjyF2r/1SAX2O0aZXZqS2K6TIAdpwFnj9vAlONv0sl
X-Received: by 2002:a05:6214:146e:: with SMTP id c14mr1131378qvy.22.1603351564375;
        Thu, 22 Oct 2020 00:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603351564; cv=none;
        d=google.com; s=arc-20160816;
        b=hrwXnWzl0o6oZcWkg+q80kQ8+FdDw0s9SgjvCPA4I5RiQ+SEZjuC12L8e3o0PH+7hY
         VnHITIrt2naAaNAy1SRP9YuPDVgSLMfvVG691XJFCwrF4hEWPXD+7bMn+Nm5AzOyYxJy
         eiyp5T91g8yXAMGdg9VS02FRjlEiV1C1SqghatsNqipXBeF5K9B3RQ52Ijc1PAP8DOno
         f+NAKectFKo53RS/yVPr/LpbRnS721Ao3AFHGBKCfBEjxIHHVjg6drumCTvJumZhaMcn
         V0KSXF2GLTFFjBhC+1PSNgX7uNOfoy+/vqQoGiN4FrPsJqZZ1iC1BuvfJPj9a5I6d7xG
         /GJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PBCvy90ncT+97kjyi1X2cC+3BdeIsVMpeFXDBOs/ylI=;
        b=jakq9tkehd14NSto6MuzxZ6FSeT25WsSqUGlYQlBGQwwsCrQDXQMfEsRUeHLGQ6uvI
         hNtrEvSj3/YsJA400qXIS/tXuSOHX3qKwJIXaKW7LyBG1Amlzp8gg69S4FKKUiv9PKOB
         2BbK0GVrXMg63mv53LCsrdjy/Jmgy6qH+BxiraOW2KA9UJ0xTcKezxsd6QRTBxBUr0as
         dLEdcVu1+FsShsKXZ7IoAtzDI3c8IPqY6U7EeDTIWGTgM18URyEuJ6lHkh8vkEpxHy37
         VpZ4kZJvYis1MZgBwxqk0hNA785LS2UGVZO0qZSliH4PLbyPGN1iqz3wp95evZadTiTO
         wsWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=obXnUa5w;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id f6si38061qko.6.2020.10.22.00.26.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 00:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=obXnUa5w;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102c.google.com with SMTP id hk7so519254pjb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 00:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PBCvy90ncT+97kjyi1X2cC+3BdeIsVMpeFXDBOs/ylI=;
        b=obXnUa5wNOn6br/a0W4wgb55oSsXL1n4TOLoHQhiS4Nz3A2AnDLc06YcTQztdSo4pW
         v3XONQs8w1Wt2CA6+06dqMGY2S45NB3bRo12uOIKSyXv+5g5CUCCI1u/rVLJR6vUUqj3
         1XEenr88C7KSF1mH/zE+VLzRSGAilcK+xk+JqAp9rLBL50c6yvf+l2QA2NF4712ODrh3
         Kw0ni5sKbPnIJrestD6gaXZqal5Mvim93Uoc9sYTH/J3ojwwH29U3X0haCYauGvf/nSz
         cncIDLNtjgPWQMh47xKFZR7Nu/PSVLEjfvJ124ojxcaj7VFvk6ht1pX98xA9FTYSOxRV
         td0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PBCvy90ncT+97kjyi1X2cC+3BdeIsVMpeFXDBOs/ylI=;
        b=U+XM054dxmCxku1oGxgZjBy7RvQOZvzX+gAgCNWduiFvUhHqGTzTKztLtkSbJWGnSG
         RrpT432WI5pXm0lCvNuBWcOEmCBt5LcbHRzCVvkUuZbV7NkCHB6I0iwCHy2CdNSGpopX
         5mWd+OHPj84MDrOSMbVZfz5Wy0qWe35yyyH359+ko11GQL3KfNLhvpW96F0joxFRuq5+
         oh4R3jF4+7w8IgfomV0TWjeOSlWFuIpA1XDmVA61cS4og/R3YF6gAg6WRlNqPsxvPK/V
         ozjNLG8zrlCbzIQpnApMDtOqo7NkCI+PpascjACx5eF/aSR52+pyCjZJQVTeGvlwUXQ4
         3bKg==
X-Gm-Message-State: AOAM531OPGQTKaWTcIdixt3gm068c9CJGxcqrjCLTyF8RqJlkhf7fbos
	NVivHjCCeu/tV30JvgwkBYU=
X-Received: by 2002:a17:90a:c293:: with SMTP id f19mr1220115pjt.2.1603351563608;
        Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id z5sm956703pjn.2.2020.10.22.00.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 00:26:03 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:55:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022072534.GA384774@ubuntu204>
References: <20201022033701.GA329478@ubuntu204>
 <20201022052931.GA6093@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201022052931.GA6093@kroah.com>

On Thu, Oct 22, 2020 at 07:29:31AM +0200, Greg KH wrote:
> On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> > Hello,
> > I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> > and have found that there are several gb_audio_module_*_show functions
> > that accept "struct gb_audio_manager_module_attribute * " as a function
> > parameter. However, this parameter is not used and should not be
> > necessary. Would you suggest cleaning up such functions.
> 
> Try removing it and see why it is really needed to be there :)

Thank you Greg. I tried that and realised that the internal show
function signature definition will mismatch. It will not be a straight
forward change for the clean up sake.

I got my answer. Thanks again.
Deepak.

> 
> good luck!
> 
> greg k-h

