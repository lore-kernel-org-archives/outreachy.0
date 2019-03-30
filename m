X-GM-THRID: 6673959669244887040
X-Received: by 2002:adf:f011:: with SMTP id j17mr1448285wro.8.1553928444820;
        Fri, 29 Mar 2019 23:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1f86:: with SMTP id f128ls603817wmf.1.canary-gmail; Fri,
 29 Mar 2019 23:47:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlhjle5rrsuT7L1WW/Cba29xD3Y1q5R1EdqewEVXVBj27NrF0NUvhsRMTnlvbQ+sBwN7s5
X-Received: by 2002:a05:600c:c1:: with SMTP id u1mr643415wmm.2.1553928443964;
        Fri, 29 Mar 2019 23:47:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553928443; cv=none;
        d=google.com; s=arc-20160816;
        b=nYB29SzcE4dHghZJmlR9tk1UsQYfDsdDgeF8BGGP6TC5BJHrjyLN09ug7mKknd1NkS
         cLzwcsWMp26Cs9VHIfNvEwKhISrqoW60jGQ35NbeNJFaTijwZRbT5dAPjlwIsaloxNhw
         yRHetDTMKI0t5k4bW8ETmP9Wk8Nt2wPEeEmUCck0wAt4XvlgXiZ8OcRqXPIYvtRKyQct
         Y5nWEeuCu22OAyU4XHsc7hdiYdNTeKCqHT+719q7VtFOLH1OfOJqQLII/RFctEhsiJVF
         PWAQw9+HQjJExSJKNlLVmZkww3WvLqbpXa2OWVr1XH5MXtEJa/2xW/yIsyVCSMohIJOm
         NgAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hJUZWgMUUqFfSXKAve6uV+oevk3HKqlk0di8h+iE8K0=;
        b=bIGbZnR6k8vcuG7eu6lU/Mah5S1YcYmyZGMqFeYZC2wpi4RbQGsa8TMlPzp6/zhcs0
         MK+YNVYi0jHu48uRczyqwzm6/035pOF1YyoMpbn/XoTBcYqKRrxeLMRkKG2URdxm6A5b
         oPcu1z7E3NiNHLu8PROje2Wz1E71DyWgHGiXoiJuH4GoVJj8ZlqBBY+rb4flyc0FYplz
         iFRJuh6XQMIewworLQBMIAqwbGIewYaVTwCadOg2YQ3BkaQZ4l5iuiPRDDqf6D4EtVvq
         WIKokOmJPgxYkuOYWAPr4LPFHKyYHCEl5ucpvhVApdJDnP/JL5kanhmrsFZIDsr2TkyX
         vu5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 7si208861wma.1.2019.03.29.23.47.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 23:47:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,287,1549926000"; 
   d="scan'208";a="376436542"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 07:47:23 +0100
Date: Sat, 30 Mar 2019 07:47:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v6 1/3] staging: vt6655: line over 80
 characters.
In-Reply-To: <20190329233147.27039-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903300746450.2817@hadrien>
References: <20190329233147.27039-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Vatsala Narang wrote:

> Move function arguments that go over 80 characters a line to get rid of
> checkpatch warning.
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> Changes in v6:
>  -fixed patch 1 and resent it
>  drivers/staging/vt6655/rf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 72475586a5ee..ad3970333390 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -748,7 +748,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  	}
>
>  	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
> -			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +		       	(unsigned long)MAKEWORD(bySleepCount, byInitCount));

The two lines look the same, although there are probably spacing
differences.  I think you have the wrong log message for this patch.

julia

>
>  	return true;
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190329233147.27039-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

