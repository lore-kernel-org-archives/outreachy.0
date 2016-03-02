X-GM-THRID: 6255862432468566016
X-Received: by 10.28.195.131 with SMTP id t125mr120154wmf.5.1456935953875;
        Wed, 02 Mar 2016 08:25:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.206 with SMTP id a197ls809416lfa.83.gmail; Wed, 02 Mar
 2016 08:25:53 -0800 (PST)
X-Received: by 10.112.157.164 with SMTP id wn4mr3215190lbb.5.1456935952981;
        Wed, 02 Mar 2016 08:25:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h73si208530wme.0.2016.03.02.08.25.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 97DD7DBA;
	Wed,  2 Mar 2016 16:25:51 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use seq_puts instead
 of seq_printf
Message-ID: <20160302162551.GM987@kroah.com>
References: <1456556443-5809-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456556443-5809-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 27, 2016 at 12:30:43PM +0530, Bhumika Goyal wrote:
> This patch converts the seq_printf output with constant strings to
> seq_puts.
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
>  drivers/staging/lustre/lustre/llite/lproc_llite.c | 14 +++++++-------
>  drivers/staging/lustre/lustre/mgc/mgc_request.c   |  2 +-
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 

Doesn't apply to my tree :(

