X-GM-THRID: 6755490770490228736
X-Received: by 2002:a37:4e82:: with SMTP id c124mr15656474qkb.228.1572886988319;
        Mon, 04 Nov 2019 09:03:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4f02:: with SMTP id d2ls4924021qkb.9.gmail; Mon, 04 Nov
 2019 09:03:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqzayD+tN8/QUpA0aagdGWzShhCGMZFb88s8OauwXc8nvJmu26m7fhPesa3c8VuiN6chU5Dq
X-Received: by 2002:a05:620a:1ec:: with SMTP id x12mr17625466qkn.237.1572886987203;
        Mon, 04 Nov 2019 09:03:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572886987; cv=none;
        d=google.com; s=arc-20160816;
        b=aMK7qifEU6CwdQpyRewMJFBujdTsvx2e+12FM3tSQuGTiP5ovXU1dcYuV2TKiihBsr
         F0w7WmCQIYy9YAIjja5IbA1sN+oXdaq3SE29+wY7eOyNVBnCRpOEuuCO0svzRkTc+xsX
         44cD4FWP6Z4GSQjQMf7iY9gwIFE95/N+oL6MrkrXzDbD5S6IUZuSn90zsQIKmDf40wJ+
         AsaNb2aNsRBuCi5VFcJO4VotICN8vpNDeFZ3RXXrn4UOTdZa2MT0fd5QiEjgX/QmnmEx
         y5FcWBIytRwpFUErSe2QsDxZm6MpE20KhoEpnOGU2uSWXCU0WMLQaA7cXR5xbDURYpQM
         E2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=DV3Mm/gU/KewjBSXlNNnLcJx7NVYl9VvoCv9GMCmKoQ=;
        b=Ox6pux5xKMjt1VH/40znBn/qcNImnmM9tXtZWlpEar4jJV9CVrq6HIvLQZxwqugLvq
         YKNWAt4KeDz/FHICMSH4lgxR+IiOV/UMUQJUx7ff4GjFmt+cr/m817DBiyEjRbjPmHU5
         T8xtKq+QaJ8LiwPqCQvZMy+MvZoE0apcAGyKNaEtOS/TIAcAt/pcqRVMrpGJ7dvWYpow
         tXKrM8hotuRJV9aw8brjAtJN9YjOY/Ue1rgGLbx75C6JN6GfL+tHyqO2I4c24X7UmjlZ
         e60yrisu/Ah0XyUC5PwrtWYoKYTVKA32ZpsalWVfla7SRhr14PHLDctZv9SwpyREbEi0
         nBQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=lSOCFHyV;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=blcGG18h;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.116 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp116.ord1d.emailsrvr.com (smtp116.ord1d.emailsrvr.com. [184.106.54.116])
        by gmr-mx.google.com with ESMTPS id r28si1089898qtu.0.2019.11.04.09.03.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 09:03:07 -0800 (PST)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.116 as permitted sender) client-ip=184.106.54.116;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=lSOCFHyV;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=blcGG18h;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 184.106.54.116 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1572886986;
	bh=SJS/ittzgAH8BlGqcQ8TbkYpepfiiLoeVfFqeIS8430=;
	h=Subject:To:From:Date:From;
	b=lSOCFHyVtAeGxGgsfdwN3OXRioUUfK9ced6m1o9WRgKUOJhHYTTDo0w4ZKOjxfbtd
	 NrovYV19+Y/qcbWh1Hije4nU3yMY8ZJp4aqdXUyU0q1WyZ4syNsAk6zCQPp1dV0uWv
	 rS9vbqEROMFLMag9wJPmxIMI1BBHhPUcbUXu84bo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1572886986;
	bh=SJS/ittzgAH8BlGqcQ8TbkYpepfiiLoeVfFqeIS8430=;
	h=Subject:To:From:Date:From;
	b=blcGG18hc9sNzm6nF7m1Q5GAVQwpvZ8AWKKBn3b8Zjwg+xhK8t5HB4ENZtqI1xhi7
	 E/MIKF7dE9Up0f6KO4aqeiVhuQKF9wUAD1oylcBCwLH2HtECNMu0LxLEDjuxrFP+8L
	 2jAEN9PfXpt02C3WcyFcCkvbSHt/sGdQ3Jgb/lKE=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp23.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 985A320362;
	Mon,  4 Nov 2019 12:03:05 -0500 (EST)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 04 Nov 2019 12:03:06 -0500
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, hsweeten@visionengravers.com
References: <20191104163331.68173-1-jbi.octave@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
Date: Mon, 4 Nov 2019 17:03:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104163331.68173-1-jbi.octave@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 04/11/2019 16:33, Jules Irenge wrote:
> Rewrite macro function with the GNU extension typeof
> to remove a possible side-effects of MACRO argument reuse "x".
>   - Problem could rise if arguments have different types
> and different use though.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> v1 - had no full commit log message, with changes not intended to be in the patch
> v2 - remove some changes not intended to be in this driver
>       include note of a potential problem
>   drivers/staging/comedi/comedi.h | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> index 09a940066c0e..a57691a2e8d8 100644
> --- a/drivers/staging/comedi/comedi.h
> +++ b/drivers/staging/comedi/comedi.h
> @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
>   
>   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
>   
> -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> +#define NI_USUAL_PFI_SELECT(x)\
> +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> +#define NI_USUAL_RTSI_SELECT(x)\
> +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
>   
>   /*
>    * mode bits for NI general-purpose counters, set with
> 

I wasn't sure about this the first time around due to the use of GNU 
extensions in uapi header files, but I see there are a few, rare 
instances of this GNU extension elsewhere in other uapi headers (mainly 
in netfilter stuff), so I guess it's OK.  However, it  does mean that 
user code that uses these macros will no longer compile unless GNU 
extensions are enabled.

Does anyone know any "best practices" regarding use of GNU extensions in 
user header files under Linux?

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

