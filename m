X-GM-THRID: 612983898112
X-Received: by 10.182.142.102 with SMTP id rv6mr9200090obb.47.1424430076272;
        Fri, 20 Feb 2015 03:01:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.20.107 with SMTP id m11ls334734obe.15.gmail; Fri, 20 Feb
 2015 03:01:16 -0800 (PST)
X-Received: by 10.183.10.164 with SMTP id eb4mr8573380obd.48.1424430076104;
        Fri, 20 Feb 2015 03:01:16 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com. [32.97.182.138])
        by gmr-mx.google.com with ESMTPS id q2si5376898qcn.2.2015.02.20.03.01.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 03:01:16 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.138;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 06:01:15 -0500
Received: from d01dlp03.pok.ibm.com (9.56.250.168)
	by e8.ny.us.ibm.com (192.168.1.108) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 06:01:13 -0500
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com [9.57.198.24])
	by d01dlp03.pok.ibm.com (Postfix) with ESMTP id E2C65C90043
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:52:23 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1KB1CCX23396558
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:01:12 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1KB1C7j006930
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 06:01:12 -0500
Received: from preeti.in.ibm.com ([9.79.205.34])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1KB108j005286;
	Fri, 20 Feb 2015 06:01:11 -0500
Message-ID: <54E713EC.7050003@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 16:31:00 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
        outreachy-kernel@googlegroups.com
CC: gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: media: vino: Replace printk()
 and dprintk() with dev_dbg()
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com> <6147170.92TzAG2Bsj@wuerfel> <CAL7P5jKjQPYvyJD2RDSV8rTFxMCaM0zjMNCXy_oEtqYEpWm2GA@mail.gmail.com> <7991599.GNC6NCM7mQ@wuerfel> <96fe9c8a-4cb6-4058-a4be-3740e3e3cf58@googlegroups.com>
In-Reply-To: <96fe9c8a-4cb6-4058-a4be-3740e3e3cf58@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022011-0029-0000-0000-0000020D8E3E

Hi Ksenija

On 02/20/2015 03:09 PM, Ksenija Stanojevic wrote:
> Hm, so I should not send this patch at all? 

Yes, please avoid it as it will not make it to mainline.

Regards
Preeti U Murthy
> 
> On Friday, February 20, 2015 at 10:34:55 AM UTC+1, Arnd Bergmann wrote:
> 
>     On Friday 20 February 2015 10:21:48 Ksenija Stanojević wrote:
>     > I based it on staging-next, like in a tutorial
> 
>     Ok, I've investigated a bit further now and found that four
>     staging drivers have been removed in mainline that are still
>     present in staging-next:
> 
>     drivers/staging/line6/ (moved to sound/usb)
>     drivers/staging/media/parport/
>     drivers/staging/media/tlg2300/
>     drivers/staging/media/vino/
> 
>     Any patches against these could in theory still make it into
>     Greg's tree but they would be completely pointless because they
>     get removed with the next mainline synchronization.
> 
>             Arnd
> 
> -- 
> You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com
> <mailto:outreachy-kernel+unsubscribe@googlegroups.com>.
> To post to this group, send email to outreachy-kernel@googlegroups.com
> <mailto:outreachy-kernel@googlegroups.com>.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/96fe9c8a-4cb6-4058-a4be-3740e3e3cf58%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/96fe9c8a-4cb6-4058-a4be-3740e3e3cf58%40googlegroups.com?utm_medium=email&utm_source=footer>.
> For more options, visit https://groups.google.com/d/optout.


