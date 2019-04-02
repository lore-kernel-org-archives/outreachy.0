X-GM-THRID: 6674267883353145344
X-Received: by 2002:a63:ef18:: with SMTP id u24mr944263pgh.24.1554184534552;
        Mon, 01 Apr 2019 22:55:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b60e:: with SMTP id b14ls4568091pls.2.gmail; Mon, 01
 Apr 2019 22:55:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWSXAROynGWncm40h57yAPibVCTiAyIBMgfLRgK+riXgAABs1cCDtNVvdrkbfMvQU4XInI
X-Received: by 2002:a17:902:b7c5:: with SMTP id v5mr1949863plz.10.1554184533821;
        Mon, 01 Apr 2019 22:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184533; cv=none;
        d=google.com; s=arc-20160816;
        b=IqMGC55rVYyWK6hOOVEMQHg5cCFJIoaKBhcQhTp3e4pdIjVFiCfG3mFBxpNZ5fPPEj
         OmajlNPRFAo1BvTmccfwY7VrkGM39ugzfhSp+r/EdpzNGCQvWwedJGQL+R2idTPX9iiD
         k3c3bPIjU7IHFUxkgdiEI4sTRkqZrUk2NELixhl94FgtRTcVTFx/26jdQ+bGFEXGrxmP
         e536Doq5YGmPgUmYqmeQDQi2/43LdDgj9phwo+ULrAo/m9Oy7rx1Cq/9McWT+XLqolqF
         rqiQw4yuXq+tTgedMxO123SwEDgfgWstFwGclwJ76nIsBnI6BYCeX555fsjpw5clpU6s
         yC7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IMM0Rp6wSF+pLwjUyLgERmFcGNWiY8YU4eYPO0g34ZU=;
        b=LEtIgC8uzi8BmMHJVMs13Fs8QbG16NcSfLd/TDPA93biBGmJFXLUByTAyfNB7KFV3e
         0wu/DR70P3XmkhLVg1HweDJR+i2/mGI/yOHJO3Oz+KSVJtijNCOuGFjlZjEboWHp0/Mc
         bPWufECaptWIsgA6+iJ9AGVdjI2SIDRRbfFHHkc0LgmCmQ/m7O8PdOVESLmPCLrm2nXH
         eedQdcibmXCNkmd5t65BhorA1YEdmPNYkxzdYr1ADdsBwD+/kQ1agVC58x3v7HGDOQKg
         zFIrIlIqVKNIEZxuSJeSTT3bnKA2jAAC/zTnTzF8609zwIlLmsSGmpiypVQ2RerhH51r
         WtAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CUM676W1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si671658pgm.2.2019.04.01.22.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CUM676W1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 240952084C;
	Tue,  2 Apr 2019 05:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184533;
	bh=euS3rea3qxtXScdoNRlk0IfOWGHwiUO9kID7l/Sm4mM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CUM676W1U9YMVbewaWvuw5wA0hFu451aEVNjeDrqCiZMRUDnN1ofQ6ng+uZ5cskkg
	 bIoGLoD09Z0CfqMW0CMoxeHTB9G3bR3E0xU9Idgn1pP6xY1oovixlpFsZ5MJu5u52h
	 AjDoM1CukEflKA5LQqoAtIumve4WQIBygWwMpM9U=
Date: Tue, 2 Apr 2019 07:55:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 2/6] staging: rtl8712: use list_for_each in function
 _r8712_find_network
Message-ID: <20190402055527.GF14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-3-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-3-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:51AM +0530, Himadri Pandya wrote:
> struct queue is of type list_head and member of struct __queue. Hence,
> using list_for_each to iterate over queue is a better choice.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V4:
> 	- Change log message
> Changes in V3:
> 	- Improve log message
> ---
>  drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index 9bfceaeaa05e..6912d73e8172 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -141,9 +141,8 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
>  	spin_lock_irqsave(&scanned_queue->lock, irqL);
>  	phead = &scanned_queue->queue;
>  	plist = phead->next;
> -	while (plist != phead) {
> +	list_for_each(plist, phead) {
>  		pnetwork = list_entry(plist, struct wlan_network, list);
> -		plist = plist->next;

list_for_each_entry() please.


