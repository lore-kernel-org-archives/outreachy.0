X-GM-THRID: 6204428634570096640
X-Received: by 10.67.4.38 with SMTP id cb6mr15160764pad.44.1444715235920;
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.197 with SMTP id i5ls1489128obk.34.gmail; Mon, 12 Oct
 2015 22:47:15 -0700 (PDT)
X-Received: by 10.182.128.101 with SMTP id nn5mr27358695obb.31.1444715235655;
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si108761pac.2.2015.10.12.22.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (24-104-73-12-ip-static.hfc.comcastbusiness.net [24.104.73.12])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4E1F1282;
	Tue, 13 Oct 2015 05:47:15 +0000 (UTC)
Date: Mon, 12 Oct 2015 21:01:51 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: wilc1000:
 host_interface: Use kmemdup instead of kmalloc and memcpy
Message-ID: <20151013040151.GA11775@kroah.com>
References: <1444581097-19417-1-git-send-email-shraddha.6596@gmail.com>
 <1444581097-19417-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444581097-19417-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 11, 2015 at 10:01:36PM +0530, Shraddha Barke wrote:
> Replace kmalloc followed by memcpy with kmemdup
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

This patch no longer applies to my staging-testing branch :(

