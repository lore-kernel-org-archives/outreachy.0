X-GM-THRID: 6663863789016842240
X-Received: by 2002:aca:3081:: with SMTP id w123mr7486980oiw.14.1551578798904;
        Sat, 02 Mar 2019 18:06:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3bb6:: with SMTP id k51ls5747355otc.9.gmail; Sat, 02 Mar
 2019 18:06:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqzxuqRA98pqKEB6n37MSuPcpgtwgXNwK4io7ldirmqsW71ZXRWP9Ceu51OyfQrelrClqbQ+
X-Received: by 2002:a05:6830:110:: with SMTP id i16mr7771083otp.38.1551578798015;
        Sat, 02 Mar 2019 18:06:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551578798; cv=none;
        d=google.com; s=arc-20160816;
        b=jntXmZXMH045iNou+bhP/+qF+GM33babi0/QRGMZB2St9eM4mGgAaeX9geO3L4UcJ+
         nCqSjCaLQcKfEyNVcy9r0/5Z+mSq6qY3P/ozSskMl92xGtn/CpJv3uK2uOa506MN7p7V
         rkMwU1EJqJkNEpm3cK6UKqVDrXQGVddEPCgdDcq0s7T5/wBtmiX8pnIF1/ej7CPk0KyU
         xRnHxTaAbK3yHT+8Gjnv1A2/sVi8+TsoiFr8o9TLervowH8jYO7UNyhqUBtVb5nWvGgX
         uls+P+xYfEfM7lP6iUyAO2TxbUxRotHiMlPjCCmRNuluER7yAK4kntL78k1Geg96oJnK
         xxLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=qyfIk0LUTSNdKb90RKLJxaM6gfbO472kv9mNDNnIMwQ=;
        b=LsYCc0BFZefnB9KGGEr/ntQIbVuxZNjV2Wwz3QZKgrftYpnx1n60s+ck2bgIkJJYpD
         RRED6rUicaoOQfW5OTNk2+XFI7GffdzEj0Um6WRO3lS++mbogK6aMQoC+zEc6wq2ay67
         OcGGMe3kMKGN8CsNFu7Ea6b2K/KkfarJ6bakgPszrS7tqrNrIp5rB0lrOff9kvhrPf+Z
         2Hng1Uj6Lk92QX2aaHfa+cyh2NdjR4Mx+78tIuhJ5vLg7c01wcnsfn/uuoZh6THLVIUE
         S9yx76YKkXCET1kvqvnT5ci4sKkrftw5njmSYc7WmvTMIKPU1VbFIYSVcDcXIjwTW6BI
         LzRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nil46Gl4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id m3si93460otc.3.2019.03.02.18.06.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 18:06:38 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nil46Gl4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id b4so1246375oif.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 18:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qyfIk0LUTSNdKb90RKLJxaM6gfbO472kv9mNDNnIMwQ=;
        b=nil46Gl4BTt8p3/KYIxnxkGmlGlQK9LhwKMLnIjU1NP+jhV1fvyAg5AUVePnq/Fe9E
         s+mjk/VdxYoibIIZily4jwOjnPaJm2Ii/qkN7RmFLG6b5h2l1v4BGHQghGTem7w9m35q
         KYTo5svMqDK/h3yyuKIGAZzhgzZf3cZkPV4ZJvb8PgAo9UFSRplpHz6VmsyPo4MV0o1S
         OQnPWaZjRXkpdm1P1xzczrVHYoS7fj53eSGgy3BMsgfpMmKdMY0T5CTnJtqjY2rt0vTY
         wq9YZmGFhwtd9R4JY4py39AoCn6yDDdtjMYeJsh26s9kmrDANaC2pT3K9d4nEtreNJP2
         xFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qyfIk0LUTSNdKb90RKLJxaM6gfbO472kv9mNDNnIMwQ=;
        b=gOEgVwQ6gFgp013sg9qu15ZsmZwQsAIVjuPs7GLRC2DR4TAMvq+3++4BbmEzRHxIn+
         OGUnUnnPgNGRfmwjDRDw4RGErXABvk8vzE6pbdY4mRcbCVd279NvC/bc7tQTXN19k5FX
         n2KgRyaRFL4Nv23yfG+Kb+B5RvvwFVIwM+/2iqAf5s8QmFovNHxLh2HLOddo2ipV6F/M
         bVBf6YxRSUJjQybL6ZVONng3mUSt6vLUSl+dXiMyUYdNVU7ziJHRVr6fCwy6D77LwZHF
         unwlfCc5H7j6xixxDD+ilwnH9La2DBrzQqfdLsv/MjyF4RBAA0J4l3uoBuFCgBpXj8gG
         9uNg==
X-Gm-Message-State: AHQUAua7FLaF0hC+SRNLRjrnIODlW+nInYpYWGKUL7+M7pkbDJD6Zmux
	mjbCrvEKjeSRUpRclQa3v50=
X-Received: by 2002:aca:bf85:: with SMTP id p127mr7585759oif.4.1551578797578;
        Sat, 02 Mar 2019 18:06:37 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm882030oie.52.2019.03.02.18.06.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 18:06:36 -0800 (PST)
Date: Sat, 2 Mar 2019 20:06:34 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 0/2] Fix checkpatch.pl issues
Message-ID: <20190303020633.GA2902@madhuleo>
References: <cover.1551552831.git.madhumithabiw@gmail.com>
 <20190302211850.GA21688@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190302211850.GA21688@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 02, 2019 at 10:18:50PM +0100, Greg KH wrote:
> On Sat, Mar 02, 2019 at 01:04:25PM -0600, Madhumitha Prabakaran wrote:
> > This patchset fixes the comment styles of SPDX-License Identifier based
> > on License Identifier syntax.
> > 
> > Madhumitha Prabakaran (2):
> >   Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
> >   Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier
> 
> Again, these look fine.
> 
> Now go look at the subject lines of the patches you sent out.  It does
> not match these.
> 
> Something is really wrong with either how you are generating this
> message, or the patches, it does not make sense at all.  They should
> always match up identically as git should do it all for you.
> 
> Please try sending the series to only yourself next, to verify you got
> it right, before sending it to everyone.
> 
> thanks,
> 
> greg k-h
Re: [PATCH v4 0/2] Fix checkpatch.pl issues

Will fix it and resend it.

thanks,

madhumitha


