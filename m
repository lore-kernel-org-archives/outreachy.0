X-GM-THRID: 289717354496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5627416f6de18613
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.102.73 with SMTP id fm9mr3573020obb.38.1424259348202;
        Wed, 18 Feb 2015 03:35:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.68 with SMTP id b4ls4771obf.49.gmail; Wed, 18 Feb 2015
 03:35:48 -0800 (PST)
X-Received: by 10.182.186.74 with SMTP id fi10mr14234271obc.1.1424259348065;
        Wed, 18 Feb 2015 03:35:48 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com. [32.97.110.160])
        by gmr-mx.google.com with ESMTPS id e3si1582808igq.1.2015.02.18.03.35.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 03:35:47 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.110.160;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Wed, 18 Feb 2015 04:35:47 -0700
Received: from d03dlp01.boulder.ibm.com (9.17.202.177)
	by e39.co.us.ibm.com (192.168.1.139) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Wed, 18 Feb 2015 04:35:45 -0700
Received: from b03cxnp08027.gho.boulder.ibm.com (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 2E823C40006
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 04:26:57 -0700 (MST)
Received: from d03av03.boulder.ibm.com (d03av03.boulder.ibm.com [9.17.195.169])
	by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1IBZbf934209874
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 04:35:45 -0700
Received: from d03av03.boulder.ibm.com (localhost [127.0.0.1])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1IBZCKL024639
	for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 04:35:12 -0700
Received: from preeti.in.ibm.com ([9.77.120.193])
	by d03av03.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1IBZ6Si023553;
	Wed, 18 Feb 2015 04:35:09 -0700
Message-ID: <54E478D9.7070303@linux.vnet.ibm.com>
Date: Wed, 18 Feb 2015 17:04:49 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: i2o: Remove space after
 the * in a pointer type variable.
References: <20150218111524.GA11738@gmail.com>
In-Reply-To: <20150218111524.GA11738@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15021811-0033-0000-0000-000003B2DB75

Hi Vatika,

On 02/18/2015 04:45 PM, Vatika Harlalka wrote:
> This patch is to remove space after the * in a pointer type variable declaration to follow kernel coding conventions.

You may have noticed that a limit of 80 characters is imposed in the
kernel coding style. It would be good to follow the same in the
changelog as well. So the patch looks is uniformly aligned throughout.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
> 
>  Changes in v3: Moved changelog below to "---" line.
>  Changes in v2: Changed subject line to make it more descriptive.
> 
>  drivers/staging/i2o/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/i2o/debug.c b/drivers/staging/i2o/debug.c
> index 7a16114..4f23e3f 100644
> --- a/drivers/staging/i2o/debug.c
> +++ b/drivers/staging/i2o/debug.c
> @@ -5,7 +5,7 @@
> 
>  static void i2o_report_util_cmd(u8 cmd);
>  static void i2o_report_exec_cmd(u8 cmd);
> -static void i2o_report_fail_status(u8 req_status, u32 * msg);
> +static void i2o_report_fail_status(u8 req_status, u32 *msg);

I see that the definition of this function suffers from the same issue
down below in the file. You may want to correct that as well and club
both the changes in one patch.

>  static void i2o_report_common_status(u8 req_status);
>  static void i2o_report_common_dsc(u16 detailed_status);
> 
Regards
Preeti U Murthy


