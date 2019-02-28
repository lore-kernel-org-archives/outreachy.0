X-GM-THRID: 6662791794901647360
X-Received: by 2002:a9f:2f17:: with SMTP id x23mr5146361uaj.24.1551341064124;
        Thu, 28 Feb 2019 00:04:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls1031856vsc.2.gmail; Thu, 28 Feb
 2019 00:04:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbvUPLyriuMuZEdT+aIsmvycrpDg+hdkI3T2niKbnzDMdpCaQmENSvADXQWwGrxo90TDEhh
X-Received: by 2002:a05:6102:446:: with SMTP id e6mr4770401vsq.40.1551341063459;
        Thu, 28 Feb 2019 00:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551341063; cv=none;
        d=google.com; s=arc-20160816;
        b=S0LPGA0aXbFTidbrdZwrowwaKn7cdOcrRWghn+FnLEyjiyEfXWFiSbvJan2qhZEVL3
         zXDZqFm2/IBt6dGvI9fWRSn49azfdN+1/UNL6W4xF0R46sOPTCjUCfaLj9/somLCuBPC
         kDtYox0TnInVMEJjAnn2Yq0yLc8m5xXaiczUFYSvVsW13SYetNpbn1l9oQHtatwp41Ll
         oRreea4+vP1yNsekicpE33/UcTiFyDC7BoFpb5hFPFh1UhxszDGpQnWS6bMxRsZnOf3A
         iWLWL6i1fF+hOv04YD3yFRE1M5xLkj3+xDDzlxWex2/gMHsuAjfGSngf+RDsmqi8iEjZ
         xt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=07FexRpSHSmkM38a8qXZ0zR5LbQZdVpU9Lmry/ZEwY8=;
        b=emIBnHNXiCGiozhcZatzbVLE/ebC1C4qyni+JfsXxy2SBA02VMAgRrdIgxcqDBlUeR
         lxX3IcLzbZ6AQnQwD3xiT7OBy6JuBtg+zbDJa+o0P3NzDSekGVs1x4HDB1SLrr57Avmw
         5xPnmmy4B3dU2PLeYxh6ehr5K10PSiho9xbe0QiOzMQunyMguaORy1Dv4Nf88TjO8XlS
         3Xqp1lBnGi0ix2y5pnOpKFbvBntKFGHd3sm/jhtYAGrPRY66yTvt9vY/upc8U0c/LaKk
         j+BeOzlRfOuKei72cDIjKexO2eJi6A68+fywQbMxQ91OPSwVhgWIH41efETsVk3AKJnz
         UcqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Exx7fCO8;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si578787vsp.2.2019.02.28.00.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 00:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Exx7fCO8;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DFAFE2171F;
	Thu, 28 Feb 2019 08:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551341062;
	bh=rcM1wWTcUaItMjhN2fK6YFOQdhXChzK1E5BdJs2LAaU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Exx7fCO8ZD7X4pjRM3sUeI83+jL2jeC3ApMXU1Ssd0QvbEoyFy5SlrkmWF0RR/+qP
	 Qplu5fw0aNGqgkrdVlewIX/n+BJ6nv9LT6aUzyhh7DLBNP/SwczmTBvaPe4LbRtE7C
	 eYkawxYu95n76XOzGH+LALohRLZgor4iiYb1p1/Q=
Date: Thu, 28 Feb 2019 09:04:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] Staging: vt6655: Align a static function declaration
Message-ID: <20190228080419.GA1014@kroah.com>
References: <20190227211456.10231-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227211456.10231-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 03:14:56PM -0600, Madhumitha Prabakaran wrote:
> Align function arguments and function return type to improve
> readability.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> ---
> Changes in v4
> - Commit log and code diff is matching
> 
> Changes in v3
> - Included driver name in subject line
> 
> Changes in v2
> - Improved alignment of function declaration
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 5c1034dec193..6ecbe925026d 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -61,7 +61,8 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
>  /*---------------------  Static Functions  --------------------------*/
>  
>  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> -				       unsigned char *pbyTxRate, unsigned char *pbyRsvTime);
> +				       unsigned char *pbyTxRate,
> +				       unsigned char *pbyRsvTime);
>  

This patch does not apply to my tree :(

