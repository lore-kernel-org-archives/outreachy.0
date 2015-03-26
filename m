X-GM-THRID: 9893768593408
X-Received: by 10.236.16.130 with SMTP id h2mr15263200yhh.36.1427362751922;
        Thu, 26 Mar 2015 02:39:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.136 with SMTP id e8ls660081qgf.15.gmail; Thu, 26 Mar
 2015 02:39:11 -0700 (PDT)
X-Received: by 10.236.36.39 with SMTP id v27mr15422503yha.24.1427362751642;
        Thu, 26 Mar 2015 02:39:11 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si620360pac.2.2015.03.26.02.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C2E31A79;
	Thu, 26 Mar 2015 09:39:10 +0000 (UTC)
Date: Thu, 26 Mar 2015 10:39:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Helen Fornazier <helen.fornazier@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] block: remove trailing white space
Message-ID: <20150326093907.GC20410@kroah.com>
References: <1427328464-6485-1-git-send-email-helen.fornazier@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427328464-6485-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 25, 2015 at 09:07:44PM -0300, Helen Fornazier wrote:
> Clean useless trailing white spaces
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  block/bio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Nothing I can do with this :(

