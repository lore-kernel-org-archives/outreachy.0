X-GM-THRID: 6746422022313607168
X-Received: by 2002:a1c:8148:: with SMTP id c69mr2539571wmd.41.1570785858625;
        Fri, 11 Oct 2019 02:24:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls2577914wme.1.gmail; Fri, 11
 Oct 2019 02:24:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz/3QgsSXL09ZPEbd/n1H1kABJDhFBQ1UIQ6iYis430HTT1ah1DI32972n+3uXU9aUS/CVV
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr2569411wmj.66.1570785857598;
        Fri, 11 Oct 2019 02:24:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570785857; cv=none;
        d=google.com; s=arc-20160816;
        b=VgIqxODi6lZulKbDwK5HzOI7p+ij7B3zR8hhhg0dm99iKqJVo03XjZVfq1XM79jjWB
         5oassRM3YegST5wNAapEplVwGBH0BxyhfwnwQXfgg+1AANAwjTwqbDbaYUESvmyyAdWB
         khtWh7MS7+PenxFY9/K1rtBFKkBEP3HN8NX3re9oFXT9g8pKJInB0nRuAg3n/pGiNNdw
         AwMx7mZJgxl/Pe6tZUYp+d4e4g1TLh/dxzzgB5mzgS+wN3XiIbpnKcApJtakfEx27zgU
         z0SWgo7YC6h86nMC6GtCqvDyI+QXtYmsYgQNxhYpNDNlDuPqSB6sjAcwyo7/nVZFWMHO
         Om8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:content-description
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=WIjp9+j6LMVkQvyGCF2ejoVmRubycC08K6/Baf6C9Nk=;
        b=TkpqwPxNph59NeDPvd3HyFOxBRYn017CPkaC/pfdIEjM55xTbxeyAqQE6iYhIH6bnb
         KIQiJCFyDNFXpgyX2iU04uK69AsU4WrtMQDvRxZl9URTQd1WfmRyIlBszRqqXg2/EWxJ
         7BfHVF7DrBAifh53SP0RNPRdkNZ1NiXEUVdn4VMNyyG6/TZeiBhsVkIKIwyCACBE2Dck
         0X8LqXEVps9wd9zrUrBM/U9KDBvHEZRyAJHbAmQV4P/OLLQUwFAT3S6hoxNM9rZfg5Lw
         4LeScy5xKz9Yqih7/1k5CyDEPtNl25myZfLGqZWHdkRrwffeAG6A61vIC+UWb4vC2jVF
         1KBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wa/nkw6V";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f11si420494wrp.3.2019.10.11.02.24.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:24:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wa/nkw6V";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id v17so9470443wml.4
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 02:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-description:content-disposition:in-reply-to:user-agent;
        bh=WIjp9+j6LMVkQvyGCF2ejoVmRubycC08K6/Baf6C9Nk=;
        b=Wa/nkw6VJ3P3BW3d2/u7Yk+ZPRQ38ORiG9lld+ALso5woTyJoBcwkSzdtNRwREbDqZ
         yFcu7hVw8Gk0v9GxrGwlJw9/hQQ8i0Lgz2lqCV/Sz+UHGTtKeFIkyVjUeTb8mKG9F64B
         3In4KVrhpNHxo/Ye/dMjRnBWkFjOsFPi/0qDPGD4sGhbPCk17Zjh4zzWogQ3D6ndROR+
         W5m5npPVn5818D0oAt3LvYiqon17muDpgCTHLuWyWO7xIIncz7LSJrNoJCfQc4bZGh9i
         0FMH4OUFvG4nAl0V3RmjFz+yeiYJEylBt4O5LHGuBc50wCdFpoj0uwh0ugRBFDQj4NlT
         PH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-description:content-disposition
         :in-reply-to:user-agent;
        bh=WIjp9+j6LMVkQvyGCF2ejoVmRubycC08K6/Baf6C9Nk=;
        b=OIfcLm/nImaPcNLf879QXDhsaRK0kl/4BsqfACVvLCKEXIBnoIvI4NJb1EBbVd73UP
         7jgys5HM9uj9vx60QTt4Od6RUonL2zoOXrR/mdPkLE7QTfCdCnjsnp7Du4c/azB3q4yY
         jOUWqoTSP6Sl/rOI9VFwtwRXwTjX1gffkEXLhkdldk2UpjchKOEd/b/5mIGGLavQ48yJ
         paDhUo9snHNu+SME7/N/hHXrhQqfFeAGQocZdFJxOe1ZxgTzh5TcvQepBJMcwE4EjZ6e
         BXb5zupwL1iIBq+kmph77J/ydLrLBQT5mS1YMknhFDLcXzMSHkepvIg+tTKC72jMgXL5
         r9IA==
X-Gm-Message-State: APjAAAX+kzYEsjKipCHAcvL4Rj9e1gh0BlJmyIDWNHgDYNmZDsfdaZLN
	jVFw3tWmp/ukIZ51GK4LLpSBEIybFgUQ+A==
X-Received: by 2002:a1c:7c0a:: with SMTP id x10mr2471596wmc.48.1570785857217;
        Fri, 11 Oct 2019 02:24:17 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id u83sm14078573wme.0.2019.10.11.02.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 02:24:16 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:24:11 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Remove declarations of new typedef in
Message-ID: <20191011092411.GA10328@wambui>
Reply-To: 20191011090100.GA1076760@kroah.com
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <20191011090100.GA1076760@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: evel@driverdev.osuosl.org,
Content-Disposition: inline
In-Reply-To: <20191011090100.GA1076760@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 11:01:00AM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 09:02:37AM +0300, Wambui Karuga wrote:
> > This patchset removes various typedef declarations of new data types
> > in drivers/staging/octeon/octeon-stubs.h.
> > The series also changes their old uses with the new declaration
> > format.
> 
> The subject line of this email seems to be lacking something :)
> 
> thanks,
> 
> greg k-h
The ending of this sentence seems to have been cut-off. Sorry!

Thanks.
Wambui Karuga

