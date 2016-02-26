X-GM-THRID: 6253755627257987072
X-Received: by 10.107.167.148 with SMTP id q142mr5620022ioe.17.1456467400075;
        Thu, 25 Feb 2016 22:16:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.100 with SMTP id a91ls514842qge.72.gmail; Thu, 25 Feb
 2016 22:16:39 -0800 (PST)
X-Received: by 10.13.234.77 with SMTP id t74mr44865580ywe.12.1456467399643;
        Thu, 25 Feb 2016 22:16:39 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com>
Received: from mail12.wdc04.mandrillapp.com (mail12.wdc04.mandrillapp.com. [205.201.139.12])
        by gmr-mx.google.com with ESMTPS id v197si787079ywa.1.2016.02.25.22.16.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:16:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com designates 205.201.139.12 as permitted sender) client-ip=205.201.139.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com designates 205.201.139.12 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=DWG0NB4t2Q1NSaMSy1IHeK3C5Ew=;
 b=FzZyQ0UOe4qUsYhf3uW1NEcr2GJW6lQqH2LsgmDHAPG0x+hzOYj3YmwnuLb0MisbtC4sJ8ghNk44
   EgvO5BBLSs3KSaS27pIi7zQbeyUDwvEkybTwk78i0nU+l1knCZbVTXrg/EeOVwZ8vxy5qeYOusDN
   Rz4z5CdhgkCjjCi+9FU=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=cwPe+UzSt26zvKlplyY0/L+oHkVyz+AOcVwQ7NjKAvFSruLr0Mkgrv+POZBrptRzM7GvrRQFwAls
   /ywt87ZSn2LCrfBWom3jE5TIsZTpK2iiwUAn68DfGY751p9X59uOd4D+7uWrq/hLl9hPxXGPcZG2
   1xFoDeT7IPYirRxe22w=;
Received: from pmta05.wdc01.mailchimp.com (127.0.0.1) by mail12.wdc04.mandrillapp.com id hpvmse1jvjgt for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:16:39 +0000 (envelope-from <bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467399; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=3FK0sUDuZ6R/yiTIArmVgxIOGAAPSCdO2eD0ThmGZfw=; 
 b=CWkE8C4Lo19b4VNB5TxM/Oz951WZQEnFEEx391py9tYwASO5AshRqVj59/A0GREjy9MPNJ
 BFNc5uk0FgzOTjXCH8uobUlcgYx/H1kLweKkhkY14qfJ33j1Asjt0fa0ALuJ66swUAkgm5TX
 2wHFWg4EB77OtnREzuijRKBniS9Dc=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: libcfs: Remove unneeded NULL check
Return-Path: <bounce-md_30481620.56cfedc7.v1-72f055b2aca6492189ea8fb0e56e1f9a@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 72f055b2aca6492189ea8fb0e56e1f9a; Fri, 26 Feb 2016 06:16:39 +0000
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226061638.GA22046@kroah.com>
References: <20160221194459.GA28798@janani-Inspiron-3521>
In-Reply-To: <20160221194459.GA28798@janani-Inspiron-3521>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.72f055b2aca6492189ea8fb0e56e1f9a
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:16:39 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 21, 2016 at 02:44:59PM -0500, Janani Ravichandran wrote:
> Remove NULL check before debugfs_remove_recursive as it is not needed.
> Generated-by: scripts/coccinelle/free/ifnullfree.cocci
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/module.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
> index 611607a..a2723a6 100644
> --- a/drivers/staging/lustre/lustre/libcfs/module.c
> +++ b/drivers/staging/lustre/lustre/libcfs/module.c
> @@ -559,8 +559,7 @@ EXPORT_SYMBOL_GPL(lustre_insert_debugfs);
>  
>  static void lustre_remove_debugfs(void)
>  {
> -	if (lnet_debugfs_root != NULL)
> -		debugfs_remove_recursive(lnet_debugfs_root);
> +	debugfs_remove_recursive(lnet_debugfs_root);
>  
>  	lnet_debugfs_root = NULL;
>  }

Didn't someone already send this in?  This doesn't apply :(

