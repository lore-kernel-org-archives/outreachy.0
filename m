X-GM-THRID: 5221884362752
X-Received: by 10.50.55.102 with SMTP id r6mr14537167igp.1.1425257765675;
        Sun, 01 Mar 2015 16:56:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.136 with SMTP id 8ls1156815ios.51.gmail; Sun, 01 Mar
 2015 16:56:05 -0800 (PST)
X-Received: by 10.43.6.5 with SMTP id oi5mr25167332icb.11.1425257765540;
        Sun, 01 Mar 2015 16:56:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1285955pbc.2.2015.03.01.16.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:56:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 245934D3;
	Mon,  2 Mar 2015 00:56:05 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:56:04 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] Staging: lustre: Fix externs
 should be avoided in .c
Message-ID: <20150302005604.GB3654@kroah.com>
References: <1425253981-14265-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425253981-14265-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 02:53:01AM +0300, Haneen Mohammed wrote:
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

What changed here as well?

Why resend?

