X-GM-THRID: 2110375591936
X-Received: by 10.42.30.9 with SMTP id t9mr8996984icc.8.1424975480159;
        Thu, 26 Feb 2015 10:31:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.234 with SMTP id nr10ls110270obb.66.gmail; Thu, 26 Feb
 2015 10:31:19 -0800 (PST)
X-Received: by 10.182.66.40 with SMTP id c8mr7370103obt.36.1424975479976;
        Thu, 26 Feb 2015 10:31:19 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si192420pbc.2.2015.02.26.10.31.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:31:19 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AA1DABB2;
	Thu, 26 Feb 2015 18:31:19 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:31:19 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: { retrieved upper row
Message-ID: <20150226183119.GA12697@kroah.com>
References: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424550280-22040-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 10:24:40PM +0200, Hatice ERT�RK wrote:
> That open brace { should be on the previous line.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index a079640..e77a5f6 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -68,8 +68,8 @@
>  
>  /*---------------------  Static Variables  --------------------------*/
>  
> -static const unsigned short cwRXBCNTSFOff[MAX_RATE] =
> -{17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
> +static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> +17, 17, 17, 17, 34, 23, 17, 11, 8, 5, 4, 3};
>  
>  /*---------------------  Static Functions  --------------------------*/
>  

This too doesn't apply :(

