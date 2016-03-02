X-GM-THRID: 6255876964906696704
X-Received: by 10.112.170.7 with SMTP id ai7mr3137102lbc.1.1456935955407;
        Wed, 02 Mar 2016 08:25:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls415682wmu.49.gmail; Wed, 02 Mar
 2016 08:25:55 -0800 (PST)
X-Received: by 10.194.92.232 with SMTP id cp8mr1347757wjb.6.1456935955043;
        Wed, 02 Mar 2016 08:25:55 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c140si250132wmh.1.2016.03.02.08.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B4D91DBA;
	Wed,  2 Mar 2016 16:25:53 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:53 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use
 seq_puts/seq_putc
Message-ID: <20160302162553.GN987@kroah.com>
References: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 27, 2016 at 01:27:20PM +0530, Bhumika Goyal wrote:
> This patch converts the seq_printf output with constant strings to
> seq_puts and also use seq_putc for seq_printf(...,"\n").
> Done using coccinelle:
> 
> @@
> identifier a;
> constant b;
> @@
> (
> - seq_printf(a,"\n");
> + seq_putc(a,'\n');
> |
> - seq_printf(a,b);
> + seq_puts(a,b);
> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 10 +++++-----
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17 ++++++-----------
>  2 files changed, 11 insertions(+), 16 deletions(-)

Doesn't apply to my tree :(

