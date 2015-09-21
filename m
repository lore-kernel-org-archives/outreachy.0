X-GM-THRID: 6196813277998088192
X-Received: by 10.182.101.129 with SMTP id fg1mr14790692obb.21.1442810514318;
        Sun, 20 Sep 2015 21:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.158.170 with SMTP id wv10ls858059obb.40.gmail; Sun, 20 Sep
 2015 21:41:53 -0700 (PDT)
X-Received: by 10.182.65.164 with SMTP id y4mr14953518obs.26.1442810513903;
        Sun, 20 Sep 2015 21:41:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si1928416ywe.3.2015.09.20.21.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Sep 2015 21:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [70.35.39.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ABB05D09;
	Mon, 21 Sep 2015 04:41:52 +0000 (UTC)
Date: Sun, 20 Sep 2015 21:41:51 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: "Amber N. Adams" <amber@amberadams.co>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: skein: Add * on subsequent
 lines in block comment
Message-ID: <20150921044151.GA13276@kroah.com>
References: <1442721709-20701-1-git-send-email-amber@amberadams.co>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1442721709-20701-1-git-send-email-amber@amberadams.co>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 19, 2015 at 11:01:49PM -0500, Amber N. Adams wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: Block comments use * on subsequent lines
> +/*
> +Copyright (c) 2010 Werner Dittmann
> 
> Signed-off-by: Amber N. Adams <amber@amberadams.co>
> ---
>  drivers/staging/skein/skein_api.h | 48 +++++++++++++++++++--------------------
>  1 file changed, 24 insertions(+), 24 deletions(-)

I don't think that the outreachy kernel application process starts until
September 29, so we can't do anything with this patch until then :(

I'd recommend just waiting a week, or if you really want to submit this,
send it to the mailing list that the scripts/get_maintainer.pl tool
tells you to, and I can take it that way, but it will not count for the
application process here, sorry.

greg k-h

