X-GM-THRID: 7018941118564794368
X-Received: by 2002:ac8:7644:: with SMTP id i4mr29054695qtr.154.1634552982612;
        Mon, 18 Oct 2021 03:29:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7005:: with SMTP id x5ls8540099qtm.11.gmail; Mon, 18 Oct
 2021 03:29:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPxKKQ3pXlE/Z3z99zy9rH5vKgTUpsAo76cWzhMkfy8taGaER/DKSZ/vxlJ36lvhMIh1pj
X-Received: by 2002:ac8:19:: with SMTP id a25mr28628424qtg.360.1634552981755;
        Mon, 18 Oct 2021 03:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634552981; cv=none;
        d=google.com; s=arc-20160816;
        b=p9pfzVvOTxGyYN2LCJKwuwYAESpHTjPmwfc26ggk1hnuOSzw6EkQ7UoXAXQNEIuIGE
         uW0NdCv/4lURIZRbeEoBzFrMmfYcHquExlI4Tld88N9Qgm2LBIHW4jHpprjq1z91HEK9
         wtguS2G2mJKNaT78QPetYbHe335Qebl9y+pIGs2IE2NAGpCCZ8OaK+Ppl5G6ovODBqxZ
         O2+dL5e0r91WxGDdx8ntc1JG5+SBJyIkeG6bWb7gXiRpLKdtM2Nxgm6thUA/msu/im0Q
         5UDoo/qMckdaW8OJ2kaK6t2LUeGKabzYTCvFfW01zPkve+hRiCKc4LL7BiLhv7Wde1fp
         d3qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oppL8oBEHZz+BpEPq5bPDNP6b3tojNeQMWX1f0XzDWo=;
        b=0MvViYMnFjYLxDt2L7SB9MB359uJikedM1xuatp7RXMYXTOyk2RiDtL4em5+0Kco3e
         86brSo+vezv/S37OqNYxfSvIE5yeEultMabO4e8ZGGSeEtQBnwlmP03YqxHutBJrHC/i
         xh5fU/WMiUVt/mgf7hNCUGmqpc8x8t5frbBe08nJgQxLyRD91FJzj+eZNMd14m545Ypl
         7Zr3g8valcQFSc7o7EkMi/pQRfP8eZwF7ZMSNAeZkRrz9MqF3/MCqdr+2ZnXu0h3Bn66
         Pc2WgapX7dYSYvg5/ScdFwkT9KwZ9bVZhb3i80soiUvWwOafHdzFIfuk+wFbknU3IUh/
         vF9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CePeyJnz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si48484qkn.4.2021.10.18.03.29.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 03:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=CePeyJnz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 835AA6103B;
	Mon, 18 Oct 2021 10:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634552981;
	bh=Jcbd/etLUj/HfkH8N0e/t0Az9xZmyi7KDPMq9txQmdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CePeyJnzwLvCgD5QZ+i5f9z05hRqHI6cxEW4cAwCrO7qF3m/0SEk9fF959Jb0KS4K
	 /BmqY9yR84VjPXWaI+9B9fhnzWgIHSOIvKzo6crbdRxq/0/k6UDSoLjfnv+UJdkcWW
	 iH0TI2MiZ3WKWq7qS2MPc/TnrH8igaptyCMwaypk=
Date: Mon, 18 Oct 2021 12:29:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: vt6655: Rename byPreambleType field
Message-ID: <YW1Mkse3AgUsyvWx@kroah.com>
References: <20211018101713.3599-1-karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211018101713.3599-1-karolinadrobnik@gmail.com>

On Mon, Oct 18, 2021 at 11:17:13AM +0100, Karolina Drobnik wrote:
> Drop Hungarian notation prefix in `byPreambleType` member of
> struct vnt_private. Change it to use snake case.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byPreambleType>
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    |  2 +-
>  drivers/staging/vt6655/device.h      |  2 +-
>  drivers/staging/vt6655/device_main.c |  8 ++---
>  drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
>  4 files changed, 31 insertions(+), 31 deletions(-)
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/SubmittingPatches for what needs to be done
  here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

