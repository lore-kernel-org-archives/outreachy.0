X-GM-THRID: 10253217300480
X-Received: by 10.42.25.79 with SMTP id z15mr7703079icb.33.1428141814624;
        Sat, 04 Apr 2015 03:03:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.222.135 with SMTP id qm7ls599405obc.36.gmail; Sat, 04 Apr
 2015 03:03:34 -0700 (PDT)
X-Received: by 10.182.118.201 with SMTP id ko9mr7700113obb.12.1428141814156;
        Sat, 04 Apr 2015 03:03:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si1209372pbd.1.2015.04.04.03.03.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2015 03:03:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 474BA268;
	Sat,  4 Apr 2015 10:03:33 +0000 (UTC)
Date: Sat, 4 Apr 2015 12:03:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] Staging: sm750fb: Fix C99
 Comments
Message-ID: <20150404100331.GA31361@kroah.com>
References: <20150402172518.GA7241@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150402172518.GA7241@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Apr 02, 2015 at 10:55:18PM +0530, Amitoj Kaur Chawla wrote:
> Used C89 instead of C99 Comment and removed C99 comments performing prints only.
> Problem found using checkpatch.pl
> ERROR: do not use C99 // comments
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes made in v3:
>         -Fixed commit message
> 
>  drivers/staging/sm750fb/ddk750_chip.c | 10 ++--------
>  ret.ou                                |  0

You created an empty file here :(

Please don't do that, I have to go back and delete this patch now,
hopefully nothing else breaks...


