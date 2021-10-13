X-GM-THRID: 7018560405884633088
X-Received: by 2002:a1c:8054:: with SMTP id b81mr13373506wmd.87.1634135936848;
        Wed, 13 Oct 2021 07:38:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls3310648wra.0.gmail; Wed, 13 Oct
 2021 07:38:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzh6fCTGkxQImoCZ+PKEUtzNtSWSPJzcRB27+hyf0bL34JwNiFtIUorTOz1IUU2oR0gbSH
X-Received: by 2002:adf:b348:: with SMTP id k8mr39997237wrd.435.1634135935318;
        Wed, 13 Oct 2021 07:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634135935; cv=none;
        d=google.com; s=arc-20160816;
        b=LsXjbgW95Qs3mwhJOohWfLaMcfms1xrzq8ukMZDx/4BQKhZ8C14ETp8GkEaw/EFwra
         GCFSI8E7JFhTFkoZGB6tOPszW4iLQZVsYLBANA5zrqNS89WRd9w3H08uFT8TcPTw7Ea4
         M4Fz4g+KlurUIM1ZX9MztRjAV4WUbQB0HuP26IgBusnwWI96ZhzKLFrt3iOW9GDyYBdN
         E2CpeWo4H+zXo/xKnagu+T+VyL4rCAzP5XyzPxFBV9XhMcJQfB2iaOy7W82illjTzqJG
         XWLrG6zt6xKao5pwR2S4p3EfbrBNtd11PGmz7q5ZZNciiudlVy3vv2d2ExRx9PkS574Q
         H4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UXgWYOtUPYcdhVgMtHkfFLEBauIkdQ2pRpYLgwC4grM=;
        b=tzg3o6LYc5U0DfKhOSc5IjjJWPWbxcGoPKP/Yi+JasuJp2vebvk70PGt0kovFaAVcP
         S3i275pG6husKNQatGphcGb/be17DXHEfqLd5VZ5gFTKAppENqI5pQfEFSbEm+8wbXUQ
         WX2WIoTsBrUj99qw5dxLDsNZzSb3XA4P9006KrQR3UUILVi894qATNEUedRfTBpAWiph
         Rge0ndWxfPxKYTmx5+L5+zHN4Q9X8uaY/T0vjKuDVOc06wxvM/0hUPAZy/UCZ3O0MsDS
         Bu2ueNNOe1a8VFl1aZr/CfqV3xMJ+hEeTx650d0afbuxv02JIk1xEqdko6mSgqQSsiwT
         PeTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b5PBhF0Z;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mike.rapoport@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id h11si531666wrs.3.2021.10.13.07.38.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 07:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b5PBhF0Z;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id z20so11175382edc.13
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Oct 2021 07:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UXgWYOtUPYcdhVgMtHkfFLEBauIkdQ2pRpYLgwC4grM=;
        b=b5PBhF0ZaLnzl1OUggEk9hF6gJEdZ6XdsQbdLRt8Enbz0dOZTR6Lgjvi1qetDuovKi
         7NuLGjGzLaFLIG0MH18nkaE1JiRZ4GCrBCb+m29P1+CnHHtmdxYGEtCeTlgYdCvy8Z3+
         0G6Gm+XLMeIZRDb1nuoL1Fyd2AA2fRaNcvJzKOoDKdRg3jOy1nQo9DsAHxz29rfOpKJq
         mKK1fl2ZdzhybKZYcm/7Y2t6xFhbUamU2PVgeHzOTIfxqD2rXQZZaGAze8RF4XBJ9Lq1
         5VTmh5ASd1x6YXKm6KTxFgGLdTmfFDzc++WW5dNzsJhrXO3rJXQmDFtxI1CANEqUZddh
         g4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UXgWYOtUPYcdhVgMtHkfFLEBauIkdQ2pRpYLgwC4grM=;
        b=xgtbwPiv4IH6Gv0qSb4wN9YxZhM/EbqY+GTP3X3x2xrnQwZdvubdkN0eOkvzF5oymQ
         fgZpQIGssEOdqpcbn/0gXtdR6lcYzjgWX44zPeoI0K9hID9AvCiWk7ev0pMe/TxOIz4G
         ZToScWnMEnd3qQqkv7dkGAJ5Ohyb+zuzg4D+rGO5xa3D6Vf8ko+wotEc4DZj9t6J2E9l
         tAlJodYRbGtC05WbtA1yIfVpnBug5iZpypOy2q96bLUUTktIzHDlAR/CRppdHKodOcVE
         WReBgdWb8r0R7oUuHnMJbk1MiPcf9HMwt+W9fAm1heoSqEjhMVd+Xv8amuELZCJ2rE2H
         +wQg==
