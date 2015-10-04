X-GM-THRID: 6201124004329160704
X-Received: by 10.50.82.98 with SMTP id h2mr5559543igy.1.1443945090777;
        Sun, 04 Oct 2015 00:51:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.137 with SMTP id ii9ls963042obb.7.gmail; Sun, 04 Oct
 2015 00:51:30 -0700 (PDT)
X-Received: by 10.182.246.98 with SMTP id xv2mr14385321obc.3.1443945090393;
        Sun, 04 Oct 2015 00:51:30 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k190si1914581ywe.3.2015.10.04.00.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [193.120.146.54])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E46E120F0;
	Sun,  4 Oct 2015 07:51:28 +0000 (UTC)
Date: Sun, 4 Oct 2015 08:51:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Remove excess
 parameter from doc
Message-ID: <20151004075127.GA20479@kroah.com>
References: <1443811683-50291-1-git-send-email-cristina.moraru09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443811683-50291-1-git-send-email-cristina.moraru09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 02, 2015 at 09:48:03PM +0300, Cristina Moraru wrote:
> Fix "Excess function parameter 'addr' description in
> 'cvm_oct_set_mac_filter'" kernel-doc warning
> 
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index a8da250..87ab6c6 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -367,7 +367,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
>  /**
>   * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
>   * @dev:    The device in question.
> - * @addr:   Address structure to change it too.
>   *
>   * Returns Zero on success
>   */
> -- 
> 1.9.1

This patch doesn't apply to my tree at all :(

