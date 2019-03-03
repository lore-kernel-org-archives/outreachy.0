X-GM-THRID: 6664125238569074688
X-Received: by 2002:a1c:8003:: with SMTP id b3mr842699wmd.25.1551612698043;
        Sun, 03 Mar 2019 03:31:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls918404wrp.16.gmail; Sun, 03 Mar
 2019 03:31:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFM7Scey5vaqaWjqJNrRkkyZn/WucoBKvZim+a+6yEdm7pu37LazKcblL+Jyajzwoa09WX
X-Received: by 2002:adf:f08c:: with SMTP id n12mr627774wro.7.1551612697338;
        Sun, 03 Mar 2019 03:31:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551612697; cv=none;
        d=google.com; s=arc-20160816;
        b=KxoRyp2WPxoOXbJtQvrRfcvCSZkJt9UQujnW++xjzCztdVaNha4IwPTfpYuX2Q6xYb
         V8F8RvpxUq1EIQ4t3mmZTE3Uii8hJE1liFcDlsmnsPE/Y/DknJ7BJli/M/ZaBzITOAa/
         av5A9g5oXmaSjhaImsI1lXDLlz3UHJJkAftBAgeJfptoN0fHUBoutnDY3aVDfEMbdJWi
         uEj9qd3FU371UEWVDzxeaIpHT6iRyp2hE/ccLQxxTOaS8aThsmHaBh62K88v7sPBsiGP
         q8OhAKamTaZ0SVTQ7kyLmI2ez8DhPy9h2bU+6eWVDZTYy+qnN58O4IzdU2U9wToHi4nn
         0KmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ILPGmrq5Xn9RTlhtktURad/AwWt3UA6G4NPAv+Mr5M8=;
        b=j9rGO8hscQ6Gr5SK6253W0/+kkr542YebzX6Pf1Br66IBoWjd+Wm6nmf2xNNOmakGx
         R4usDuPv8faUOHm3dDvk60BEZZcHByR3v2ab9unLNcVlZT9capyT3BG/yMoCvuUFNPfZ
         h8rX3sf0ElRayxBWEj4QciQdFr5jhATgsW6Do7mrvZSUDvjVAJM8IcZSlrfAPtOUMxDM
         9YH6qD7DAe4wqm/qI4bAlQ4dX4B24TEFoiwH0HAxQ2jYEmj0PPcaO/98+oMNZ3A8+FUk
         4mlfY6+P/iIjksSHvgyaZWeLa0BVomi6HXfctbbpo5BuHtrxLnMQ/T1J8c0pPaFl4cwt
         8wVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si191370wmj.2.2019.03.03.03.31.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 03:31:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,435,1544482800"; 
   d="scan'208";a="297916566"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 12:31:36 +0100
Date: Sun, 3 Mar 2019 12:31:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Fix alignment match
 issue
In-Reply-To: <1551612545-54801-1-git-send-email-idebleenasen@gmail.com>
Message-ID: <alpine.DEB.2.21.1903031230510.3207@hadrien>
References: <1551612545-54801-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Mar 2019, Debleena Sen wrote:

> Use tab to match alignment with open parenthesis to remove
> checkpatch.pl check:
> CHECK: Alignment should match open parenthesis
>
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index 7350fe5..7d2a140 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -228,8 +228,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
>  		__le16 wordbuf[17];
>
>  		result = hfa384x_drvr_setconfig16(hw,
> -					HFA384x_RID_CNFROAMINGMODE,
> -					HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
> +						  HFA384x_RID_CNFROAMINGMODE,
> +						  HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);

You are now over 80 characters for the third argument.  So it would be
better to leave the code as is.

julia

>  		if (result) {
>  			netdev_err(wlandev->netdev,
>  				   "setconfig(ROAMINGMODE) failed. result=%d\n",
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1551612545-54801-1-git-send-email-idebleenasen%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

