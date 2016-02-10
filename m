X-GM-THRID: 6249536250396540928
X-Received: by 10.182.87.2 with SMTP id t2mr36303656obz.20.1455085772929;
        Tue, 09 Feb 2016 22:29:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls141133ioe.53.gmail; Tue, 09 Feb
 2016 22:29:32 -0800 (PST)
X-Received: by 10.50.25.133 with SMTP id c5mr8070888igg.4.1455085772690;
        Tue, 09 Feb 2016 22:29:32 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 79si237582pft.0.2016.02.09.22.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:29:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id x65so6995203pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=JkF6V/G07bT/sYtkZes7uDxpKpQdSGmt0YLF4CKPpEw=;
        b=dB+XPZebIXMbPbJ61nSirflV4JYNlXZFXpwspu/kk3Xeo3upzC73NBv4BHGlkK0YQa
         DEgc/AgEfqY7KCMgFFgwMvkw6QdXRLbxVsEeNjxfmhJ2bdRwwrpI14gORwLnz8QYx8fJ
         v9U52xoPCQljGkRkXxSPCayA70EB+gyY0FBm29XBu/JTBQNQMLuNImsP80WHnixW2z3Y
         t0FK3MmPBxSu4tc2MoDa8RL6AK1LRrmZSqqH0tyJZ4BfO6V7l3LW90fFFJ1YcbkWMVYf
         SfDF99CMc/brZJHnrN0QGEiuQgk0INSqtiKdUAZeHJYuMtaHUVFZ3WVyp1wKNCAcHA76
         K60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=JkF6V/G07bT/sYtkZes7uDxpKpQdSGmt0YLF4CKPpEw=;
        b=MZwPmZ3npYe0r0d6krl+ACzrvtZjpwYjsICgTdrJakTTXLl4jOn1uGTRBXP+ZNaynh
         2zMAC9jMa91KlYnu79yWikTkftHQIuW91G7+sROqp0TVvEpARWu1OvUqJ2s+Oksymplw
         dBNRTfHl60gtHJwJWYt3BgUt5R0o+5CdxrMT59aLRjY7EgUoLglTFUEeDci/CEfpfMXP
         s2UrKkc7l1O2CmFgA2cMvUGMaAzI+oX4gRJ8q7MQJ+4B/9WkGDAkc0v41bmAD7JFUFHS
         XQDl9M+F1YzF04Vlevxbwkr7rlmuaGsAVD1LvpLcw/mqQ2GhkOZ3TSs5dEXQxSdMWWUq
         cpkA==
X-Gm-Message-State: AG10YOQ1aad4Kme7njIyvoUoY5/VKgKXjnPn9j8Qv5qcWRq/e5hIKzyfarCWXr1KccQVGA==
X-Received: by 10.98.17.208 with SMTP id 77mr55496085pfr.37.1455085772539;
        Tue, 09 Feb 2016 22:29:32 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id 74sm2149147pfs.33.2016.02.09.22.29.30
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 22:29:32 -0800 (PST)
Date: Wed, 10 Feb 2016 11:59:27 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: gdm72xx: gdm_sdio:
 Replace timeval with ktime_t
Message-ID: <20160210062927.GE374@sudip-pc>
References: <20160210055217.GA4222@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210055217.GA4222@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 10, 2016 at 11:22:17AM +0530, Amitoj Kaur Chawla wrote:
> This driver uses 'struct timeval' which we are trying to remove since
> 32 bit time types will break in the year 2038. So replace it with
> 'ktime_t'.
> 
> Replaced do_gettimeofday() with ktime_get() because ktime_get() returns 
> a 'ktime_t' while do_gettimeofday() returns a 'struct timeval'.
> 
> This patch also uses ktime_us_delta() to get the elapsed time.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---

This will not apply as almost similar change has already been done by:
2bc29a1abc5c ("staging: gdm72xx: Replace timeval with ktime_t")

which tree are you using?

regards
sudip

