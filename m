X-GM-THRID: 6261499450444742656
X-Received: by 10.107.165.213 with SMTP id o204mr28726116ioe.10.1458681349098;
        Tue, 22 Mar 2016 14:15:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.103 with SMTP id s100ls451289ioe.62.gmail; Tue, 22 Mar
 2016 14:15:48 -0700 (PDT)
X-Received: by 10.98.89.143 with SMTP id k15mr28579873pfj.14.1458681348632;
        Tue, 22 Mar 2016 14:15:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si5164263pab.0.2016.03.22.14.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 14:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 215CC74;
	Tue, 22 Mar 2016 21:15:48 +0000 (UTC)
Date: Tue, 22 Mar 2016 17:15:46 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: wilc1000: Fix lines
 over 80 characters
Message-ID: <20160322211546.GA10672@kroah.com>
References: <cover.1458649426.git.anchalj109@gmail.com>
 <f480a579aa22d0a0b4d74d843a5b8d33686324fe.1458649426.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f480a579aa22d0a0b4d74d843a5b8d33686324fe.1458649426.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 22, 2016 at 06:03:49PM +0530, Anchal Jain wrote:
> Break lines so that they do not exceed 80
> characters. Problem found using checkpatch.
> 
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> changes in v3:
> - Make subject clear 
>  drivers/staging/wilc1000/linux_mon.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)

This patch didn't apply at all to my tree :(

