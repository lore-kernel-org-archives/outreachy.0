X-GM-THRID: 6395630061335085056
X-Received: by 10.129.147.198 with SMTP id k189mr8695320ywg.76.1489171830438;
        Fri, 10 Mar 2017 10:50:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.68.202 with SMTP id p10ls3208271otg.18.gmail; Fri, 10 Mar
 2017 10:50:30 -0800 (PST)
X-Received: by 10.237.37.80 with SMTP id w16mr3648650qtc.4.1489171830000;
        Fri, 10 Mar 2017 10:50:30 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si1889947pfa.6.2017.03.10.10.50.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:50:29 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so11676147pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 10:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=h/C/5z7t2MdyhmFe553+XtMhmnKG4TEHPqtJrLmINKs=;
        b=ShO2xeYQQW5abg5xf4mJZiikhfrw8H+thVpsCc/5CFaeHOMF1BqYTP50fKpw02aa+K
         YJQTOupL9l+jPFstz6g3zKEPrSjboBztrfSS1QfO91bHHi/teaEZNeTWKNWDJDq2Zlwp
         RgB9TWgqjOXVzsougl779jen96rV9PMxEIXsjWGmR+2e1ZeGMLtvpoYEsH3qiDNpVNLS
         0WzbZm1pBJwCitibnKefoJgkGyeKxrQyGKRQl3Y1GZcj73tkPwfrNqyUSYhyo+TLBNrd
         MRijxOvR7YGMAivCeLe1xUA465wWD3IGPxUSyh1IKA6IlY7BPtkFZ5662K+RCIU/nY98
         Zt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h/C/5z7t2MdyhmFe553+XtMhmnKG4TEHPqtJrLmINKs=;
        b=BiLHvVMRT0A3OgiME7yJEDGs3FVxtMoVe+6hs1EsICA497Qa+qR1WGDS8NGNfYziuj
         FUJnEoAxmOU3l78cpxzHNMIoKJGQOOREi3bXm03FeNZX53NTYS5iDQ7YcXtoJmYQjtb6
         fOeXExd0zjL/E2iwpK/PnnXvg7ArmkpXPJch32lj68BpyrFxaE012Vbgq9bBtJwTat6U
         S68Tr5qoAs6gOQyji7zCFPFetZC6VmTsayXN3DgtbCMyMGvm7xZurfW49r0soY982mhq
         K7IEE6PtPsSRXhULL50oy375ffxOhtzrllVhVtW81VjyANn3g9IwvkUvFmlDZtB6bapD
         lE4w==
X-Gm-Message-State: AMke39l0wsbBC+rZDkKvENOqrJrjYjm8sOdgAuwVCJmPuqkf4nHjMvGxfnXidFLwGze1Vg==
X-Received: by 10.99.181.86 with SMTP id u22mr22000559pgo.120.1489171829615;
        Fri, 10 Mar 2017 10:50:29 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id u78sm19973259pfa.101.2017.03.10.10.50.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 10:50:29 -0800 (PST)
Date: Fri, 10 Mar 2017 10:50:28 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: wilc1000:  Enhance code
 formatting
Message-ID: <20170310185026.GA20878@d830.WORKGROUP>
References: <20170310165833.4033-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310165833.4033-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 06:58:33PM +0200, Tamara Diaconita wrote:
> Trims line size at 80 characters wilc_wlan_cfg.c file by moving a part of the lines in a new line.

The line above is too long.  We want the log message line max of 72.
(git log doesn't handle wrapping so it gets hard to read if lines
are too long.)

> 
> Fixed the checkpath.pl issue:
spell->checkpatch.pl

> CHECK: line over 80 characters.

Update subject to say what what you did - wrap lines of code at 80
chars.

I suggest leaving out the last change....see why below...
the others since it is comment change.

> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

> ---
>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan_cfg.c b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> index 926fc16..fed66dcd 100644
> --- a/drivers/staging/wilc1000/wilc_wlan_cfg.c
> +++ b/drivers/staging/wilc1000/wilc_wlan_cfg.c
> @@ -217,7 +217,8 @@ static int wilc_wlan_cfg_set_word(u8 *frame, u32 offset, u16 id, u32 val32)
>  	return 7;
>  }
>  
> -static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str, u32 size)
> +static int wilc_wlan_cfg_set_str(u8 *frame, u32 offset, u16 id, u8 *str,
> +				 u32 size)
>  {
>  	u8 *buf;
>  
> @@ -298,7 +299,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
>  					break;
>  
>  				if (g_cfg_hword[i].id == wid) {
> -					g_cfg_hword[i].val = cpu_to_le16(info[3] | (info[4] << 8));
> +					g_cfg_hword[i].val =
> +					cpu_to_le16(info[3] | (info[4] << 8));
>  					break;
>  				}
>  				i++;
> @@ -312,7 +314,10 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
>  					break;
>  
>  				if (g_cfg_word[i].id == wid) {
> -					g_cfg_word[i].val = cpu_to_le32(info[3] | (info[4] << 8) | (info[5] << 16) | (info[6] << 24));
> +					g_cfg_word[i].val = cpu_to_le32(info[3]
> +						| (info[4] << 8)
> +						| (info[5] << 16)
> +						| (info[6] << 24));
>  					break;
>  				}
>  				i++;
> @@ -332,7 +337,8 @@ static void wilc_wlan_parse_response_frame(u8 *info, int size)
>  						i += toggle;
>  						toggle ^= 1;
>  					}
> -					memcpy(g_cfg_str[i].str, &info[2], (info[2] + 1));
> +					memcpy(g_cfg_str[i].str, &info[2],
> +					       (info[2] + 1));
>  					break;
>  				}
>  				i++;
> @@ -478,14 +484,16 @@ int wilc_wlan_cfg_get_wid_value(u16 wid, u8 *buffer, u32 buffer_size)
>  				u32 size =  g_cfg_str[i].str[0];
>  
>  				if (buffer_size >= size) {
> -					if (g_cfg_str[i].id == WID_SITE_SURVEY_RESULTS)	{
> +					if (g_cfg_str[i].id ==
> +					    WID_SITE_SURVEY_RESULTS){
>  						static int toggle;
>  
>  						i += toggle;
>  						toggle ^= 1;
>  
>  					}
> -					memcpy(buffer,  &g_cfg_str[i].str[1], size);
> +					memcpy(buffer,  &g_cfg_str[i].str[1],
> +					       size);
>  					ret = size;
>  				}
>  				break;
> @@ -510,7 +518,8 @@ int wilc_wlan_cfg_indicate_rx(struct wilc *wilc, u8 *frame, int size,
>  	size -= 4;
>  
>  	/**
> -	 *      The  valid types of response messages are 'R' (Response), 'I' (Information), and 'N' (Network Information)
> +	 *      The  valid types of response messages are 'R' (Response),
> +	 *      'I' (Information), and 'N' (Network Information)
>  	 **/
>  
>  	switch (msg_type) {

This last one is in a comment which right away, makes it different.
It also draws the reviewers eye to the fact that the comment block
is formatted incorrectly, which may lead to a "why don't you fix
that too?" and the growth of your patch into a monster patch ;)

This file can use an overhaul of the commenting style.  If, in the
future, you want to do a clean sweep of the file with respect to
the comments, that would be a single patch.  For now, I suggest leaving
this piece out of this patch set.

alisons


> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310165833.4033-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

