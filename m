X-GM-THRID: 2829093699584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7e065b60dab7b1c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.151.75 with SMTP id 72mr13288478qhx.3.1424719614753;
        Mon, 23 Feb 2015 11:26:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.141.234 with SMTP id rr10ls992502igb.21.gmail; Mon, 23 Feb
 2015 11:26:54 -0800 (PST)
X-Received: by 10.66.142.170 with SMTP id rx10mr12801374pab.34.1424719614530;
        Mon, 23 Feb 2015 11:26:54 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x231.google.com (mail-qc0-x231.google.com. [2607:f8b0:400d:c01::231])
        by gmr-mx.google.com with ESMTPS id e5si3600276qcg.1.2015.02.23.11.26.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:26:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) client-ip=2607:f8b0:400d:c01::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcqi8 with SMTP id i8so12731803qcq.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=0bd7YEoh6Kaaq0dZv2YnsLtb0+ztgwdCunJaQmJkL70=;
        b=UzQEagbpTRnbsqwJt1b4vL8MBZdk/0bd232OTqxJN0ljAecWdVowpEmIFrljjO5eBP
         xqN83DrG9niOHeI3QRph4rXhp1qKx7DqtbG3WrxCFIQicHFsf7y6y+d0UY8nQMW+Kgp2
         wwpqYFP3EV0bSVDWbi2RHSo0XKXOu+HXeqGWhgbk3t2Wl79fz2jFhJEKUoKfriaw0Ciq
         Y0kJ6sRt6a3R+ykQcj2S9hkWlJknGNf4fi5foKnFzGgJQ+x0NX2vrsSW8TVsMY1m1iTR
         kKLrqezEdDKw0w5WWm+ZyLCK5a59XR1EqK9PpdcWz46cYmQiepzV2ekO0WsNpcinqPDQ
         cqJA==
X-Received: by 10.140.236.151 with SMTP id h145mr28688664qhc.9.1424719614399;
        Mon, 23 Feb 2015 11:26:54 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id g21sm3946390qhc.35.2015.02.23.11.26.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:26:53 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB7EFC.1010005@gmail.com>
Date: Mon, 23 Feb 2015 14:26:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Dilek Uzulmez <dilekuzulmez@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add blank line
 after declarations
References: <1424702944-6713-1-git-send-email-dilekuzulmez@gmail.com>
In-Reply-To: <1424702944-6713-1-git-send-email-dilekuzulmez@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 09:49, Dilek Uzulmez wrote:
> This patch fixes these warning messages found by checkpatch.pl:
> WARNING: Missing a blank line after declarations.
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 ++
>  1 file changed, 2 insertions(+)

The patch is good, however a more personalized commit message is
preferred. Something like:

"
Insert blank line between declarations and actual code.

This was found using checkpatch.pl
"

Cheers,
Jes


> diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> index df463a2..20e12d0 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> @@ -550,6 +550,7 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>  inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
>  {
>  	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
> +
>  	pwrpriv->ips_deny_time = jiffies + msecs_to_jiffies(ms);
>  }
>  
> @@ -573,6 +574,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
>  
>  {
>  	u32 start = jiffies;
> +
>  	if (pwrpriv->ps_processing) {
>  		DBG_88E("%s wait ps_processing...\n", __func__);
>  		while (pwrpriv->ps_processing && rtw_get_passing_time_ms(start) <= 3000)
> 


