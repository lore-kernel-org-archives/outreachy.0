X-GM-THRID: 9888705019904
X-Received: by 10.182.133.69 with SMTP id pa5mr14845567obb.32.1427362742445;
        Thu, 26 Mar 2015 02:39:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.102 with SMTP id e93ls644771qge.87.gmail; Thu, 26 Mar
 2015 02:39:02 -0700 (PDT)
X-Received: by 10.236.28.3 with SMTP id f3mr17086071yha.5.1427362742141;
        Thu, 26 Mar 2015 02:39:02 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si626676pdo.0.2015.03.26.02.39.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:39:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 41D8CA79;
	Thu, 26 Mar 2015 09:39:01 +0000 (UTC)
Date: Thu, 26 Mar 2015 10:38:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Helen Fornazier <helen.fornazier@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] block: Add blank line after variable
 declarations
Message-ID: <20150326093858.GB20410@kroah.com>
References: <1427328329-6437-1-git-send-email-helen.fornazier@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427328329-6437-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 25, 2015 at 09:05:29PM -0300, Helen Fornazier wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  block/bio.c | 3 +++
>  1 file changed, 3 insertions(+)

Nothing I can do with this :(

