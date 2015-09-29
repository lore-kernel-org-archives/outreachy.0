X-GM-THRID: 6199796620596346880
X-Received: by 10.129.101.196 with SMTP id z187mr21139862ywb.41.1443504000074;
        Mon, 28 Sep 2015 22:20:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.194 with SMTP id 63ls1885506iom.103.gmail; Mon, 28 Sep
 2015 22:19:59 -0700 (PDT)
X-Received: by 10.107.7.87 with SMTP id 84mr23074766ioh.9.1443503999782;
        Mon, 28 Sep 2015 22:19:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si2962993pab.1.2015.09.28.22.19.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 22:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id lk4so98428084pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 22:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=AOPp601mVgGOgoCM6WTtxEtDFhc7kIiymLhgEbG4c8g=;
        b=q4IZReUFROQ8r0EE8n9+JZcdbe9Lp6ra7BLbqNMqqeNz2XyfY7WDehUtnt1YsL+kEl
         esuLXn/YAa4PNn4Wov3lsuLtCh1knhy/W0YLGjCtyrKVMWIDsm8g28gsRMCu3vxq/q0Q
         1d4pemtRWIKG983KYjPRgug1FG8wp/CRfH5Mu/veVCvQh6zpfOPdync2EJWAWO8JOB6i
         wF8xOqT5r03SlYTnRbzLfr5mFI8rNO6Fle8XMOtEglwu0CUZnPEau3P68A+ky6jqaucH
         offtQ1dnFZnSKFNzD1IE0i7k0mUjEpN1/QkTVVr8Br8lvXHOGx4C9GL9kU6kZVhkHgwF
         o8Tw==
X-Received: by 10.66.147.38 with SMTP id th6mr30717158pab.94.1443503999647;
        Mon, 28 Sep 2015 22:19:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id rz9sm22721860pbb.61.2015.09.28.22.19.57
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 28 Sep 2015 22:19:59 -0700 (PDT)
Date: Tue, 29 Sep 2015 10:49:51 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: gdm724x: gdm_usb.c: Use
 module_usb_driver
Message-ID: <20150929051951.GA5935@sudip-pc>
References: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Sep 29, 2015 at 10:26:48AM +0530, Shraddha Barke wrote:
> Macro module_usb_driver is used for drivers whose init
> and exit paths does only register and unregister.Remove
> boilerplate code by using module_usb_driver.
> 
> Problem found using Coccinelle.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
But then how are you going to create the workqueues and
gdm_lte_event_init()?
module_usb_driver() is used in places where the init function is only
having usb_register() and exit function is only having usb_deregister().
If they are doing something special then you can not use
module_usb_driver.

regards
sudip

