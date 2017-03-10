X-GM-THRID: 6395630061335085056
X-Received: by 10.157.82.157 with SMTP id f29mr8312505oth.114.1489169061996;
        Fri, 10 Mar 2017 10:04:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.211 with SMTP id 80ls2759967ioq.0.gmail; Fri, 10 Mar
 2017 10:04:21 -0800 (PST)
X-Received: by 10.107.29.207 with SMTP id d198mr6297489iod.28.1489169061040;
        Fri, 10 Mar 2017 10:04:21 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si1895337pfb.2.2017.03.10.10.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:04:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so11546286pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 10:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=quG7/tNtptJQ8663TgXMq4a91DHDwepu7sL5pmo+9LQ=;
        b=KNP7hp7Low074BALmmVeu0K4wT/Q3WTaEPjpacOKPXNGOeokIn0gyVXni5p0gflWM1
         Xt37Q8Be5tIsS0aDnO3u2l8VzCJw6YM4liBEuDD3YerJZn56WhvahtU/yeuVW/DzQW3o
         GuiSskyKMQBhUL/As/FM9WYBhYDmaqzh+8LGrtf7KY1xgXKu6gt4v+B+34CZzCn7VTso
         ACGQAhJUDqirc0sCIYpD+df1apce0gvuU+J/o/qKXjWsYW3/Il4p58eWXPgTzU+Z8US8
         ROasIhrKbryod1npSUwvhDT/N/4aPAfFyX1k942xdB9xAXtE2dmzupeF/zxuluINaj3I
         ngsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=quG7/tNtptJQ8663TgXMq4a91DHDwepu7sL5pmo+9LQ=;
        b=Bxdtv8mWU2R03j3/QucdiCbLXEWDJ+HukwXpH9GtzmIe7Isd3HRobdD2p3RP9CYzH5
         Rm3WJkbeg9iRHKUSpYDNoZ6Wr+X5jyVlpC/v1NKYN+Y8r06K3n4nBjFRGrtNyQ3UZWXi
         LrL3O1largRMOhj7XzSW5IYvIOiIcdz4UBpVzFPicW+6SVGrwJ8TTjFDgA/fP+kxjF+y
         71+mgA25qnWRd10i2Jy8swg5sIHjst5HRV8a1sBWiCpPtgKU/7DzpQ2rZXmF/V5ysmu+
         BufZwaZJl6FMIAvOP06w4LnuaP9PQsgzzM5qvTex+NW2heX300vEo1soW6NqK5jZyabb
         o0tw==
X-Gm-Message-State: AMke39lrtO4qEvFiNCy/m0wWI49LYCR/jeRzFP9bt0M3MCX1CYEpNqW5gnVpHIxWZtip1A==
X-Received: by 10.99.152.65 with SMTP id l1mr22235715pgo.28.1489169060651;
        Fri, 10 Mar 2017 10:04:20 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id y5sm20071200pgy.28.2017.03.10.10.04.19
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 10:04:20 -0800 (PST)
Date: Fri, 10 Mar 2017 10:04:19 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: wilc1000: Enhance code
 formatting
Message-ID: <20170310180418.GA19658@d830.WORKGROUP>
References: <20170310102031.32314-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310102031.32314-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 12:20:31PM +0200, Tamara Diaconita wrote:
> Trims line size at 80 characters in coreconfigurator.h file by
> shortening the name of variables.
> 
> Problem found with checkpatch.pl.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---

Hi Tamara,

This patch is good and succinct. It does one thing well.
(It did not give me patch review fatigue ;))

I'd like to see you reflect that focus in your subject line & 
log message.

Since subject should say what it does, let's be more specific
and rather than saying "Enhance code formatting" say something
like "rename struct connect_resp_info to resp_info".

Then in your log message you can go on and say why you how
shortened the name and it's related assignments. (It allowed
you to trim line sizes to 80 and enhance readability.)

So - v5 it!

thanks,
alisons


