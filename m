X-GM-THRID: 6955730517423554560
X-Received: by 2002:a05:6102:308f:: with SMTP id l15mr2044022vsb.37.1619528485779;
        Tue, 27 Apr 2021 06:01:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:1308:: with SMTP id 8ls1440031vkt.7.gmail; Tue, 27 Apr
 2021 06:01:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxcwFezCrv01gfVe6lfc1st1XNzImNR3IDQsPyWxmrLRcBa4qmStMxE71+i6CjT7SDj2mjS
X-Received: by 2002:a1f:5506:: with SMTP id j6mr17515964vkb.7.1619528483212;
        Tue, 27 Apr 2021 06:01:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619528483; cv=none;
        d=google.com; s=arc-20160816;
        b=f1+99S3Zd29+Y9xo+zaTXj8CsMEnuD73V2Scf3oxJ55vWnid8iC+wNlGFT4xbhUyxT
         XOHUOOWHWCA8aTLotLpDHluAoYZyoVvJ/UnD3OiDo/+ymBxYmtyJ4P08xYUfMgRy3wvC
         oLYjZyTBgV0TQ8/Ld5sA+iVmtSrOBi4fkMj2qLUJ1MnAbOicsOIbtNm4SuZ/M4jW2wAJ
         9mfCdEv0eWq3vBN8CFsoaT88EMWKsGvdi+JEAZ2DkA8SHc97aQKL7NqjTO3vQGa78+qw
         CacfSfogChWXeHIY1fsPlVVpQ3TUzeZ8PAEb2SsKQp7/Y1St3zclVqc9zv8MoEWfcTqM
         y5/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=AcpdjW2eWNBRTjVa/TmdU1g+0G2Ds5ELYY9ts7A91tM=;
        b=OqHKXZpruHY6xlbGMWHrv5Fkop50ZHOCSfVlN44/lvRM9YlwyQcY6tcJeG6ysztNtx
         RrZJI89pSll+5h0TzlMcFEyu2oAfXTrYtbYjQ0ZUdnww2JsF1fvJWlJaH9ZSCKBNF6eX
         ML70Is94keYAcFUb0u8IdhwiQp9sf6pdcT2HSdGC/um4/oAN/Z+wRLn4u9E8irAE7SW3
         jzni7HiUzsFfqlWmMQIaLZ6mpWZMeSO1r9i4dtcmKsCDU3qWSFM8eBXmHsMuvEvjyCnL
         YIQhDY9hRXaHVCqdrQ7tNHJvvM9gJOthVNlRe/8KhXjVsiJs7fxlMxIufpyTKw7piTVL
         KskQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEs3oZbt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id m184si594423vkg.5.2021.04.27.06.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 06:01:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEs3oZbt;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x733.google.com with SMTP id t17so31334991qkg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 06:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=AcpdjW2eWNBRTjVa/TmdU1g+0G2Ds5ELYY9ts7A91tM=;
        b=gEs3oZbtxukzzXT878NyQif1JROx2lo7K/wR7bxOkGEeHKGJ1Y4mRjsBTDNdehHRxd
         Ktd7QTY4EFxxU5jqBLt/HQCI/Ls9ph6VDVVJJBLeitWoe3zhhprtp6buzLn27AUkgvDo
         z1Qjxdm4XbORsbAwH3gk/mAgeIoT/40SPdersFO16wEWghgCKMupg8qupnXqhkcnsj+1
         HhewsCaS+FJcxZiXTeLGNpLvLOT4wM9a48FHMXUELL/GSLz/qJvsKgvnxvDKbogoKJp+
         wPWyB+YX5KyN96VxqHQhfI3YM1zd7OeFtSZG8MvYj6mFZX4EDBYNILmN/rl99yFy4zOQ
         uJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=AcpdjW2eWNBRTjVa/TmdU1g+0G2Ds5ELYY9ts7A91tM=;
        b=TOJ/NamS4FALPahOVB8EYlrXDl1mGuVC9rIjsZLb+xWaw38GqV9w1PhS62MKW9J+vy
         ixOQ2Z9OlYaKjEVfynZMflv35AD2kH7zCjLpUV8r95IXG9w3iIObo+JTigb+5GDGiRBZ
         GQ/Ta6iEjy4uC4O41h8s7qEL6xCmu7jN8XjbNfPGqFzRa8q6T2Zb+DGIIlWYqz6EDJS4
         WTVMM66Csb/XwzQJVkrfwpR9tv3/hYlDN7AsY5VAek2V4m3juf3iAchgXOLAnO8C7mFg
         FYtDngAm9qKgua2S7ecokRdds1UX6BQStkpY4jHB7nd/UZR/7vNeCworTHu48KP8U/lr
         zprw==
