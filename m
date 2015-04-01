X-GM-THRID: 10253217300480
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ed1e7771a182509f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.164.169 with SMTP id yr9mr48474218pab.34.1427901768094;
        Wed, 01 Apr 2015 08:22:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.40 with SMTP id rt8ls308467igb.1.gmail; Wed, 01 Apr
 2015 08:22:47 -0700 (PDT)
X-Received: by 10.66.148.40 with SMTP id tp8mr50416368pab.35.1427901767750;
        Wed, 01 Apr 2015 08:22:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zw6si240778pbc.2.2015.04.01.08.22.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:22:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E090AB41;
	Wed,  1 Apr 2015 15:22:46 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:22:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/4] Staging: sm750fb: Fix C99
 Comments
Message-ID: <20150401152243.GA6249@kroah.com>
References: <20150329103020.GA21007@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150329103020.GA21007@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 29, 2015 at 04:00:20PM +0530, Amitoj Kaur Chawla wrote:
> Fixed C99 Comments to C89 comment style and removed C99 comments
> performing printing. Problem found using checkpatch.pl
> ERROR: do not use C99 // comments
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes made in v3:
>         -Fixed commit message

Nothing changed in v2?

I need the whole series resent, I have a mess of patches in my inbox, no
way to tell which ones to apply, so my "default" way to solve that is to
delete them all :)

Please resend this whole series, properly threaded, so that my email
client makes it obvious what patches to apply, and in what order.

thanks,

greg k-h

