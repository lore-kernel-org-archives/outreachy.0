X-GM-THRID: 10509391757312
X-Received: by 10.236.7.1 with SMTP id 1mr6888615yho.50.1427901908173;
        Wed, 01 Apr 2015 08:25:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.1 with SMTP id i1ls339729qgi.34.gmail; Wed, 01 Apr 2015
 08:25:07 -0700 (PDT)
X-Received: by 10.52.164.66 with SMTP id yo2mr50362467vdb.2.1427901907856;
        Wed, 01 Apr 2015 08:25:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si254657pdb.1.2015.04.01.08.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EE0C9B52;
	Wed,  1 Apr 2015 15:25:06 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:25:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove brace for
 single statement
Message-ID: <20150401152503.GA21691@kroah.com>
References: <20150331140735.GA3357@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150331140735.GA3357@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 31, 2015 at 07:37:35PM +0530, Amitoj Kaur Chawla wrote:
> Removed braces in the single if statement. Problem found using checkpatch.pl
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

You sent me 3 patches for this driver, but no hint as to what order to
apply them in :(

Please fix that up, and send a series of three patches, properly
numbered, so I know what to do.

thanks,

greg k-h

