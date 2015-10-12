X-GM-THRID: 6204103069755506688
X-Received: by 10.182.20.195 with SMTP id p3mr23802215obe.28.1444643653334;
        Mon, 12 Oct 2015 02:54:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.149 with SMTP id g143ls1464852ioe.30.gmail; Mon, 12
 Oct 2015 02:54:13 -0700 (PDT)
X-Received: by 10.66.144.164 with SMTP id sn4mr24578774pab.9.1444643652979;
        Mon, 12 Oct 2015 02:54:12 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si1320484pab.1.2015.10.12.02.54.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 02:54:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ve7so92182731pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 02:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OdVnwh2f+Z6x0oJBQQkFQCWm9DjcdRPqyuKxjEOZGGY=;
        b=G3mhU2AO2+VNEx6lAV7H7SaiupwDs8oK4N1XBBh1ZODfEtmvRgh+bpcjkdHD3R669T
         VbGXZ4Rl1GYUPoW0aL1TJUvTGh1EodE15E5oXeSXQpnBgPdoLxj0lhncI9pTIlX1AT2f
         syizgI78D+OYSkEOGLVMdTqzZr54ESfkmADvDJDueI9bt9pNwGlAepYVo5opT0uPX5+J
         yLR54jO/jcULDWfiT5cLHrq/dkAot2fwq/ncYWr9uthHEU0EXj6ZNIzQOCkHVJuisNUp
         FhsIblYGOCfckLIZeM8PbiIeVpgUt1rJDlB1K8e5uKuayIMODHuGsz2lJTcdtT+Mmki5
         DG3w==
X-Received: by 10.68.137.202 with SMTP id qk10mr33822090pbb.30.1444643652850;
        Mon, 12 Oct 2015 02:54:12 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id qa5sm17275616pbc.70.2015.10.12.02.54.11
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 02:54:12 -0700 (PDT)
Date: Mon, 12 Oct 2015 15:24:03 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: rtl8192u: Fix spacing
 errors
Message-ID: <20151012095403.GB13596@sudip-pc>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
 <3ea9e0e378e020a8bd1c4265b5d76b9507883e64.1444500823.git.cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3ea9e0e378e020a8bd1c4265b5d76b9507883e64.1444500823.git.cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 10, 2015 at 10:27:43PM +0300, Cristina Moraru wrote:
> Fix multiple checkpatch spacing errors
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---

Please mention which errors you have fixed here.

>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 382 +++++++++++-----------
<snip>
>  	/*
> @@ -654,32 +654,32 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	 * 1. All packets with SeqNum smaller than WinStart => Indicate
>  	 * 2. All packets with SeqNum larger than or equal to WinStart => Buffer it.
>  	 */
> -	if(bMatchWinStart) {
> +	if (bMatchWinStart) {
>  		/* Current packet is going to be indicated.*/
>  		IEEE80211_DEBUG(IEEE80211_DL_REORDER, "Packets indication!! IndicateSeq: %d, NewSeq: %d\n",\
>  				pTS->RxIndicateSeq, SeqNum);
>  		prxbIndicateArray[0] = prxb;
> -//		printk("========================>%s(): SeqNum is %d\n",__func__,SeqNum);
> +//		printk("========================>%s(): SeqNum is %d\n", __func__, seqNum);

SeqNum changed to seqNum ... :(

regards
sudip

