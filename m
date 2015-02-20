X-GM-THRID: 1385330376704
X-Received: by 10.67.4.230 with SMTP id ch6mr10729604pad.16.1424451851843;
        Fri, 20 Feb 2015 09:04:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.60.40 with SMTP id e8ls345134obr.32.gmail; Fri, 20 Feb
 2015 09:04:11 -0800 (PST)
X-Received: by 10.182.108.193 with SMTP id hm1mr10427999obb.43.1424451851660;
        Fri, 20 Feb 2015 09:04:11 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22f.google.com (mail-qa0-x22f.google.com. [2607:f8b0:400d:c00::22f])
        by gmr-mx.google.com with ESMTPS id e5si2651170qcg.1.2015.02.20.09.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:04:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22f as permitted sender) client-ip=2607:f8b0:400d:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22f as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x22f.google.com with SMTP id v10so13252739qac.6
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=xwVwcuq5qEFSoEYV/trCmZWfV6bhIGX+l+gIxGQr2Uo=;
        b=UGOiS2iN4+9bui+cKQaE17BeNtfkyU4H4Z1xxugzWz/5xRR04uCbN+rtGkw1zSddrh
         MWlPgdB86I9f50K2PFCCxnm9TQAcY78uDlD9ekLZTl/DCInc2DhXoMHwUvo7grq7KxzB
         PZwrXJ07QdR77H9yF1iloXoSt7XscYMYmaPXqr2wN6T3E2g/ZGLWnqjeMfLrObNoG7bE
         yBR5ja86yaYsTLWanFLXpGEmQM0ohxm8VNPHy9fD3hCw5IOLVShlYdSzaWl6CREGNVod
         gf53GE6ru7FcBOYEfgBvN82gAlBctXcit5RyS/mljwy/GWUxd7H59hwPetoNW4FHT6sW
         smsA==
X-Received: by 10.140.93.139 with SMTP id d11mr24176580qge.101.1424451851577;
        Fri, 20 Feb 2015 09:04:11 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 7sm12152804qhv.8.2015.02.20.09.04.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:04:11 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E76909.5080705@gmail.com>
Date: Fri, 20 Feb 2015 12:04:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 11/11] Staging: drivers: usb: serial:
 ipw: Deleted space
References: <1424451380-4051-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424451380-4051-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 11:56, Hatice ERTÜRK wrote:
> Deleted spaces in 263 line.
> Used the checkpatch.pl.
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/usb/serial/ipw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

It would be better to describe this as 'Deleted spaces mixed into tab
indentation'.

In addition, when you post a set of patches, you should post them as one
set, rather than individual emails. Using a cover letter for the whole
set is recommended.

Cheers,
Jes


> diff --git a/drivers/usb/serial/ipw.c b/drivers/usb/serial/ipw.c
> index 8b1cf18..150bca9 100644
> --- a/drivers/usb/serial/ipw.c
> +++ b/drivers/usb/serial/ipw.c
> @@ -260,7 +260,7 @@ static void ipw_close(struct usb_serial_port *port)
>  	dev_dbg(dev, "%s:sending purge\n", __func__);
>  	result = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
>  			 IPW_SIO_PURGE, USB_TYPE_VENDOR |
> -			 		USB_RECIP_INTERFACE | USB_DIR_OUT,
> +					USB_RECIP_INTERFACE | USB_DIR_OUT,
>  			 0x03,
>  			 0,
>  			 NULL,
> 


