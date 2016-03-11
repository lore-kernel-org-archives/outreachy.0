X-GM-THRID: 6256332638894686208
X-Received: by 10.129.108.3 with SMTP id h3mr9235097ywc.31.1457735545050;
        Fri, 11 Mar 2016 14:32:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls2515713qge.39.gmail; Fri, 11 Mar
 2016 14:32:24 -0800 (PST)
X-Received: by 10.129.131.206 with SMTP id t197mr8694478ywf.50.1457735544438;
        Fri, 11 Mar 2016 14:32:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1617676pfb.1.2016.03.11.14.32.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 14:32:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 25256A1A;
	Fri, 11 Mar 2016 22:32:24 +0000 (UTC)
Date: Fri, 11 Mar 2016 14:32:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723: core: rtw_recv.c:
 Replace container_of with list_entry
Message-ID: <20160311223223.GA31194@kroah.com>
References: <20160228182504.GA4738@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228182504.GA4738@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 01:25:05PM -0500, Janani Ravichandran wrote:
> Use list_entry() instead of container_of() with linkedlist nodes.
> Semantic patch used:
> 
> @a exists@
> identifier var;
> struct list_head *ptr;
> @@
>   
>   var =
> - container_of
> + list_entry
>   (ptr, ...);
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_recv.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Doesn't apply to my tree :(

