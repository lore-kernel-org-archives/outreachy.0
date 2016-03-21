X-GM-THRID: 6261067908671078400
X-Received: by 10.157.44.8 with SMTP id f8mr2124702otb.45.1458588252917;
        Mon, 21 Mar 2016 12:24:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.234 with SMTP id o97ls4083794qge.31.gmail; Mon, 21 Mar
 2016 12:24:08 -0700 (PDT)
X-Received: by 10.140.176.6 with SMTP id w6mr13324732qhw.23.1458588248411;
        Mon, 21 Mar 2016 12:24:08 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si3285082pab.2.2016.03.21.12.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 12:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-138-182-192.hsd1.ma.comcast.net [50.138.182.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C03E72C;
	Mon, 21 Mar 2016 19:24:07 +0000 (UTC)
Date: Mon, 21 Mar 2016 15:24:06 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Tanvi Surana <tanvisurana20@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: modified block
 comments
Message-ID: <20160321192406.GA4195@kroah.com>
References: <1457768460-5830-1-git-send-email-tanvisurana20@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1457768460-5830-1-git-send-email-tanvisurana20@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 01:11:00PM +0530, Tanvi Surana wrote:
> Fix checpatch.pl errors and warnings in lustre
> WARNING: Block comments use * on subsequent lines
> 
> Signed-Off-By: Tanvi Surana <tanvisurana20@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/xattr.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)

Patch does not apply at all :(

