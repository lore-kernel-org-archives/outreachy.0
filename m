X-GM-THRID: 9691594752000
X-Received: by 10.182.44.199 with SMTP id g7mr11175956obm.11.1427397036382;
        Thu, 26 Mar 2015 12:10:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls866896qgp.36.gmail; Thu, 26 Mar
 2015 12:10:36 -0700 (PDT)
X-Received: by 10.140.147.130 with SMTP id 124mr17651163qht.8.1427397036167;
        Thu, 26 Mar 2015 12:10:36 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-yh0-x229.google.com (mail-yh0-x229.google.com. [2607:f8b0:4002:c01::229])
        by gmr-mx.google.com with ESMTPS id f61si410209yho.3.2015.03.26.12.10.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:4002:c01::229 as permitted sender) client-ip=2607:f8b0:4002:c01::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:4002:c01::229 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yh0-x229.google.com with SMTP id m52so30871673yhi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=KywqMJ6tWtNaHEj1mDbPAiiXVM4qtgox2loC+E/uAlE=;
        b=LqCk2v7LFLnpO5moui5CKEp/bH17Wi6eBxjw3Ap4GUn8AV24jVbth0dlkcL9abUQXM
         lToMDls+n03PiG5a3JHtCTPujHe6u2AsBXoxrVsLsaH6H+LD8SudawMg2/Ol6di2JVSU
         z/DdkcBg4gzpmVtifu49OWWE38Dk5A7/zwYSSmEvUGMXY1VPB0W4b6ZcnnnBGqJf9FMn
         +aswKFKQilP3IzrbOJMqJXz0ZTHUzXbbMz1lgtZeWmWrkQVSLYi7+3jn+3ymf3DDWyia
         iLq6dac6CjzbGlUi+jk8gOSf9ZzlvQp4J5scsR+OwMlribdEG8cYHQrWXnVVLzJYuUoe
         /fyQ==
X-Received: by 10.55.26.209 with SMTP id l78mr31787758qkh.60.1427397036077;
        Thu, 26 Mar 2015 12:10:36 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id x15sm3993458qkx.28.2015.03.26.12.10.35
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:10:35 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <551459AA.2030300@gmail.com>
Date: Thu, 26 Mar 2015 15:10:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>, 
 Marianne Moeller Knudsen <marianne@masu.dk>
CC: Greg KH <gregkh@linuxfoundation.org>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace printk
 with netdev_info
References: <20150323180424.GA2636@debianvm> <20150323214302.GA24016@kroah.com> <20150326013322.GA3360@debianvm> <alpine.DEB.2.10.1503261426550.2661@hadrien>
In-Reply-To: <alpine.DEB.2.10.1503261426550.2661@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 03/26/15 09:27, Julia Lawall wrote:
> 
> 
> On Thu, 26 Mar 2015, Marianne Moeller Knudsen wrote:
> 
>> On Mon, Mar 23, 2015 at 10:43:02PM +0100, Greg KH wrote:
>>> On Mon, Mar 23, 2015 at 07:04:24PM +0100, Marianne Moeller Knudsen wrote:
>>>> Replace printk(KERN_INFO...) by netdev_info for more uniform error
>>>> reporting. Issue found by checkpatch.
>>>>
>>>> Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
>>>> ---
>>>>  drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
>>>> index c51f7e0..949cba4 100644
>>>> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
>>>> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
>>>> @@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
>>>>
>>>>  	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
>>>>  		if (memcmp(pTS->Addr, Addr, 6) == 0) {
>>>> -			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
>>>> +			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
>>>>  			RemoveTsEntry(ieee, pTS, TX_DIR);
>>>>  			list_del_init(&pTS->List);
>>>>  			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);
>>>
>>> Someone already sent this patch before you did :(
>>
>> Out of curiosity: All the other prints in this file uses RTLLIB_DEBUG. Could it be assumed
>> that they could be used here as well? Something like RTLLIB_DEBUG(RLTLIB_DL_TS,
>> ....)?
> 
> Your goal should be to get rid of RTLLIB_DEBUG, and replace them with
> standard kernel functions (dev_err, etc).

Note that RTLLIB_DEBUG is used to select the debug print levels based on
a module parameter. Switching them over to always using netdev_debug()
is not necessarily desirable.

To a large extent it will depend on what the maintainer/developer needs
them for. It might be possible to clean them up and make them prettier,
but just pulling them out and replacing them with netdev_foo() needs
consideration first.

Cheers,
Jes



