X-GM-THRID: 6201725617113661440
X-Received: by 10.129.134.129 with SMTP id w123mr20524267ywf.17.1443953662867;
        Sun, 04 Oct 2015 03:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls2176426qge.6.gmail; Sun, 04 Oct
 2015 03:14:22 -0700 (PDT)
X-Received: by 10.140.233.142 with SMTP id e136mr20927188qhc.13.1443953662300;
        Sun, 04 Oct 2015 03:14:22 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j22si1952208ywg.2.2015.10.04.03.14.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 03:14:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9531516DD;
	Sun,  4 Oct 2015 10:14:20 +0000 (UTC)
Date: Sun, 4 Oct 2015 11:14:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: sm750fb: Remove space
 before paranthesis
Message-ID: <20151004101417.GA23786@kroah.com>
References: <20151004094242.GA4089@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151004094242.GA4089@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 04, 2015 at 03:12:42PM +0530, Amitoj Kaur Chawla wrote:
> Remove space before paranthesis ')'. Problem found using
> checkpatch.pl
> ERROR: space prohibited before that close parenthesis ')'
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         - Correct the commit message

You just sent v2 _before_ you sent v1?

And both of them don't apply to my tree, what is going on here?

totally confused,

greg k-h

