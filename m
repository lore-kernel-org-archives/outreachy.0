X-GM-THRID: 6949346305105723392
X-Received: by 2002:a5d:47c4:: with SMTP id o4mr21070867wrc.138.1618042581418;
        Sat, 10 Apr 2021 01:16:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls650690wrb.1.gmail; Sat, 10
 Apr 2021 01:16:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV0daL/YSF/3KBMtyukXK8V0Grq49WK6atJiVVaJg4aYMv9Ij75VGsf+ToMZ6IIIkURNbv
X-Received: by 2002:adf:fb87:: with SMTP id a7mr21654994wrr.58.1618042579951;
        Sat, 10 Apr 2021 01:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618042579; cv=none;
        d=google.com; s=arc-20160816;
        b=TMXeiTjfdwf0ImqFiataz3sNMsG4Q5Sxd49b32K7JEP6Y2OcErXxiBbDTwvwd3pXTm
         eaLr79W4305U7qZF0IwcvboVbI/Zz5W+/1tChH6m4Z46p9afkSpGk7Lq+iaIc09YUoSx
         ChDBTnVlpuK68Wd0gRtSVUtBPHHIBBdynUgPNR696GFZnmYa2pdugQ/ZwwQu+P0BTjVQ
         gk6LAdXTrZX68eay3f7nedGvTTiAvqv0mha3oVD97XX1IWzZmdC0lvnPj9Nt/KenflsZ
         2ivRWTs2k8rlp8hFC5kyeMMnLsjhIbRN0aNZc3OFrdxuc2KCaBAF2nEMZvuVvGKswm3x
         1rFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=pjHBUkSx9ClbjfAxXGHdfk2xaa/lxR0ZxjIFekb0gTM=;
        b=dRvSAQlnA5IDwuNGn+z+oUmz+e8FyfdW/N4yUT2afr8lGA+fvBC7Pb7L52BDm0i1iN
         MNe+5txuIze0MDKgH10hUF/dU9SFJFwtjU4vp7Eb0GbUwS+dEsWcG4pTF7jmaJ9Xv1lu
         ZWTY0mcFlc1mTBSSFCGuKmrKx0rz9GwPeKZvy/YEan19RnVaPI8G35aePITHXsowGfy7
         TMbhbXY4dXin5i8aYi3kD1xJlSiFIKzStphkO/mfRTKrKkqlnNruuE22rZTcf9D2o5oA
         6jfVAvPM8aZRM7NzXto7FFNalHHStyeWcKHVC5OhCQHS2B9LjsmcF2RyWvxwOwS4Tp5T
         gMFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l4si557553wru.4.2021.04.10.01.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AhHlmwqg61Ye3+5hDwb+Ew+rd1XBQXvMji2hD?=
 =?us-ascii?q?6mlwRA09T+WzkceykPMHkSLlkTp5YhAdsP2JJaXoexjh3LFv5415B9ufdS3HnE?=
 =?us-ascii?q?ftE41494vlxFTbdRHW0uJGz69vf+xfJbTLZ2RStsrx7AmmH9tI+rDuzImTmezc?=
 =?us-ascii?q?w31xJDsGV4hc6W5CZTqmLg=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="502532363"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 10:16:19 +0200
Date: Sat, 10 Apr 2021 10:16:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8192e: replace
 comparison to NULL by boolean
In-Reply-To: <YHEJngq5MHBEspGY@kali>
Message-ID: <alpine.DEB.2.22.394.2104101015560.2975@hadrien>
References: <YHEJngq5MHBEspGY@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Mitali Borkar wrote:

> Replaced comparison to NULL by boolean expressions
> (here used boolean negations). This improves readability of code.
> Reported by checkpatch.
>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index 65202dd53447..0b1e92f17805 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
>  	struct rt_hi_throughput *pHT = ieee->pHTInfo;
>  	struct ht_capab_ele *pCapELE = NULL;
>
> -	if ((posHTCap == NULL) || (pHT == NULL)) {
> +	if ((!posHTCap) || (!pHT)) {

You can drop the parentheses. ! has higher precedenace than ||.

julia

>  		netdev_warn(ieee->dev,
>  			    "%s(): posHTCap and pHTInfo are null\n", __func__);
>  		return;
> @@ -357,7 +357,7 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
>  	struct rt_hi_throughput *pHT = ieee->pHTInfo;
>  	struct ht_info_ele *pHTInfoEle = (struct ht_info_ele *)posHTInfo;
>
> -	if ((posHTInfo == NULL) || (pHTInfoEle == NULL)) {
> +	if ((!posHTInfo) || (!pHTInfoEle)) {
>  		netdev_warn(ieee->dev,
>  			    "%s(): posHTInfo and pHTInfoEle are null\n",
>  			    __func__);
> @@ -397,7 +397,7 @@ void HTConstructInfoElement(struct rtllib_device *ieee, u8 *posHTInfo,
>  void HTConstructRT2RTAggElement(struct rtllib_device *ieee, u8 *posRT2RTAgg,
>  				u8 *len)
>  {
> -	if (posRT2RTAgg == NULL) {
> +	if (!posRT2RTAgg) {
>  		netdev_warn(ieee->dev, "%s(): posRT2RTAgg is null\n", __func__);
>  		return;
>  	}
> @@ -420,7 +420,7 @@ static u8 HT_PickMCSRate(struct rtllib_device *ieee, u8 *pOperateMCS)
>  {
>  	u8 i;
>
> -	if (pOperateMCS == NULL) {
> +	if (!pOperateMCS) {
>  		netdev_warn(ieee->dev, "%s(): pOperateMCS is null\n", __func__);
>  		return false;
>  	}
> @@ -453,7 +453,7 @@ u8 HTGetHighestMCSRate(struct rtllib_device *ieee, u8 *pMCSRateSet,
>  	u8		mcsRate = 0;
>  	u8		availableMcsRate[16];
>
> -	if (pMCSRateSet == NULL || pMCSFilter == NULL) {
> +	if (!pMCSRateSet || !pMCSFilter) {
>  		netdev_warn(ieee->dev,
>  			    "%s(): pMCSRateSet and pMCSFilter are null\n",
>  			    __func__);
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHEJngq5MHBEspGY%40kali.
>

