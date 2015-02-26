X-GM-THRID: 2154080239616
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f49012065c9a372
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.88.67 with SMTP id be3mr9816065vdb.3.1424985320823;
        Thu, 26 Feb 2015 13:15:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.80 with SMTP id f77ls349043iod.39.gmail; Thu, 26 Feb
 2015 13:15:20 -0800 (PST)
X-Received: by 10.43.6.5 with SMTP id oi5mr10282168icb.11.1424985320683;
        Thu, 26 Feb 2015 13:15:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si263758pdb.1.2015.02.26.13.15.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:15:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 67D49B50;
	Thu, 26 Feb 2015 21:15:20 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:15:20 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: removed trailing whitespace
 in dgnc
Message-ID: <20150226211520.GA30188@kroah.com>
References: <1424551997-5909-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424551997-5909-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 10:53:17PM +0200, Yeliz Taneroglu wrote:
> Removed all trailing whitespace in
> "drivers/staging/dgnc/dgnc_sysfs.c"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

This patch fails to apply :(

