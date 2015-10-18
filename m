X-GM-THRID: 6206591728806264832
X-Received: by 10.112.55.69 with SMTP id q5mr5979158lbp.24.1445188339522;
        Sun, 18 Oct 2015 10:12:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.33 with SMTP id e1ls465071wij.19.gmail; Sun, 18 Oct
 2015 10:12:19 -0700 (PDT)
X-Received: by 10.194.248.131 with SMTP id ym3mr263117wjc.7.1445188339049;
        Sun, 18 Oct 2015 10:12:19 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id d7si339512wiy.2.2015.10.18.10.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id t4so12961210wiu.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=YsEMXaL1oi7g6lYSKnXJm3knlyVoq4haGbxDo2+8XsU=;
        b=SCyz1VeCoqSCZ79r1Dd2NugX1H4L2CjsfY/B6ufZFEwurqqVuQusHq8x3TA3rt6IWc
         I4rYkMwNejC5Z9kB2fBOx6JFhAfiXLWFNUVy6BzV+q91zPrjZH8z7FvyJoWc5dZs/Pf9
         PDD5b7n0Hv5u09X2Px3WyW/SaQz5wDQfZc0X2SMaCG96xKxeErh5rFl5isbmYco3xjo/
         b/qIOlr9tR8nNpenKX+wEHUQWj2WCtDYsvZ7DsmBhurGjmiEzHdiGQrg5MuvSjfabNTQ
         Q4h0nhHRBWqjLK5H2uqocF+RXyYyB3CA58FDVcCfWbj2rZBtCoaNbVRGUvdU3HR9zOB1
         ZZyw==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr15369220wic.93.1445188338935;
 Sun, 18 Oct 2015 10:12:18 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 10:12:18 -0700 (PDT)
In-Reply-To: <1445084735-20133-3-git-send-email-aybuke.147@gmail.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
	<1445084735-20133-2-git-send-email-aybuke.147@gmail.com>
	<1445084735-20133-3-git-send-email-aybuke.147@gmail.com>
Date: Sun, 18 Oct 2015 20:12:18 +0300
Message-ID: <CAEnQRZBQ3adxxn-trtEWRdqfDUycQvzhjA1i0A68Z81CgUiO0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: Remove
 unnecessary parentheses
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 17, 2015 at 3:25 PM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
> Problem found using checkpatch.pl:
> CHECK: Unnecessary parentheses around pstrNetworkInfo->u8SsidLen
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/wilc1000/coreconfigurator.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
> index cea7c6f..427adfd 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.c
> +++ b/drivers/staging/wilc1000/coreconfigurator.c
> @@ -422,7 +422,7 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
>                 pstrNetworkInfo->u64Tsf = u32Tsf_Lo | ((u64)u32Tsf_Hi << 32);
>
>                 /* Get SSID */
> -               get_ssid(pu8msa, pstrNetworkInfo->au8ssid, &(pstrNetworkInfo->u8SsidLen));
> +               get_ssid(pu8msa, pstrNetworkInfo->au8ssid, &pstrNetworkInfo->u8SsidLen);
>
>                 /* Get BSSID */
>                 get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
> --