X-Gm-Message-State: AOAM532qyjYfows46to6NEen7VIAOZyFblovOI/D3jstV44mpRIYlh93
	ZeZLqNogD0SCoLgNuw2O+zlrpuiuJE4=
X-Received: by 2002:a17:906:2ed1:: with SMTP id s17mr43200745eji.261.1634135934823;
        Wed, 13 Oct 2021 07:38:54 -0700 (PDT)
Return-Path: <mike.rapoport@gmail.com>
Received: from kernel.org ([2a0d:6fc0:681:b600:7549:3ae4:fb09:62e3])
        by smtp.gmail.com with ESMTPSA id i10sm8306198edl.15.2021.10.13.07.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 07:38:54 -0700 (PDT)
Date: Wed, 13 Oct 2021 17:38:51 +0300
From: Mike Rapoport <mike.rapoport@gmail.com>
To: kushal kothari <kushalkothari285@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: Outreachy applicant 2021 - Interested in the project : Create
 memblock simulator
Message-ID: <YWbve+s/LkX+sAo5@kernel.org>
References: <CALtHPQvouXM=mvNH=m6dZ70BkhsksCSyS+F5kyb7NENa8-Knww@mail.gmail.com>
 <CABpLfoj-C-E3JhNkz1w7foqsde+vnQvuxzjeDUke21QOdf+HKQ@mail.gmail.com>
 <CALtHPQuOcvDcDU4PXBtQhaqt1BWtsrqWwZFVbF=dhhw1WnWmMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALtHPQuOcvDcDU4PXBtQhaqt1BWtsrqWwZFVbF=dhhw1WnWmMQ@mail.gmail.com>

(added outreachy-kernel <outreachy-kernel@googlegroups.com>)

Hi,

Please 'cc the outreachy-kernel group for process questions, they may be
relevant for other participants.

On Wed, Oct 13, 2021 at 07:53:13PM +0530, kushal kothari wrote:
> Hii,
> I need your help with the understanding of the patch.
> I fixed the code and created a small patch .And at the end while submitting the
> patch I am stuck to whom should I send my patch to ?
> "To whom should the emails be sent (if anyone)?"
> 
> So, Should I mail it this to all the maintainer which gmail can be found when
> running the script along with you
> git show HEAD | perl scripts/get_maintainer.pl --separator , --nokeywords
> --nogit --nogit-fallback --norolestats --nol
> 
> Or am I missing something?

The simplest way to find out who should get the patch is indeed to use
scripts/get_maintainer.pl. Depending on your setup, the script output can
be integrated with git send-email or mutt, but sometimes it is usefull to
review the addresses and edit the recipients list by hand.

Please also 'cc the outreachy-kernel group when you post your patches.

There are more details about how to select recipients here:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html#select-the-recipients-for-your-patch
 
> This is my first time submitting a patch .Can you please help me with this? to
> whom to submit the patch?�
> 
> On Tue, Oct 12, 2021 at 5:29 PM Mike Rapoport <mike.rapoport@gmail.com> wrote:
> 
>     Hi Kush,
> 
>     On Tue, Oct 12, 2021 at 8:25 AM kushal kothari
>     <kushalkothari285@gmail.com> wrote:
>     >
>     > Good Morning Mike,
>     >
>     > My name is Kush from Mumbai, India. My Outreachy initial application is
>     accepted. I am very much interested in the topic "Create a memblock
>     simulator" . I hope, I am not connecting with you late for this Outreachy
>     project.
> 
>     It's not too late :)
> 
>     > My previous work and interest in this topic:
>     >
>     > My previous internship(i.e.Summer ISCAS 2021) was with Apache Apisix
>     under Apache Software Foundation. The program was almost similar where
>     students connect with mentors and work remotely(similar to Outreachy/GSoC).
>     Though the main task there was to create a packaging tool(adding support of
>     Ubuntu/CentOS/Fedora) etc [Fedora commit hasn't been merged yet]. Therein,
>     I worked majorly with Makefile, Docker Shell Scripting, etc. Also, I have
>     understanding about Linux kernel development. So my tech stacks are very
>     much aligned with the requirements of the project.
>     >
>     > As the first task mentioned in the Outreachy project contribution
>     information of ours -> I also went through complete Linux kernel tutorials
>     installing all the prerequisites, configuring mutt and sent you a null
>     patch, and did all other setups as said in the tutorial.
> 
>     I believe the next task for applicants wishing to participate in Linux
>     kernel project is to upstream a couple of cleanup patches.
>     As you've gone through the setup of the environment, it should not be
>     a problem :)
> 
>     > My Github: https://github.com/Kushal-kothari
> 
>     --
>     Sincerely yours,
>     Mike.
> 

-- 
Sincerely yours,
Mike.

