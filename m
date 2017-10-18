X-GM-THRID: 6477930690755166208
X-Received: by 10.99.116.75 with SMTP id e11mr3460068pgn.49.1508290573513;
        Tue, 17 Oct 2017 18:36:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.78.4 with SMTP id r4ls716357pgt.9.gmail; Tue, 17 Oct 2017
 18:36:12 -0700 (PDT)
X-Received: by 10.99.149.16 with SMTP id p16mr3554851pgd.52.1508290572595;
        Tue, 17 Oct 2017 18:36:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508290572; cv=none;
        d=google.com; s=arc-20160816;
        b=rUo+3/bL5wSYLFCmJcQbdE1nC0ArEtGmO0xzTBdf1Y7a4hfT/oEFhf2Ro/lxCAnJwt
         jkE8kllT28X5pQf2JxVKH/LCp33ZWEumYIoQWNhK0GxT7CgZU/Mn3QtZ7yY9x3VOa0/2
         kvu+sBsAmgGA7K5AeoOXZRsP8ddKRwiaF5XsweJjexW3kpSJWgL1pT8G8KG8u7UbVTmJ
         LmiOuQM9Pw73x9PrNxxGIZR68f3K8qVAMuOAsyzChevmbykqLd6yxDaZAdOo7MhpLltA
         /xvm19UVOO0xt++KfIORYa56aJI2t2/k83NyMc8dNz2DdrqJLGq4TugusfrvE2CFN5b/
         2mEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=oCLoaSF0sIphanlFkoUjlCFWu5YSiDEZn+piSX2fciA=;
        b=xZAKDjIE2P5v2HihpQdj/sYAnPXuw/ffmC3JuEhIWOs6/jar+LtbP5VOMBM/siyJkg
         nwV7F/X/B8rFuPJPkjse9P5IGvJl75DN9WvRwnpbPtJrBNg7Pq8h7uUukYUuOXz8iWSC
         UUD8O7GXjfdIuydj+MbdelTdY96D2qPNEYDDSMbaXslLn3ogLZ2MZ5NlKpb+DgT2cVJ6
         3Z+ohFE2/K+GDbMpAcRcflv7WpDOnv2OvyrDsdtSSL0WG46mLgcb4CHd+uW11Vr/r81X
         ymz0MlskXk3D2L7CBFGoRDRw4wqHfUlqE2AXGtlJVuaKGGl7aVzotw7vIc5U+fCuuvJw
         QD7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=0rGjr7bt;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x229.google.com (mail-ua0-x229.google.com. [2607:f8b0:400c:c08::229])
        by gmr-mx.google.com with ESMTPS id w4si1050093plp.5.2017.10.17.18.36.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 18:36:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) client-ip=2607:f8b0:400c:c08::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=0rGjr7bt;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::229 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x229.google.com with SMTP id l40so2515989uah.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 18:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oCLoaSF0sIphanlFkoUjlCFWu5YSiDEZn+piSX2fciA=;
        b=0rGjr7bt9/EqSErar93ktBZXrlLCltvOm91mhmTN6fIGcjaW2fEV0U4MrI9fPyEf7r
         w4dmZhOBej1FzgCnrUmaZ+f+asWWVhaRVLP4CnJjOrKjhOHzS1g2uTucNOHiz8KwEWJ1
         DIqDZRRcuHixHFJXBj42Li47mv42rJnDnUA0+r1UMU4p9sihkVMyjjb2Q1ztfi1lOwKr
         kLNLFEktqdmrLfD35wv04ccmUnjC34qKvJzSK/bOcfFJUVK2c2497QTJf/1GHjY6kosb
         4Ao1iEo/+Hlz8HodBz8FGNAvsD6QKMrj6UJOHrDO50l8RgGOsh72+RYfGYK5k9Btu9sj
         adOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oCLoaSF0sIphanlFkoUjlCFWu5YSiDEZn+piSX2fciA=;
        b=FG0jW9sBklWFYHk2lGgtmaCLt8mJ8sSHc4hrIyEkex2MvFKV3n8K5E/wfRediCqxPp
         k62aHSid3t1BrPiZpPWSMwlGAe6uh2wh51vJOnXgS4IJRdaIcFn7jRrlqM+ht68dZZXC
         KbDnkVlIQ6IecocnRKE6z3VGDlHohJ7FPWHhzP8/VEddkYg4/w9RdHkDsa1lotUqkV3w
         O6op08s0C5RXdAJ+DrfEzBi4rVZkIgPy4Iqaoa0oSkU6c14K0PR+UJWZ6eyRp7rsUL7M
         w5OxgAHBQfogJCgHfZqGoMgeCxGRBvfJwFMuXgWq690DPHRnMZPmT6hTJvS4ygRm3wzU
         k5Pw==
X-Gm-Message-State: AMCzsaW2L953r+/uYfCMe1WA1UUeQuUioiapPTFsHSiYI8R/7xYdIW45
	XmPvGP2Od32vOrkBDsGab00qZrm6
X-Google-Smtp-Source: ABhQp+SZVXogQv96aMe7ZBx9unfF8Li1LP+fOSTLQ0MdqZ7OBRGg3maDb6kU03Of5KLayPpInPrp2g==
X-Received: by 10.159.40.9 with SMTP id c9mr6873700uac.3.1508290571345;
        Tue, 17 Oct 2017 18:36:11 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.206.125.129])
        by smtp.gmail.com with ESMTPSA id o20sm2092925vke.15.2017.10.17.18.36.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 18:36:10 -0700 (PDT)
Date: Tue, 17 Oct 2017 21:36:07 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: Problem compiling nftables
Message-ID: <20171018013607.GA14756@ubuntu-server-1604>
References: <20171017171928.GJ6963@ubuntu-server-1604>
 <20171017233802.GA3615@dimstar.local.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017233802.GA3615@dimstar.local.net>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 18, 2017 at 10:38:02AM +1100, Duncan Roe wrote:
> Hi Frank,
> 
> The libnftnl patch was comitted 2 minutes before you posted :/
> 
> It all builds fine for me now.
> 
> Your problem is with generating the man page rather than with compiling the
> code. There is a separate Makefile in nftables/doc which you can run on its
> own to do this.
> 

Worked like a charm!

> When I run "make V=1" in nftables/doc I see the single command
> > docbook2x-man --xinclude nft.xml
> which gnerates nft.8 for me when I run it. Do you have that utility?
> 
> docbook2x-man and jw both come from package linuxdoc-tools (on Slackware, at
> least). If you end up installing docbook2x-man, you should likely re-run
> ./configure before re-trying make.
>

After execute 'sudo apt install docbook2x' on my Ubuntu box the problem went away.

Thanks a lot for your quick response Duncan!
frank

