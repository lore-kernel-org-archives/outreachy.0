X-GM-THRID: 6674267883353145344
X-Received: by 2002:a0c:e591:: with SMTP id t17mr4207664qvm.3.1554184590253;
        Mon, 01 Apr 2019 22:56:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls777780qvf.0.gmail; Mon, 01 Apr
 2019 22:56:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQu3EhEar0UeRyUvYRhWovszQlkMrGBsJlxwOCv1Wzn77jwIfl0k2WqrEjtYNtv2BV+2ly
X-Received: by 2002:a0c:88b1:: with SMTP id 46mr8271094qvn.15.1554184589776;
        Mon, 01 Apr 2019 22:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184589; cv=none;
        d=google.com; s=arc-20160816;
        b=DIogI1vvDExprxBeRu1UlMgpGk6KLyQ4IFOyjvE9sszU/msPtpa4X80tUdjRVh6vS9
         NttWatRm6Y20wr4LpuEFs9bxm61b8JuWwpul18qyjDUsgje4FgOScKkVR7QDZRTricNs
         03h1SYKa+qfHhC7t4kHaZZSG8tHA8oRPoymPLyS7rrvU1zueDjLU5C2knG5GXlf8CWzZ
         kbTVnrxotqmpejeQRJPNg4CetUB9AZ4osBjK3ueLHIjT3X/IBI1ZX6bmsiEjRWK1E1UU
         pB055Jv+npwCxVC0EfL+tY/GZo9zEsIqKMf5Ur2X23WSI7WOVU6kzfiSeDEFuCe0esvw
         kLtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1q3Y6XcOSnmOIQ1eSKuSqF/MjRiMHATO14qqhnbhfxc=;
        b=EhxKyye+ArO+Vx1lZ/mYZgUza2O90DCU/hoAhcKeVerRxdIe+W1tX7LAdTLufuBLWB
         nY4bVimOf/gyx8SGFsoFbyHm6oTZtibaCVmBHzPNKYBOG9jKhOBs3eFJRQA+/WuN1lCf
         YOplFyn3+3AQMTzGIfLBXAhk/mXc2FNd/AbqSarehR9fpL6DSkfQEOWvNAIoY0PUzlP3
         pzdgtFGxPlt2N+NJoKXkkm7Kg3Eb+xjsYjpUMsaLsiR2r4BtMR6fQjmr8Ab6qiIeVljq
         kLvY2LH2FekxYThlTkTIFntRZzgRNX7STdVEiFFfBUtxT/ESSfNH1dKmdcy9s8JaW7lC
         lRHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0xAg7QTz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a5si623962qkb.2.2019.04.01.22.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0xAg7QTz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4446D2084C;
	Tue,  2 Apr 2019 05:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184588;
	bh=z47Dm9uDYP3yfHGnzD431vhgcPLaH0nInn0KrtXIUFA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0xAg7QTzATbdl7qIZbqYn+aNT4knRF5DoZ48F/+G2SmPLQom/tK3C5mQsap56H86O
	 Ih9v8TgfkT1PqyBUn9UdfvZYxslnj2OfnU5ewB2QLYQIWo9+zaO1VXXiMNWGCdLlge
	 mUROimwTADIiiw6OMZTqCpgyaMuksVf5Osus2oJM=
Date: Tue, 2 Apr 2019 07:56:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 4/6] staging: rtl8712: use list_entry in function
 r8712_get_oldest_wlan_network
Message-ID: <20190402055622.GH14075@kroah.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>
 <20190401200955.98744-5-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190401200955.98744-5-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 01:39:53AM +0530, Himadri Pandya wrote:
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
> index e0b4b8fbcc0e..05bfc2a60eb9 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -289,7 +289,7 @@ struct	wlan_network *r8712_get_oldest_wlan_network(
>  	while (1) {
>  		if (end_of_queue_search(phead, plist) ==  true)
>  			break;
> -		pwlan = container_of(plist, struct wlan_network, list);
> +		pwlan = list_entry(plist, struct wlan_network, list);

same here, list_for_each_entry()?

