X-GM-THRID: 6204754090721804288
X-Received: by 10.50.17.74 with SMTP id m10mr13122068igd.3.1444664553894;
        Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.101 with SMTP id a5ls520911obh.71.gmail; Mon, 12 Oct
 2015 08:42:33 -0700 (PDT)
X-Received: by 10.182.20.195 with SMTP id p3mr25092751obe.28.1444664553580;
        Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id vy6si630977pbc.1.2015.10.12.08.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy16so156874908pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=hlmFG5zbsZ4dbLAUbCi0a2osNMybsWOiX2CoJOtrdvQ=;
        b=qLt9AslcDh/GVBwJ10ZKn1UzFe1MS1Yabu+II2cSAV+yQaHDd/hLhish/t0agbVz4s
         4+EgmfF8qBKWXhC1GcXjQoK8JTm/H96/xD1Gl8lXwKhfU0/DnLXP3hJsXwkiFKGEIsBE
         tE9yydK6oc7Vjeyqmu0JRzMZtqBsh630fULzqsSmaznHo0Z2tpV7gOAw7Ay9X/h/vmWs
         zxDsxuRtgbg7+3FIk0Vg0E47EFxFkL5P9vC5cTS5kJqXLiHQXXVZj89lbY1+8y6iVaKX
         BLlUbeVgE335Cv2PrIj7OmbBnDEm+wQrvjpmolZvJgYYpXpX/3du8kjf5hAfOLjNGnMc
         MEOw==
X-Received: by 10.68.107.133 with SMTP id hc5mr34650813pbb.5.1444664553418;
        Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id b7sm19173999pas.31.2015.10.12.08.42.25
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 08:42:33 -0700 (PDT)
Date: Mon, 12 Oct 2015 21:12:17 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: wilc1000: host_interface:
 Remove extra NULL test
In-Reply-To: <c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134@gmail.com>
Message-ID: <alpine.DEB.2.11.1510122108570.26851@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <cover.1444655924.git.shivanib134@gmail.com> <c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134@gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.561BD4E8.000C,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Mon, 12 Oct 2015, Shivani Bhardwaj wrote:

> Remove NULL test statement as it is preceded by another NULL test on the
> same variable in the code.
> Issue found using coccinelle.

While you are at it, you might want to consider taking a closer look at 
this file. There are other instances of unnecessary null test which can be
found using Coccinelle.I didn't work on this one since you already are :)

Shraddha
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> drivers/staging/wilc1000/host_interface.c | 7 ++-----
> 1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index d279eba..b6eea9a 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -6038,11 +6038,8 @@ s32 host_int_deinit(tstrWILC_WFIDrv *hWFIDrv)
> 	if (ret)
> 		s32Error = -ENOENT;
>
> -	if (pstrWFIDrv != NULL) {
> -		kfree(pstrWFIDrv);
> -		/* pstrWFIDrv=NULL; */
> -
> -	}
> +	kfree(pstrWFIDrv);
> +	/* pstrWFIDrv=NULL; */
>
> 	clients_count--; /* Decrease number of created entities */
> 	terminated_handle = NULL;
> -- 
> 2.1.0
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c122920d4c47aae820bb3a350cdb8511376b0c3c.1444655924.git.shivanib134%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

