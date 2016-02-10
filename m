X-GM-THRID: 6249367928124211200
X-Received: by 10.31.11.75 with SMTP id 72mr36257147vkl.2.1455085558717;
        Tue, 09 Feb 2016 22:25:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.17.37 with SMTP id l5ls174833igd.17.gmail; Tue, 09 Feb 2016
 22:25:58 -0800 (PST)
X-Received: by 10.50.97.98 with SMTP id dz2mr7959908igb.7.1455085558411;
        Tue, 09 Feb 2016 22:25:58 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id u66si208484pfa.2.2016.02.09.22.25.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 22:25:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id q63so6952904pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 22:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KZ4TgvgY8pKFlcOztoxu2tDlrguC+WaEJRZSlPHFTrk=;
        b=tuNwLHvpfs/RqN+LoDlKsn6CMl330T51hIb92kEgtTH2AvWy5HZlo+Wqq+mH5VHrEU
         b66Do0OII0TdovkOIgZmnecyYhaOYUymj6t5ha/ALgN5EsRkB8Mz/M4JQMFf6So5W+2u
         lHVkunjMpJQIPIvLvGOQs7lh9jeme08H4E4/yHRbqJ0jxLmnJeFdlDYG4mbhe6ytDvl+
         fZ81PVDU1su7Kz5qszx2ztwSvmMmraq+1cen1ZSQz+ETECsztSl4DYANHJP8vG1PwseI
         RNfZxNKOujgxlkGfXEBD2xFcfMYSOHVhuYoONES8RBmLDIGJBa/0VxIzo2aZJvVzo5F4
         naMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=KZ4TgvgY8pKFlcOztoxu2tDlrguC+WaEJRZSlPHFTrk=;
        b=GrPbnjCaL2EeBxe+kDpD28bQzblLmfPPoh+8qEGV/7+liVmyEP3ZxEgxlDPfm/+8Xi
         AOmYGP9W8tMfkGFZoYUIFh8w/11F6b1SRvXnMwi/Ju3Lz6dHq+SwJPj+xVz6V0XkkhX4
         0Tyd4wcQ3o2/XD2eITLvxL6u7hz9l1SUNjlmsK8aGdwoyf/W342DKNFok2Zh+GryqlTu
         E3FQqlq6T6Mnj42gnfp/W/tPoHWR6p0cc+jm29qnOLGM1vgirbyl3vFrSEtaL9yvbcs6
         RGVuaEuJVWVnGzEZBpWFhYKiCeArV1cPOrVGB0sJRni0nIEqxLO2QTTbCxL3O8daZ5b/
         0CWg==
X-Gm-Message-State: AG10YOTbgnuSG8GSbv0OX+g57/ROzCLagrXHmLJSePygjkXGJyQ8tXINffI1eh93St5Ivw==
X-Received: by 10.98.76.19 with SMTP id z19mr55516826pfa.78.1455085558290;
        Tue, 09 Feb 2016 22:25:58 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id 1sm2131244pfm.10.2016.02.09.22.25.56
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 22:25:57 -0800 (PST)
Date: Wed, 10 Feb 2016 11:55:53 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: Use
 kmalloc_array instead of kmalloc
Message-ID: <20160210062553.GD374@sudip-pc>
References: <20160210035121.GA2786@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160210035121.GA2786@janani-Inspiron-3521>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 09, 2016 at 10:51:21PM -0500, Janani Ravichandran wrote:
> Use kmalloc_array instead of kmalloc for arrays. The Coccinelle patch for
> this conversion is:
> 
> @@
> type T;
> expression F;
> constant FLAG;
> @@
> 
> - kmalloc(sizeof(T)*F, FLAG)
> + kmalloc_array(F, sizeof(T), FLAG)
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v2:
>  * Changed the coccinelle patch in the commit description to something
>    more robust as suggested by Julia.
>  
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 28ad63a..fb344d1 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
>  	bool			bMatchWinStart = false, bPktInBuf = false;
>  	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
>  
> -	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
> -			REORDER_WIN_SIZE, GFP_KERNEL);
> +	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,

I commented on v2 as I didn't see v3 already sent.

quoting my previous mail:
"something is wrong. coccinelle should not change REORDER_WIN_SIZE to
RECORDER_WIN_SIZE.

and you did not build tested it before sending."

regards
sudip

