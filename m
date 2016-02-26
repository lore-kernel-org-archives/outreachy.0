X-GM-THRID: 6253752748350636032
X-Received: by 10.107.184.195 with SMTP id i186mr5606905iof.24.1456467392643;
        Thu, 25 Feb 2016 22:16:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.138 with SMTP id r10ls564854ioi.57.gmail; Thu, 25 Feb
 2016 22:16:32 -0800 (PST)
X-Received: by 10.107.11.23 with SMTP id v23mr5523091ioi.13.1456467392324;
        Thu, 25 Feb 2016 22:16:32 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id y131si754004ywc.0.2016.02.25.22.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:16:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=OyBj2cAI/xGqg3OWg5NkL6jQLQc=;
 b=kkUCa09rbk6H9wfrSCZsKtcuFg/GBzgV/bu711FIuvnYXvtEy/+07iuvfbDoiN4T4JI0i6T+9NLh
   q9UUGuLsaTzdr4ttJgRTvZ405ss0jqf/aP9wwzZuYQO77s8S6iHlWVAbq8ATjbU3dVfPeJ4KFW69
   Nej3rkc1Vf/HKFuQZdU=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvms01sar8p for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:16:32 +0000 (envelope-from <bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467392; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=ReoNhEb8YO9E2G3qC9IAibOqbPSjBmiU5dfJgT74PXI=; 
 b=ObA/jUo0bcMwLhWpLuuU/xFpuXWxVKAAHjbffX4yiYyhC2o9FiEhz6UTV/ngrIvZk7oDNn
 Q+hWDiW+gRV5DdeQ71OY95ZKunCX/TgLoEIovcWPYuWZroHejU+jULaxwR3gQlpOM/NQN3+h
 0d6Kqp0v+TPx4jEQA+vI+QXr5Dh3U=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: lustre: obdclass: Remove unneeded NULL check
Return-Path: <bounce-md_30481620.56cfedc0.v1-ced5a8a111e34a60b4da01ca689ac416@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id ced5a8a111e34a60b4da01ca689ac416; Fri, 26 Feb 2016 06:16:32 +0000
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226061631.GC21950@kroah.com>
References: <20160221195037.GA29036@janani-Inspiron-3521>
In-Reply-To: <20160221195037.GA29036@janani-Inspiron-3521>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.ced5a8a111e34a60b4da01ca689ac416
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:16:32 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 21, 2016 at 02:50:37PM -0500, Janani Ravichandran wrote:
> Remove unneeded NULL check before debugfs_remove_recursive.
> Generated-by: scripts/coccinelle/free/ifnullfree.cocci
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> index 1913f3e..2045621 100644
> --- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> +++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
> @@ -454,8 +454,7 @@ out:
>  
>  int class_procfs_clean(void)
>  {
> -	if (debugfs_lustre_root != NULL)
> -		debugfs_remove_recursive(debugfs_lustre_root);
> +	debugfs_remove_recursive(debugfs_lustre_root);
>  
>  	debugfs_lustre_root = NULL;
>  

Doesn't apply to the tree :(

