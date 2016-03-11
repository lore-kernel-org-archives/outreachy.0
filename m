X-GM-THRID: 6258949498826915840
X-Received: by 10.140.88.139 with SMTP id t11mr7739599qgd.21.1457716089415;
        Fri, 11 Mar 2016 09:08:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.130 with SMTP id p124ls1154494iop.68.gmail; Fri, 11 Mar
 2016 09:08:08 -0800 (PST)
X-Received: by 10.66.224.38 with SMTP id qz6mr6245870pac.43.1457716088694;
        Fri, 11 Mar 2016 09:08:08 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1182474pab.2.2016.03.11.09.08.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 555ACCFB;
	Fri, 11 Mar 2016 17:08:08 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:08:08 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use
 list_first_entry_or_null
Message-ID: <20160311170808.GA11560@kroah.com>
References: <1457275178-9647-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1457275178-9647-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 06, 2016 at 08:09:38PM +0530, Bhumika Goyal wrote:
> This patch replaces list_empty and list_entry with
> list_first_entry_or_null as it makes the code cleare to read. Also removed the 
> {} around if-statement.
> Done using coccinelle:
> 
> @@
> expression e1,e2;
> statement S;
> @@
> - if(!list_empty(...)){
>   e2=
> - list_entry(e1.next,
> + list_first_entry_or_null(&e1,
>   ...);
> + if(e2){
> ...
> }
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/genops.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Does not apply to my tree :(


