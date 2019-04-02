X-GM-THRID: 6674267883353145344
X-Received: by 2002:a25:cd82:: with SMTP id d124mr6169342ybf.92.1554184520512;
        Mon, 01 Apr 2019 22:55:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3bca:: with SMTP id i193ls4341367ywa.9.gmail; Mon, 01
 Apr 2019 22:55:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyeXXEyhj8ex6qXDWz6/fgjJH1ypV7j3wLQHqg+fhgjGMaJu6XwL/HjaSJu5/04lIm3uNzq
X-Received: by 2002:a81:2944:: with SMTP id p65mr4309372ywp.13.1554184519642;
        Mon, 01 Apr 2019 22:55:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184519; cv=none;
        d=google.com; s=arc-20160816;
        b=plcOf2UPRqWn+9Mzi7ZBxD1juQVny8IDTNMngX+FaAZBw8Oj/TAj2RFlsJPFWxnVnR
         xMnJsMe0sJF+SYd1V4EsoPMH7XLOEY+6K5HNwQ3+yvYLf/Epw1+OYQ2yPaEGX56bU/KJ
         jnGvsoOZkChlaMAbkzx2gYBeh0nTeGYlUz5zB44nMMvHnPM3OX5JTDP499ImTumXRmww
         r6Il0i2O19ya0mOkBBbrMbL6BDri3KhaeOP/ZOYskgE1b6Yrzg0dwSbn4epjc4zqzzy7
         1Q8cUUQIK/v7phRTDWhhNWgyA7ClYfMwRIdydh7/DB6dOsIpTHM3ElEALFo3NxTab8hc
         6KNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6uyWC+T6rlSNwbq7xYyNHd1y7haau+LKo8ndNSY3T6I=;
        b=utgrQC6rCZakLf2/0GBXxbuNqjezMuWmKy66Xyrbs62QcapMWe7U4RueRbLS30s2xf
         GUmEBbYHBpQKuUZD3m5R2llgWEDgIa2IFvDRQ0o2yEylfUMvQ4mqzNAykVUaP+7Z/1K/
         5Kr/s+PFNaKcz7NybJs8UeDdoHnlPctQlYjWoTXkTm7wIjH4M6nJG6MtRrFKvyU49gLz
         2EQ6jxVGWPBkarMMMoxduEW2vnxz8vvsss0BpqVLbgPixWz01Tq7SoWSykXLHvbkKkap
         YVz0snWOs5pwSBC3snWn9dFsaP5xi2EwvckPPM45hoZH1EpNwZC5AZIoadHn30+nICNJ
         ma9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jMA46uOk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s11si645807ywg.3.2019.04.01.22.55.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:55:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jMA46uOk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44B7220857;
	Tue,  2 Apr 2019 05:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184518;
	bh=y5LFwIQyovJhfUtkvU2KxEUCdcUuXoU4H5S33E2TXBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jMA46uOkKSiO23yaGzwzGwM6fZ4DFf43Q4c8wKOaC9Dhr7g7hccALEYfjeFy02cMX
	 9Ay/CFFs4UprdUBEy4ZJH4hgz/rZAZiBkgIRFNN+XxWrDGphINuhCvQa0ms6BZ8gQL
	 i3rPVYDGI+5uSspuPGgoU1BriZWYaYywvxWh7pbM=
Date: Tue, 2 Apr 2019 07:55:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 1/6] staging: rtl8712: use list_entry in function
 _r8712_find_network
Message-ID: <20190402055512.GE14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-2-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-2-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:50AM +0530, Himadri Pandya wrote:
> struct wlan_network contains field list of type list_head. Hence,
> getting the address of wlan_network using list_entry is equivalent
> of using container_of to do the same. And to use list_entry for list
> manipulations is a better choice.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V4:
> 	- Change log message
> Changes in V3:
> 	- Improve log message
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index c666e038f43e..9bfceaeaa05e 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -142,7 +142,7 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
>  	phead = &scanned_queue->queue;
>  	plist = phead->next;
>  	while (plist != phead) {
> -		pnetwork = container_of(plist, struct wlan_network, list);
> +		pnetwork = list_entry(plist, struct wlan_network, list);
>  		plist = plist->next;

If this really is the list structure, then let's use the list structure
correctly.  We should not be touching any ->next fields, nor comparing
to phead, or any of that logic at all.

You should just need to use something like:
	list_for_each_entry()
for this loop, right?

That will save a bunch of lines, and make things a lot more obvious what
is happening.

thanks,

greg k-h

