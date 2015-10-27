X-GM-THRID: 6210026226543755264
X-Received: by 10.13.251.194 with SMTP id l185mr18681126ywf.47.1445933216489;
        Tue, 27 Oct 2015 01:06:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.197 with SMTP id re5ls1234239obc.38.gmail; Tue, 27 Oct
 2015 01:06:56 -0700 (PDT)
X-Received: by 10.182.120.3 with SMTP id ky3mr32624408obb.6.1445933216198;
        Tue, 27 Oct 2015 01:06:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si3941447pbc.1.2015.10.27.01.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.250])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DAB5A92;
	Tue, 27 Oct 2015 08:06:54 +0000 (UTC)
Date: Tue, 27 Oct 2015 17:06:12 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unneeded
 function
Message-ID: <20151027080612.GA11046@kroah.com>
References: <20151026183318.GA25808@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151026183318.GA25808@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 27, 2015 at 12:03:18AM +0530, Amitoj Kaur Chawla wrote:
> The function hw_sm750_getVMSize() had code that was replaceable by a single
> line. It was being called only once so replaced that call with the
> single line code and removed the extraneous function. 
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_hw.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

This no longer applies due to patches that someone else sent right
before you did, sorry :(

greg k-h

