X-GM-THRID: 3543146692608
X-Received: by 10.43.1.71 with SMTP id np7mr20419264icb.15.1425903287712;
        Mon, 09 Mar 2015 05:14:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.107.38 with SMTP id gz6ls1629635igb.35.canary; Mon, 09 Mar
 2015 05:14:47 -0700 (PDT)
X-Received: by 10.66.197.170 with SMTP id iv10mr2222070pac.25.1425903287493;
        Mon, 09 Mar 2015 05:14:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si2609688pdb.1.2015.03.09.05.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id ECE4E13;
	Mon,  9 Mar 2015 12:14:46 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:14:43 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8188eu: Eliminate
 use of _set_timer
Message-ID: <20150309121443.GA6934@kroah.com>
References: <cover.1425714259.git.vthakkar1994@gmail.com>
 <b993ec823a6d73cc6ba50fc36cc9fd13e8b92ea9.1425714259.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b993ec823a6d73cc6ba50fc36cc9fd13e8b92ea9.1425714259.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 07, 2015 at 01:21:37PM +0530, Vaishali Thakkar wrote:
> This patch introduces the use of API function mod_timer
> instead of driver specific function _set_timer as it is
> a more efficient and standard way to update the expire
> field of an active timer. Also, definition of function
> _set_timer is removed as it is no longer needed after
> this change.
> 
> Here, these cases are handled using Coccinelle and
> semantic patch used for this is as follows:
> 
> @@ expression x; expression y;@@
> 
> - _set_timer (&x, y);
> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> v1 : Here, this patch has some line over 80 characters as
>      limiting them to 80 characters does not make code look
>      good and readable.
> v2 : Change commit log
>    - Redo the patch against staging-testing
> v3 : No change but as patch is in series with another patch,
>      sending this as a new version.

You obviously didn't even test-build this patch, otherwise you wouldn't
have submitted it :(

Hint, _ALWAYS_ test build patches, to break the build is not allowed at
all.

thanks,

greg k-h