X-Gm-Message-State: AOAM5328BbYz7ybrCpw+A3OchxSyqKz9XMC1HlqpeXDmDErTqcp7N4Xe
	RQ90CafBTX/rTzuUfOsoy/Ij2FMy3SLziw==
X-Received: by 2002:a37:cd5:: with SMTP id 204mr7704515qkm.143.1619528482965;
        Tue, 27 Apr 2021 06:01:22 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([138.204.24.201])
        by smtp.gmail.com with ESMTPSA id 75sm14013372qta.58.2021.04.27.06.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 06:01:21 -0700 (PDT)
Message-ID: <9d5c58a73781b0e40f0d925bd3de1a0bec598cd0.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy project looking for more applicants
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, "Fabio M. De Francesco"
	 <fmdefrancesco@gmail.com>
Cc: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Outreachy
	 <outreachy-kernel@googlegroups.com>, Vineeth Pillai
	 <Vineeth.Pillai@microsoft.com>
Date: Tue, 27 Apr 2021 10:01:18 -0300
In-Reply-To: <alpine.DEB.2.22.394.2104271016330.32852@hadrien>
References: 
	<CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com>
	 <alpine.DEB.2.22.394.2104270910230.31629@hadrien>
	 <4286858.zKxzTp498l@linux.local>
	 <alpine.DEB.2.22.394.2104271016330.32852@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em ter, 2021-04-27 às 10:17 +0200, Julia Lawall escreveu:
> 
> 
> On Tue, 27 Apr 2021, Fabio M. De Francesco wrote:
> 
> > On Tuesday, April 27, 2021 9:10:44 AM CEST Julia Lawall wrote:
> > > On Tue, 27 Apr 2021, Vaishali Thakkar wrote:
> > > > Hi All,
> > > > 
> > > > I quickly wanted to mention that while most of our projects
> > > > have
> > > > enough applicants, the following project will still be happy to
> > > > have
> > > > more applicants:
> > > > 
> > > > "Create a linux scheduler test suite to understand
> > > > functionality and
> > > > performance of Core Scheduling"
> > > > 
> > > > Feel free to contact the mentor - Vineeth and apply for it if
> > > > that's
> > > > something you're interested in.
> > > 
> > > This looks like a really cool project :)
> > > 
> > > julia
> > > 
> > It is for sure. It would have been my first choice. The only
> > problem is that
> > it is preferable to have level 4 experience with Bash and Python.
> > I'm afraid I
> > have no more than 0 and 1 levels respectively with those scripting
> > languages.
> 
> Perhaps it is possible to learn...
> 
> julia

Hi all,

I already contact Vineeth, I was trying to finish the initial tasks to
apply to Core Scheduling Project, but I'd better to apply to it soon.
:)

Aline
 
> 
> > 
> > Fabio
> > > > Thanks!
> > > > 
> > > > --
> > > > Vaishali
> > > > 
> > > > --
> > > > You received this message because you are subscribed to the
> > > > Google Groups
> > > > "outreachy-kernel" group. To unsubscribe from this group and
> > > > stop
> > receiving emails
> > > > from it, send an email to 
> > > > outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this
> > > > discussion on the web visit
> > > > https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2r%2B14JB-m4KuU-vy%3DDAUnv
> > > > 6gmZkEnRyY7Fx_%3Dguk_Ew%40mail.gmail.com.
> > 
> > 
> > 
> > 
> > 
> 



