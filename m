X-GM-THRID: 6210715493943214080
X-Received: by 10.107.35.135 with SMTP id j129mr548803ioj.27.1446072946067;
        Wed, 28 Oct 2015 15:55:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.118.193 with SMTP id ko1ls21581obb.79.gmail; Wed, 28 Oct
 2015 15:55:45 -0700 (PDT)
X-Received: by 10.182.236.4 with SMTP id uq4mr20140036obc.3.1446072945636;
        Wed, 28 Oct 2015 15:55:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si5128112pbb.0.2015.10.28.15.55.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 15:55:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A2E34721;
	Wed, 28 Oct 2015 22:55:44 +0000 (UTC)
Date: Thu, 29 Oct 2015 07:55:41 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: rtl871x_mp_ioctl:
 Remove unnecessary variables
Message-ID: <20151028225541.GA31852@kroah.com>
References: <20151028150800.GA17624@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151028150800.GA17624@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 28, 2015 at 08:38:00PM +0530, Amitoj Kaur Chawla wrote:
> This patch removes the status variable from multiple functions since
> it is not required and can be replaced by single line of code.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 38 +++++++++++-------------------
>  1 file changed, 14 insertions(+), 24 deletions(-)

This patch didn't apply at all to my tree :(

