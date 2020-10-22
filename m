X-GM-THRID: 6886436790360604672
X-Received: by 2002:a05:6102:d1:: with SMTP id u17mr1608645vsp.8.1603376290114;
        Thu, 22 Oct 2020 07:18:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:3037:: with SMTP id v23ls217756vsa.11.gmail; Thu,
 22 Oct 2020 07:18:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyY4A1bC4tFa1b/i8G6QhypvNikyreJ8ytFZgZLxY2sQbV9tae8l+xQ6u/P4YMn26jd42WL
X-Received: by 2002:a67:8c44:: with SMTP id o65mr1811407vsd.45.1603376288544;
        Thu, 22 Oct 2020 07:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603376288; cv=none;
        d=google.com; s=arc-20160816;
        b=g+PngMuTlRdm3wzA4ICO/x5iKoJG0q6TpAvuBdZbKqDjwMRNNZ01uN9Yl3vQsmMlpp
         rfcL7NiWdS/DUpeK+dvR72y6kxlnS7O3MMu+TEsQuNHMTlzKJiQ3jNe1PtzDSwZ/5DhG
         rYTVmi4wCQuvw2mUxEL/SFwB04VvtMU+kX5q+OD9F+PAJmW6kHO60NR6GS/uBRcBReWP
         3ay7THFfVJTQTu1FVio+oLzdlaXV9gV4DfKy9YwVtFHNxCxiHwjxiajPR5Yx0TP83Zvn
         50yh531mJnSlRJlItBewQ1A6ryJJzpb3fGrCsTV7zoMU45QdF+pRZAER4mxGhrPrtNuk
         LNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OcUVjtDf83lHDWtGvMlsvVwF9eBYutRKI0B+TgLaDZs=;
        b=dH55TXPTOGJ764F6SYW/I9WqCwd33wUQg3UBrYs6HjWwauRVj1w3Gi+eY3fLmC+toK
         SQKJ39qIMIVadjJI5g8R0Bgw8BS6XdEqeT8GxsccKq46XxPzWKt80zYpcB2ICu7FYirx
         ndogjripttkPblM6/uqfOGzEXfzGxbj5TXrao21M6jg/j5FjYRS2QmQh+aiYPrpEhX4j
         X8kRmJeqtRDDB60rvS0MYsbvFT9l5Uq9Rih0S6BGQzK4391YYTJRv9QALT3Xgr2Dlvqn
         3emk+4OPzFvaT6vdTYFF19VmWF4lPUDdONyShX6a8keYHpVcGwJbjUsEPcXPJrMsh0GW
         nNYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-02.prod.phx3.secureserver.net (p3plsmtpa07-02.prod.phx3.secureserver.net. [173.201.192.231])
        by gmr-mx.google.com with ESMTPS id v18si99387uat.1.2020.10.22.07.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 07:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) client-ip=173.201.192.231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oi1-f169.google.com ([209.85.167.169])
	by :SMTPAUTH: with ESMTPSA
	id VbPrk662H51hoVbPrkmPX7; Thu, 22 Oct 2020 07:18:07 -0700
X-CMAE-Analysis: v=2.3 cv=YNfhNiOx c=1 sm=1 tr=0
 a=k4kWCTE4q0BK4tC0BUdQgw==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=ag1SF4gXAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=2C6YHBdLAAAA:8
 a=AFfvQUj85srtwFEc7eAA:9 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10
 a=Yupwre4RP9_Eg_Bd0iYG:22 a=_sbA2Q-Kp09kWB8D3iXc:22 a=yxGMNg53M24zlVSZdvMH:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f169.google.com with SMTP id w141so1882581oia.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 07:18:07 -0700 (PDT)
X-Gm-Message-State: AOAM530ukI7ncHDBep7gsRlvKTWgOp2H/X4bzq+3D9CIZAXzFsV0yZHC
	j6ibzb/1u+UhZFJQwqV+EsWU+daGQiTz893oRqA=
X-Received: by 2002:aca:33c2:: with SMTP id z185mr1842189oiz.174.1603376287124;
 Thu, 22 Oct 2020 07:18:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1603371258.git.sylphrenadin@gmail.com> <20201022133722.GA1784385@kroah.com>
 <CAK-LDbJQM_Xq1w5Nc4NVtEmqtjYdezr_w--b-d7cbHYiM98mvQ@mail.gmail.com> <CACAkLuoubwnXBEHGry9kLy_YStwXu9bR=dGndt0Dx6JdJM+8LQ@mail.gmail.com>
In-Reply-To: <CACAkLuoubwnXBEHGry9kLy_YStwXu9bR=dGndt0Dx6JdJM+8LQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 22 Oct 2020 19:47:54 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLsT78acU-K2aB=j_mcCFG9YB2+kyiz-vU93ppKx0vD6w@mail.gmail.com>
Message-ID: <CAK-LDbLsT78acU-K2aB=j_mcCFG9YB2+kyiz-vU93ppKx0vD6w@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf() with sysfs_emit
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfK4do2KrlHVe3gff8lGiPrzUYtcYeupda5qd2xehrbrhzQeki422AFCuAy7Vo0rjTPBRiOq9J6AQVgeKbfMuwQlDubxrG1L4cYAKPELqMe8xc0Vo2cbk
 ljbmwklf7tunj57PedNv4Nxdnu7uJQjH3qZn138sJil/kwXximZeBb7vglfZ8GaVObeGbhfErhTqy460bjEpttfh9uwyASRYKWk=

On Thu, Oct 22, 2020 at 7:43 PM Sumera Priyadarsini
<sylphrenadin@gmail.com> wrote:
>
>
>
> On Thu, 22 Oct, 2020, 7:19 PM Vaishali Thakkar, <vthakkar@vaishalithakkar.in> wrote:
>>
>> On Thu, Oct 22, 2020 at 7:06 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>> >
>> > On Thu, Oct 22, 2020 at 07:01:44PM +0530, Sumera Priyadarsini wrote:
>> > > Using snprintf() for show() methods holds the risk of buffer overrun
>> > > as snprintf() does not know the PAGE_SIZE maximum of the temporary
>> > > buffer used to output sysfs content.
>> > >
>> > > This patchset is a series of Coccinelle cleanups across the staging
>> > > directory to convert snprintf with scnprintf in the relevant files.
>> > >
>> > > Sumera Priyadarsini (5):
>> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
>> > >
>> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
>> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
>> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
>> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
>> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--
>> >
>> > These files are ot "in the staging directory" as your text above states :(
>>
>> I think Sumera has sent it as part of the DRM project
>> related task(s).
>
>
> Yes, although I think Greg is referring to the cover letter text here- I will change that.

Ouch, that's right! Missed that. :(

>> So CC'ing outreachy-kernel mailing list
>> is fine. Although I see 2 cover letters being sent - one
>> with all mailing lists and maintainers being CC'ed and
>> other one without most of them which is confusing.
>>
>> Sumera: You may want to fix that.
>
>
> I will send a v2 fixing the patchset.
>
> regards,
> Sumera
>
>> > Also, you have 5 patches that do different things, yet have the same
>> > exact subject line, which isn't acceptable either.
>> >
>> > thanks,
>> >
>> > greg k-h
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201022133722.GA1784385%40kroah.com.
>>
>>
>>
>> --
>> Vaishali
>>
>>
>> --
>> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CACAkLuoubwnXBEHGry9kLy_YStwXu9bR%3DdGndt0Dx6JdJM%2B8LQ%40mail.gmail.com.



-- 
Vaishali

