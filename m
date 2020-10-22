X-GM-THRID: 6886436790360604672
X-Received: by 2002:a17:902:d888:b029:d0:cb2d:f274 with SMTP id b8-20020a170902d888b02900d0cb2df274mr2477885plz.13.1603374586083;
        Thu, 22 Oct 2020 06:49:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1884:: with SMTP id 126ls771080pfy.8.gmail; Thu, 22 Oct
 2020 06:49:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4B/x8NLYgMXs9QfuVeWcYhQj6U8fj+Mqba86TgyNV5RZlor5oWYRsHr9MU5cVBnTOez0O
X-Received: by 2002:a62:6408:0:b029:154:dde2:a5eb with SMTP id y8-20020a6264080000b0290154dde2a5ebmr2922582pfb.30.1603374584341;
        Thu, 22 Oct 2020 06:49:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603374584; cv=none;
        d=google.com; s=arc-20160816;
        b=IfOH8/eo8tKcYxxED9u1ZSjA6tJIL+/hg3ypELOtA/y6W6MzmdRWKPVJZ0VcUiiCQJ
         t7N5QOxNY1OdQfdHb1vKUBVkmTO2XE0dSkm3GG7IDP7UctgR1ynJ46FzgnmLSeT8UsPc
         XXK34wl5cxN42wI1yFF6VprRd54h816AWGnklXxF4NLi9Nvhq97AejUW7vMCrY60aRQo
         c8D68tXfIu8ZKg35RBYmWJX1otK0W054nwN9B06Q6N3Gm1zVlp6ozN73AmANtG8smMQ3
         huzG0O2pjhyupfg1r/AOKh304rU1JngvBlkuIQo9FpcUaWL5fM3N6oInFaCZuINRG4dM
         U2lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=3NYCdJPfAd8t7/KBoq7iz3aEpNkdLvk4tcYJMN1ACWM=;
        b=NuZui+51ZP8oAfHBoffMey19vdvuNXSAUQAZ0O3OVLllXsznuwInTURRaM1AZW8+zY
         6Rg0jTSlYzIzZJvMcsAWsb6uWwmYh07BOG7AGf+i2lrjK1qVtYKvdb+6oKEcn0OUVBVN
         oZwZMkLsChaNx6Zcz9tp3U+Q5/gwuemlcq9bN/mUDD8Hsbt5GLznUZvYdgKGODjY+y1O
         kqNvMuT1LCh8X/lrjTHWzv5G6lYUyJkv+4sfHG9lFTKqtMFUtJy7tpoZzrTYsIvvTrvq
         MxEQsmMIlnb4sMDeJn4hxYWkc35sQuiGbceLtFUgiETq1lP8BuXshsuMiV6PEROHQ27p
         FJlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa06-06.prod.phx3.secureserver.net (p3plsmtpa06-06.prod.phx3.secureserver.net. [173.201.192.107])
        by gmr-mx.google.com with ESMTPS id h24si123319plr.0.2020.10.22.06.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:49:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) client-ip=173.201.192.107;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oo1-f54.google.com ([209.85.161.54])
	by :SMTPAUTH: with ESMTPSA
	id VayNkbY4YFqt9VayNkoceZ; Thu, 22 Oct 2020 06:49:43 -0700
X-CMAE-Analysis: v=2.3 cv=J5vUEzvS c=1 sm=1 tr=0
 a=nElkFGceR+ta3Kv4PFb/VQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=ag1SF4gXAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=2C6YHBdLAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=Yupwre4RP9_Eg_Bd0iYG:22
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=yxGMNg53M24zlVSZdvMH:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oo1-f54.google.com with SMTP id r7so370274ool.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:49:43 -0700 (PDT)
X-Gm-Message-State: AOAM532bDyktEB1NehXgmvxJh9ZZssMrxIs7kwGqCVCvYWsri84Pg02+
	ER1yadZTQj3wwr9rxf4zbVhBIlrfOnkXBTwwts8=
X-Received: by 2002:a4a:e93a:: with SMTP id a26mr2115010ooe.58.1603374583265;
 Thu, 22 Oct 2020 06:49:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1603371258.git.sylphrenadin@gmail.com> <20201022133722.GA1784385@kroah.com>
In-Reply-To: <20201022133722.GA1784385@kroah.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 22 Oct 2020 19:19:30 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJQM_Xq1w5Nc4NVtEmqtjYdezr_w--b-d7cbHYiM98mvQ@mail.gmail.com>
Message-ID: <CAK-LDbJQM_Xq1w5Nc4NVtEmqtjYdezr_w--b-d7cbHYiM98mvQ@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf() with sysfs_emit
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sumera Priyadarsini <sylphrenadin@gmail.com>, Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfFYKftVNi+08HSD12zqhxjFELsnP15yJR2WsCtX2TNnrymtIp+8i2HoLROMV9VgpMVUwSE3Q7ak/OxuKWlGFN18/QIBBoqgP3UHEPcpdjH4Yt1D+pcsx
 Bw1q7Nby/whD3kkfm2CUPvYr1nf1yxKVyADlwU7D2nQ+HueIWzLQ7aWlqM9THzXGci56uNVIueYHBta0fgSnrZO301IKsMK55PI=

On Thu, Oct 22, 2020 at 7:06 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Oct 22, 2020 at 07:01:44PM +0530, Sumera Priyadarsini wrote:
> > Using snprintf() for show() methods holds the risk of buffer overrun
> > as snprintf() does not know the PAGE_SIZE maximum of the temporary
> > buffer used to output sysfs content.
> >
> > This patchset is a series of Coccinelle cleanups across the staging
> > directory to convert snprintf with scnprintf in the relevant files.
> >
> > Sumera Priyadarsini (5):
> >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> >
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
> >  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--
>
> These files are ot "in the staging directory" as your text above states :(

I think Sumera has sent it as part of the DRM project
related task(s). So CC'ing outreachy-kernel mailing list
is fine. Although I see 2 cover letters being sent - one
with all mailing lists and maintainers being CC'ed and
other one without most of them which is confusing.

Sumera: You may want to fix that.

> Also, you have 5 patches that do different things, yet have the same
> exact subject line, which isn't acceptable either.
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022133722.GA1784385%40kroah.com.



-- 
Vaishali


-- 
Vaishali

