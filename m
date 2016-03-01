X-GM-THRID: 6256826514740871168
X-Received: by 10.112.173.6 with SMTP id bg6mr2481776lbc.0.1456847823653;
        Tue, 01 Mar 2016 07:57:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.210.16 with SMTP id j16ls669476lfg.52.gmail; Tue, 01 Mar
 2016 07:57:02 -0800 (PST)
X-Received: by 10.25.153.196 with SMTP id b187mr2474030lfe.3.1456847822686;
        Tue, 01 Mar 2016 07:57:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id s141si24408wmd.1.2016.03.01.07.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 07:57:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id n186so43686326wmn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 07:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NWenrp5XcfpMlP0pm4HmhUd/G+S0TjrcIzD40VM1OBQ=;
        b=XK2w6MgRl4pj/B9HmVA6FdnTs9jIaB+NFrKdyGQvjpIxxvUa4pTTUHLIqOefY92ePF
         +2fBXbbO8uUYXsfPwuCrqXldRCPKrTcaWFqSwomi/DeAEZssr70RLmPu52XoHcgnf/5E
         WrdwaZ24XJsIo0rBII/u2lJV59nU3fjSizfT5K78YG+WBu+1Jok1h1bEB7PfpYw6FUHm
         9aopNqU3IWXbtrEL4ZLBgJFA6CxxabOQvHLtN3+rudBrSd7B5RJxf1Xai6AZ0LE9jetA
         zf7QnwYYBns+t1lKyfva3/Adie3HQBFssn5CIDzIy2Z77Qa5/Zb32PFavnPexvkddlA1
         ezJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NWenrp5XcfpMlP0pm4HmhUd/G+S0TjrcIzD40VM1OBQ=;
        b=EmfQ4chGPJrdTMqB0aypcO6256j/PTJkLsFfUew0QLN6AvzDZwypXEkafDU0KvrImd
         2xJ+F0IP3JPO38hVSYartFA4JSR3x2TebiwopYSQBbDDWQ63ZAj8ghQVb90omCmWns/c
         v0Hot/5hijm2X2SmaAvalvf+VS/F1BxUmvfB8HGkRgHGwzcoRYXcX/1FPArfRvQY2mi9
         9hvu0TsmjC3gYC0Lu+7IK7aXyFbT7IV8NzaJQiP5cgweao+jSHpLM7skvMwZp9/EoaVd
         yTvlsc1PFXgugnqnSqsubcdRkr6sIqPqMIcxb3musX1vxxAFp6yxV2P+tqgVIf7I3CGS
         StoA==
X-Gm-Message-State: AD7BkJIJZi30xw245i+mCN0L45XJkLZUNralAO80tfOVJ+mMsiVq1s8tdxMDovKHXD3HOg==
X-Received: by 10.194.142.135 with SMTP id rw7mr20095695wjb.84.1456847822518;
        Tue, 01 Mar 2016 07:57:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id t8sm31488265wjy.41.2016.03.01.07.57.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 07:57:01 -0800 (PST)
Date: Tue, 1 Mar 2016 16:56:59 +0100
From: Laura Garcia <nevola@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: Shivani Bhardwaj <shivanib134@gmail.com>,
	Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>,
	Florian Westphal <fw@strlen.de>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] extensions: libxt_statistic: Add
 translation to nft
Message-ID: <20160301155657.GB3838@sonyv>
References: <20160229212216.GA29706@sonyv>
 <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
 <20160301101331.GA2714@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160301101331.GA2714@salvia>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Mar 01, 2016 at 11:13:31AM +0100, Pablo Neira Ayuso wrote:
> 
> I would like to have them merged upstream, no need to wait to fully
> support every extension, we can document these limitations in the wiki
> and the commit log.
> 
> IIRC, if the .xlate indirection returns 0, then it means no
> translation is available. We can use that for things that we don't
> support yet.
>

Hi Pablo, should I have to include this in the patch?

Thanks.


