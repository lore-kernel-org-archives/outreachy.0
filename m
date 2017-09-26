X-GM-THRID: 6468588291165782016
X-Received: by 10.28.131.208 with SMTP id f199mr257418wmd.11.1506411691608;
        Tue, 26 Sep 2017 00:41:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.85 with SMTP id q82ls859611wme.10.canary-gmail; Tue, 26
 Sep 2017 00:41:30 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBj8ujeBBZW5k+HlsT0jujOUALQgN2jltSmIdjabi2rPLBg2IOnf3G20y/WwHoiNw0tQPWu
X-Received: by 10.28.27.195 with SMTP id b186mr228914wmb.23.1506411690954;
        Tue, 26 Sep 2017 00:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506411690; cv=none;
        d=google.com; s=arc-20160816;
        b=0L05bxH1GJgP7GrZNJlr4vsNptpqQlBL3VhMo+zsKmlKS0ybykoBV71Y12ifzlRoE9
         uonw5bsZskcuHRHu77Xu2kcYHtAE29w7CsrxuB0QDvSRXZPW9g4GWBzufwUYKGHgyatM
         w6pSpuWMBkAUmIIe0yaPOWi7vbLDsjcAML6NqQHlVoYKWfUBLZ2+7nWhIg28fCtjNCe4
         vYte/Vl94pm2N/ANmGbq1UwhyzfY+oJCqTVrUohDnKvcCpRPpF7Ps80yD56zee68Bi9Q
         XaHe8yGGbHgZBw2/Mp6jGNNGg76nOdqVJwTOXlhTmC8bPuP6HCoRvVIwNN6pcOZXm9YS
         WIMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=dAytuLW131qfP4FbkkWBePFN/HE6hka/iPHzQGbYuwg=;
        b=UqTedIAdtkYVHtZ/TiIF+fDUIB8CEggXwdIIpTks13uvSfumBdfYb7rk9nxMPgk67c
         8a6X8taFMZkYWfC2/Z1Awq0uVF/zxLVQhVY3bvLJ3qiEDSE7dMcHVOo6yQKNCWGh+EpI
         LsUBuNJPjKXKdd5AU5/SqL+/oQYTfjQAItS8PQgTtxwRW4s87gO3atoE5eAZZuiHq9fS
         WRak81kcxfhEA9A2JnzdQrcfCwbGCWvgMqbdZVN9bli7M1Jv1+MOwQct/57xqEc9Yw+y
         RUh8W0pPIkx7ZQH7KVHsV61l5hYM+0OjG5h7eJL6nKZ/USSKRZBc664k2zIt+wCMLeN8
         1Svw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 191si76792wmn.2.2017.09.26.00.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 00:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 226CA970;
	Tue, 26 Sep 2017 07:41:28 +0000 (UTC)
Date: Tue, 26 Sep 2017 09:41:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 2/2] Staging: rtl8723bs: core: Code clean up
Message-ID: <20170926074138.GA26263@kroah.com>
References: <cover.1506092223.git.georgiana.chelu93@gmail.com>
 <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8813107f1cbbc593f55422ef905c4d5cfb575206.1506092223.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Fri, Sep 22, 2017 at 08:04:52AM -0700, Georgiana Chelu wrote:
> Clean the code to improve the coding style.
> 
> Fix minor issues reported by checkpatch.pl:
> * CHECK: Alignment should match open parenthesis
> * CHECK: Logical continuations should be on the previous line
> * WARNING: line over 80 characters

That's a lot of different things to be doing all in one patch.  Please
break this up into "one type of thing" per patch.

And no, "fix all coding style issues" is not "one thing" :)

thanks,

greg k-h

