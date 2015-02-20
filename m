X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.43.146 with SMTP id l18mr8681957yhb.23.1424429949793;
        Fri, 20 Feb 2015 02:59:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.69 with SMTP id 66ls706076iod.84.gmail; Fri, 20 Feb 2015
 02:59:09 -0800 (PST)
X-Received: by 10.66.193.106 with SMTP id hn10mr8777072pac.48.1424429949473;
        Fri, 20 Feb 2015 02:59:09 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com. [32.97.182.138])
        by gmr-mx.google.com with ESMTPS id q2si5376444qcn.2.2015.02.20.02.59.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 02:59:09 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.138;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 05:59:09 -0500
Received: from d01dlp01.pok.ibm.com (9.56.250.166)
	by e8.ny.us.ibm.com (192.168.1.108) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 05:59:07 -0500
Received: from b01cxnp23034.gho.pok.ibm.com (b01cxnp23034.gho.pok.ibm.com [9.57.198.29])
	by d01dlp01.pok.ibm.com (Postfix) with ESMTP id 52E1438C8026
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:58:01 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1KAx7D628573860
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 10:59:07 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1KAx7Pn027086
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 05:59:07 -0500
Received: from preeti.in.ibm.com ([9.79.205.34])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1KAww6c026862;
	Fri, 20 Feb 2015 05:59:06 -0500
Message-ID: <54E71372.7030500@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 16:28:58 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Convert simple_strtoul to kstrtoul
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
In-Reply-To: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022010-0029-0000-0000-0000020D8D96

Hi Navya,

On 02/19/2015 11:41 PM, Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl warning:
> simple_strtoul is obsolete, use kstrtoul instead.
> 
> When the string is not converted(parsing error), the strings pointed to by ep and parport[n] are the same. This parsing error results in kstrtoul returning a non-zero value.

When you write changelogs restrict the length of the line to 80
characters, so that the patch looks uniformly aligned throughout.

On another note, the patch is fixing an issue that is not specific to ep
and parport[n]. It looks at replacing strtoul() with kstrtoul() in
places where there are checks for parsing error in string parsing.
Make the explanation more generic because its not specific to this file.
Ideally if any one else finds such a usage elsewhere, they can change it
the same way. Hence under such circumstances avoid using file specific
parameters in the changelog.

And try to link the usage of strtoul() with kstrtoul(); you replace
strtoul() with kstrtoul() in the error handling part here because both
check for similar errors while parsing strings. Ideally kstrtoul() error
check should be a superset of strtoul(). Else this patch would have been
wrong.

But hold onto these points for a similar cleanup on another driver. See
below.

> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
> Changes in v3:
>    -Removed few changes made in previous commit which were introducing new checkpatch.pl warnings.
> 
>  drivers/staging/media/parport/bw-qcam.c | 4 +---

Refer to the mail that Arnd sent out. He has listed the drivers that are
not in mainline. So avoid sending patches against the following drivers,
since they will soon be removed from staging-next as well.

drivers/staging/line6/ (moved to sound/usb)
drivers/staging/media/parport/
drivers/staging/media/tlg2300/
drivers/staging/media/vino/

Regards
Preeti U Murthy

>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
> index 67b9da1..6c9b400 100644
> --- a/drivers/staging/media/parport/bw-qcam.c
> +++ b/drivers/staging/media/parport/bw-qcam.c
> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
>  	if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
>  		/* user gave parport parameters */
>  		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
> -			char *ep;
>  			unsigned long r;
> -			r = simple_strtoul(parport[n], &ep, 0);
> -			if (ep == parport[n]) {
> +			if (kstrtoul(parport[n], 0, &r)) {
>  				printk(KERN_ERR
>  					"bw-qcam: bad port specifier \"%s\"\n",
>  					parport[n]);
> 


