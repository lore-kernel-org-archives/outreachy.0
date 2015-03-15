X-GM-THRID: 7583885688832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1710fc2133602604
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.199.66 with SMTP id ji2mr58577986obc.14.1426415806950;
        Sun, 15 Mar 2015 03:36:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.12 with SMTP id t12ls1537722ioe.21.gmail; Sun, 15 Mar
 2015 03:36:46 -0700 (PDT)
X-Received: by 10.66.221.165 with SMTP id qf5mr58539267pac.30.1426415806753;
        Sun, 15 Mar 2015 03:36:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1282951pac.0.2015.03.15.03.36.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:36:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A18948CF;
	Sun, 15 Mar 2015 10:36:45 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:36:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: sm750: Place blank line
 after declarations
Message-ID: <20150315103642.GA8510@kroah.com>
References: <cover.1426039205.git.ciorneiioana@gmail.com>
 <614b3e2eda27d2869a8db7b20ed43ade65302d34.1426039205.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <614b3e2eda27d2869a8db7b20ed43ade65302d34.1426039205.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 11, 2015 at 04:35:05AM +0200, Ioana Ciornei wrote:
> Place blank line after each declaration, to follow the Linux coding style.
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 6 ++++++
>  1 file changed, 6 insertions(+)

This patch doesn't apply to my tree, so I can't apply it or the rest of
this series.  Please refresh it against my tree and resend.

thanks,

greg k-h

