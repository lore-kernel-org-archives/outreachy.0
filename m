X-GM-THRID: 6256035827033309184
X-Received: by 10.28.15.82 with SMTP id 79mr121855wmp.3.1456935940819;
        Wed, 02 Mar 2016 08:25:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.75 with SMTP id f72ls544862lfi.12.gmail; Wed, 02 Mar
 2016 08:25:40 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr3131896lbc.6.1456935940304;
        Wed, 02 Mar 2016 08:25:40 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z75si45348wmz.2.2016.03.02.08.25.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EDC8EDBA;
	Wed,  2 Mar 2016 16:25:38 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:38 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: lnet: Replace
 typedef with struct
Message-ID: <20160302162538.GG987@kroah.com>
References: <20160227181118.GA28603@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160227181118.GA28603@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 27, 2016 at 11:41:18PM +0530, Bhaktipriya Shridhar wrote:
> As per the Linux kernel coding style guidelines, using typedef for a structure
> type is not recommended. Hence, occurences of typedefs have been
> removed.
> 
> This was done with Coccinelle.
> 
> @r1@
> type T;
> @@
> 
> typedef struct { ... } T;
> 
> @script:python c1@
> T2;
> T << r1.T;
> @@
> coccinelle.T2 = T;
> 
> @@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
>  struct
>  + T2
>  { ... }
>  -T
>  ;
>  @@ type r1.T;
>  identifier c1.T2;
>  @@
>  -T
>  + struct T2
> 
> The '_t' suffix has not been removed since there is a variable with the
> same name.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject
> 
>  drivers/staging/lustre/lnet/selftest/ping_test.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/ping_test.c b/drivers/staging/lustre/lnet/selftest/ping_test.c
> index 9d27e39..617a641 100644
> --- a/drivers/staging/lustre/lnet/selftest/ping_test.c
> +++ b/drivers/staging/lustre/lnet/selftest/ping_test.c
> @@ -48,12 +48,12 @@ static int ping_srv_workitems = SFW_TEST_WI_MAX;
>  module_param(ping_srv_workitems, int, 0644);
>  MODULE_PARM_DESC(ping_srv_workitems, "# PING server workitems");
> 
> -typedef struct {
> +struct lst_ping_data_t {

Don't put "_t" at the end of a typedef :(


