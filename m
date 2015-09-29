X-GM-THRID: 6199796620596346880
X-Received: by 10.66.146.131 with SMTP id tc3mr1657281pab.20.1443506112277;
        Mon, 28 Sep 2015 22:55:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.77.75 with SMTP id q11ls1068627igw.40.canary; Mon, 28 Sep
 2015 22:55:12 -0700 (PDT)
X-Received: by 10.66.100.233 with SMTP id fb9mr22099430pab.24.1443506112021;
        Mon, 28 Sep 2015 22:55:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id zg1si2882489pbb.2.2015.09.28.22.55.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 22:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so99324906pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 22:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=x+gJJaXmZhlShaOgXPWfg/V3G0SDWsGKxihXAhc7G8s=;
        b=RyNEgCGKnVAsZX3PsB7sFQk/Mvallpoo/PkzEd02jHiP8RcLXiaWT+iARjpG54AdRp
         Y9vgWwfO61WyJ93KvBl2lDF18Zs0oERk31snAr6fzrGC8JRS/UVAEDys2JwpvJCp5KYq
         hdw/kteGczoTna2np6js2jglUgi80W7S1YLT9hlrQyoGAI33OiKWoQLJEX0u9iPNxfQY
         0SnhvFRByrhrRIXuRI9h+aSN5GINXXSgI10MgetpCEgimyp+EmYYhVu4uRy7I5MPB9i8
         yyjx9isaNr6zcLzdFqGT2MXJkG5TlRLpuQECEVWXU7Tgr29iHF7ke3QP0tT2l3b0DlMJ
         HcSQ==
X-Received: by 10.66.217.138 with SMTP id oy10mr22118551pac.149.1443506111875;
        Mon, 28 Sep 2015 22:55:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yk5sm23104635pab.31.2015.09.28.22.55.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 Sep 2015 22:55:10 -0700 (PDT)
Date: Tue, 29 Sep 2015 11:25:05 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: gdm724x: gdm_usb.c: Use
 module_usb_driver
In-Reply-To: <alpine.DEB.2.10.1509290738570.2764@hadrien>
Message-ID: <alpine.DEB.2.11.1509291119180.10963@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.10.1509290738570.2764@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.560A27BE.009E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Tue, 29 Sep 2015, Julia Lawall wrote:

>
>
> On Tue, 29 Sep 2015, Shraddha Barke wrote:
>
>> Macro module_usb_driver is used for drivers whose init
>> and exit paths does only register and unregister.Remove
>> boilerplate code by using module_usb_driver.
>>
>> Problem found using Coccinelle.
>
> If you find a problem with Coccinelle, please put at least a simplified
> version of the semantic patch you used.  As Sudip noted, this patch series
> is not at allcorrect, and knowing what semantic patch you used could help
> suggest where things went wrong.

Yes. I've sent another patch which uses module_i2c_driver. Actually 
initially I used Coccinelle to search for all instances of module_init(f) 
and module_exit(f) which is why I got these results as well.

>
> julia
>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/gdm724x/gdm_usb.c | 38 +-------------------------------------
>>  1 file changed, 1 insertion(+), 37 deletions(-)
>>
>> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
>> index ed1a12f..3977663 100644
>> --- a/drivers/staging/gdm724x/gdm_usb.c
>> +++ b/drivers/staging/gdm724x/gdm_usb.c
>> @@ -998,43 +998,7 @@ static struct usb_driver gdm_usb_lte_driver = {
>>  	.reset_resume = gdm_usb_resume,
>>  };
>>
>> -static int __init gdm_usb_lte_init(void)
>> -{
>> -	if (gdm_lte_event_init() < 0) {
>> -		pr_err("error creating event\n");
>> -		return -1;
>> -	}
>> -
>> -	usb_tx_wq = create_workqueue("usb_tx_wq");
>> -	if (usb_tx_wq == NULL)
>> -		return -1;
>> -
>> -	usb_rx_wq = create_workqueue("usb_rx_wq");
>> -	if (usb_rx_wq == NULL)
>> -		return -1;
>> -
>> -	return usb_register(&gdm_usb_lte_driver);
>> -}
>> -
>> -static void __exit gdm_usb_lte_exit(void)
>> -{
>> -	gdm_lte_event_exit();
>> -
>> -	usb_deregister(&gdm_usb_lte_driver);
>> -
>> -	if (usb_tx_wq) {
>> -		flush_workqueue(usb_tx_wq);
>> -		destroy_workqueue(usb_tx_wq);
>> -	}
>> -
>> -	if (usb_rx_wq) {
>> -		flush_workqueue(usb_rx_wq);
>> -		destroy_workqueue(usb_rx_wq);
>> -	}
>> -}
>> -
>> -module_init(gdm_usb_lte_init);
>> -module_exit(gdm_usb_lte_exit);
>> +module_usb_driver(gdm_usb_lte_driver);
>>
>>  MODULE_VERSION(DRIVER_VERSION);
>>  MODULE_DESCRIPTION("GCT LTE USB Device Driver");
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443502609-9918-1-git-send-email-shraddha.6596%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>

