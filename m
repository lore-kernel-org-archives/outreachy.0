X-GM-THRID: 6802607426621145088
X-Received: by 2002:a05:600c:2947:: with SMTP id n7mr3037395wmd.13.1583857355315;
        Tue, 10 Mar 2020 09:22:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls633877wma.3.canary-gmail; Tue,
 10 Mar 2020 09:22:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlcXE1qp4E6KUWoRkiyAdA5wpyzPRZofbiripfRa0cjEkyURZlc5C19eiEgIG9xh9Qi9ao
X-Received: by 2002:a1c:b657:: with SMTP id g84mr2874067wmf.107.1583857353722;
        Tue, 10 Mar 2020 09:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583857353; cv=none;
        d=google.com; s=arc-20160816;
        b=Kdao22sFLllNR4le8O3ntbRLB+SMdXZOl4P9fdGo9yxet2JB8SWn1Ix2ArgZRsn3i3
         ZE7OpkSw11c1IgoUWrdfNN3QTn6dPu50qT0TSDvzA3VYmmJr0FrBNNHaCZKX29fpnKdH
         p04qKy9j4t+IE475gW+WfWf/l1auJ/UY5uV6+McHJZ0kEpvzeENP04fpN7ukJ56hXka7
         g+zz72a76xG5JNUoVP+9HKqMKNuiO4kmFhJggyfJbIIxfKfB6yr6kS9xyct0G9Hrz2wK
         E9rZMlhOV2DFm31SozsvFc0mf5Bm/0HuNO93vB7tS1LI/ok3cy2nuUclEkrlSDSKCc2c
         fTIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iw/HtdtEJIlKS/nyFULaYTpgPd8VJo8xadb5pfVmPNQ=;
        b=haBb7iQQ8GvEhnwJKYE6I/cYq1SHlpnHswV43tzaEI6+UgDwBrHfGPyK8cEeGpHY38
         Yf87kNrrpMNdGqN3aqMhgd7v89v6IuDsmxEZfwVY54fVlJIL19Wx/v3UNEPxFElmPtrd
         bHPoSOz1NtnneCflGU+OuV2EsJ+hxNsRwOku8qnyQZLUrVll39rpZDx0W9F1MRPkLMBb
         XdbrgS5pIaScYzN/HWP3V+7XjQ1pxKXNbzPeXTptIdAk8GjZ2fJOd1/Pz7pTOnA+3aiz
         TX2ujU3eAv4m1jB11ylvYuwIrEPicpwK6z4SxYmFvEZf/GH0rJbcDbX9CM9rgfeeHK4a
         JX8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s2si337266wro.5.2020.03.10.09.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 09:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,537,1574118000"; 
   d="scan'208";a="341912627"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 17:22:33 +0100
Date: Tue, 10 Mar 2020 17:22:32 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Deepak R Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com, gregkh@linuxfoundation.org, 
    daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging : comedi : dt2801 : remove
 old unused code
In-Reply-To: <20200310155053.GA27759@deeUbuntu>
Message-ID: <alpine.DEB.2.21.2003101721460.26409@hadrien>
References: <20200310155053.GA27759@deeUbuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Subject lines don't have spaces before the colons.

You can alywas looks at other subject lines on the same file to see what
others have done:

git log --oneline filename.c

julia

On Tue, 10 Mar 2020, Deepak R Varma wrote:

> there are 2 #if 0 blocks that have no recent history of any change. We
> can remove those code blocks for improved readability of the code.
>
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt2801.c | 22 ----------------------
>  1 file changed, 22 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/dt2801.c b/drivers/staging/comedi/drivers/dt2801.c
> index a29880981d81..aad02faa2f83 100644
> --- a/drivers/staging/comedi/drivers/dt2801.c
> +++ b/drivers/staging/comedi/drivers/dt2801.c
> @@ -87,17 +87,6 @@
>  #define DT2801_STATUS		1
>  #define DT2801_CMD		1
>
> -#if 0
> -/* ignore 'defined but not used' warning */
> -static const struct comedi_lrange range_dt2801_ai_pgh_bipolar = {
> -	4, {
> -		BIP_RANGE(10),
> -		BIP_RANGE(5),
> -		BIP_RANGE(2.5),
> -		BIP_RANGE(1.25)
> -	}
> -};
> -#endif
>  static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
>  	4, {
>  		BIP_RANGE(10),
> @@ -107,17 +96,6 @@ static const struct comedi_lrange range_dt2801_ai_pgl_bipolar = {
>  	}
>  };
>
> -#if 0
> -/* ignore 'defined but not used' warning */
> -static const struct comedi_lrange range_dt2801_ai_pgh_unipolar = {
> -	4, {
> -		UNI_RANGE(10),
> -		UNI_RANGE(5),
> -		UNI_RANGE(2.5),
> -		UNI_RANGE(1.25)
> -	}
> -};
> -#endif
>  static const struct comedi_lrange range_dt2801_ai_pgl_unipolar = {
>  	4, {
>  		UNI_RANGE(10),
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310155053.GA27759%40deeUbuntu.
>

