X-GM-THRID: 3148599001088
X-Received: by 10.236.230.39 with SMTP id i37mr15416808yhq.47.1424763619083;
        Mon, 23 Feb 2015 23:40:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.207 with SMTP id 76ls1629277ior.66.gmail; Mon, 23 Feb
 2015 23:40:18 -0800 (PST)
X-Received: by 10.66.66.1 with SMTP id b1mr15278548pat.8.1424763618752;
        Mon, 23 Feb 2015 23:40:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si4439779pbc.1.2015.02.23.23.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:40:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 59D9026;
	Tue, 24 Feb 2015 07:40:18 +0000 (UTC)
Date: Mon, 23 Feb 2015 23:40:18 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2 v2] Introduce new macro
Message-ID: <20150224074018.GB11701@kroah.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
 <a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 24, 2015 at 12:55:05PM +0530, Vatika Harlalka wrote:
> New macro is introduced for the number of channels in the
> 5GHz spectrum.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/phy.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8188eu/include/phy.h b/drivers/staging/rtl8188eu/include/phy.h
> index 9a9ab82..1312189 100644
> --- a/drivers/staging/rtl8188eu/include/phy.h
> +++ b/drivers/staging/rtl8188eu/include/phy.h
> @@ -4,6 +4,7 @@
>  #define index_mapping_NUM_88E	    15
>  #define AVG_THERMAL_NUM_88E	    4
>  #define ODM_TARGET_CHNL_NUM_2G_5G   59
> +#define ODM_TARGET_CHNL_NUM_5G	    45

Why do you need this?  You aren't using it in this patch :(

