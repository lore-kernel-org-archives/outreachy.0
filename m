X-GM-THRID: 6465584009265020928
X-Received: by 10.25.59.12 with SMTP id i12mr749269lfa.32.1505727429163;
        Mon, 18 Sep 2017 02:37:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.70 with SMTP id h67ls1433766wmg.26.gmail; Mon, 18 Sep
 2017 02:37:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBcKZGb7nQwHGJgVKxd6n5tMZepIRtCVXdaRKwnmPrWAh3Wg7Dyl60zT5Vkqo991sk4+1rd
X-Received: by 10.28.136.12 with SMTP id k12mr1003825wmd.10.1505727428184;
        Mon, 18 Sep 2017 02:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505727428; cv=none;
        d=google.com; s=arc-20160816;
        b=tiDQepqmqRYmDyf9cT/bw+jzT16t1yphs9oipyX+EQ98o6rpADaO+nlM6T0RvHIlDf
         3ouqQHOJ4/bKfLl7CV7VmlOd4QfU4sJH37YaPiLmawku8LTtMc1CzopWAfe1PVS6Mx+P
         yh6wB+nxYTVTQX8cpZYGdWVzL2nGoLqCFKSj9QPKJtMwN9p5VqNvTsK/FrkJpjRJoFNE
         ncJlL5sXwZ+hapxCDmmVj177T+zGeBbwz6YwJ/6U3ZGtzLF92m+DyjUzIUXjUnjIIjhP
         rrhO4cBpwySVvPlb3zmVpAB+Lvo1KqqoivfHVdvGVMkEIKNw0pIlDWW6A3+8nv8TFfoC
         f9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=0L7cHp7Z+01EMFQGcmbVMlDKzhOfIedWAo4urk+qtzI=;
        b=e5BceOvkO5RkAU88dZVo2kF/bwZnL6WvZ2RGG6tNbSRuVJ3JB4MOynvo2QG0BszRwd
         vC8V1sFdlxwoTtNIYihtN7qvG0dLicWt44mNUp/hWesUYsiSMsYKmriTmBPCTpYjtOig
         BR85sOwpMCZDudiEmyJbqdPdOOYTyhWSs+PKaatzRA1K/nJm8x7yjQKJZxp9cw9TfL5T
         l5dnExu3D8dExduh1fIrwSHbgs3Q7FTYxxGXPzi1+0vBQy9/LA+l44b8OOy1JBJEWuG9
         MUhGRy/e+kwohcVbvL8u9F+oHUskNJY5ySkPuqbXDHT/9ihPg7H2WqL+MlLe9yNz1HNH
         ynKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q145si10097wme.4.2017.09.18.02.37.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 86093AF0;
	Mon, 18 Sep 2017 09:37:06 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:37:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [RESEND PATCH] staging: lustre: fix incorrect multi-line comment
 style
Message-ID: <20170918093717.GC9461@kroah.com>
References: <1505389062-8222-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505389062-8222-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 14, 2017 at 05:07:42PM +0530, Aastha Gupta wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: block comments use a trailing */ on a separate line
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
>  1 file changed, 34 insertions(+), 17 deletions(-)

Why was this a "RESEND"?  What required that?

Always put that information below the --- line.

Please fix this up and resend it, with that type of information, and a
new "version" of the patch.

thanks,

greg k-h

