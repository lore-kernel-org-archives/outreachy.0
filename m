X-GM-THRID: 6399695110711279616
X-Received: by 10.223.165.17 with SMTP id i17mr301839wrb.23.1490296545139;
        Thu, 23 Mar 2017 12:15:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.182.69 with SMTP id g66ls2501410wmf.27.canary-gmail; Thu,
 23 Mar 2017 12:15:44 -0700 (PDT)
X-Received: by 10.28.14.129 with SMTP id 123mr282205wmo.11.1490296544207;
        Thu, 23 Mar 2017 12:15:44 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from mail-lf0-x22c.google.com (mail-lf0-x22c.google.com. [2a00:1450:4010:c07::22c])
        by gmr-mx.google.com with ESMTPS id i76si2211224wmh.1.2017.03.23.12.15.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 12:15:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4010:c07::22c is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) client-ip=2a00:1450:4010:c07::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@alemayhu-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2a00:1450:4010:c07::22c is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) smtp.mailfrom=alexander@alemayhu.com
Received: by mail-lf0-x22c.google.com with SMTP id j90so85956462lfk.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 12:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=alemayhu-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=JXsxCa9y1RrLQozO5OLzGFMDk6ZF+2XLJSGvy5tRFTg=;
        b=wWamxDBOw5Oh8EA/hWLCnZM2zv5H5rzBEgM7gBVPr5Ex8XvucGGLuWwO7eR5M801TV
         T6d5F5raPrzAzOFaWaApQg8vLnFxF3o9yiD1dw5TSeXBRozE8pwpLEDlEQYu1QAfiEaw
         odFpUUb/Lkap8sFb78ZbnMbFdfXGz4e6oOJaQESKTFlVs4rom/HriJ9dGHAWxgCrkanp
         NtT37bS8lCKOKAGGvmc8JarTb5rX5AlzMv3HpHAjlfEGL97omWprRQIlWSW6xS+regfR
         P0BE2xyt57OwV5txIYNWwPk7n1DCcMdQgCTXXOZa5dhVh01j7O/kFPdI0+hjbiIbhvXi
         HaQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=JXsxCa9y1RrLQozO5OLzGFMDk6ZF+2XLJSGvy5tRFTg=;
        b=AANMU1B/rz6L+sY6lKRp9V436gq3XsqOz2IFL2Se5cOHHEVi5dCaDLrMh0Fh2oo/bv
         3JfBK0za1aER8oJYetzXV5hPQw14+zLdue57Bi8koGL753v3+7eKaWzJWe3H4HLW99GP
         dIpUPy09wwGU/NWNewfuOC7vrlTfce/niXlM2/3p1sfDFpoJ1ccV0h2TZ/kVLpeL6uSy
         ST8Cxgcbghh1L/9pItzv/WAddtqWhzG8CmfQIPLDiwe/QJCtDZjy9qS9plr3cukurX01
         WgwyF0MEml+Hi3fEJ+zmnvd80s8PNKpb2Jg7UGjA1CScFnJHh1Z8NfkVcn+wNLwTmvZS
         A2Yg==
X-Gm-Message-State: AFeK/H3GqeRcXz4eyFK2lBIpJq64Ln3E0AthPto7+ITFlHjAjK2WRZF7y8yAeDl1iSgnbA==
X-Received: by 10.25.160.211 with SMTP id j202mr2073011lfe.24.1490296543789;
        Thu, 23 Mar 2017 12:15:43 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from localhost ([2a02:fe0:c020:790::5])
        by smtp.gmail.com with ESMTPSA id 4sm179570ljf.33.2017.03.23.12.15.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Mar 2017 12:15:43 -0700 (PDT)
Date: Thu, 23 Mar 2017 20:15:42 +0100
From: Alexander Alemayhu <alexander@alemayhu.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	karniksayli1995@gmail.com
Subject: Re: [Outreachy kernel] nftables task question
Message-ID: <20170323191542.GA301@gmail.com>
References: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com>
 <20170320222623.GB3079@gmail.com>
 <alpine.DEB.2.20.1703210707330.2131@hadrien>
 <ffddf9b3-0b6a-4ba6-9ede-6da1d1dfc7b8@googlegroups.com>
 <0a879316-5726-4a10-83b1-cc8da65e459e@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0a879316-5726-4a10-83b1-cc8da65e459e@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 23, 2017 at 09:15:20AM -0700, Arushi Singhal wrote:
> >
> I am getting error message as:-
> 
> Cloning into 'iptables'...
> fatal: unable to connect to git.netfilter.org:
> git.netfilter.org[0: 150.214.142.167]: errno=Connection refused
>
Works fine here. What version of git are you using?  Maybe using http or https
as suggested by Simran Singhal works on your setup.

-- 
Mit freundlichen Gr��en

Alexander Alemayhu

