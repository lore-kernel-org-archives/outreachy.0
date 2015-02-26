X-GM-THRID: 3063531175936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8a7b7b306baa2356
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.231.139 with SMTP id b133mr9228238qhc.1.1424976774451;
        Thu, 26 Feb 2015 10:52:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.35 with SMTP id ph3ls1979110igb.0.canary; Thu, 26 Feb
 2015 10:52:54 -0800 (PST)
X-Received: by 10.70.126.138 with SMTP id my10mr9196547pdb.1.1424976774182;
        Thu, 26 Feb 2015 10:52:54 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si223276pdb.1.2015.02.26.10.52.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:52:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E651FB31;
	Thu, 26 Feb 2015 18:52:53 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:52:53 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Fix do not use C99 //
 comments
Message-ID: <20150226185253.GA16922@kroah.com>
References: <1424724485-5872-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424724485-5872-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 23, 2015 at 10:48:05PM +0200, Dilek Uzulmez wrote:
> Fix checkpatch.pl issues with do not use C99 //
> comments in saa7191.c
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/media/vino/saa7191.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This file is no longer in Linus's tree :(

