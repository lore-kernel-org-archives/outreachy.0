X-GM-THRID: 4924186296320
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7c2752f3e2f1468d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.126.12 with SMTP id mu12mr25892707obb.13.1425256244393;
        Sun, 01 Mar 2015 16:30:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.88 with SMTP id y85ls423253ioi.86.gmail; Sun, 01 Mar
 2015 16:30:44 -0800 (PST)
X-Received: by 10.66.119.174 with SMTP id kv14mr24942041pab.21.1425256244241;
        Sun, 01 Mar 2015 16:30:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si1327042pdc.0.2015.03.01.16.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ED34B4D3;
	Mon,  2 Mar 2015 00:30:43 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:30:43 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lustre: ldlm: Fix
 externs should be avoided in .c
Message-ID: <20150302003043.GA28507@kroah.com>
References: <1425075568-26188-1-git-send-email-hamohammed.sa@gmail.com>
 <1425113778-17230-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425113778-17230-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 28, 2015 at 11:56:18AM +0300, Haneen Mohammed wrote:
> This patch moves extern declaration to ldlm_internal.h.
> Remove prototype from ldlm_lockd.c and ldlm_lock.c.
> Issue addressed by checkpatch.pl.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h | 4 ++++
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 2 --
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    | 2 --
>  3 files changed, 4 insertions(+), 4 deletions(-)

What changed between v1 and v2?  Please fix up and resend v3.

thanks,

greg k-h

