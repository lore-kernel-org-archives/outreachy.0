X-GM-THRID: 6329385396003143680
X-Received: by 10.98.205.131 with SMTP id o125mr14991487pfg.12.1473675886902;
        Mon, 12 Sep 2016 03:24:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.38 with SMTP id n35ls10930875ota.27.gmail; Mon, 12 Sep
 2016 03:24:46 -0700 (PDT)
X-Received: by 10.129.105.6 with SMTP id e6mr14135953ywc.8.1473675886241;
        Mon, 12 Sep 2016 03:24:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 142si2288531pfx.2.2016.09.12.03.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 03:24:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 552E694A;
	Mon, 12 Sep 2016 10:24:45 +0000 (UTC)
Date: Mon, 12 Sep 2016 12:24:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unnecessary
 blank line
Message-ID: <20160912102450.GA13329@kroah.com>
References: <20160912100728.GA4810@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912100728.GA4810@toblerone>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 12, 2016 at 03:37:37PM +0530, Rehas Sachdeva wrote:
> This patch fixes the checkpatch.pl warning:
> Blank lines aren't necessary before a close brace '}'
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 1 -
>  1 file changed, 1 deletion(-)

Nice job, but you forgot to also cc: the maintainer of this file.

Oh, that's me, hm, nevermind...

now applied, nice work as the first submitted patch of the application
process, and also the first accepted one into the kernel tree :)

greg k-h

