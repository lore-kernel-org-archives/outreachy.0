X-GM-THRID: 6254188564975714304
X-Received: by 10.129.146.201 with SMTP id j192mr7608267ywg.40.1457721797964;
        Fri, 11 Mar 2016 10:43:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.30.200 with SMTP id u8ls215621igh.22.gmail; Fri, 11 Mar
 2016 10:43:17 -0800 (PST)
X-Received: by 10.107.153.197 with SMTP id b188mr7991575ioe.27.1457721797630;
        Fri, 11 Mar 2016 10:43:17 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si1505396pfb.1.2016.03.11.10.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 44DEEACC;
	Fri, 11 Mar 2016 18:43:17 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:43:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rts5208: Replace
 pci_enable_device with pcim_enable_device
Message-ID: <20160311184316.GA11794@kroah.com>
References: <20160223210002.GA26262@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160223210002.GA26262@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 24, 2016 at 02:35:41AM +0530, Amitoj Kaur Chawla wrote:
> Devm_ functions allocate memory that is automatically freed when 
> a driver detaches.
> 
> Replace pci_enable_device with pcim_enable_device. Remove unnecessary
> pci_disable_device and pci_release_regions from probe and remove
> functions in rts5208 driver.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
> Changes in v2:
>         -Removal of pci_set_drvdata will be sent in a later patch series
> 
>  drivers/staging/rts5208/rtsx.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index 5dfcdfb..7882193 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -329,7 +329,6 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
>  
>  	pci_save_state(pci);
>  	pci_enable_wake(pci, pci_choose_state(pci, state), 1);
> -	pci_disable_device(pci);
>  	pci_set_power_state(pci, pci_choose_state(pci, state));
>  
>  	/* unlock the device pointers */

Are you sure this works?  Does the PCI core now control the
disable/enable of the device in the suspend/resume code paths just
because pcim_enable_device() is called?  I can't see that in the PCI
core code, but I might be missing something...

thanks,

greg k-h

