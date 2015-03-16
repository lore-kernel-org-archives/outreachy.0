X-GM-THRID: 7921078370304
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8823c9a19443c648
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.157.129 with SMTP id wm1mr63935607pab.15.1426519268461;
        Mon, 16 Mar 2015 08:21:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.34.138 with SMTP id z10ls1229790obi.10.gmail; Mon, 16 Mar
 2015 08:21:08 -0700 (PDT)
X-Received: by 10.182.22.138 with SMTP id d10mr61286023obf.37.1426519268217;
        Mon, 16 Mar 2015 08:21:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si1982414pac.1.2015.03.16.08.21.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B2AEACE;
	Mon, 16 Mar 2015 15:21:07 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:21:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: Remove unecessary
 return value
Message-ID: <20150316152105.GA471@kroah.com>
References: <20150312170630.GA30999@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150312170630.GA30999@Inspiron>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 07:06:30PM +0200, Cristina Opriceana wrote:
> Change _SUCCESS return value for function loadparam to void as it never
> changes and it's also never used when calling the function.
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/os_intfs.c | 3 +--
>  drivers/staging/rtl8712/os_intfs.c          | 5 ++---
>  drivers/staging/rtl8723au/os_dep/os_intfs.c | 3 +--
>  3 files changed, 4 insertions(+), 7 deletions(-)

This does not apply to my tree properly :(

