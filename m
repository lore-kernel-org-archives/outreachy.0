X-GM-THRID: 4598862446592
X-Received: by 10.182.126.12 with SMTP id mu12mr25971225obb.13.1425257751624;
        Sun, 01 Mar 2015 16:55:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.7 with SMTP id 7ls1618102qgk.86.gmail; Sun, 01 Mar 2015
 16:55:51 -0800 (PST)
X-Received: by 10.236.105.137 with SMTP id k9mr23886798yhg.14.1425257751479;
        Sun, 01 Mar 2015 16:55:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1321225pdb.1.2015.03.01.16.55.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 10F554D3;
	Mon,  2 Mar 2015 00:55:51 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:55:50 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] Staging: lustre: Remove
 unnecessary else after return
Message-ID: <20150302005550.GA3654@kroah.com>
References: <20150301230850.GB10671@kroah.com>
 <1425252224-11686-1-git-send-email-hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425252224-11686-1-git-send-email-hamohammed.sa@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 02:23:44AM +0300, Haneen Mohammed wrote:
> This patch fix else is not usefull after break or return.
> Moves declaration to top addressing compiler warning:
> "ISO C90 forbids mixed declarations and code"
> Rename similar named variable in the function.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c | 28 ++++++++++++-------------
>  1 file changed, 13 insertions(+), 15 deletions(-)

What changed from your previous version?

Always be specific, don't let me guess :)