> Changes since v3:
> *Changed the variables name I modified in coreconfigurator.h in other related files: corecofigurator.c and host_interface.c.
> 
> Changes since v2:
> *Shorten variables name.
> *Separate the patch from a patch set.
> 
> Changes since v1:
> *Put the patch in a patch set.
> 
>  drivers/staging/wilc1000/coreconfigurator.c | 26 +++++++++++++-------------
>  drivers/staging/wilc1000/coreconfigurator.h |  4 ++--
>  drivers/staging/wilc1000/host_interface.c   |  2 +-
>  3 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index 6229947..572a077 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -350,38 +350,38 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
>  }
>  
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> -			       struct connect_resp_info **ret_connect_resp_info)
> +			       struct resp_info **ret_resp_info)
>  {
> -	struct connect_resp_info *connect_resp_info = NULL;
> +	struct resp_info *resp_info = NULL;
>  	u16 assoc_resp_len = 0;
>  	u8 *ies = NULL;
>  	u16 ies_len = 0;
>  
> -	connect_resp_info = kzalloc(sizeof(*connect_resp_info), GFP_KERNEL);
> -	if (!connect_resp_info)
> +	resp_info = kzalloc(sizeof(*resp_info), GFP_KERNEL);
> +	if (!resp_info)
>  		return -ENOMEM;
>  
>  	assoc_resp_len = (u16)buffer_len;
>  
> -	connect_resp_info->status = get_asoc_status(buffer);
> -	if (connect_resp_info->status == SUCCESSFUL_STATUSCODE) {
> -		connect_resp_info->capability = get_assoc_resp_cap_info(buffer);
> -		connect_resp_info->assoc_id = get_asoc_id(buffer);
> +	resp_info->status = get_asoc_status(buffer);
> +	if (resp_info->status == SUCCESSFUL_STATUSCODE) {
> +		resp_info->capability = get_assoc_resp_cap_info(buffer);
> +		resp_info->assoc_id = get_asoc_id(buffer);
>  
>  		ies = &buffer[CAP_INFO_LEN + STATUS_CODE_LEN + AID_LEN];
>  		ies_len = assoc_resp_len - (CAP_INFO_LEN + STATUS_CODE_LEN +
>  					    AID_LEN);
>  
> -		connect_resp_info->ies = kmemdup(ies, ies_len, GFP_KERNEL);
> -		if (!connect_resp_info->ies) {
> -			kfree(connect_resp_info);
> +		resp_info->ies = kmemdup(ies, ies_len, GFP_KERNEL);
> +		if (!resp_info->ies) {
> +			kfree(resp_info);
>  			return -ENOMEM;
>  		}
>  
> -		connect_resp_info->ies_len = ies_len;
> +		resp_info->ies_len = ies_len;
>  	}
>  
> -	*ret_connect_resp_info = connect_resp_info;
> +	*ret_resp_info = resp_info;
>  
>  	return 0;
>  }
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 10101f8..f40d6f2 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -97,7 +97,7 @@ struct network_info {
>  	u64 tsf_hi;
>  };
>  
> -struct connect_resp_info {
> +struct resp_info {
>  	u16 capability;
>  	u16 status;
>  	u16 assoc_id;
> @@ -123,7 +123,7 @@ struct disconnect_info {
>  s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> -			       struct connect_resp_info **ret_connect_resp_info);
> +			       struct resp_info **ret_resp_info);
>  void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
>  				 u32 u32Length);
>  void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 2429c85..baed80d 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1336,7 +1336,7 @@ static s32 Handle_RcvdGnrlAsyncInfo(struct wilc_vif *vif,
>  		u8MacStatusAdditionalInfo = pstrRcvdGnrlAsyncInfo->buffer[9];
>  		if (hif_drv->hif_state == HOST_IF_WAITING_CONN_RESP) {
>  			u32 u32RcvdAssocRespInfoLen = 0;
> -			struct connect_resp_info *pstrConnectRespInfo = NULL;
> +			struct resp_info *pstrConnectRespInfo = NULL;
>  
>  			memset(&strConnectInfo, 0, sizeof(struct connect_info));
>  
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310102031.32314-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

