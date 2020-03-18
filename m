X-GM-THRID: 6802694026822680576
X-Received: by 2002:a1c:a714:: with SMTP id q20mr6294390wme.148.1584553032523;
        Wed, 18 Mar 2020 10:37:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls13081000wrr.4.gmail; Wed, 18 Mar
 2020 10:37:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsRwEtROcAYsEkN7Z84q13ZZkOIBdxdBat+lpI76sXPZmrbzWEw1trGHymXXgXknrRFHsN4
X-Received: by 2002:a05:6000:11cc:: with SMTP id i12mr4225117wrx.189.1584553031098;
        Wed, 18 Mar 2020 10:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584553031; cv=none;
        d=google.com; s=arc-20160816;
        b=x8cZ7WdoEaUoVbfQPH28D+5j9ZnkeChq0jP62FQrWCbhiURZcIhdSJfhlVQDXDjUfb
         VUxeixl2S9ZOZrv1plSgSEbFvl5ZeWxbvo+zmihvV9mwbKRSOlYvI7EHxFMNb5uVQ9zw
         LWXh9TYOXuCVA65Rmd6CiwinS7oXfyjqO1BK+qnryTIQvQvi3ZkTcu0gqC8BC7Vsb6wc
         Vsv4ZFoEVp6m67bRf2cqSjpBaBQWjL0c4cfZumaaCUE/XKCtz/JLWqPJ0oTsApEmi0pS
         V4kJsKBmttyUWSd9d1hqrRaTxxHGJUbOukKriqjiGlNzMpKdd6YkZNwt12TZeRHX9amO
         qZ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0jeyH/ONMGRrGFC4AJYzXWjq8TcyxniunWaw2mDiRSs=;
        b=u8NZ73zGF5l1M2xD8mHji8/TsyakK7xOursQHVePCnxCl61FRFVUV7K/jkiYUJlUUw
         XrgqFsa+oZHfEnvY78VmcpI8gOpK6oS6IPyT8mugCkBSiRSMVswPT/aa0AUtwhkHNxUG
         sCIIEQaSVYgtg+s0VsQRhtlg0q95WM4GxDbM/NAD0MGcXlt3CSRSXoEqmh2KaW6pv5CV
         yxN1V2TKIPJ1oFa5fwYg/rIldEdLFKpGNEhT8Jxn5be5hsGoX3/XhW3f04zdRQSX7vlJ
         fLljpMWLSCeX1w58QE1g+I3QKZdhKrJKF7N9jv+hhky5fYuybtNpH2eUyw3GaUcSx5FY
         HL4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=HyvM5CXt;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m2si178485wmi.3.2020.03.18.10.37.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=HyvM5CXt;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x444.google.com with SMTP id v11so31548287wrm.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 10:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0jeyH/ONMGRrGFC4AJYzXWjq8TcyxniunWaw2mDiRSs=;
        b=HyvM5CXtOR5+FfRBg38afRUjfHuVz18wECnn1+CbuYW4sdecZuBDgPvA0eyZdqvWK3
         DwqlKGxPnMDYrxwP7sa5epzMDnBD301Pu2TY7v4kXsZbjlFRobfApkTAHPNpPlfIO2U9
         Pm/BXk6KFIkOGd16m/MbHhSz0keUD/bbNPrZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0jeyH/ONMGRrGFC4AJYzXWjq8TcyxniunWaw2mDiRSs=;
        b=dlwbg4MAe5fbDnrMgFDPHt9j/tYd+8QF+YoPrM5O5YgNSEgHh03quzqyjwYRcOfCFH
         lWI36tzW2Scnovgl+sa5CYUQMd0R1NDUes92hlaV387Du6mKjokA7MjS3rH97FBn3dDd
         UJNvdVb/LfoyqGN0zJJXDlzfcpkj7k4eZt9xIel3cbxX+kSvCdWpLPM8+qf7MZHSOjTX
         Deadv98h/1BacAVPdeaFGSrWuIBtp41RpR/v47LEcspCN/y5yXlHJB8eBI4BnR1otIoe
         AiCv1TnzwQ/j5cqHmoDbjD2zxd+SwoQ52ugV1cG1ofSMT1IAMxdKpVg/RTL786VaBe2m
         p+7Q==
X-Gm-Message-State: ANhLgQ2/0TqvmKm87X7lNGq6G4cGS5EkiZLku9SC2kjhDJ3nNJNAtRmx
	caveYRTY3CTzCw1qP9mlA/iIpVH2ddJ17A==
X-Received: by 2002:adf:f583:: with SMTP id f3mr6364668wro.243.1584553030605;
        Wed, 18 Mar 2020 10:37:10 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id f11sm10404858wrq.88.2020.03.18.10.37.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 10:37:09 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:37:00 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6] staging: rtl8192u: r8192U_wx: use netdev_warn()
 instead of printk()
Message-ID: <20200318173700.GA4073@supernova>
References: <20200317165917.6260-1-lu@pplo.net>
 <20200318101439.GA2082120@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200318101439.GA2082120@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 18, 2020 at 11:14:39AM +0100, Greg KH wrote:
> On Tue, Mar 17, 2020 at 05:59:17PM +0100, Lourdes Pedrajas wrote:
> > printk() is deprecated, use netdev_warn() instead, which is a message printing
> > function specific for network devices.
> > Issue found by checkpatch.
> > 
> > Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > ---
> > Changes since v5:
> > - Subject correction.
> 
> Thanks for sticking with this.
> 
> One further note, you should list _all_ the changes that have happened
> over the series, v1-v6, in this list.  That makes it more obvious what
> has happened over time.
> 
> I've queued this patch up now, no need to do it this time.
> 
> thanks,
> 
> greg k-h

I will do so from now! :)

Thank you,
Lourdes

