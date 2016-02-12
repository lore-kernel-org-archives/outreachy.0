X-GM-THRID: 6249603259895382016
X-Received: by 10.129.131.206 with SMTP id t197mr14154686ywf.50.1455248775523;
        Thu, 11 Feb 2016 19:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.121.202 with SMTP id lm10ls768150obb.7.gmail; Thu, 11 Feb
 2016 19:46:15 -0800 (PST)
X-Received: by 10.182.28.41 with SMTP id y9mr47088259obg.14.1455248775187;
        Thu, 11 Feb 2016 19:46:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si1532288pab.0.2016.02.11.19.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 19:46:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E50C01046;
	Fri, 12 Feb 2016 03:46:14 +0000 (UTC)
Date: Thu, 11 Feb 2016 19:46:14 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/5] staging: comedi: Merge if
 conditions
Message-ID: <20160212034614.GF12182@kroah.com>
References: <20160211143808.GA300@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160211143808.GA300@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 11, 2016 at 08:08:08PM +0530, Amitoj Kaur Chawla wrote:
> This patchset merges if conditions with the same statements using the
> following Coccinelle script:
> 
> //<smpl>
> @@
> statement S;
> expression e,x;
> @@
> 
> * if(e)
> (
> { ... return ...; }
> &
> S
> )
> 
> * if(x)
> (
> { ... return ...; }
> &
> S
> )
> //</smpl>
> 
> Amitoj Kaur Chawla (5):
>   staging: comedi: drivers: comedi_8254: Merge if conditions
>   staging: comedi: comedi_fops: Merge if conditions
>   staging: comedi: range: Merge if conditions
>   staging: comedi: drivers: dt282x: Merge if conditions
>   staging: comedi: drivers: pcmuio: Merge if conditions
> 
> Changes in v3:
>         -Removed extraneous parantheses in Patch 1/5 and 2/5
> 
> Changes in v2:
>         -Patch 1/5 Merged if conditions instead of dropping them.
>         -Patch 2/5 Merged Patch 2/6 and 3/6 of first version by not
>          dropping if conditions and only merging them for the same
>          file.
>         -Patch 3/5 Removed unnecessary parentheses.
>         -Patch 4/5 and 5/5 While merging use !x || !y instead of
>          !(x && y)
> 
>  drivers/staging/comedi/comedi_fops.c         | 14 +++-----------
>  drivers/staging/comedi/drivers/comedi_8254.c |  4 +---
>  drivers/staging/comedi/drivers/dt282x.c      |  5 +----
>  drivers/staging/comedi/drivers/pcmuio.c      |  5 +----
>  drivers/staging/comedi/range.c               |  4 +---
>  5 files changed, 7 insertions(+), 25 deletions(-)

Sorry I didn't see this version first.

I don't want to take these for the same reasons as before, sorry.

greg k-h

