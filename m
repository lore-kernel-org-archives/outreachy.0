X-GM-THRID: 6670962421189836800
X-Received: by 2002:a5d:6202:: with SMTP id y2mr4047438wru.29.1553204963267;
        Thu, 21 Mar 2019 14:49:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8c6:: with SMTP id f6ls1011531wrq.11.gmail; Thu, 21 Mar
 2019 14:49:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyKJ9w+awApLfa88UD8KjEGMFHk4uyoxMxmre42B5CzKtTQseAAyeDa8mWpU5wT1ndzp6B7
X-Received: by 2002:adf:e889:: with SMTP id d9mr4239722wrm.162.1553204962578;
        Thu, 21 Mar 2019 14:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553204962; cv=none;
        d=google.com; s=arc-20160816;
        b=nJJw9sffcK9V3M3ggjqAwmSBhO7Tw6RpLH1ppQfisC+7RangRrvTsjKMoDrTdyfmC2
         l8Slboeeg+PmoAY+RwE9aD6B5qwSOi14JRzJeioHii5fDEXSyKXWNKdzvpMMwODXb9Kt
         f+Hu4NXAenkF6dOpNOJglaG8zjK9ZX10OzCVSB+2UPop0pacXkeA8ZQdE8R4spGaqt62
         kS22Ds+HCOu3lsYGeIDQaP4VBMl9gcKuFVpkmTJkTA4jLJCc15OLj6piQU50aMZzd5Io
         Tt+EuziEfEwI/aQmE0rX8oK+pO9nD8s+8UZLpGUuWk6FK3+JKp30LOYkKs6yizUQ/KXQ
         sMzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kSETAOiAxvSfuiT1AvnVLU8xX93crSHeeWgcOkSQtcg=;
        b=mhCou+EH+extIdKqPIcNqP6nQmNvDxXFIKdWM+tcDcmVGTrbkl61Oxk0cDTmvrU9to
         A5lggFYJAxlu+C50cXWljoVs5zjIsLUkJNJfqxflNRTf63CTbCPJy6bY+A98QZhuyLnx
         xuT67HpX5i1l85H037JRFTwfpzfxBm4utrNfUUg488ToYURRsf4WgxzpdWkxHWcMOKL+
         wFptHX5TI2O6WMxnRSvNolFcRG9kfmfaeQfMBly9bA71vl6iA2iZM4qCApqME4y0cLb9
         e/itsQhrpb0owHVLWeqdT2SNbLpRG8D93XoU+bFSjylte5Pgr6FrsW/Jyf68U70IgMcm
         DrtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f74si298836wme.2.2019.03.21.14.49.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:49:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,254,1549926000"; 
   d="scan'208";a="300299989"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 22:49:21 +0100
Date: Thu, 21 Mar 2019 22:49:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vt6655: lines should
 not end with a parentheses
In-Reply-To: <20190321214056.15963-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903212247170.4720@hadrien>
References: <20190321214056.15963-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Vatsala Narang wrote:

> Adjust code to fix the style issue-lines should not end with a
> parentheses
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 6b8a69df509d..e61051076d87 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -756,11 +756,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>   * Return Value: true if succeeded; false if failed.
>   *
>   */
> -bool RFbSetPower(
> -	struct vnt_private *priv,
> -	unsigned int rate,
> -	u16 uCH
> -)
> +bool RFbSetPower(struct vnt_private *priv, unsigned int rate,
> +		 u16 uCH)

You can put the whol thing on one line.

>  {
>  	bool ret = true;
>  	unsigned char byPwr = 0;
> @@ -895,10 +892,8 @@ bool RFbRawSetPower(
>   *
>   */
>  void
> -RFvRSSITodBm(
> -	struct vnt_private *priv,
> -	unsigned char byCurrRSSI,
> -	long *pldBm
> +RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI,
> +	     long *pldBm
>  	)

Perhaps here too.  In any case the ) on a line by itself is not nice at
all.

If it doesn't fit on one line, them it looks like pldBm could be just dBm.
The pl seems to represent "pointer long".  If you need to do that, then
you could make a series with that change first.

julia

>  {
>  	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321214056.15963-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

