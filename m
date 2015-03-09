X-GM-THRID: 6598140362752
X-Received: by 10.236.11.196 with SMTP id 44mr26916061yhx.31.1425903606291;
        Mon, 09 Mar 2015 05:20:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.137 with SMTP id k9ls1295866qge.6.gmail; Mon, 09 Mar
 2015 05:20:06 -0700 (PDT)
X-Received: by 10.53.9.103 with SMTP id dr7mr1837291vdd.5.1425903606134;
        Mon, 09 Mar 2015 05:20:06 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si2619955pdc.0.2015.03.09.05.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 25747944;
	Mon,  9 Mar 2015 12:20:05 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:20:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] Staging: rtl8188eu: Remove
 redundant local variable
Message-ID: <20150309122002.GA20677@kroah.com>
References: <1425751228-9804-1-git-send-email-somyaanand214@gmail.com>
 <1425751228-9804-3-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425751228-9804-3-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 07, 2015 at 11:30:28PM +0530, Somya Anand wrote:
> This patch removes a redundant variable "val" and adds
> inline return statements. It also adds a default case
> to the switch statement which returns 0 to keep the logic
> intact.
> 
> It also removes a redundant variable "inx" and adds inline
> return statements.
> 
> This issue is identified by the following coccinelle script.
> @@
> expression ret;
> identifier f;
> @@
> 
> -ret =
> +return
>      f(...);
> -return ret;
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 82 +++++++++-----------------

This patch also does not apply :(

Please refresh your patches against my latest staging-testing branch of
staging.git on git.kernel.org and resend them.

thanks,

greg k-h

