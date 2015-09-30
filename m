X-GM-THRID: 6200058021520867328
X-Received: by 10.107.160.72 with SMTP id j69mr1776099ioe.7.1443579193153;
        Tue, 29 Sep 2015 19:13:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.97 with SMTP id 88ls107188qgy.90.gmail; Tue, 29 Sep
 2015 19:13:12 -0700 (PDT)
X-Received: by 10.140.144.215 with SMTP id 206mr1160358qhq.6.1443579192405;
        Tue, 29 Sep 2015 19:13:12 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si2846238ywe.3.2015.09.29.19.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 19:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [83.145.64.184])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 000D610F2;
	Wed, 30 Sep 2015 02:13:10 +0000 (UTC)
Date: Wed, 30 Sep 2015 03:54:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging:comedi: Fixed multiple
 file comment style
Message-ID: <20150930015435.GA13451@kroah.com>
References: <1443563418-42983-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443563418-42983-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 29, 2015 at 02:50:18PM -0700, Cristina Moraru wrote:
> Fixed 'Block comments use * on subsequent lines' and 'Block comments use
> a trailing */ on a separate line' Warnings
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h | 33 +++++++++++++++++----------------
>  drivers/staging/comedi/comedilib.h | 30 +++++++++++++++---------------
>  2 files changed, 32 insertions(+), 31 deletions(-)

This patch fails to apply to my staging-testing branch for some reason.
I think because others already converted one of these files before you
set in this patch.

Can you please refresh your tree and rebase this and resend it against
my staging-testing git branch on my staging.git tree?

thanks,

greg k-h

