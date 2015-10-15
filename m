X-GM-THRID: 6205602461234757632
X-Received: by 10.50.82.98 with SMTP id h2mr6689309igy.1.1444891556057;
        Wed, 14 Oct 2015 23:45:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.11 with SMTP id n11ls252813ion.59.gmail; Wed, 14 Oct
 2015 23:45:55 -0700 (PDT)
X-Received: by 10.66.124.131 with SMTP id mi3mr6381143pab.32.1444891555687;
        Wed, 14 Oct 2015 23:45:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si1239128pbc.1.2015.10.14.23.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 23:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so78327634pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 23:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+OIiAKpf7e70/f6sTaMR4gnREXrj+VbcPXEtrHBJK2s=;
        b=PvQh8KY26xz55W5BaIHO2JVqVGHy4WYBnrV1pEWG1yGGY9bCGqS+jlhxZQrjSKbO+9
         b9Q/y8C4auhFfcojSN1KfNEAVRUP/uANW02FLPrW3gmlD3yYwWsn+TWpKhKf+EJCy1d1
         snJOp22OCQmHP+shDRoIsMzwvPrYPch5mX2Efk0XWGxBmchUy2hhVKeMYKdRdN+XfRNG
         EOsQkD8Xih3AxoozU3OT+0uPtmMFWesj4h0y+N8EQ5dc1R2V+B7PCm0jLGyVL/81x1TN
         n7NLDuAPhNz4jc5fc3uBxpotR6q+AFQMTBCPEUUK3VNKIYzoCENCZsrKkOq7EI4zYKUV
         +UzQ==
X-Received: by 10.66.219.227 with SMTP id pr3mr8394621pac.33.1444891555569;
        Wed, 14 Oct 2015 23:45:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.135.176])
        by smtp.gmail.com with ESMTPSA id dd4sm13238702pbb.52.2015.10.14.23.45.53
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 23:45:55 -0700 (PDT)
Date: Thu, 15 Oct 2015 12:15:46 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix lines over 80
 characters
Message-ID: <20151015064546.GA3134@sudip-pc>
References: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 14, 2015 at 11:26:15PM +0300, Cristina Moraru wrote:
> Fix 'line over 80 characters' checkpatch.pl
> warnings
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 58 ++++++++++++++++++++++++++------------
>  1 file changed, 40 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index c61884c..ce7cd9b 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -61,7 +61,9 @@
>  #define PORT_NUM(dev)	((dev) & 0x7f)
>  #define IS_PRINT(dev)	(((dev) & 0xff) >= 0x80)
>  
> -/* MAX number of stop characters we will send when our read queue is getting full */
> +/* MAX number of stop characters we will send
> + * when our read queue is getting full
> + */
>  #define MAX_STOPS_SENT 5
>  
>  /* 4 extra for alignment play space */
> @@ -165,12 +167,15 @@ struct dgnc_board {
>  	uint		maxports;	/* MAX ports this board can handle */
>  	unsigned char	dvid;		/* Board specific device id */
>  	unsigned char	vpd[128];	/* VPD of board, if found */
> -	unsigned char	serial_num[20];	/* Serial number of board, if found in VPD */
> +	unsigned char	serial_num[20];	/* Serial number of board,
> +					 * if found in VPD
> +					 */
>  
>  	spinlock_t	bd_lock;	/* Used to protect board */
>  
> -	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet and
> -					 * the interrupt routine from each other.
> +	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet
> +					 * and the interrupt routine from each
> +					 * other.
>  					 */
This is not the multiline comment style. It should be:

/*
 * Used to protect the poller tasklet
 * and the interrupt routine from each
 * other.
 */

regards
sudip

