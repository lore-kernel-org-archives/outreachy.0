X-GM-THRID: 6472784237919469568
X-Received: by 10.28.149.18 with SMTP id x18mr2234754wmd.18.1507124373862;
        Wed, 04 Oct 2017 06:39:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls3310573wme.3.canary-gmail; Wed, 04
 Oct 2017 06:39:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCNPfUCp29NCQEnVacpBGxCNNSvSiszjRPFUCOw9zaI5MVOsX3h/H0rmu4u7m59h7iAWdy9
X-Received: by 10.223.163.130 with SMTP id l2mr924209wrb.16.1507124372872;
        Wed, 04 Oct 2017 06:39:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507124372; cv=none;
        d=google.com; s=arc-20160816;
        b=RPKBKYwUtkQnKkj8OalcNc2VYgqHAisLfNUUyQezg8h08V7s0S5ArYtJiqSIm3cUie
         3w07EQwTp4nhSjSluhwbhYLFZEAmuk52TKW8ybiyB+KnhgqjLCVDHRQffbJNRzGRXG3k
         LHm8O5+revV3y/f6RblsMYzht9LotbwsQ5dZ1GvI+esbL6s5jC9WTaydtUoJLT5CKFHJ
         17jwPcD1fW4hII0ETAJBUBKseHx6gPBdBNNE49kBMk3/qH1JjbSLNbMzqJlrLR0G2eyF
         80uwaOA1b28seFmT1IPzSMpPTD2UKlXtet6e+0MYn3NHt9qCXMXdE3Xd2zZlXdksKECO
         lTzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=EPyjRb7qQVrK6o910AEIWm7Vi2EXGCfhPsVsbQGjUtw=;
        b=O5dLH5HyIfRtK3Gq7DNIrYGnRIVX43BCmp4qOYOcA/J5sdxgphxfivwGhJ8bD9VfR/
         J1ho7Ko1dSeobxpvpW/idyR7aFFR4YeYl+cuTeJ0fMlFbftYu4vVAG1DPu2ULB1EWLyB
         81gSO0HBXeP7QM3hQ/x9wR8vk/W5zQMvyz4xdN3do2sKwJK9NSNJtnUqiITpxPK7H6yV
         1twWFqSmmae6Y8J6gndbST80wmnAx4Qzk/p6ZpsmCjspzc9TZOm7IHvyCSW/ZfGjOFJ9
         GF6G2cxNfxTAhGGdtN2exhJ/YkMXJVbPsIBtfYV0UwKMI0RhAoNErKNkXdbDYLOhQEB+
         QNQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e14si1232001wmg.1.2017.10.04.06.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 06:39:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,477,1500933600"; 
   d="scan'208";a="239724310"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2017 15:39:32 +0200
Date: Wed, 4 Oct 2017 15:39:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Srishti Sharma <srishtishar@gmail.com>, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
In-Reply-To: <20171004112103.cvu5ipkudfpz2adc@mwanda>
Message-ID: <alpine.DEB.2.20.1710041537060.2815@hadrien>
References: <1507062512-9145-1-git-send-email-srishtishar@gmail.com> <20171004112103.cvu5ipkudfpz2adc@mwanda>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Oct 2017, Dan Carpenter wrote:

> On Wed, Oct 04, 2017 at 01:58:32AM +0530, Srishti Sharma wrote:
> > Use list_for_each_entry_safe when the list elements may get deleted
> > during traversal.
>
> This patch is fine as a cleanup but none of these are actually buggy.

I'm not sure what you are getting at with the comment.  The commit doesn't
say that they were buggy.  Perhaps the commit message could have been more
verbose, like "Use list operators on list_head values.
List_for_each_entry_safe is needed because the list elements get deleted
during the traversal"?

thanks,
julia

>
> regards,
> dan carpenter
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171004112103.cvu5ipkudfpz2adc%40mwanda.
> For more options, visit https://groups.google.com/d/optout.
>

