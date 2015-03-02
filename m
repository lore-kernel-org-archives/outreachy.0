X-GM-THRID: 4799843008512
X-Received: by 10.236.105.137 with SMTP id k9mr23833950yhg.14.1425256657228;
        Sun, 01 Mar 2015 16:37:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.162 with SMTP id d2ls811955igo.25.canary; Sun, 01 Mar
 2015 16:37:37 -0800 (PST)
X-Received: by 10.66.237.140 with SMTP id vc12mr24648281pac.44.1425256657074;
        Sun, 01 Mar 2015 16:37:37 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si1316165pbc.0.2015.03.01.16.37.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:37:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CD82D475;
	Mon,  2 Mar 2015 00:37:36 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:37:36 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: Remove spaces at
 the start of a line
Message-ID: <20150302003736.GC20461@kroah.com>
References: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
 <1425072356-1314-4-git-send-email-aysemelikeyurtoglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425072356-1314-4-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:25:56PM +0200, Melike Yurtoglu wrote:
> WARNING: please, no spaces at the start of a line
> That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
> index a66dc3c..d28ce28 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
> +++ b/drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h
> @@ -222,7 +222,7 @@ struct ptlrpc_nrs_policy *nrs_request_policy(struct ptlrpc_nrs_request *nrq)
>   * a separating space character.
>   */
>  #define LPROCFS_NRS_WR_QUANTUM_MAX_CMD					       \
> - sizeof(NRS_LPROCFS_QUANTUM_NAME_REG __stringify(LPROCFS_NRS_QUANTUM_MAX) " "  \
> +sizeof(NRS_LPROCFS_QUANTUM_NAME_REG __stringify(LPROCFS_NRS_QUANTUM_MAX) " "  \

No the space is right, but it really should be a tab.

Deleting it is incorrect, sorry.

greg k-h

