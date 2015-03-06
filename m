X-GM-THRID: 6656517734400
X-Received: by 10.140.201.202 with SMTP id w193mr17823248qha.7.1425725780718;
        Sat, 07 Mar 2015 02:56:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.100 with SMTP id j97ls505997ioo.101.gmail; Sat, 07 Mar
 2015 02:56:20 -0800 (PST)
X-Received: by 10.68.65.8 with SMTP id t8mr17784778pbs.1.1425725780514;
        Sat, 07 Mar 2015 02:56:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id xj4si1686890pbc.2.2015.03.07.02.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6BFFF990;
	Sat,  7 Mar 2015 10:56:19 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:41:43 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: fix space prohibited
 before that ','
Message-ID: <20150306234143.GB19870@kroah.com>
References: <1425496623-10408-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425496623-10408-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 04, 2015 at 09:17:03PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the following checkpatch.pl error:
> space prohibited before that ','
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 07ce3fd..d98ff2f 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
>  };
>  static const unsigned short wFB_Opt1[2][5] = {
>  	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, // fallback_rate0
> -	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, // fallback_rate1
> +	{RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, // fallback_rate1

Now things aren't lined up "pretty", there is a better way to fix this
up...


