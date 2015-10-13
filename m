X-GM-THRID: 6203640047549284352
X-Received: by 10.140.146.134 with SMTP id 128mr27340912qhs.12.1444715235454;
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.11 with SMTP id h11ls424975iod.11.gmail; Mon, 12 Oct
 2015 22:47:15 -0700 (PDT)
X-Received: by 10.107.166.136 with SMTP id p130mr26983069ioe.33.1444715235135;
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si118095pbb.2.2015.10.12.22.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 22:47:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (24-104-73-12-ip-static.hfc.comcastbusiness.net [24.104.73.12])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BDABE279;
	Tue, 13 Oct 2015 05:47:14 +0000 (UTC)
Date: Mon, 12 Oct 2015 21:00:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Use kzalloc
 instead of kmalloc and memset
Message-ID: <20151013040040.GA4400@kroah.com>
References: <1444397492-6487-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444397492-6487-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 09, 2015 at 07:01:32PM +0530, Shraddha Barke wrote:
> Replace kmalloc and memset with a single call to kzalloc.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)

This patch no longer applies to my staging-testing branch :(

