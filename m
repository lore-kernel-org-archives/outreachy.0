X-GM-THRID: 9896689926144
X-Received: by 10.236.15.167 with SMTP id f27mr14564219yhf.8.1427362765514;
        Thu, 26 Mar 2015 02:39:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.10 with SMTP id k10ls612495ioe.20.gmail; Thu, 26 Mar
 2015 02:39:25 -0700 (PDT)
X-Received: by 10.68.100.67 with SMTP id ew3mr15052005pbb.4.1427362765262;
        Thu, 26 Mar 2015 02:39:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si620415pac.2.2015.03.26.02.39.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6CCF8A79;
	Thu, 26 Mar 2015 09:39:24 +0000 (UTC)
Date: Thu, 26 Mar 2015 10:39:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Helen Fornazier <helen.fornazier@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] block: remove space before tabs
Message-ID: <20150326093921.GD20410@kroah.com>
References: <1427328530-6531-1-git-send-email-helen.fornazier@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427328530-6531-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 25, 2015 at 09:08:50PM -0300, Helen Fornazier wrote:
> This patch fixes checkpatch.pl warning:
> 
> WARNING: please, no space before tabs
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  block/bio.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Again, nothing I can do here, sorry.

greg k-h

