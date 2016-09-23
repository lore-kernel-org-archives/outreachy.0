X-GM-THRID: 6333553605214208000
X-Received: by 10.25.201.198 with SMTP id z189mr426041lff.13.1474646377905;
        Fri, 23 Sep 2016 08:59:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.71 with SMTP id g68ls394678wme.16.gmail; Fri, 23 Sep
 2016 08:59:37 -0700 (PDT)
X-Received: by 10.28.209.205 with SMTP id i196mr220509wmg.14.1474646377223;
        Fri, 23 Sep 2016 08:59:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si289232wme.3.2016.09.23.08.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 08:59:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,382,1470693600"; 
   d="scan'208";a="194458625"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Sep 2016 17:59:36 +0200
Date: Fri, 23 Sep 2016 17:59:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>, 
    Sumit Semwal <sumit.semwal@linaro.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    =?ISO-8859-15?Q?Arve_Hj=F8nnev=E5g?= <arve@android.com>, 
    Riley Andrews <riandrews@android.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Fixes: b6e336dbeda8 ("staging:
 android: ion: Convert hi6220 to common platform")
In-Reply-To: <20160923154221.GA4993@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609231755260.2934@hadrien>
References: <20160923154221.GA4993@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 23 Sep 2016, sayli karnik wrote:

> The sizeof function must take pointer to the ion_heap structure as an argument
> when allocating memory for ipdev->heaps. This patch changes the sizeof
> argument from (struct ion_heap) to (struct ion_heap *) which is a pointer to
> the structure.

The sentence "The sizeof function must take pointer to the ion_heap
structure as an argument..." is not very clear.  Why must it do that?  And
actually, here sizeof is taking a type as an argument, not a pointer to a
structure, so the terminology is not quite right.

Basically, the issue is do you want a pointer to a structure, or a pointer
to an array of pointers.  You have made the latter choice.  You need to
look at how the array is used to identify why it is the correct choice.

Hint: it may be helpful to look at other files that use such values in the
same way.

Hint 2: There is at least one other bug lurking nearby, and the other file
that contains code similar to this one has a nearby bug too, although not
exactly the same one.

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> v2:
> Fixed the error due to a previous commit
> Updated the subject line
>
>  drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> index 659aa71..f9a64e7 100644
> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> @@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
>  		return PTR_ERR(ipdev->data);
>
>  	ipdev->heaps = devm_kzalloc(&pdev->dev,
> -				sizeof(struct ion_heap)*ipdev->data->nr,
> +				sizeof(struct ion_heap *) * ipdev->data->nr,
>  				GFP_KERNEL);
>  	if (!ipdev->heaps) {
>  		ion_destroy_platform_data(ipdev->data);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160923154221.GA4993%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

