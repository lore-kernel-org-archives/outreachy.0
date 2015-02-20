X-GM-THRID: 1068226314240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8554fdbdd0916d21
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.31.97 with SMTP id l61mr8265870yha.10.1424418512376;
        Thu, 19 Feb 2015 23:48:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.17.207 with SMTP id 76ls630075ior.66.gmail; Thu, 19 Feb
 2015 23:48:32 -0800 (PST)
X-Received: by 10.66.102.100 with SMTP id fn4mr5272723pab.19.1424418512216;
        Thu, 19 Feb 2015 23:48:32 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com. [32.97.182.138])
        by gmr-mx.google.com with ESMTPS id ba9si5121634qcb.0.2015.02.19.23.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:48:32 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.138;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 02:48:31 -0500
Received: from d01dlp01.pok.ibm.com (9.56.250.166)
	by e8.ny.us.ibm.com (192.168.1.108) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 02:48:30 -0500
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com [9.57.198.23])
	by d01dlp01.pok.ibm.com (Postfix) with ESMTP id 9827D38C8039
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:47:12 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp22033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1K7mT8K30212258
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:48:29 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1K7mTp3029393
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:48:29 -0500
Received: from preeti.in.ibm.com ([9.77.198.76])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1K7mHZk028991;
	Fri, 20 Feb 2015 02:48:26 -0500
Message-ID: <54E6E6C0.1090605@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 13:18:16 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use #include <linux/uaccess.h>
 instead of <asm/uaccess.h>
References: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
In-Reply-To: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022007-0029-0000-0000-0000020D67E5

Hi Aya,

On 02/20/2015 07:13 AM, Aya Mahfouz wrote:
> This patchset replaces <asm/uaccess.h> by <linux/uaccess.h>. The
> replacements is safe since the header file <linux/uaccess.h> includes
> <asm/uaccess.h>

Like Julia mentioned its a thoughtful comment. Such explanations are
encouraged. However, it will be more valuable to include the above
explanation in the changelogs of the patches also since those go into
the git log of the kernel. The cover letter contains an overview of the
patchset to help the reviewers. They do not get documented in the
history of changes to the kernel. Would you therefore be able to resend
this as a fresh version including the above lines in the changelog of
the individual patches?

Regards
Preeti U Murthy
> 
> Aya Mahfouz (2):
>   staging: i2o: Use #include <linux/uaccess.h> instead of
>     <asm/uaccess.h>
>   staging: i2o: Use #include <linux/uaccess.h> instead of
>     <asm/uaccess.h>
> 
>  drivers/staging/i2o/i2o_config.c | 3 +--
>  drivers/staging/i2o/i2o_proc.c   | 2 +-
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 


