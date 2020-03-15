X-GM-THRID: 6804290192961175552
X-Received: by 2002:ac2:4110:: with SMTP id b16mr14956116lfi.211.1584310408221;
        Sun, 15 Mar 2020 15:13:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5476:: with SMTP id e22ls2247117lfn.7.gmail; Sun, 15 Mar
 2020 15:13:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvV/wwuhuS9ersSbH+4SZK82FLhfDcagSQaMKa22yOz/1uiynnY83SZbcCjUkiyNh4gHwoL
X-Received: by 2002:ac2:46ec:: with SMTP id q12mr14904470lfo.60.1584310406777;
        Sun, 15 Mar 2020 15:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584310406; cv=none;
        d=google.com; s=arc-20160816;
        b=IsETvWiZxa/xepDG5ftEI8Xp47pbdFo3XbAR++4+5v8VVf28ksB0kS52uJSrvVtvL0
         rMB26A2YOB3bRr/xZQFoQ+sp8iWeesEy8iU5V4De22jFJpmeBKGuZd2LkG1f2YoxmIRV
         HRS+1Y2hx3RPtg7eAJUaPLLvQdUCP+kgg9gEthtuO/mDe+ClpSDd7ygkzQeQAbSHjssW
         eRbOOjw97DMjm/dZwIzTKXd5cEjw1PzTRkYOLD1umLBAh0eQVd+volYwz2R963y+HmRp
         bgDUb2Wk1HoALCfNNHSAaHyqfFgqxJ7La63rb+h3kg+zQvMlv+66l4rga9c1y86q3Ogv
         Ukyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=nMNHsgs804si8rCr2Ju+m1dKNpmexEsvb/bcjKMawyI=;
        b=oWxUJ5o9ZtiQCy34SgP+ppoRTvR+IPmkDxfIQJpf9Ey1/UX/3CvvmPCAyLIfK6y8hk
         ow4DWohSkgI/mFNaeYN7zcdBKD8BzJmiAxfxRXgBYLuaw0ZLXJ/TKRpW0EB58C7aorst
         FDFLm8i3wGdiQCCri5r+JSRo1XNTqrWyoyHNxiN/ogNMoFKWdkpuWE2Sn2XPOQVZ/FDU
         OOpJv1ASo29Nsr4o6H2jc177ZMUmhEMsnGbW/+30svH/KyruWMyf0qB5AVirJtNwsOJj
         s1RLlD8X6HzA+8xd3yND7jY//SJ7LsRCse8Ilu7VTAf+VyT1824oTVmEPyoz0oncxCZt
         HnHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [2a0c:e300::1])
        by gmr-mx.google.com with ESMTPS id a21si234784lff.3.2020.03.15.15.13.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 15:13:26 -0700 (PDT)
Received-SPF: neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=2a0c:e300::1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a0c:e300::1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 71FF9DFD5;
	Sun, 15 Mar 2020 23:13:25 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 16Nawvdc0mlI; Sun, 15 Mar 2020 23:13:24 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr [86.234.239.11])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id EC158DFD4;
	Sun, 15 Mar 2020 23:13:23 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1jDbVb-000cMx-10; Sun, 15 Mar 2020 23:13:23 +0100
Date: Sun, 15 Mar 2020 23:13:22 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] staging: speakup: main: switch multiple assignment
 for one assignment per line
Message-ID: <20200315221322.qoz62h2m5r6l434t@function>
References: <20200315221247.16629-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200315221247.16629-1-lu@pplo.net>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Lourdes Pedrajas, le dim. 15 mars 2020 23:12:47 +0100, a ecrit:
> One assignment per line is preferred, instead of multiple assignments.
> To make it more readable.
> Issue found with checkpatch.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>

Reviewed-by: Samuel Thibautl <samuel.thibault@ens-lyon.org>

Thanks!

> ---
> Changes since v1:
> - log and code corections
> 
>  drivers/staging/speakup/main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 488f2539aa9a..5c47643b302c 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2117,7 +2117,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  			spk_keydown = 0;
>  			goto out;
>  		}
> -		value = spk_lastkey = pad_chars[value];
> +		value = pad_chars[value];
> +		spk_lastkey = value;
>  		spk_keydown++;
>  		spk_parked &= 0xfe;
>  		goto no_map;
> -- 
> 2.17.1
> 

-- 
Samuel
"...Unix, MS-DOS, and Windows NT (also known as the Good, the Bad, and
the Ugly)."
(By Matt Welsh)

