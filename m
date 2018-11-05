X-GM-THRID: 6619842705607360512
X-Received: by 2002:ab0:b99:: with SMTP id c25mr18938593uak.2.1541397257198;
        Sun, 04 Nov 2018 21:54:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6945:: with SMTP id e66ls1981239vsc.2.gmail; Sun, 04 Nov
 2018 21:54:16 -0800 (PST)
X-Google-Smtp-Source: AJdET5dFqyiTKZs7+UNFjbDGu/P0U9u6klwOrNmcBB0FepGyyxpUUjMUFJ1t/XV2jKS0zfDDLGPl
X-Received: by 2002:a67:e011:: with SMTP id c17mr19102565vsl.40.1541397256210;
        Sun, 04 Nov 2018 21:54:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541397256; cv=none;
        d=google.com; s=arc-20160816;
        b=Sd42xgyAMrkYXSdWQOS5ZWqMNvNaF+8Cu9/SyX6uiqXrcz87WxO9B6cZSNWqOEhDFZ
         4ONuoCRiGrqi6p1oflT9d1foQHNP14J3H2H3v22SQ4caIlqVmZb1H5HCVMN4KVVR8G1W
         rReb3odAzwfIQYScTfsMrQR2esyfbKIBdddjbXI1LSgEMNNB7+NIdrm7kfMBcG50cIDh
         qkrnmKFEmVEfN5ezLCYrMs7IXaBT8rAL41jvstetBE4I0x7HP9RD7KLC4TuoCAOerEEr
         eUI5y/XvEQdFmhXee24D1QrTpHXIffW6X5ssukIkj4PaSrZvBhCL4GDct13S3Nu2v7w1
         mPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H0RB2oCHeSj2fcz8k01XKwTIjiVyZR+GgzAP5ujJ4oU=;
        b=1AcNKAZn7GSpvKPYaKo2Ft1pxttjtZcaaUW5JnAkfqlsnlL9zS+fa81fTfmSZvq/C/
         C88iUhyFPMfHnqIjrntrsk5z5Uojv8TqBUVCf05g2et0hsYePhI8zf1kqA3GGJjy2Lz8
         CjtJzMuStTBksR3kgqeb8cZfKJqHmjEqtXusR6feOsrm9087N/mvf/7KQGHXLwa3P++3
         6DPanfJzDQmI3j9JLyE7BqI9HXsN0EGdiU5WmbGfj8FVfml8AVeSFUNv8SmK0Y1YJJRR
         8P8/MbXqBnh2phaYBHd0dy3j/D271AN4mfq5YujwvZpxeUV/L7oA8klMrSzRyTYaKI99
         0tkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhVrhAK0;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id 143si926993vkw.4.2018.11.04.21.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:54:16 -0800 (PST)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhVrhAK0;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd42.google.com with SMTP id f12-v6so5669870iog.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 21:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H0RB2oCHeSj2fcz8k01XKwTIjiVyZR+GgzAP5ujJ4oU=;
        b=vhVrhAK0APeZTf2z81y9fo5bdSbGn3yxi/5raeiEtlJ0uHK2di0VIKQAoUyLOTeYm5
         D8rmEr8q0t6KH6E1dAuss+BBsVkXC4luJFutBc3OC0G0pMkDVz5JDWCJV+uFBpIbNb83
         n04CanUfW/BbXOkzVuqLu0hraO2PbvLBxCm58BTiuXSVjgJKNdMGHHIaWRx297xvN6C2
         eCbMTxPS4vbuyVsD//BOZlTgXb/44NKd8xDVpCLHo+049oNJakO0P71Zu0QJ2MGqGnB1
         IhwlcRLfevRIlRWwKyPmDsM7NGu43iYQO/jSRAxWtFL/GRddZWLSOPafmjPerdxFtNOq
         mKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H0RB2oCHeSj2fcz8k01XKwTIjiVyZR+GgzAP5ujJ4oU=;
        b=O/eRz80B3l/XtkZ/ITT2uVzhPv9NSyBIUSvAlhRMdx9UFWcTl91mbYhrSA2vLmq1HB
         js5CfHmRC/an3GMm+JFoO7f8MbBNYXC0uY4mbdlhjmsJQaOyCursoNDc/OOaUO2ANB09
         /a9485iJIx9puF3ZioQahGqFU6TUHUW/u4qF76porVArw9cn5snq6ayYHZqwJAcVFQ+K
         tuKrSD/6NYJRiLVIVfVh9M7upQiKGdVTWtiSt9ezsxZaZbI4/OUFavcmm1nwwVVsOLdb
         MB9UkkL0px/05jgODG31M0bHpqfcEZAYHilegxM9xJXgo6vY10cE3+V/XHupHlsTKV9c
         NgWw==
X-Gm-Message-State: AGRZ1gIPjuz1UoUoaMIN4y2vd1b3UEqqI7zVrwRsuHVB9hp9+kqqu4HR
	OSa/NgxicxFAUJSd3WD/rLZ22qRf
X-Received: by 2002:a6b:b3c6:: with SMTP id c189-v6mr17566342iof.23.1541397255619;
        Sun, 04 Nov 2018 21:54:15 -0800 (PST)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id f139-v6sm294464itf.43.2018.11.04.21.54.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 04 Nov 2018 21:54:15 -0800 (PST)
Date: Sun, 4 Nov 2018 21:54:12 -0800
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Announcement] Outreachy application reminder
Message-ID: <20181105055411.GA2334@k-vBox>
References: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Nov 04, 2018 at 09:00:13AM +0530, Vaishali Thakkar wrote:
> Hi All,
> 
> As you know, Outreachy deadline for Linux kernel projects is November
> 6, 2018. So, don't forget to submit your application before deadline.
> Here, are bunch of points you need to take care of:
> 
> - Record your contributions on Outreachy's website. Remember that for
> each project you want to apply for, you will need to record separate
> contributions and fill separate application. Make sure that you put
> links to patches when you record the contributions. If you have
> written any blog post etc related to your Linux kernel experience,
> feel free to put links as well.
> 
> - We normally advise each applicant to apply for at least 2 projects.
> Make sure to add your project preferences under the question
> 'Community-specific Questions' in the application.
> 
> All the best and we're looking forward to reviewing your applications.
> Feel free to ask questions, if any.

Hi Vaishali,

Thank you for the application reminder!

For the final application, there is an optional Community-specific
Question section, and you instructed us to add our project preferences.
I am confused because the final application is for a specific project.
Am I right that I should rank the projects that I am applying for to
answer the question?

Maya

> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

